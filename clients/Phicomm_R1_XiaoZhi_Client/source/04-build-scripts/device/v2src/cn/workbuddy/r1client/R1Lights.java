package cn.workbuddy.r1client;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;

import org.json.JSONObject;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;   // v1.3.206：拾音灯单颗直写（桥到 player :8080）
import java.net.URL;

/**
 * v1.3.147：指示灯联动 —— 把原厂「小讯」那套灯效接回小智。
 *
 * <h3>原厂灯效链路（反编译 uni_smali 得出）</h3>
 * <pre>
 * com/unisound/vui/handler/session/light/DefaultLightsHandler     （事件源）
 *   onWakeupResult()          -> 读 DOA 角度 -> LightListener.onWakeupSuccess(angle)
 *   onASREventRecordingStop() -> LightListener.onRecognizeStart()
 *   onTTSEventPlayingEnd()    -> LightListener.onTTSEnd()
 *
 * com/phicomm/speaker/device/custom/lights/PhicommLightListener   （灯效实现）
 *   onWakeupSuccess(angle) -> getIndex(angle) -> turnOnWakeupIndexLight(index)
 *                             ★ 这就是「流动一圈，最后定格在收音方向」的拾音灯
 *   onRecognizeStart()      -> turnOffALLWakeupLight() + turnOnLoadingLight()
 *                             ★ 蓝色播报/思考灯（识别中 + 原厂 TTS 播报期间一直闪）
 *   onTTSEnd()              -> turnOffLoadingLight()
 * </pre>
 *
 * <h3>IPC 出口与真实报文</h3>
 * {@code PhicommLightController} 最终都走
 * {@code MessageDispatchManager.sendMessage(what, arg1, arg2, obj)}：
 * <pre>
 *   what = 0x1000（LIGHT_WHAT）
 *   拾音灯 开：arg1=index(1..24)  arg2=0    关：arg1=index  arg2=1
 *              （turnOffALLWakeupLight = 对 1..24 逐条发 arg2=1）
 *   播报灯 开：arg1=0xcb(203)     arg2=0    关：arg1=203    arg2=1
 *   休眠灯 开：arg1=0x64(100)     arg2=0    关：arg1=100    arg2=1
 * </pre>
 * ★ 原厂 {@code turnOffLoadingLight()} 里 arg2 写成了 1（与 turnOn 同参）—— 那是
 * 原厂笔误：arg2 的语义是「0=亮 / 1=灭」（见 turnOffALLWakeupLight 的循环）。
 * 这里按正确语义发（开=0 / 灭=1）。
 *
 * <h3>为什么不直接 new 原厂的 PhicommLightController</h3>
 * 实测（v1.3.147 首版）：{@code new PhicommLightController(ctx)} 抛
 * {@code InvocationTargetException} —— 它内部 {@code PhicommIpcSender} →
 * {@code MessageSenderDelegate.getInstance()} → 私有构造里用的是静态 {@code sContext}，
 * 而 {@code MessageSenderDelegate.init(ctx)} 从未被调用 ⇒ NPE，且类一旦初始化失败
 * 就永久不可用。PlayerBridge 早就验证过 {@code PhicommMessageManager.messageCenter(ctx)}
 * 这条路是通的（音乐控制就是这么发的），所以灯也走这条总线直发，语义完全等价。
 *
 * <h3>小智侧的映射</h3>
 * <ul>
 *   <li><b>唤醒</b>（{@code UscTap.onWakeup(ctx)}，与 KWS 同刻）⇒ 拾音灯
 *       （读 DOA 角度 → 定格在收音方向）</li>
 *   <li><b>服务器出 STT</b>（听懂了 ⇒ 用户在等回答）⇒ 灭拾音灯 + 开蓝色播报灯</li>
 *   <li><b>TTS 播完</b> ⇒ 灭播报灯；<b>会话结束</b> ⇒ 全灭</li>
 * </ul>
 *
 * <p>开关：{@code files/lights_off}（存在即关闭，默认开）。调试：Web
 * {@code /api/act?op=light&v=wake|busy|off|idx:N|angle:N|raw:A1:A2}。</p>
 */
public final class R1Lights {

    private static final String TAG = "R1Lights";
    private static final String CLS_MSG_MGR =
            "com.phicomm.speaker.device.utils.PhicommMessageManager";
    private static final String CLS_IDX =
            "com.phicomm.speaker.device.custom.lights.PhicommLightIndexProcessor";
    private static final String CLS_OPT = "com.unisound.vui.engine.ANTEngineOption";

    /** 灯的 what（PhicommLightController.LIGHT_WHAT） */
    private static final int LIGHT_WHAT = 0x1000;
    /** 24 颗白色拾音灯（PhicommLightIndexProcessor.WHITE_LIGHT_NUMBER） */
    private static final int LIGHT_COUNT = 24;
    /** 蓝色播报/loading 灯的 id（PhicommLightController.LIGHT_ID_LOADING） */
    private static final int LIGHT_LOADING = 0xcb;
    /** arg2：0=亮，1=灭 */
    private static final int ON = 0;
    private static final int OFF = 1;

    private static Context app;
    private static Object msgMgr;
    private static Method mSend;
    private static Method mGetIndex;
    private static volatile boolean ready = false;
    private static volatile String why = "not init";

    /** 上一次成功点亮的灯位 / 角度（DOA 读不到时复用） */
    private static volatile int lastIndex = -1;
    private static volatile int lastAngle = -1;
    /** v1.3.204：拾音灯当前是否亮着（「聆听灯」去重，免得每次状态变化刷 24 条灭灯） */
    private static volatile boolean sListen = false;
    /** 最后一次 sendRaw 的失败原因（调试用，成功置 null） */
    private static volatile String lastErr = null;
    /**
     * v1.3.206：当前用「单颗直写」点着的那颗（1..24），0 = 没点。
     *
     * <p>为什么要另开一份记账：拾音灯现在有<b>两条</b>点亮的路 ——
     * ① 唤醒走 {@code 0x1000} 灯效服务（播完整动画，定格在 DOA 方向）；
     * ② 非唤醒的聆听点亮走 player 的 native 单颗（不播动画）。
     * 两条路写的其实是同一颗灯，但只有 ② 需要 device 自己记住「我点了哪颗」，
     * 灭灯时才知道要写黑哪一颗。</p>
     */
    private static volatile int sPickIdx = 0;
    /** v1.3.206：单颗直写的桥接地址（player 的 :8080 控制台）。 */
    private static final String PICK_URL = "http://127.0.0.1:8080/api/act?op=led1&v=";

    /**
     * 唤醒动画的时长（25 段 × 200ms）+ 余量。
     *
     * <p>只用于<b>诊断</b>（{@link #state} 里的 {@code animRest}）与排障对照：
     * 灯效服务那条路（{@code 0x1000}）要播满 5 秒才定格，而 device 无法回读硬件
     * （sysfs 是 write-only），只能靠时间戳推「动画大概播完了没」。</p>
     */
    private static final long ANIM_MS = 5400L;
    /** 最近一次唤醒动画的起始时刻（0 = 从没播过）。 */
    private static volatile long sAnimTs = 0;

    /**
     * v1.3.205：★ 灭灯防抖窗口 —— 「灭」推迟 {@value #OFF_DEBOUNCE_MS} ms 执行。
     *
     * <p>为什么要推迟：一次「灭 → 亮」的快速翻转（典型 = 唤醒打在僵尸会话上触发的
     * 硬重启：{@code enterIdle() → setState(IDLE) 灭 → startSession() → 亮}，实测间隔
     * 仅 12~20ms）会让原厂灯效服务把动画**重播一遍**，用户看到的就是「灯效多播一次」。
     * 推迟之后，窗口内若又要求「亮」，直接撤销灭灯任务即可 —— 灯本来就亮着，
     * 连「亮」那条报文都不用重发（{@code sListen} 记账还是 true，自然被去重挡住）。</p>
     *
     * <p>方向不变时也别重播：{@link #onWakeup} 里若灯已亮且灯位没变，同样跳过 send。</p>
     */
    private static final int OFF_DEBOUNCE_MS = 250;
    private static volatile Handler sHandler = null;
    private static final Runnable offTask = new Runnable() {
        public void run() {
            offNow();
        }
    };
    private R1Lights() {
    }

    // ================= v1.3.211：夜灯 =================
    //
    // 用户诉求：喊「开启夜灯」→ 拾音灯全亮 + 氛围灯全亮（也可以只开一样）；
    //           喊「关闭夜灯」→ 灭灯，然后恢复原来的灯效。
    // ★★ 这次能成的关键（当年「夜灯模式」做不成，缺的就是这一步）：
    //    夜灯期间**所有灯效全部停用**。灯效服务只要在活动，它收尾那次
    //    「异步清灯」就会把我们的直写抹掉 —— 这正是 v1.3.206~209 单颗直写
    //    两轮实测都不亮的根因（见 R1/LIGHTS-灯组与灯效.md §8.6 / §8.7）。
    //    ⇒ 夜灯期间 send() 那道闸门把唤醒灯/播报灯/聆听灯全挡住，
    //      player 侧也把原厂氛围灯总开关关掉 ⇒ 没有人再来动这两组灯。
    // ★ 顶 / 底必须分走两条路：灯效服务**同时只能跑一个效果**（实测
    //   `light 251 preempt light 503`，同 channel + 同 priority，后到的抢占先前的）
    //   ⇒ 顶部 24 颗 = 灯效服务 503（FORCE 全白常亮，本来就关不掉，正好当夜灯）；
    //     底部 15 颗 = 借 player 的手直写 A 组（device 是 u0_a8，写不了 sysfs）。
    // ------------------------------------------------------------------

