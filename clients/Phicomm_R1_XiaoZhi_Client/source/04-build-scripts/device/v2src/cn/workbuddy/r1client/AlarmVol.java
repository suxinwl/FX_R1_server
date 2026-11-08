package cn.workbuddy.r1client;

import android.content.Context;
import android.media.AudioManager;
import android.util.Log;

/**
 * v1.3.246：响铃音量兜底。
 *
 * <p>需求（2026-10-26）：「闹钟要有音量设置兜底，防止静音了闹钟没声」，
 * 以及「看看系统带不带闹钟音量之类的可以直接用」。</p>
 *
 * <h3>★ 实测结论：系统有 STREAM_ALARM，但这台机器上它是个死通道</h3>
 * <p>2026-10-26 在 R1（Android 5.1.1 / API22）上：</p>
 * <pre>
 * dumpsys audio（起机时）       STREAM_ALARM Max 15 / Current 1（≈7%）
 *                              STREAM_MUSIC Max 15 / Current 6
 * 调 setStreamVolume(ALARM, …) 之后 dumpsys 里 STREAM_ALARM 仍然是 1 —— 改不动
 * 调 setStreamVolume(MUSIC, …) 之后读到 5/15，用户当场确认「音量是提到 5/15 了」
 * </pre>
 * <p>所以「给闹钟一个独立音量通道」这个想法在 R1 上不成立：ALARM 流既写不动、
 * 也喂不进声音（v1.3.246 曾专门用 {@code AudioTrack(STREAM_ALARM)} 直接放合成音，
 * 一写就 {@code AudioFlinger BUFFER TIMEOUT: remove(4098)}；v1.3.248 把合成提示音
 * 整个去掉后，这条通道连"绕路"的动机也没了）。
 * 剩下的唯一现实做法就是 —— <b>响铃前把媒体流抬上去，关掉后还原</b>。</p>
 *
 * <p>这也正好覆盖了用户真正担心的事：媒体音量被调成 0 时，闹钟响起来没声。
 * 因为抬的是同一条流，只要它在响，就一定有声音。</p>
 *
 * <p>★★★ <b>必须还原</b>：抬音量只是「这次的闹钟要听得见」，不是改用户设置。
 * 关闭闹钟 / 超时 / 响铃中被下一次打断，都会走 {@link #restore()} 写回原值；
 * 只有真的动过（{@code sMusicTouched}）才写，避免把用户正常音量白白重写一遍。</p>
 */
final class AlarmVol {

    private static final String TAG = "R1AlarmVol";

    static final int STREAM_MUSIC = AudioManager.STREAM_MUSIC;   // 3
    static final int STREAM_ALARM = AudioManager.STREAM_ALARM;   // 4

    private static Context app;

    /** 本轮媒体流的原始值（-1 = 没动过 / 未知）；只有 touched 为 true 才写回 */
    private static int sMusicOrig = -1;
    private static boolean sMusicTouched = false;

    private AlarmVol() {
    }

    static void init(Context c) {
        app = c.getApplicationContext();
    }

    private static AudioManager am() {
        return app == null ? null : (AudioManager) app.getSystemService(Context.AUDIO_SERVICE);
    }

    /** 0~100 百分比；拿不到返回 -1。 */
    static int get(int stream) {
        AudioManager a = am();
        if (a == null) {
            return -1;
        }
        try {
            int mx = a.getStreamMaxVolume(stream);
            if (mx <= 0) {
                return -1;
            }
            int cur = a.getStreamVolume(stream);
            if (cur < 0) {
                return -1;
            }
            return (int) (cur * 100.0f / mx + 0.5f);
        } catch (Throwable t) {
            Log.w(TAG, "get(" + stream + "): " + t);
            return -1;
        }
    }

