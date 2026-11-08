package cn.workbuddy.r1client;

import android.content.Context;
import android.util.Log;

import org.json.JSONObject;

import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/**
 * v1.3.199：语音软开关（省电模式）。
 *
 * <p>需求：关掉「KWS 唤醒 + 收音 + 小智本体（WS 长连）」，但<b>保留 web 端的
 * 电台 / 音乐搜索 / 点播</b>，用来在不说话的时候降功耗与发热。</p>
 *
 * <p>★ 为什么不能只停寄生层：USC_KWS_ONLY=true 时寄生层 IDLE 期<b>根本不占麦</b>
 * （只在 bus 唤醒到达后才 acquire，会话结束立即归还）。真正的大头是
 * <b>原厂 USC 引擎自己那三个 native 线程</b>（usc_record_thre / usc_fix_thread /
 * usc_vad_thread，2026-10-19 实测常驻 ~107% CPU）。
 * ⇒ 开关必须能真的停掉原厂 USC 的「唤醒 + 录音」，否则一点电也省不下来。</p>
 *
 * <p>三处协作：</p>
 * <ol>
 *   <li>smali 钩子 <b>SpeechManager.&lt;init&gt;</b> —— 把引擎实例交给本类保管
 *       （{@link #noteEngine(Object)}）。参数声明成 Object，编译期不必依赖原厂类。</li>
 *   <li>smali 钩子 <b>NativeANTEngine.doStopWakeup()</b> —— v1.3.74 被整段 no-op 过
 *       （原厂 doPlayTTS 里 {@code if (!getAecEnable()) doStopWakeup()}，本机 AEC 默认关
 *       ⇒ 每轮播完 TTS 就睡死、唤醒失灵）。现在改成受 {@link #allowStopWakeup()} 控制：
 *       正常态仍然 no-op（行为与以前一字不差），省电态才走原厂实现
 *       {@code j.b()}（= SpeechUnderstander.cancel()，native 停唤醒 + 停录音）。</li>
 *   <li>smali 钩子 <b>NativeANTEngine.doEnterWakeup(Z)</b> —— 省电态下把原厂任何一次
 *       「进唤醒」拦掉，否则刚 cancel 完它自己又起来。</li>
 * </ol>
 *
 * <p>持久化：{@code files/voice_off}（存在 = 省电模式）。web 入口
 * {@code /api/act?op=voice&v=on|off|state}。</p>
 */
public final class VoicePower {

    private static final String TAG = "R1CLIENT";

    /** files/ 下的持久化旗标：存在 ⇒ 省电模式（语音助手停用） */
    public static final String FLAG = "voice_off";

    private static volatile Context ctx;
    /** 原厂 ANTEngine 实例（由 SpeechManager.<init> 钩子送来） */
    private static volatile Object sEngine;
    private static volatile boolean sHaveEngine;
    private static volatile boolean sOff;
    /** 最近一次动作的结果（web 上直接看） */
    private static volatile String sLast = "-";
    private static volatile long sChangedMs;

    private VoicePower() {
    }

    // ---------------- smali 钩子 ----------------

    /** smali：SpeechManager.&lt;init&gt; 里拿到原厂引擎实例。 */
    public static void noteEngine(Object engine) {
        if (engine == null) {
            return;
        }
        sEngine = engine;
        sHaveEngine = true;
        Log.i(TAG, "VoicePower: engine captured -> " + engine.getClass().getName());
        if (sOff) {
            // 开机即省电：引擎刚交到手，等它初始化完再停（太早调 native 会空转）
            delayedApply(1500L, "boot");
            delayedApply(6000L, "boot2");
        }
    }

    /** smali：NativeANTEngine.doStopWakeup —— 省电态才允许走原厂「停唤醒」。 */
    public static boolean allowStopWakeup() {
        return sOff;
    }

    /** smali：NativeANTEngine.doEnterWakeup —— 省电态拦掉原厂「进唤醒」。 */
    public static boolean blockEnterWakeup() {
        return sOff;
    }