    /** 夜灯：顶部拾音灯 24 颗（灯效服务 503）。 */
    private static volatile boolean sNightTop = false;
    /** 夜灯：底部氛围环 15 颗（借 player 直写 A 组）。 */
    private static volatile boolean sNightAmb = false;
    /**
     * ★ v1.3.214：夜灯「亮哪一组」的选择 —— {@code both} / {@code top} / {@code amb}。
     *
     * <p>这是<b>配置项，不是开关</b>。总开关只有 {@code on / off}：
     * 开了才按这里选的组上灯，关着就一组都不亮。</p>
     *
     * <p>不管夜灯开着还是关着都能改，改它<b>不会</b>把灯点亮 —— 以前点「只顶部」
     * 会顺手把灯打开，等于藏了第二个开关（逻辑很乱、高亮也跟着跳）。</p>
     */
    private static volatile String sNightSel = "both";
    /** 夜灯颜色（0xRRGGBB）。 */
    private static volatile int sNightColor = 0xFF8C1A;
    /**
     * 夜灯亮度（0..100）。
     *
     * <p>★ 上限取 <b>100</b>：小飞版 web 上氛围灯亮度标的是 {@code 1..200}，
     * 但那是它自己的口径 —— 实测原厂 {@code setLumaGain} 只收 0..100，传 200 会
     * 静默 {@code return -1}（日志里压根没有那一行）。夜灯的亮度是我们自己缩放 RGB，
     * 不过原厂那一关，但**同口径取 0..100**，免得页面上两套数字对不上。</p>
     */
    private static volatile int sNightLuma = 30;
    /** 夜灯用的两个灯效 id（闸门只放行这两个）。 */
    private static final int NIGHT_ON = 503;
    private static final int NIGHT_OFF = 505;
    /** 504 = A 组（15 颗氛围环）FORCE 灭 —— 清 A 组残留靠它。 */
    private static final int AMB_OFF = 504;

    /**
     * v1.3.212：★ 清场要 close 的「常亮 / 长时」效果 id。
     *
     * <p>为什么必须<b>逐个 close</b>、而不是像以前那样只发 505 去抢：
     * 灯效服务有 <b>pending 复活</b> 机制 —— 一个效果被抢占时并不会被删除，
     * 只是挂到 pending；等抢占它的那个效果一结束，它就「pending light X turned
     * to active」原地复活。</p>
     *
     * <p>所以「开夜灯 show 503」会把当时正在跑的效果（实测经常是原厂氛围灯 251）
     * 挂进 pending；「关夜灯 show 505」又把 503 挂进 pending。505 一 close，
     * 503 立刻复活 ⇒ 用户看到的就是「拾音灯闪一下又亮起来」；同理 251 复活
     * ⇒ 「氛围灯一直亮着、颜色也改不动」。</p>
     *
     * <p>close 才是真删除（日志 {@code light X was stoped and deleted from active
     * list!}）。但 close 一个会把 pending 栈顶的下一个弹出来 ⇒ 要多轮 close
     * 直到服务说 {@code no active light, can not close!}。</p>
     */
    private static final int[] CLEAR_IDS = {
            203,                        // 播报灯（breathe 蓝）
            251, 252, 253, 254, 255,    // A 组常亮：蓝 / 橙 / 紫 / 红(60s) / 青
            500, 501, 502,              // 产测 FORCE 红 / 绿 / 蓝（A 组）
            503,                        // B 组全白 FORCE（我们的夜灯顶）
            504,                        // A 组 FORCE 灭
            505,                        // B 组 FORCE 灭
    };
    /** 夜灯自己切换灯时置 true，绕过闸门（否则连灭灯都发不出去）。 */
    private static volatile boolean sNightBypass = false;
    /** 借 player 写 A 组的地址（{@code op=led1}，pl-1.6.51 起支持 all:<hex>）。 */
    private static final String ALL_URL =
            "http://127.0.0.1:8080/api/act?op=led1&v=";
    /**
     * 借 player 写顶部 24 颗的地址（{@code op=led1&v=top:...}，pl-1.6.52）。
     *
     * <p>★ 夜灯的「顶」<b>不再 show 503</b>：照抄小飞版那条路（`lights_test set
     * 7fffff8000 ffffff`）—— 直写 sysfs，不经过灯效服务。理由：503 一旦被抢占就挂
     * pending、等会儿自己复活，而且老 pid 发的 503 我们 close 不掉
     * （`can not close other process's lights`）⇒ 表现就是「关不掉」。</p>
     */
    private static final String TOP_URL =
            "http://127.0.0.1:8080/api/act?op=led1&v=";

    /**
     * 夜灯总入口（{@code op=night&v=...} / MCP）。
     *
     * <pre>
     *   on         开灯（按 part 选的组亮）
     *   off        关灯（全灭 + 解除闸门，灯效恢复正常）
     *   part:X     X = both|top|amb —— 只是「亮哪一组」的配置，★不负责开关
     *   top:1|0    只开 / 只关顶部拾音灯（调试用，会顺带改 part）
     *   amb:1|0    只开 / 只关底部氛围灯（调试用，会顺带改 part）
     *   color:RRGGBB
     *   luma:N     0..100
     *   state      回显
     * </pre>
     *
     * <p>★ v1.3.214 口径：<b>on / off 才是总开关</b>；{@code part:} 只切换「开的时候
     * 亮哪一组」，夜灯关着时改它只是记下来，不会偷偷把灯点上。</p>
     */
    public static String night(String v) {
        if (v == null || v.length() == 0) {
            v = "state";
        }
        if ("on".equals(v)) {
            nightApplySel();
            return "夜灯已开（" + selText() + "）";
        }
        if ("off".equals(v)) {
            nightApply(false, false);
            return "夜灯已关，灯效恢复正常（记住的是：" + selText() + "）";
        }
        if (v.startsWith("part:")) {
            sNightSel = normSel(v.substring(5).trim());
            saveNightCfg();
            /* ★ 关着就只记配置、不上灯；开着才立刻按新选择重排。 */
            if (nightOn()) {
                nightApplySel();
                return "夜灯改亮「" + selText() + "」" + nightStateTail();
            }
            return "已记下：下次开夜灯亮「" + selText() + "」（当前夜灯是关着的，没有点灯）";
        }
        if (v.startsWith("top:")) {
            boolean t = parseOnOff(v.substring(4), true);
            nightApply(t, sNightAmb);
            syncSel();
            saveNightCfg();
            return nightState();
        }
        if (v.startsWith("amb:")) {
            boolean a = parseOnOff(v.substring(4), true);
            nightApply(sNightTop, a);
            syncSel();
            saveNightCfg();
            return nightState();
        }
        if (v.startsWith("color:")) {
            try {
                sNightColor = (int) Long.parseLong(v.substring(6).trim(), 16) & 0xFFFFFF;
            } catch (Throwable t) {
                return "颜色格式不对（要 RRGGBB，如 FF8C1A）";
            }
            saveNightCfg();
            if (sNightAmb) {
                ambClear();        // v1.3.212：先收掉 A 组上残留的常亮效果
                ambWrite();
            }
            return "夜灯颜色 #" + hex6(sNightColor) + nightStateTail();
        }
        if (v.startsWith("luma:")) {
            try {
                sNightLuma = Integer.parseInt(v.substring(5).trim());
            } catch (Throwable t) {
                return "亮度不是数字";
            }
            if (sNightLuma < 0) {
                sNightLuma = 0;
            }
            if (sNightLuma > 100) {
                sNightLuma = 100;      // ★ 上限 100，理由见 sNightLuma 的注释
            }
            saveNightCfg();
            if (sNightAmb) {
                ambClear();        // v1.3.212：先收掉 A 组上残留的常亮效果
                ambWrite();
            }
            return "夜灯亮度 " + sNightLuma + "%" + nightStateTail();
        }
        if ("state".equals(v)) {
            return nightState();
        }
        return "夜灯：on | off | top:1|0 | amb:1|0 | color:RRGGBB | luma:N(0..100) | state";
    }

    private static String nightStateTail() {
        return "（当前" + (sNightAmb ? "亮着" : "灭着") + "，亮度 " + sNightLuma + "%）";
    }

    // ---------------- v1.3.214：总开关 vs 「亮哪一组」 ----------------

    /** 归一化「亮哪一组」的取值（认不得的一律 both）。 */
    private static String normSel(String s) {
        if ("top".equals(s) || "amb".equals(s)) {
            return s;
        }
        return "both";
    }

    /** 当前选择里含顶部吗。 */
    private static boolean selTop() {
        return "both".equals(sNightSel) || "top".equals(sNightSel);
    }

    /** 当前选择里含底部吗。 */
    private static boolean selAmb() {
        return "both".equals(sNightSel) || "amb".equals(sNightSel);
    }

    /** 按「亮哪一组」的选择上灯 —— 总开关 {@code on} 走这条。 */
    private static void nightApplySel() {
        nightApply(selTop(), selAmb());
    }

    /** 「亮哪一组」的中文说法（回显用）。 */
    private static String selText() {
        if ("top".equals(sNightSel)) {
            return "只顶部拾音灯";
        }
        if ("amb".equals(sNightSel)) {
            return "只底部氛围灯";
        }
        return "顶部拾音灯 + 底部氛围灯";
    }