    private static boolean set(int stream, int pct) {
        AudioManager a = am();
        if (a == null) {
            return false;
        }
        if (pct < 0) {
            pct = 0;
        }
        if (pct > 100) {
            pct = 100;
        }
        try {
            int mx = a.getStreamMaxVolume(stream);
            if (mx <= 0) {
                return false;
            }
            int idx = (int) (pct * mx / 100.0f + 0.5f);
            a.setStreamVolume(stream, idx, 0);
            return true;
        } catch (Throwable t) {
            Log.w(TAG, "set(" + stream + "," + pct + "%): " + t);
            return false;
        }
    }

    /**
     * 响铃前调用：把<b>媒体流</b>抬到至少 {@code pct}。
     *
     * <p>只在「低了」的时候动，且记下动之前的原值。返回做了什么（给日志用，
     * 空串 = 本来就够响，什么都没动）。</p>
     *
     * <p>★ 只动媒体流。STREAM_ALARM 那条流写不动（见类注释），碰它只会制造
     * 「日志说改了、其实没改」的假象 —— 别再加回来。</p>
     */
    static synchronized String guard(int pct) {
        int mu = get(STREAM_MUSIC);
        if (mu < 0) {
            return "";
        }
        /* v1.3.253：语义从「至少抬到这个值」改成「**设成**这个值」（高了也要降）。
           用户要求：「音乐播放时响铃 ⇒ 暂停音乐，音量设到铃声音量」。
           相等就什么都不做 —— 免得白记一次原值、关掉时又白写一遍。 */
        if (mu == pct) {
            return "";
        }
        if (!sMusicTouched) {
            sMusicOrig = mu;
        }
        if (!set(STREAM_MUSIC, pct)) {
            return "";
        }
        sMusicTouched = true;
        int back = get(STREAM_MUSIC);
        String s = "媒体流 " + mu + "%→" + pct + "%（读回 " + back + "%）";
        Log.i(TAG, "guard: " + s);
        SessionLog.i("alarm vol guard: " + s);
        return s;
    }

    /** 响铃结束（关闭 / 超时 / 被打断）时还原。幂等。 */
    static synchronized String restore() {
        if (!sMusicTouched || sMusicOrig < 0) {
            reset();
            return "";
        }
        int want = sMusicOrig;
        reset();
        if (!set(STREAM_MUSIC, want)) {
            return "";
        }
        String s = "媒体流还原 " + want + "%（读回 " + get(STREAM_MUSIC) + "%）";
        Log.i(TAG, "restore: " + s);
        SessionLog.i("alarm vol restore: " + s);
        return s;
    }

    /**
     * v1.3.253：<b>用户自己的音乐音量</b>（响铃设音量之前的原值；没动过就等于当前值）。
     *
     * <p>用途：响铃期间媒体流被设成了「闹钟音量」，播放界面不该跟着显示那个值 ——
     * 页面要的是「我的音乐音量」。device 在 status 里报这个，player 拿它覆盖音量显示。</p>
     */
    static synchronized int userMusic() {
        return sMusicOrig >= 0 ? sMusicOrig : get(STREAM_MUSIC);
    }

    private static void reset() {
        sMusicTouched = false;
        sMusicOrig = -1;
    }

    /**
     * 现在是不是还「欠着」一次还原（抬过且还没还回去）。
     *
     * <p>★ 这个判断不能省：歌一起来就不用再放提示音了，所以「还有没有声音」
     * 和「还需不需要收尾」是脱钩的 —— 用前者当还原条件会永远不成立，
     * 音量会一直停在抬高的档位（2026-10-26 试响后实测踩到）。</p>
     */
    static synchronized boolean isTouched() {
        return sMusicTouched;
    }

    /** 一行状态文本，给语音/页面报「现在音量多少」。 */
    static String desc() {
        int a = get(STREAM_ALARM);
        int m = get(STREAM_MUSIC);
        return "媒体流 " + (m < 0 ? "?" : m + "%")
                + "（系统闹钟流 " + (a < 0 ? "?" : a + "%") + "，本机写不动）";
    }
}