    // ---------------- 对外 ----------------

    /** 启动装配时调用：只置状态、落日志，真正的动作等引擎到手（或已到手就立刻）再执行。 */
    public static void boot(Context c, boolean off) {
        ctx = (c == null) ? ctx : c.getApplicationContext();
        sOff = off;
        if (!off) {
            return;
        }
        SessionLog.i("voice power: 省电模式（files/" + FLAG + "）—— KWS/收音/小智本体停用，"
                + "web 电台与点播不受影响");
        // v1.3.254：开机即省电 ⇒ 立刻点亮闭麦灯（真正的停麦动作等引擎到手再走 delayedApply）。
        try {
            R1Lights.setDormant(true);
        } catch (Throwable t) {
            Log.w(TAG, "VoicePower boot: setDormant failed: " + t);
        }
        if (sHaveEngine) {
            delayedApply(1500L, "boot");
            delayedApply(6000L, "boot2");
        }
    }

    public static boolean isOff() {
        return sOff;
    }

    /**
     * 切换。on = 语音助手启用（正常）；off = 省电模式。
     *
     * @return 给人看的一句话结果（web 直接吐）
     */
    public static String set(boolean off) {
        sOff = off;
        sChangedMs = System.currentTimeMillis();
        boolean persisted;
        if (off) {
            persisted = writeFlag("1");
        } else {
            persisted = clearFlag();
        }
        apply(off ? "web-off" : "web-on");
        String s = (off ? "省电模式已开：唤醒 / 收音 / 小智本体停用，web 电台与点播照常"
                : "语音助手已启用：唤醒 / 收音 / 小智本体恢复")
                + "（flag " + (persisted ? "已保存" : "保存失败") + "）"
                + " ｜ " + sLast;
        SessionLog.i("voice power: " + s);
        return s;
    }

    /** web / 日志用的一句话状态。 */
    public static String state() {
        return "voice=" + (sOff ? "OFF(省电)" : "ON(正常)")
                + " engine=" + sHaveEngine
                + " uscWakeup=" + safeIsWakeup()
                + " last=" + sLast;
    }

    public static JSONObject json() {
        JSONObject o = new JSONObject();
        try {
            o.put("off", sOff);
            o.put("engine", sHaveEngine);
            o.put("wakeup", safeIsWakeup());
            o.put("last", String.valueOf(sLast));
            o.put("since", sChangedMs);
        } catch (Throwable t) {
            Log.w(TAG, "voice power json: " + t);
        }
        return o;
    }

    // ---------------- 动作 ----------------

    private static void delayedApply(final long delayMs, final String why) {
        Thread t = new Thread(new Runnable() {
            public void run() {
                try {
                    Thread.sleep(delayMs);
                } catch (Throwable ignored) {
                    // ignore
                }
                apply(why);
            }
        }, "vp-" + why);
        t.setDaemon(true);
        t.start();
    }

    /** 把当前 sOff 状态真正落到原厂引擎 + 小智 WS 上。可在任意线程调用。 */
    private static void apply(String why) {
        StringBuilder sb = new StringBuilder();
        if (sOff) {
            sb.append(stopVoice(why));
            // 小智本体：断开 WS 长连（close() 会把 wantConnected 置 false ⇒ 不再自动重连，
            // 下一句唤醒前 SessionController 才会重新 connect）。
            try {
                XzBootstrap.dropWs("voice-off");
                sb.append(" ws=closed");
            } catch (Throwable t) {
                sb.append(" ws=ERR:").append(t);
            }
        } else {
            sb.append(startVoice(why));
            try {
                XzBootstrap.dropWs("voice-on");   // 让下一句用新状态重新握手
                sb.append(" ws=rearmed");
            } catch (Throwable t) {
                sb.append(" ws=ERR:").append(t);
            }
        }
        sLast = sb.toString();
        // v1.3.254：闭麦/休眠灯（id=100）随语音开关同步——亮=关语音(省电)，灭=语音正常。
        // 这样无论「web 关语音」还是「顶部按键双击关语音」灯都跟手。
        try {
            R1Lights.setDormant(sOff);
        } catch (Throwable t) {
            Log.w(TAG, "VoicePower apply: setDormant failed: " + t);
        }
        Log.i(TAG, "VoicePower.apply(" + why + "): " + sLast);
    }