    /**
     * 用 {@code top: / amb:} 直接动过某一组之后，把「亮哪一组」同步成实际亮着的组合。
     *
     * <p>两个都关掉时<b>不动</b> sNightSel —— 那是「关灯」，不是「改成不亮任何一组」，
     * 下次开灯还得照原选择亮。</p>
     */
    private static void syncSel() {
        if (sNightTop && sNightAmb) {
            sNightSel = "both";
        } else if (sNightTop) {
            sNightSel = "top";
        } else if (sNightAmb) {
            sNightSel = "amb";
        }
    }

    /** 夜灯状态回显。 */
    public static String nightState() {
        return "夜灯" + (nightOn() ? "开" : "关")
                + "：拾音灯(顶24颗)=" + (sNightTop ? "亮" : "灭")
                + " 氛围灯(底15颗)=" + (sNightAmb ? "亮" : "灭")
                + " 亮哪一组=" + sNightSel
                + " 颜色=#" + hex6(sNightColor) + " 亮度=" + sNightLuma + "%(0..100)";
    }

    /** 夜灯开着吗（任何一组）。 */
    public static boolean nightOn() {
        return sNightTop || sNightAmb;
    }

    /** 夜灯配置（status 回填给页面）。 */
    public static org.json.JSONObject nightJson() {
        org.json.JSONObject o = new org.json.JSONObject();
        try {
            o.put("top", sNightTop);
            o.put("amb", sNightAmb);
            /* ★ v1.3.214：页面拿 on 当总开关、part 当「亮哪一组」的高亮。 */
            o.put("on", nightOn());
            o.put("part", sNightSel);
            o.put("color", hex6(sNightColor));
            o.put("luma", sNightLuma);
        } catch (Throwable ignored) {
        }
        return o;
    }

    /**
     * 真正上灯 / 撤灯。
     *
     * <p>★ 顺序很讲究：开夜灯前必须先把正在播的灯效收干净（否则灯效服务还在活动，
     * 它的收尾清灯会紧接着把我们的夜灯抹掉）；关夜灯时反过来 —— 先解除闸门，
     * 再灭灯。</p>
     */
    private static void nightApply(boolean top, boolean amb) {
        sNightTop = top;
        sNightAmb = amb;
        saveNightCfg();
        sNightBypass = true;
        try {
            sListen = false;
            /* ★ v1.3.212：先彻底清场（close 掉 active 和 pending 里的每一个效果），
               再决定是点夜灯还是就这么灭着。以前「靠 505 抢占 503」的做法是错的 ——
               抢占 = 挂 pending，等 505 一 close，503 原地复活。 */
            clearAllEffects();
            if (!top && !amb) {
                forceBlackTop();            // v1.3.216：只写黑 B 组（顶部）
                topWrite(0);                // 顶部写黑（借 player 直写 sysfs）
                ambBack();                  // ★ 底部交回 player，别自己写黑
                restoreAmbientLater();      // v1.3.215：最后再把原厂氛围灯接回来
                SessionLog.i("light 夜灯 off（灯效恢复正常）");
                return;
            }
            /* ★ v1.3.218：顶部要被夜灯占住 ⇒ 先把拾音灯上的东西收掉
               （「只底部」时聆听灯是允许亮着的，切到「都亮 / 只顶部」就得让它让位，
               不然守灯每 1.5s 写一次白，跟动画互相抹）。 */
            if (top) {
                stopPickup();
            }
            /* ★ 顶部由 player 直写，不 show 503（理由见 TOP_URL 的注释） */
            topWrite(top ? 0xFFFFFF : 0);
            if (amb) {
                ambWrite();
            } else {
                ambBack();                  // ★ 同上：不亮的那组交给 player 收尾
            }
            SessionLog.i("light 夜灯 on：top=" + top + " amb=" + amb
                    + " color=#" + hex6(sNightColor) + " luma=" + sNightLuma + "%");
        } finally {
            sNightBypass = false;
        }
    }

    /**
     * v1.3.212：★ 彻底清场 —— 把灯效服务里 active 和 pending 的效果全部 close 掉，
     * 最后再把 A / B 两组都 FORCE 写黑。
     *
     * <p>多轮的原因：close 一个会把 pending 栈顶的下一个弹回 active
     * （{@code pending light X turned to active}）⇒ 一轮 close 清不干净。</p>
     */
    private static void clearAllEffects() {
        for (int round = 0; round < 4; round++) {
            for (int id : CLEAR_IDS) {
                send(id, OFF);
            }
            if (round == 0 || round == 3) {
                wakeupAllOff();     // 1..24 拾音灯动画
            }
        }
        /* ★ v1.3.215：这里**不再** show 504/505 写黑。
           以前「清场完顺手 FORCE 灭一遍」放在开夜灯路径上 ⇒ 开灯时刚点上的灯
           被这两个异步到达的 FORCE 灭抹掉（而且它们互相抢占、pending 复活，
           压制几秒才散）⇒ 用户看到「闪一下，七八秒后才亮」。
           写黑只属于**关灯**路径，见 {@link #forceBlackTop}。 */
    }

    /**
     * v1.3.216：只把 <b>B 组（顶部 24 颗）</b> FORCE 写黑 —— 关夜灯时用。
     *
     * <p>close 只停调度、不写颜色 ⇒ 关灯要真灭还得靠它。开灯时千万别调它。
     * ★ <b>不再写黑 A 组</b>（504）：底部那圈切换时是有接手者的（原厂氛围灯 /
     * 七彩自驱），写黑会正好卡在「夜灯灭」和「接手者亮」之间 ⇒ 用户看到
     * 「从夜灯切回氛围灯时底部先灭掉再亮起」。现在交给 player 的
     * {@code op=led1&v=ambback} 决定 —— 它先让接手者接上，没人接手才兜底写黑。</p>
     */
    private static void forceBlackTop() {
        send(NIGHT_OFF, ON);        // 505：B 组 24 颗写黑
        send(NIGHT_OFF, OFF);
    }

    /**
     * v1.3.215：关夜灯后把原厂氛围灯接回来 —— 而且要**等一会儿**再发。
     *
     * <p>顺序问题：关夜灯这一趟里，player 先恢复氛围灯、device 后清场写黑
     * （两条链是并行的）⇒ 恢复消息被随后的写黑盖掉，灯就一直黑着，
     * 用户只能去页面把氛围灯「关一下再开」才亮。所以恢复统一放到最后、
     * 并且延后到清场的写黑落地之后。</p>
     */
    private static void restoreAmbientLater() {
        try {
            final int[] st = ambLoad();
            if (st[A_ON] != 1) {
                return;             // 本地记着是关的，就别自作主张开
            }
            Handler h = sHandler;
            if (h == null) {
                return;
            }
            h.postDelayed(new Runnable() {
                public void run() {
                    try {
                        sendRaw(AMB_WHAT, AMB_SWITCH, 1);
                        if (st[A_LUMA] >= 0) {
                            sendRaw(AMB_WHAT, AMB_LUMA, st[A_LUMA]);
                        }
                        if (st[A_CHROMA] >= 0) {
                            sendRaw(AMB_WHAT, AMB_CHROMA, st[A_CHROMA]);
                        }
                        SessionLog.i("light 夜灯 off：原厂氛围灯已接回");
                    } catch (Throwable t) {
                        SessionLog.i("light 恢复氛围灯失败: " + t);
                    }
                }
            }, AMB_RESTORE_DELAY_MS);
        } catch (Throwable t) {
            SessionLog.i("light 恢复氛围灯排期失败: " + t);
        }
    }

    /** 关夜灯后延后多久再把原厂氛围灯开回来（等清场的写黑先落地）。 */
    private static final long AMB_RESTORE_DELAY_MS = 900L;

    /** v1.3.212：改色 / 调亮度时要先收掉的 A 组常亮效果（不动顶部的 503）。 */
    private static final int[] AMB_CLEAR_IDS = {
            251, 252, 253, 254, 255, 500, 501, 502,
    };

    /**
     * 只清 A 组（底部氛围环）：close 掉可能残留的常亮效果。
     *
     * <p>改颜色 / 调亮度时走这条 —— 顶部那圈 503 是夜灯的本体，不能动。
     * ★ 这里<b>不能</b> show 504 去写黑：504 会把 503 抢占掉（503 挂 pending），
     * 504 一 close 503 又复活 ⇒ 用户看到顶部「闪一下」。反正紧接着就要写新颜色，
     * 没必要先写黑。</p>
     */
    private static void ambClear() {
        sNightBypass = true;
        try {
            for (int id : AMB_CLEAR_IDS) {
                send(id, OFF);
            }
        } finally {
            sNightBypass = false;
        }
    }

    /** 顶部 24 颗：写指定颜色（0 = 灭），借 player 直写 sysfs。 */
    private static void topWrite(final int color) {
        ledWrite(TOP_URL + (color == 0 ? "topoff" : ("top:" + hex6(color))), "顶部");
    }

    /**
     * 底部氛围环：**点亮**（借 player，且必须让 player 进入「夜灯态」）。
     *
     * <p>★ v1.3.217：以前这里发的是 {@code all:<hex>}（只写一次颜色），player 那边
     * 的 {@code sNightAmb} 一直是 false ⇒ 不停七彩、**钩子不拦原厂**、不守灯不补刀
     * ⇒ 从 MCP / 语音喊「开夜灯」时灯刚亮就被原厂抢回去（用户原话
     * 「只底部模式小智说开了实际没开」），web 上状态也跟着不同步。
     * 现在改发 {@code ambon:<原色>:<亮度>} —— player 会完整走 {@code nightAmb(true)}。</p>
     *
     * <p>★ 传<b>原色 + 亮度</b>而不是缩放后的颜色：player 拿到原色后自己按亮度缩一次，
     * 传缩放值会被缩两次 ⇒ 颜色偏暗。</p>
     */
    private static void ambWrite() {
        ledWrite(ALL_URL + "ambon:" + hex6(sNightColor) + ":" + sNightLuma, "氛围环");
    }

