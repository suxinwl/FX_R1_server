package cn.workbuddy.r1client;

import android.media.AudioManager;
import android.media.MediaPlayer;
import android.util.Log;

import java.io.File;

/**
 * v1.3.252：闹钟铃声的<b>独立播放通道</b>。
 *
 * <h3>为什么不是 STREAM_ALARM</h3>
 * <p>用户 2026-10-27 问：「闹钟铃声确定不能用专门的铃声通道播吗，关闭闹钟以后
 * 铃声歌曲还占着播放界面挺突兀的」。</p>
 * <p>「专门的音量通道」在 R1 上确实不成立 —— 见 {@link AlarmVol} 的类注释：
 * {@code AudioTrack(STREAM_ALARM)} 一写就 {@code AudioFlinger BUFFER TIMEOUT:
 * remove(4098)}，STREAM_ALARM 的 index 也写不动（改完 dumpsys 里还是 1/15）。</p>
 * <p>但用户真正在意的不是「音量流」，而是<b>「谁在播」</b>：
 * 以前闹钟铃声是通过 {@link PlayerBridge} 推给原厂主播放器的，等于「用音乐播放器
 * 放闹钟」—— 所以关掉闹钟以后，主播放器的标题 / 封面 / 进度条仍然停在铃声那首歌上，
 * 页面看着像「还在放」。换成<b>自己 new 一个 MediaPlayer</b> 直接播 /sdcard 上的
 * 缓存文件，主播放器<b>完全没被碰过</b>，界面自然保持原样（原本空着就还是空着，
 * 原本在听歌就还是用户自己的那首）。</p>
 *
 * <h3>为什么走 STREAM_MUSIC</h3>
 * <p>跟 {@link TtsPlayer} 一样：这台机器的音频出口只有 STREAM_MUSIC 是活的
 * （TTS 的 AudioTrack 就是直接写 STREAM_MUSIC，与主播放器并存没打架）。
 * 音量兜底也因此天然有效 —— {@link AlarmVol} 抬的就是这条流。</p>
 *
 * <h3>约束</h3>
 * <ul>
 *   <li>只播<b>本地文件</b>（/sdcard/R1Alarm 里的缓存）。在线歌没法走这里，
 *       需要源解析，只能沿用主播放器那条路（{@link Alarm} 里有回退）。</li>
 *   <li>{@code setLooping(true)}：一直响到你关掉。以前是「歌播完 + 15s 再重放」，
 *       循环更省事也更像闹钟。</li>
 *   <li>所有调用串行化在 {@link #LOCK} 上：{@code stop()} 可能来自「关闭闹钟」
 *       的主线程，{@code play()} 来自 r1-alarm-play 线程，交叉不能出现
 *       「release 完又被 start」。</li>
 * </ul>
 */
final class RingPlayer {

    private static final String TAG = "R1RingPlayer";

    private static final Object LOCK = new Object();

    /** 当前这一轮的播放器（null = 没在放） */
    private static MediaPlayer sMp;
    /** 当前播的文件绝对路径（null = 没在放）；{@link Alarm#sRingCache} 也跟着它 */
    private static String sFile;

    private RingPlayer() {
    }

    /** 这次是不是「独立通道」在出声。 */
    static boolean isPlaying() {
        synchronized (LOCK) {
            MediaPlayer m = sMp;
            if (m == null) {
                return false;
            }
            try {
                return m.isPlaying();
            } catch (Throwable t) {
                return false;
            }
        }
    }

    /** 当前播的文件；没在放返回 null。 */
    static String currentFile() {
        synchronized (LOCK) {
            return sFile;
        }
    }

    /**
     * 播一个本地文件（循环）。返回 true = 真的出声了。
     *
     * <p>★ 失败必须老实返回 false —— {@link Alarm#playRing} 见到 false 会走
     * 「主播放器」那条老路，闹钟不会因为这里挂掉而哑。</p>
     */
    static boolean play(String path) {
        if (path == null || path.length() == 0) {
            return false;
        }
        if (!new File(path).isFile()) {
            SessionLog.i("ring player: 文件不存在 " + path);
            return false;
        }
        synchronized (LOCK) {
            stopLocked();
            MediaPlayer m = null;
            try {
                m = new MediaPlayer();
                /* ★ 必须先设流类型再 setDataSource：API22 上 prepare 之后再改流类型
                   不会重新分配输出，声音会跟着默认流走（默认可能被静音）。 */
                m.setAudioStreamType(AudioManager.STREAM_MUSIC);
                m.setDataSource(path);
                m.setLooping(true);
                m.prepare();
                m.setVolume(1.0f, 1.0f);
                m.start();
                if (!m.isPlaying()) {
                    throw new IllegalStateException("start 了但 isPlaying=false");
                }
                sMp = m;
                sFile = path;
                SessionLog.i("ring player: 独立通道起播 " + new File(path).getName());
                return true;
            } catch (Throwable t) {
                Log.w(TAG, "play(" + path + "): " + t);
                SessionLog.i("ring player FAILED: " + t);
                if (m != null) {
                    try {
                        m.release();
                    } catch (Throwable ignored) {
                    }
                }
                return false;
            }
        }
    }

    /** 停 + 释放（幂等，可以随便多调）。 */
    static void stop() {
        synchronized (LOCK) {
            stopLocked();
        }
    }

    private static void stopLocked() {
        MediaPlayer m = sMp;
        String f = sFile;
        sMp = null;
        sFile = null;
        if (m == null) {
            return;
        }
        try {
            if (m.isPlaying()) {
                m.stop();
            }
        } catch (Throwable ignored) {
        }
        try {
            m.release();
        } catch (Throwable ignored) {
        }
        SessionLog.i("ring player: 停 " + (f == null ? "?" : new File(f).getName()));
    }
}