    /** 停：原厂唤醒 + 录音。 */
    private static String stopVoice(String why) {
        Object e = sEngine;
        if (e == null) {
            return "engine=null(还没拿到实例)";
        }
        StringBuilder sb = new StringBuilder();
        // ① 走原厂 stopWakeup（doStopWakeup 已被我们改成「省电态才执行」）
        sb.append("stopWakeup=").append(invoke(e, "stopWakeup"));
        // ② 兜底：绕开 isWakeup() 判空，直接对 NativeANTEngine.j 调 b()
        //    —— j 是 com.unisound.vui.a，b() = SpeechUnderstander.cancel()，
        //    即 native 侧的「停唤醒 + 停录音」。三个 usc_* 线程随之收工。
        Object j = field(e, "j");
        if (j != null) {
            sb.append(" j.b=").append(invoke(j, "b"));
        } else {
            sb.append(" j=?");
        }
        sb.append(" cancelASR=").append(invoke(e, "cancelASR"));
        sb.append(" releaseAudioRecord=").append(invoke(e, "releaseAudioRecord"));
        return sb.toString();
    }

    /** 起：恢复原厂唤醒。 */
    private static String startVoice(String why) {
        Object e = sEngine;
        if (e == null) {
            return "engine=null(还没拿到实例)";
        }
        StringBuilder sb = new StringBuilder();
        try {
            Method m = e.getClass().getMethod("enterWakeup", boolean.class);
            m.setAccessible(true);
            m.invoke(e, Boolean.FALSE);   // false = 不播「叮」
            sb.append("enterWakeup=ok");
        } catch (Throwable t) {
            sb.append("enterWakeup=ERR:").append(t);
        }
        return sb.toString();
    }

    // ---------------- 反射小工具 ----------------

    /** 调无参 void 方法；返回 "ok" 或 "ERR:…"。 */
    private static String invoke(Object target, String name) {
        if (target == null) {
            return "null";
        }
        try {
            Method m = target.getClass().getMethod(name);
            m.setAccessible(true);
            m.invoke(target);
            return "ok";
        } catch (Throwable t) {
            try {
                Method m2 = target.getClass().getDeclaredMethod(name);
                m2.setAccessible(true);
                m2.invoke(target);
                return "ok";
            } catch (Throwable t2) {
                return "ERR:" + t2;
            }
        }
    }

    private static Object field(Object target, String name) {
        if (target == null) {
            return null;
        }
        Class<?> c = target.getClass();
        while (c != null) {
            try {
                Field f = c.getDeclaredField(name);
                f.setAccessible(true);
                return f.get(target);
            } catch (Throwable t) {
                c = c.getSuperclass();
            }
        }
        return null;
    }

    private static String safeIsWakeup() {
        Object e = sEngine;
        if (e == null) {
            return "?";
        }
        try {
            Method m = e.getClass().getMethod("isWakeup");
            m.setAccessible(true);
            Object r = m.invoke(e);
            return String.valueOf(r);
        } catch (Throwable t) {
            return "ERR";
        }
    }

    // ---------------- files/ 旗标 ----------------

    private static boolean writeFlag(String v) {
        try {
            return XzBootstrap.writeLineFile(FLAG, v);
        } catch (Throwable t) {
            Log.w(TAG, "write " + FLAG + ": " + t);
            return false;
        }
    }

    private static boolean clearFlag() {
        Context c = ctx;
        if (c == null) {
            return false;
        }
        try {
            File f = new File(c.getFilesDir(), FLAG);
            return !f.exists() || f.delete();
        } catch (Throwable t) {
            Log.w(TAG, "clear " + FLAG + ": " + t);
            return false;
        }
    }
}