    /** 底部氛围环：写指定颜色（0 = 灭）。 */
    private static void ambWrite(final int color) {
        ledWrite(ALL_URL + (color == 0 ? "alloff" : ("all:" + hex6(color))), "氛围环");
    }

    /**
     * v1.3.216：底部氛围环 <b>交回</b> player —— 不是写黑。
     *
     * <p>关夜灯 / 夜灯改成「只亮顶部」时走这条。player 收到后先让原厂氛围灯或
     * 七彩自驱接手，确认没人接手才自己写黑 ⇒ 切换时底部不会再「先灭一下再亮」。</p>
     */
    private static void ambBack() {
        ledWrite(ALL_URL + "ambback", "氛围环交回");
    }

    /** 借 player 的手写灯（device 是 u0_a8，写不了 sysfs）。失败只记日志，不影响顶部。 */
    private static void ledWrite(final String url, final String what) {
        new Thread(new Runnable() {
            public void run() {
                try {
                    HttpURLConnection c = (HttpURLConnection) new URL(url).openConnection();
                    try {
                        c.setConnectTimeout(1500);
                        c.setReadTimeout(2500);
                        c.setRequestMethod("GET");
                        c.getResponseCode();
                    } finally {
                        c.disconnect();
                    }
                } catch (Throwable t) {
                    // player 没起 / 8080 还没绑 —— 这一组不亮而已，另一组照旧
                    SessionLog.i("light 夜灯写" + what + "失败: " + t);
                }
            }
        }, "r1-night-amb").start();
    }

    /** 颜色按亮度百分比缩放（0 = 全黑，100 = 原色）。 */
    private static int scaleLuma(int color, int luma) {
        int p = luma < 0 ? 0 : (luma > 100 ? 100 : luma);
        int r = ((color >> 16) & 0xFF) * p / 100;
        int g = ((color >> 8) & 0xFF) * p / 100;
        int b = (color & 0xFF) * p / 100;
        return (r << 16) | (g << 8) | b;
    }

    // ---------------- 夜灯配置持久化（files/night.txt） ----------------

    private static File nightFile() {
        return app == null ? null : new File(app.getFilesDir(), "night.txt");
    }

    private static void saveNightCfg() {
        try {
            File f = nightFile();
            if (f == null) {
                return;
            }
            FileOutputStream o = new FileOutputStream(f, false);
            try {
                o.write(("top=" + (sNightTop ? 1 : 0)
                        + " amb=" + (sNightAmb ? 1 : 0)
                        + " part=" + sNightSel
                        + " color=" + hex6(sNightColor)
                        + " luma=" + sNightLuma + "\n").getBytes("UTF-8"));
            } finally {
                o.close();
            }
        } catch (Throwable t) {
            // 存不下也不影响本次生效
        }
    }

    /** 开机 / 进程重启后把夜灯接回去（延迟 3 秒，等 player 的 8080 起来）。 */
    public static void restoreNight() {
        try {
            File f = nightFile();
            if (f == null || !f.exists()) {
                return;
            }
            byte[] b = new byte[(int) f.length()];
            FileInputStream in = new FileInputStream(f);
            try {
                in.read(b);
            } finally {
                in.close();
            }
            String s = new String(b, "UTF-8");
            int top = kv(s, "top", 0);
            int amb = kv(s, "amb", 0);
            String p = kvStr(s, "part");
            if (p != null) {
                sNightSel = normSel(p.trim());
            }
            String c = kvStr(s, "color");
            if (c != null) {
                sNightColor = (int) Long.parseLong(c.trim(), 16) & 0xFFFFFF;
            }
            sNightLuma = kv(s, "luma", 30);
            if (sNightLuma < 0 || sNightLuma > 100) {
                sNightLuma = 30;
            }
            if (top == 1 || amb == 1) {
                nightApply(top == 1, amb == 1);
                SessionLog.i("light 夜灯恢复（重启续接）：top=" + top + " amb=" + amb);
            }
        } catch (Throwable t) {
            SessionLog.i("light 夜灯恢复失败: " + t);
        }
    }

    private static int kv(String s, String key, int def) {
        String v = kvStr(s, key);
        if (v == null) {
            return def;
        }
        try {
            return Integer.parseInt(v.trim());
        } catch (Throwable t) {
            return def;
        }
    }

    private static String kvStr(String s, String key) {
        int i = s.indexOf(key + "=");
        if (i < 0) {
            return null;
        }
        int j = i + key.length() + 1;
        int e = j;
        while (e < s.length() && s.charAt(e) != ' ' && s.charAt(e) != '\n'
                && s.charAt(e) != '\r') {
            e++;
        }
        return s.substring(j, e);
    }

    /** 反射装载原厂消息总线（与 PlayerBridge 同一条路）。失败只记日志。 */
    public static void init(Context c) {
        app = c.getApplicationContext();
        // v1.3.205：灭灯防抖需要一个 main looper 的 Handler（灯都在主线程发）
        try {
            sHandler = new Handler(Looper.getMainLooper());
        } catch (Throwable t) {
            sHandler = null;
        }
        try {
            Class<?> mm = Class.forName(CLS_MSG_MGR);
            msgMgr = mm.getMethod("messageCenter", Context.class).invoke(null, app);
            mSend = findMethod(msgMgr.getClass(), "sendMessage", 4);
            try {
                Class<?> ci = Class.forName(CLS_IDX);
                mGetIndex = ci.getMethod("getIndex", int.class);
            } catch (Throwable t) {
                mGetIndex = null;   // 退化为「角度/15」自算
            }
            ready = true;
            why = "ok";
            Log.i(TAG, "lights ready via msgcenter (indexProcessor=" + (mGetIndex != null) + ")");
            SessionLog.i("light init ok: msgcenter 直发 "
                    + "(indexProcessor=" + (mGetIndex != null) + ")");
        } catch (Throwable t) {
            ready = false;
            why = "" + t;
            Log.w(TAG, "lights init failed", t);
            SessionLog.i("light init FAILED: " + t);
        }
        /* v1.3.211：进程重启 / 开机后把夜灯接回去。延迟 3 秒 —— 底部那 15 颗要靠
           player 的 :8080 代写，太早调它还没起来（灯不亮而已，不影响别的）。 */
        try {
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                public void run() {
                    restoreNight();
                }
            }, 3000L);
        } catch (Throwable ignored) {
        }
    }

    private static boolean enabled() {
        if (!ready || app == null) {
            return false;
        }
        try {
            if (new File(app.getFilesDir(), "lights_off").exists()) {
                return false;
            }
        } catch (Throwable ignored) {
        }
        return true;
    }

    /**
     * v1.3.168：唤醒灯（24 颗拾音灯）独立开关 —— {@code files/wake_light_off} 存在即关。
     * 「灭」不受这个开关限制：关掉时若灯正亮着，必须还能发灭灯报文把它收掉。
     */
    private static boolean wakeEnabled() {
        if (!enabled()) {
            return false;
        }
        try {
            return !new File(app.getFilesDir(), "wake_light_off").exists();
        } catch (Throwable ignored) {
            return true;
        }
    }

    /**
     * v1.3.168：播报灯（203 蓝色氛围环）独立开关 —— {@code files/busy_light_off} 存在即关。
     * 同 wakeEnabled()：只挡「开」，不挡「灭」。
     */
    private static boolean busyEnabled() {
        if (!enabled()) {
            return false;
        }
        try {
            return !new File(app.getFilesDir(), "busy_light_off").exists();
        } catch (Throwable ignored) {
            return true;
        }
    }

    /**
     * v1.3.204：聆听灯开关 —— {@code files/listen_light_off} 存在即关。
     * 与 wakeEnabled() 是两件事：那只管「唤醒那一闪」，这只管「整个聆听期常亮」。
     * ★ 灯是同一组（24 颗白色拾音灯），所以两个开关都满足才亮。
     */
    private static boolean listenEnabled() {
        if (!enabled()) {
            return false;
        }
        try {
            return !new File(app.getFilesDir(), "listen_light_off").exists();
        } catch (Throwable ignored) {
            return true;
        }
    }

    // ---------------- 对外事件 ----------------

    /**
     * v1.3.204：★ 拾音灯跟随小智的「聆听」状态 —— 在听就亮（定格在收音方向），
     * 不在听就灭。由 {@code SessionController.setState} 驱动（状态写入的唯一入口），
     * 覆盖三条进入/退出路径：建连（CONNECTING）、聆听（LISTENING）、
     * 思考与播报（TTS_PLAYING）、会话结束（IDLE）。
     *
     * <p>为什么连 CONNECTING 也算「在听」：唤醒那一刻 {@link #onWakeup} 已经按
     * 四麦 DOA 把灯点亮了，紧接着 startSession() 就切 CONNECTING —— 只认 LISTENING
     * 的话这一闪会在几十毫秒内被自己灭掉，唤醒反馈反而没了。</p>
     *
     * <p>★ 方向不重新猜：DOA 只有唤醒那一刻读得准（原厂引擎只在那时给角度），
     * 之后复用 {@code lastIndex}，与「最后指向音源的那颗灯」是同一颗。</p>
     *
     * @param on true = 小智在听（亮），false = 不在听（灭）
     */
    public static void setListening(boolean on) {
        if (on) {
            // ★ 撤销排队中的灭灯（否则防抖窗口一到，刚要亮的灯又被自己灭掉）
            cancelOff();
            if (!listenEnabled() || !wakeEnabled() || !ready) {
                return;
            }
            int idx = lastIndex > 0 ? lastIndex : 1;
            lastIndex = idx;
            /* ★★★ v1.3.210：回退 —— 直接调<b>完整动画</b>（send(idx, ON)）。
               v1.3.206~209 试过「单颗直写」（只写最后定格那一颗、不播动画）：
               两轮实测灯都亮不起来 —— 灯效服务收尾那次清灯是**异步**落到硬件的，
               我们直写的那一颗会被它盖掉；209 加了「写完补三刀」也没救回来
               （详见 LIGHTS-灯组与灯效.md §抢灯冲突）。
               ⇒ 认了：这 24 颗灯只能交给灯效服务自己播，回到 send(idx, ON)。
               代价是「播报结束回聆听」会再播一遍 5 秒动画 —— 但至少灯会亮。 */
            if (sListen) {
                return;     // ★ 已亮着就不重播（v1.3.205：动画重播 = 用户看到的「多播一次」）
            }
            send(idx, ON);
            sAnimTs = System.currentTimeMillis();
            sListen = true;
            SessionLog.i("light 拾音灯 on（listening index=" + idx + "，完整动画）");
        } else {
            if (!ready || !sListen) {
                return;
            }
            // ★ v1.3.205：不立刻灭 —— 推迟 OFF_DEBOUNCE_MS，等一等会不会又「亮」。
            //   这里**不清 sListen**：灯还亮着，紧接着的 setListening(true) 会被去重挡住，
            //   于是「灭→亮」整段塌缩成「什么都不做」，动画不再重播。
            cancelOff();
            if (sHandler == null) {
                offNow();
                return;
            }
            sHandler.postDelayed(offTask, OFF_DEBOUNCE_MS);
        }
    }

    /** v1.3.204：拾音灯此刻亮着吗（页面/排障看一眼）。 */
    public static boolean listening() {
        return sListen;
    }

    // ---------------- v1.3.205：灭灯防抖 ----------------

    /** 撤销排队中的延迟灭灯（灯保持现状）。 */
    private static void cancelOff() {
        Handler h = sHandler;
        if (h != null) {
            h.removeCallbacks(offTask);
        }
    }

    /** 立刻灭掉拾音灯（防抖窗口到期 / 同步路径走这里）。 */
    private static void offNow() {
        sAnimTs = 0;
        if (!sListen) {
            return;
        }
        wakeupAllOff();
        pickOff();          // 兜底：把 206~209 那几版可能残留的单颗直写写黑
        sListen = false;
        SessionLog.i("light 拾音灯 off（not listening）");
    }

    /**
     * v1.3.205：会话「硬重启」时用 —— 撤销 setState(IDLE) 排好的灭灯，
     * 让灯一路亮到新会话接手，避免「灭 → 下一毫秒又亮」把动画播两遍。
     */
    public static void keepListening() {
        cancelOff();
    }

    /**
     * 唤醒：点亮拾音灯（流动 → 定格在收音方向）。
     *
     * @param ctx 原厂 {@code ANTHandlerContext}（可为 null，则复用上次的灯位）
     */
    public static void onWakeup(Object ctx) {
        if (!enabled()) {
            SessionLog.i("light wakeup skip: enabled=false (" + why + ")");
            return;
        }
        // v1.3.168：唤醒灯被单独关掉 ⇒ 不点亮（但别去灭灯，免得把氛围灯/播报灯也扫掉）
        if (!wakeEnabled()) {
            SessionLog.i("light wakeup skip: wake_light_off");
            return;
        }
        int angle = readDoa(ctx);
        int idx;
        if (angle >= 0) {
            lastAngle = angle;
            idx = toIndex(angle);
        } else if (lastIndex > 0) {
            idx = lastIndex;      // 复用上次灯位（原厂 turnOnWakeupLastLight 的语义）
        } else {
            idx = 1;              // 实在没有就定在第一颗
        }
        // ★ v1.3.205：灯已经亮着、且还是同一颗 ⇒ 不要再发一次 ON。
        //   原厂灯效服务每收到一条 show 就把动画从头播一遍 —— 会话内唤醒
        //   （state=LISTENING 时又喊一次）以前就是这么「多播一次」的。
        //   只有方向真的变了才更新（用户换了一侧说话，灯该跟着转过去）。
        boolean same = sListen && idx == lastIndex;
        lastIndex = idx;
        cancelOff();
        if (!same) {
            send(idx, ON);
            // v1.3.206：唤醒播的是完整动画，灯由灯效服务接管 —— 单颗记账交回去，
            // 免得后面灭灯时对着一颗已经被动画覆盖的灯位写黑。
            sPickIdx = 0;
        }
        sAnimTs = System.currentTimeMillis();
        sPickIdx = 0;            // 动画接管了灯 ⇒ 单颗记账交回去
        sListen = true;   // v1.3.204：唤醒这一闪也是「聆听灯」的起点
        SessionLog.i("light 拾音灯 on: index=" + idx + " (DOA angle=" + angle + ")"
                + (same ? " (已亮同灯位，跳过重播)" : ""));
    }

    /** 蓝色播报灯开（识别中 / 小智说话中）：先灭拾音灯，再开 loading。 */
    public static void busyOn() {
        // v1.3.168：播报灯被单独关掉 ⇒ 不开（拾音灯照灭，交给 allOff / busyOff 收尾）
        if (!busyEnabled()) {
            return;
        }
        cancelOff();       // v1.3.205：同步灭，先把排队的延迟灭灯撤掉
        sAnimTs = 0;       // 动画已被 close 打断 ⇒ 之后「再亮起」别再等它
        wakeupAllOff();
        pickOff();         // 兜底清残留直写
        sListen = false;   // v1.3.204：听懂了 ⇒ 不是在听了，拾音灯交给播报灯
        send(LIGHT_LOADING, ON);
        SessionLog.i("light 播报灯 on (loading)");
    }

    /** 蓝色播报灯灭。 */
    public static void busyOff() {
        if (!enabled()) {
            return;
        }
        send(LIGHT_LOADING, OFF);
        SessionLog.i("light 播报灯 off");
    }

    /** 全灭（会话收尾兜底）：播报灯 + 24 颗拾音灯。 */
    public static void allOff() {
        if (!enabled()) {
            return;
        }
        cancelOff();       // v1.3.205：同步灭，撤掉排队的延迟灭灯（只灭一次，不重复发 24 条）
        sAnimTs = 0;
        send(LIGHT_LOADING, OFF);
        wakeupAllOff();
        pickOff();         // 兜底清残留直写
        sListen = false;   // v1.3.204
        SessionLog.i("light all off");
    }

    /** 灭掉全部拾音灯（原厂 turnOffALLWakeupLight：1..24 逐条）。 */
    private static void wakeupAllOff() {
        for (int i = 1; i <= LIGHT_COUNT; i++) {
            send(i, OFF);
        }
    }

    // ---------------- 发送 ----------------

    /**
     * 这条灯效是不是动<b>顶部拾音灯</b>的（灯号 1..24 的方向/唤醒/聆听动画，
     * 以及蓝色播报灯 {@link #LIGHT_LOADING}）。
     *
     * <p>★ v1.3.218：夜灯「只亮底部」时用它放行 —— 顶部没被夜灯占，聆听灯照常工作。</p>
     */
    private static boolean isPickup(int arg1) {
        return (arg1 >= 1 && arg1 <= LIGHT_COUNT) || arg1 == LIGHT_LOADING;
    }

    /** 把顶部拾音灯上的东西收干净（聆听灯动画 / 播报灯 / 单颗直写）。 */
    private static void stopPickup() {
        sListen = false;
        sAnimTs = 0;
        sPickIdx = 0;
        wakeupAllOff();
        pickOff();
        send(LIGHT_LOADING, OFF);
    }

    private static void send(int arg1, int arg2) {
        /* ★ v1.3.211：夜灯期间**所有灯效全部停用**（用户明确要求，防止打架）。
           只要夜灯开着，除了夜灯自己那两个 id（503 亮 / 505 灭），
           唤醒灯、播报灯、聆听灯一律不许发 —— 灯效服务一活动就会把我们写的灯抹掉。
           ★ sNightBypass：夜灯自己切换灯的那几步要放行（否则连灭灯都发不出去）。 */
        if (!sNightBypass && (sNightTop || sNightAmb)
                && arg1 != NIGHT_ON && arg1 != NIGHT_OFF && arg1 != AMB_OFF) {
            /* ★ v1.3.218：夜灯**只亮底部**时顶部（拾音灯那 24 颗）没人占
               ⇒ 聆听灯 / 播报灯照常工作（用户要求「夜灯只亮底部的时候聆听灯正常工作」）。
               只有顶部真被夜灯占了（都亮 / 只顶部）才继续拦 —— 那两组都写 B 组，
               放进去就会被守灯那一刀抹掉，也会把夜灯顶盖花。 */
            if (sNightTop || !isPickup(arg1)) {
                return;
            }
        }
        sendRaw(LIGHT_WHAT, arg1, arg2);
    }

    // ---------------- v1.3.206：拾音灯单颗直写 ----------------

    /**
     * 只点亮 / 灭掉拾音灯里的<b>某一颗</b>，<b>不播那 5 秒的流动动画</b>。
     *
     * <p>为什么能有这条路：灯效服务（{@code 0x1000 / idx / 0}）一次 show 就是
     * 25 段 × 200ms 的动画，最后才定格 —— 唤醒时用它没问题（原厂反馈就是这么设计的），
     * 但「播报结束回聆听」「硬重启续接」这类<b>非唤醒</b>的点亮再走它，就变成
     * 每切换一次状态就重播一遍动画。</p>
     *
     * <p>为什么必须借 player 的手：device 寄生在 {@code u0_a8}，实测写
     * {@code /sys/class/leds/multi_leds0/led_color} 直接 {@code Permission denied}
     * （SELinux），而 player 是 {@code system(1000)}、有 native 的
     * {@code LedLight.set_color(mask, color)} ⇒ 只能 HTTP 到它自己的 :8080 代写。
     * 掩码 {@code bit(N-1) = 灯号 N}，拾音灯是灯号 16..39 ⇒ 第 k 颗 = {@code 1L << (14+k)}。</p>
     *
     * @param k  第几颗（1..24）；{@code k <= 0} 表示「灭掉当前那颗」
     * @param on true = 点亮（白），false = 灭
     */
    private static void pick(int k, boolean on) {
        if (on) {
            if (k <= 0 || k == sPickIdx) {
                return;          // 已经亮着同一颗 ⇒ 不重复写
            }
        } else if (sPickIdx <= 0) {
            return;              // 本来就是灭的
        }
        final String url = PICK_URL + (on ? ("on:" + k)
                : (k > 0 ? ("off:" + k) : "off"));
        final int want = on ? k : 0;
        sPickIdx = want;
        new Thread(new Runnable() {
            public void run() {
                try {
                    HttpURLConnection c = (HttpURLConnection) new URL(url).openConnection();
                    try {
                        c.setConnectTimeout(1500);
                        c.setReadTimeout(2500);
                        c.setRequestMethod("GET");
                        c.getResponseCode();
                    } finally {
                        c.disconnect();
                    }
                } catch (Throwable t) {
                    // player 没起 / 8080 还没绑 —— 灯不亮而已，别影响会话
                    SessionLog.i("light 单颗直写失败: " + t);
                }
            }
        }, "r1-light-pick").start();
    }

    /**
     * v1.3.206：把拾音灯那颗写黑。
     *
     * <p>★ 这里<b>总是发一条</b>，不做去重：灯效服务的 {@code close} 只停调度、
     * 不保证把 LED 写黑（503 那种 FORCE 效果就是这样，关不掉），
     * 而「动画定格的那颗」走的是同一套服务 ⇒ 只靠 {@code wakeupAllOff()} 不一定真灭。
     * 按 {@code lastIndex} 显式写黑一次最保险，代价只是一条幂等的 HTTP。</p>
     */
    private static void pickOff() {
        sPickIdx = lastIndex > 0 ? lastIndex : 1;
        pick(0, false);
    }

    /** 直接发一条原厂总线报文（氛围灯走的是 what=4，跟拾音灯不是同一条）。 */
    private static void sendRaw(int what, int arg1, int arg2) {
        try {
            mSend.invoke(msgMgr, Integer.valueOf(what), Integer.valueOf(arg1),
                    Integer.valueOf(arg2), (Parcelable) null);
            lastErr = null;
        } catch (Throwable t) {
            lastErr = "" + t;
            SessionLog.i("light send FAIL what=" + what + " arg1=" + arg1
                    + " arg2=" + arg2 + ": " + t);
        }
    }

    /**
     * v1.3.254：休眠/闭麦灯（id=100）。语音助手关（省电模式）时点亮，开时熄灭。
     *
     * <p>走与原厂 {@code PhicommLightController.turnOnDormantLight()} 同一条总线
     * （{@code 0x1000 / 100 / 0|1}），故直接 sendRaw，<b>不受夜灯守卫影响</b>——
     * 这条灯是「语音已停用」的状态指示，不该被夜灯逻辑误杀；它写的是独立于拾音环（1..24）
     * 的灯位，物理上也不与夜灯打架。</p>
     */
    public static void setDormant(boolean on) {
        sendRaw(LIGHT_WHAT, 100, on ? ON : OFF);
        Log.i(TAG, "R1Lights.setDormant(" + on + ")");
    }

    // ---------------- DOA / index ----------------

    /**
     * 读四麦声源角度：{@code ctx.engine().config().getOption(ASR_FOURMIC_DOA_RESULT)}。
     * 与 {@code DefaultLightsHandler$1} 完全同一条路（原厂就是这么拿方向的）。
     *
     * @return 角度（0..359），读不到返回 -1
     */
    private static int readDoa(Object ctx) {
        if (ctx == null) {
            return -1;
        }
        try {
            Object eng = findMethod(ctx.getClass(), "engine", 0).invoke(ctx);
            if (eng == null) {
                return -1;
            }
            Object cfg = findMethod(eng.getClass(), "config", 0).invoke(eng);
            if (cfg == null) {
                return -1;
            }
            Class<?> optCls = Class.forName(CLS_OPT);
            Object opt = optCls.getField("ASR_FOURMIC_DOA_RESULT").get(null);
            Object v = findMethod(cfg.getClass(), "getOption", 1).invoke(cfg, opt);
            if (v instanceof Integer) {
                return ((Integer) v).intValue();
            }
            return -1;
        } catch (Throwable t) {
            SessionLog.i("light DOA read failed: " + t);
            return -1;
        }
    }

    /** 角度 → 灯位。优先用原厂 {@code PhicommLightIndexProcessor.getIndex}，缺失时自算。 */
    private static int toIndex(int angle) {
        if (mGetIndex != null) {
            try {
                return ((Integer) mGetIndex.invoke(null, Integer.valueOf(angle))).intValue();
            } catch (Throwable ignored) {
            }
        }
        // 24 颗灯、每 15° 一颗（PhicommLightIndexProcessor: NUMBER=24, TAG=15）
        int i = angle / 15 + 1;
        if (i > LIGHT_COUNT) {
            i -= LIGHT_COUNT;
        }
        return i;
    }

    /** 按名字+参数个数找方法（跨 ClassLoader / 接口实现都能命中）。 */
    private static Method findMethod(Class<?> c, String name, int argc) throws NoSuchMethodException {
        for (Class<?> k = c; k != null && k != Object.class; k = k.getSuperclass()) {
            try {
                Method[] ms = k.getDeclaredMethods();
                for (int i = 0; i < ms.length; i++) {
                    if (ms[i].getName().equals(name) && ms[i].getParameterTypes().length == argc) {
                        ms[i].setAccessible(true);
                        return ms[i];
                    }
                }
            } catch (Throwable ignored) {
            }
            try {
                Method[] ms = k.getMethods();
                for (int i = 0; i < ms.length; i++) {
                    if (ms[i].getName().equals(name) && ms[i].getParameterTypes().length == argc) {
                        return ms[i];
                    }
                }
            } catch (Throwable ignored) {
            }
        }
        throw new NoSuchMethodException(name + "/" + argc + " on " + c.getName());
    }

    // ---------------- 调试 ----------------

    /**
     * v1.3.147：Web 调试 {@code /api/act?op=light&v=...}。
     * AI 看不见灯，只能靠「喂参数 + 用户肉眼看」来确认哪条报文对应哪盏灯。
     */
    public static String debug(String v) {
        if (!ready) {
            return "lights not ready: " + why;
        }
        try {
            if (v == null || v.length() == 0 || "wake".equals(v)) {
                sListen = false;    // v1.3.205：调试强制重播一次动画
                onWakeup(null);
                return "拾音灯 index=" + lastIndex + " angle=" + lastAngle;
            }
            // v1.3.204：聆听灯单独试（不看当前是不是已经在聆听）
            if ("listen".equals(v)) {
                sListen = false;
                sAnimTs = 0;
                setListening(true);
                return "聆听灯 on（index=" + lastIndex + "，完整动画）";
            }
            // v1.3.207：排障看一眼 —— 灯总线 / 记账 / 上次失败原因 / 动画剩余
            if ("state".equals(v)) {
                return state();
            }
            if ("idle".equals(v)) {
                cancelOff();        // v1.3.205：调试要的是立刻灭，不走防抖
                offNow();
                return "聆听灯 off";
            }
            if ("busy".equals(v)) {
                busyOn();
                return "播报灯(loading) on";
            }
            if ("off".equals(v)) {
                allOff();
                return "全灭";
            }
            // v1.3.160：救急清灯（灯卡住常亮时）。循环 close 耗空 pending 补位链。
            if ("wipe".equals(v)) {
                return wipe();
            }
            if (v.startsWith("idx:")) {
                int idx = Integer.parseInt(v.substring(4));
                lastIndex = idx;
                send(idx, ON);
                SessionLog.i("light debug idx=" + idx);
                return "拾音灯 index=" + idx + "（手动）";
            }
            if (v.startsWith("angle:")) {
                int a = Integer.parseInt(v.substring(6));
                int idx = toIndex(a);
                lastAngle = a;
                lastIndex = idx;
                send(idx, ON);
                SessionLog.i("light debug angle=" + a + " -> index=" + idx);
                return "angle=" + a + " -> index=" + idx;
            }
            if (v.startsWith("raw:")) {
                String[] p = v.substring(4).split(":");
                int a1 = Integer.parseInt(p[0]);
                int a2 = p.length > 1 ? Integer.parseInt(p[1]) : 0;
                send(a1, a2);
                SessionLog.i("light debug raw arg1=" + a1 + " arg2=" + a2);
                return "raw arg1=" + a1 + " arg2=" + a2;
            }
            /* v1.3.206：单颗直写（不播动画）—— 验「只亮最后一颗」这条新路有没有通。
               pick:7 点亮第 7 颗 / pickoff 灭掉。 */
            if (v.startsWith("pick:")) {
                int k = Integer.parseInt(v.substring(5));
                sPickIdx = 0;       // 调试：强制重写一次
                pick(k, true);
                lastIndex = k;
                SessionLog.i("light debug pick=" + k);
                return "单颗直写 第" + k + " 颗（不播动画，经 player :8080）";
            }
            if ("pickoff".equals(v)) {
                int k = lastIndex > 0 ? lastIndex : 1;
                pickOff();
                return "单颗直写 灭（第" + k + "颗）";
            }
            return "unknown v=" + v
                    + " (wake|listen|idle|busy|off|wipe|state|idx:N|angle:N|raw:A1:A2"
                    + "|pick:N|pickoff)";
        } catch (Throwable t) {
            return "light debug failed: " + t;
        }
    }

    /** 给 Web 状态看：灯模块是否就绪。 */
    public static String state() {
        long rest = sAnimTs > 0 ? (ANIM_MS - (System.currentTimeMillis() - sAnimTs)) : 0;
        return (ready ? ("ok:" + why) : ("off:" + why))
                + " listen=" + sListen + " idx=" + lastIndex + " pick=" + sPickIdx
                + " animRest=" + (rest > 0 ? rest : 0)
                + (lastErr != null ? (" err=" + lastErr) : "");
    }

    // ================= 氛围灯（小飞版那套「灯效设置」） =================
    //
    // 命令语义从魔改 player 的 r1_control.min.js 命令表里扒出来，并在本机用
    // get_info 的 music_light_* 字段逐条自证过（发完字段真的会变、也能复原）：
    //   what=4 arg1=64 arg2=1/0       氛围灯总开关
    //   what=4 arg1=65 arg2=1..200    亮度（默认 100）
    //   what=4 arg1=66 arg2=0..100    颜色渐变速度（默认 4）
    //   what=4 arg1=68 arg2=mode      0 官方 / 1 七彩旋转 / 2 七彩 / 3 七彩旋转1 / 4 单色
    //   what=4 arg1=70 arg2=0xRRGGBB  单色模式的颜色
    // ★ 这些命令由设备控制服务（EchoService）处理，不是拾音灯那个 LightsEffectService；
    //   但两边都挂在同一条原厂 messageCenter 总线上，我们用与拾音灯相同的出口直发。
    // ★ 版本门槛：命令表里 arg1=68 的多状态切换标着 min_ver:1848，本机 ver=1882 ⇒ 适用。
    // ★ 状态回显只能靠本地记录（真实状态在 EchoService 进程里，device 侧读不到），
    //   所以「从没在我们的页面设过」的项显示未知，而不是编一个数。
    //
    // ★★★ 2026-10-16 实测（原厂 player，非小飞魔改版）：
    //   com.phicomm.speaker.player.helpers.PlayerVisualizerHelper 注册了 what=4，
    //   但 notifyMsg() 的 switch(arg1) 只有 case 64/65/66/67 ⇒
    //   **68（效果模式）与 70（自定义颜色）没有任何接收者**（发下去 logcat 零日志，
    //   而 65/66 会有 `PlayerVisualizer: set luma gain:50`）。
    //   原厂唯一的氛围灯是 PlayerVisualizer：15 颗灯同色、色相随 FFT 频谱推进
    //   （LedLight.setColor(0x7FFF, HSBtoColor(hue,1,brightness))）。
    //   ⇒ 页面已把「效果模式 / 颜色」两项撤掉，只留开关（64）。

    private static final int AMB_WHAT = 4;
    private static final int AMB_SWITCH = 64;
    private static final int AMB_LUMA = 65;
    private static final int AMB_CHROMA = 66;
    private static final int AMB_MODE = 68;
    private static final int AMB_COLOR = 70;

    /** 下标即 mode 值 */
    private static final String[] AMB_MODE_NAMES =
            {"官方氛围", "七彩旋转", "七彩", "七彩旋转1", "单色"};

    private static final int A_ON = 0, A_MODE = 1, A_LUMA = 2, A_CHROMA = 3, A_COLOR = 4;
    private static final int A_LEN = 5;

    /**
     * 氛围灯控制入口（Web {@code /api/act?op=amb&v=...}）。
     *
     * @param v on|off|luma:N|chroma:N|mode:N|color:#RRGGBB|color:N|raw:A1:A2|state
     * @return 人类可读结果，直接回显到控制台
     */
    public static String ambient(String v) {
        if (!ready) {
            return "灯总线没起来: " + why;
        }
        int[] st = ambLoad();
        String vv = (v == null) ? "state" : v.trim();
        try {
            if ("state".equals(vv)) {
                return ambDesc(st);
            }
            if ("on".equals(vv) || "off".equals(vv)) {
                int on = "on".equals(vv) ? 1 : 0;
                sendRaw(AMB_WHAT, AMB_SWITCH, on);
                st[A_ON] = on;
                ambSave(st);
                SessionLog.i("ambient switch " + (on == 1 ? "on" : "off"));
                return "氛围灯已" + (on == 1 ? "打开" : "关闭") + ambErr();
            }
            // ★ 量纲对齐原厂：PlayerVisualizer.setLumaGain() 只收 0..100（超了直接 return -1
            //   且什么都不写），以前我们放 1..200 ⇒ 拖过 100 的那一半全是静默失败。
            if (vv.startsWith("luma:")) {
                int n = clampInt(vv.substring(5), 0, 100);
                sendRaw(AMB_WHAT, AMB_LUMA, n);
                st[A_LUMA] = n;
                ambSave(st);
                SessionLog.i("ambient luma=" + n);
                return "亮度=" + n + ambErr();
            }
            // ★ 同上：原厂 setChromaGain() 要求 1..100（0 会被拒）。
            if (vv.startsWith("chroma:")) {
                int n = clampInt(vv.substring(7), 1, 100);
                sendRaw(AMB_WHAT, AMB_CHROMA, n);
                st[A_CHROMA] = n;
                ambSave(st);
                SessionLog.i("ambient chroma=" + n);
                return "渐变速度=" + n + ambErr();
            }
            if (vv.startsWith("mode:")) {
                int n = clampInt(vv.substring(5), 0, 4);
                sendRaw(AMB_WHAT, AMB_MODE, n);
                st[A_MODE] = n;
                ambSave(st);
                SessionLog.i("ambient mode=" + n + " (" + AMB_MODE_NAMES[n] + ")");
                // ★ 原厂 player 不认 68（见类注释）：命令发出去了，但没人收。
                return "效果=" + AMB_MODE_NAMES[n] + "（⚠ 原厂 player 没实现 68，"
                        + "只有小飞魔改版才有效果模式，实测灯不会变）" + ambErr();
            }
            if (vv.startsWith("color:")) {
                int c = parseColor(vv.substring(6));
                if (c < 0) {
                    return "颜色格式不对（要 #66CCFF 或十进制整数）";
                }
                sendRaw(AMB_WHAT, AMB_COLOR, c);
                st[A_COLOR] = c;
                ambSave(st);
                SessionLog.i("ambient color=0x" + Integer.toHexString(c));
                // ★ 同 68：原厂 player 不认 70。
                return "颜色=#" + hex6(c) + "（⚠ 原厂 player 没实现 70，只有小飞魔改版认）"
                        + ambErr();
            }
            if (vv.startsWith("raw:")) {
                String[] p = vv.substring(4).split(":");
                int a1 = Integer.parseInt(p[0].trim());
                int a2 = p.length > 1 ? Integer.parseInt(p[1].trim()) : 0;
                sendRaw(AMB_WHAT, a1, a2);
                return "raw arg1=" + a1 + " arg2=" + a2 + ambErr();
            }
            return "unknown v=" + vv + "（on|off|luma:N|chroma:N|mode:N|color:RRGGBB|state）";
        } catch (Throwable t) {
            return "ambient 出错: " + t;
        }
    }

    /** 给 /api/status 用：氛围灯的本地记录（没设过的项是 -1）。 */
    public static JSONObject ambientState() {
        JSONObject o = new JSONObject();
        int[] st = ambLoad();
        try {
            o.put("ready", ready);
            o.put("on", st[A_ON]);
            o.put("mode", st[A_MODE]);
            o.put("luma", st[A_LUMA]);
            o.put("chroma", st[A_CHROMA]);
            o.put("color", st[A_COLOR]);
            if (st[A_MODE] >= 0 && st[A_MODE] < AMB_MODE_NAMES.length) {
                o.put("modeName", AMB_MODE_NAMES[st[A_MODE]]);
            }
            if (st[A_COLOR] >= 0) {
                o.put("colorHex", "#" + hex6(st[A_COLOR]));
            }
        } catch (Throwable ignored) {
        }
        return o;
    }

    public static String[] ambientModeNames() {
        return AMB_MODE_NAMES;
    }

    // ---------------- 氛围灯：本地记录 ----------------

    private static File ambFile() {
        return new File(app.getFilesDir(), "ambient.txt");
    }

    /** 格式：{@code on=1;mode=2;luma=100;chroma=4;color=6737151}（缺项 = -1 未知） */
    private static int[] ambLoad() {
        int[] v = new int[A_LEN];
        for (int i = 0; i < A_LEN; i++) {
            v[i] = -1;
        }
        if (app == null) {
            return v;
        }
        try {
            File f = ambFile();
            if (!f.exists()) {
                return v;
            }
            byte[] b = new byte[(int) f.length()];
            FileInputStream in = new FileInputStream(f);
            try {
                int n = in.read(b);
                if (n <= 0) {
                    return v;
                }
                for (String kv : new String(b, 0, n, "UTF-8").split(";")) {
                    int eq = kv.indexOf('=');
                    if (eq <= 0) {
                        continue;
                    }
                    String k = kv.substring(0, eq).trim();
                    int val = -1;
                    try {
                        val = Integer.parseInt(kv.substring(eq + 1).trim());
                    } catch (Throwable ignored) {
                    }
                    if ("on".equals(k)) {
                        v[A_ON] = val;
                    } else if ("mode".equals(k)) {
                        v[A_MODE] = val;
                    } else if ("luma".equals(k)) {
                        v[A_LUMA] = val;
                    } else if ("chroma".equals(k)) {
                        v[A_CHROMA] = val;
                    } else if ("color".equals(k)) {
                        v[A_COLOR] = val;
                    }
                }
            } finally {
                in.close();
            }
        } catch (Throwable ignored) {
        }
        return v;
    }

    private static void ambSave(int[] v) {
        if (app == null) {
            return;
        }
        try {
            String s = "on=" + v[A_ON] + ";mode=" + v[A_MODE] + ";luma=" + v[A_LUMA]
                    + ";chroma=" + v[A_CHROMA] + ";color=" + v[A_COLOR];
            FileOutputStream out = new FileOutputStream(ambFile());
            try {
                out.write(s.getBytes("UTF-8"));
            } finally {
                out.close();
            }
        } catch (Throwable ignored) {
        }
    }

    private static String ambDesc(int[] st) {
        return "氛围灯 开关=" + num(st[A_ON]) + " 效果=" + (st[A_MODE] >= 0
                && st[A_MODE] < AMB_MODE_NAMES.length
                ? AMB_MODE_NAMES[st[A_MODE]] + "(" + st[A_MODE] + ")" : "未知")
                + " 亮度=" + num(st[A_LUMA]) + " 渐变=" + num(st[A_CHROMA])
                + " 颜色=" + (st[A_COLOR] >= 0 ? "#" + hex6(st[A_COLOR]) : "未知")
                + "（这些是我们在本页设过的值）";
    }

    private static String num(int v) {
        return v < 0 ? "未知" : String.valueOf(v);
    }

    private static String ambErr() {
        return lastErr == null ? "" : ("  ⚠ 发送异常:" + lastErr);
    }

    private static int clampInt(String s, int lo, int hi) {
        int v = Integer.parseInt(s.trim());
        if (v < lo) {
            v = lo;
        }
        if (v > hi) {
            v = hi;
        }
        return v;
    }

    /** {@code #66CCFF} / {@code 66CCFF} / {@code 6737151} → 0xRRGGBB；解析不了返回 -1 */
    private static int parseColor(String s) {
        String t = s.trim();
        if (t.startsWith("#")) {
            t = t.substring(1);
        }
        try {
            if (t.matches("^[0-9]+$")) {
                return Integer.parseInt(t) & 0xFFFFFF;
            }
            return Integer.parseInt(t, 16) & 0xFFFFFF;
        } catch (Throwable ignored) {
            return -1;
        }
    }

    private static String hex6(int c) {
        String s = Integer.toHexString(c & 0xFFFFFF).toUpperCase();
        while (s.length() < 6) {
            s = "0" + s;
        }
        return s;
    }

    // ---------------- 强制清灯（救急，v1.3.160 保留） ----------------
    //
    // conf 里可能占住运行位的几个效果 id：
    //   503 = 24 颗拾音灯常亮 #ffffff（FORCE，duration=0 永亮）
    //   505 = 24 颗拾音灯常亮 #000000（FORCE）
    //   504 = 15 颗氛围环全黑（FORCE）
    // ★ close 只是停止调度，**LED 会保持最后一帧颜色**，所以想真的灭灯得先
    //   show 一个「黑色」效果把 LED 写黑，再 close 掉它腾出运行位。
    private static final int[] WIPE_IDS = {503, 505, 504, LIGHT_LOADING};

    /**
     * 强制清灯（救急）：循环 close 掉可能残留的灯效。
     * ★ LightsEffectService 在 close 一个 active 后会从 pending 补位复活下一个，
     *   所以要多轮 close 才能把补位链耗空（终点日志：
     *   "no pending light need to show!" / "no active light, can not close!"）。
     * ★ 老进程（pid 已死）留下的效果我们 close 不掉 ⇒ 真卡住只能重启音箱。
     */
    public static String wipe() {
        if (!ready) {
            return "灯总线没起来: " + why;
        }
        cancelOff();
        sListen = false;
        for (int i = 0; i < 6; i++) {
            for (int id : WIPE_IDS) {
                send(id, OFF);
            }
        }
        SessionLog.i("light wipe（" + (6 * WIPE_IDS.length) + " 条 close 清 pending 补位链）");
        return "已发 " + (6 * WIPE_IDS.length) + " 条 close。仍常亮说明是旧进程残留"
                + "（owner pid 不是我们）⇒ 只能重启音箱";
    }

    // ================= MCP：self.r1light.*（v1.3.157） =================

    /**
     * 小智侧的灯控入口。与音乐工具分开前缀（self.r1light.*），
     * 这样「自定义音乐库」关掉时灯还能控 —— 那是两码事。
     *
     * @param op  {@code ambient}
     * @param a   MCP arguments（各项都可省略，只传要改的）
     * @return 直接给模型转述的文本
     */
    public static String mcp(String op, JSONObject a) {
        try {
            if ("ambient".equals(op)) {
                return ambientMcp(a);
            }
            /* v1.3.211：夜灯 —— 让音箱当小夜灯用（拾音灯全亮 / 氛围灯全亮，可只开一样）。
               ★ 夜灯期间所有灯效全部停用（唤醒灯、播报灯、聆听灯都不再闪），
                 说「关掉夜灯」才恢复。 */
            if ("night".equals(op)) {
                return nightMcp(a);
            }
            return "unknown light tool: " + op;
        } catch (Throwable t) {
            return "ERR " + t;
        }
    }

    /**
     * v1.3.211：夜灯的 MCP 包装。
     *
     * <p>参数都是可选的，顺序固定为 {@code on → top → amb → color → luma}，
     * 「开夜灯并调成暖橙色 30%」可以一次传好几项。</p>
     */
    private static String nightMcp(JSONObject a) {
        if (!ready) {
            return "灯总线没起来: " + why;
        }
        if (a == null || a.length() == 0) {
            return night("state");
        }
        StringBuilder sb = new StringBuilder();
        if (a.has("on")) {
            boolean on = parseOnOff(a.optString("on", null), true);
            sb.append(night(on ? "on" : "off")).append("；");
        }
        if (a.has("top")) {
            sb.append(night("top:" + (parseOnOff(a.optString("top", null), true) ? 1 : 0)))
                    .append("；");
        }
        if (a.has("amb")) {
            sb.append(night("amb:" + (parseOnOff(a.optString("amb", null), true) ? 1 : 0)))
                    .append("；");
        }
        /* ★ v1.3.214：part 只是「亮哪一组」的配置，不负责开关
           —— 「改成只亮底部」不该顺手把灯打开。 */
        if (a.has("part")) {
            sb.append(night("part:" + a.optString("part", "both").trim())).append("；");
        }
        if (a.has("color")) {
            String c = a.optString("color", "").trim();
            if (c.startsWith("#")) {
                c = c.substring(1);
            }
            sb.append(night("color:" + c)).append("；");
        }
        if (a.has("luma")) {
            sb.append(night("luma:" + a.optInt("luma", 30))).append("；");
        }
        if (sb.length() == 0) {
            return night("state");
        }
        return sb.toString();
    }

    /** 氛围灯可以一次改多项（「开灯并调成蓝色」），逐项下发后拼起来回给模型。 */
    private static String ambientMcp(JSONObject a) {
        if (!ready) {
            return "灯总线没起来: " + why;
        }
        if (a == null || a.length() == 0) {
            return ambient("state");
        }
        StringBuilder sb = new StringBuilder();
        if (a.has("on")) {
            boolean on = parseOnOff(a.optString("on", null), true);
            sb.append(ambient(on ? "on" : "off")).append("；");
        }
        if (a.has("mode")) {
            sb.append(ambient("mode:" + a.optInt("mode", 0))).append("；");
        }
        if (a.has("luma")) {
            sb.append(ambient("luma:" + a.optInt("luma", 100))).append("；");
        }
        if (a.has("chroma")) {
            sb.append(ambient("chroma:" + a.optInt("chroma", 4))).append("；");
        }
        if (a.has("color")) {
            String c = a.optString("color", "");
            if (c.trim().length() > 0) {
                sb.append(ambient("color:" + c)).append("；");
            }
        }
        String s = sb.toString();
        return s.length() == 0 ? ambient("state") : s;
    }

    /** {@code on/开/亮/1/true} ⇒ true；{@code off/关/灭/0/false} ⇒ false；其它 ⇒ 默认。 */
    private static boolean parseOnOff(String v, boolean def) {
        if (v == null) {
            return def;
        }
        String t = v.trim();
        if (t.length() == 0) {
            return def;
        }
        if (t.equalsIgnoreCase("on") || t.equals("1") || t.equalsIgnoreCase("true")
                || t.equals("开") || t.equals("亮") || t.equals("打开")) {
            return true;
        }
        if (t.equalsIgnoreCase("off") || t.equals("0") || t.equalsIgnoreCase("false")
                || t.equals("关") || t.equals("灭") || t.equals("关闭")) {
            return false;
        }
        return def;
    }
}
