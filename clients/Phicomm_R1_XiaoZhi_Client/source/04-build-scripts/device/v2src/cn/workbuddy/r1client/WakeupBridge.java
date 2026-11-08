package cn.workbuddy.r1client;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/**
 * 云知声唤醒事件桥接器 —— R1 版最关键的一环。
 *
 * ============ 为什么不用自己跑 KWS ============
 *
 * R1 出厂固件里已经跑着一套完整的云知声（Unisound）四麦唤醒引擎：
 *   - 宿主进程：com.phicomm.speaker.device（label=Pandora，V3.2.5.2）
 *   - native 库：libus4.so（com.unisound.jni.Uni4micHalJNI）等，位于固件 /system/lib，
 *     不在任何 APK 内 —— 这是「无法移植」的铁证
 *   - 引擎独占四麦阵列 HAL（openAudioIn 走的是 RK3229 的 4mic 硬件通路）
 *
 * 与其在自己进程里再跑一遍 sherpa-onnx KWS（吃 CPU、还要和原厂抢麦），
 * 不如直接「搭车」：原厂引擎每识别到唤醒词，就会往 msgcenter 总线上
 * 投递一条 type=33554432 的事件。
 *
 * ============ 总线上抓到的真实样本 ============
 *
 *   [bus33554432] what=33554432 arg1=3 arg2=-1
 *     val={"data":{"wakeupWord":"小讯小讯","wakeupType":1},
 *          "from":"unisound","key":"wakeup",
 *          "msgId":"3e2dd4bf-5945-40cc-a7b1-a553f9e5282e"}
 *
 * （"小讯小讯" 在日式日志里显示为乱码 "灏忚灏忚"，
 *   是 UTF-8 被按 GBK 再按 UTF-8 解读两层的经典三明治乱码。）
 *
 * 紧接着总线会出现 type=4096 的 24 连发（subType=1..24, arg1=1）——
 * 那是原厂 App 收到唤醒事件后点亮的「全灯效」。
 *
 * ============ 三个必须踩准的实现细节 ============
 *
 * 【坑 1】接口名是内部类，不是顶层类
 *   错误写法：Class.forName("android.os.IMessageReceiver")
 *     → ClassNotFoundException。R1(API22) 的 boot classloader 根本找不到它，
 *       因为隐藏 API 被 @hide 从公开 SDK 抹掉了。
 *   正确写法：Class.forName("android.os.MessageDispatchManager$MessageReceiver")
 *     → 这是 manager 的静态内部接口，本机确实存在（旧 probe 实测可用）。
 *
 * 【坑 2】不要硬编码 registerMessageReceiver 的签名
 *   遍历 getMethods()，用 `pt[0].isAssignableFrom(iface)` 动态校验参数类型。
 *   不同 ROM 的签名顺序可能是 (receiver, typeMask) 或 (typeMask, receiver)。
 *
 * 【坑 3】InvocationHandler 不能给原始类型返回 null
 *   系统会对 receiver 代理调用 equals()，若返回 null，
 *   MessageDispatchManager 拆箱 boolean 时就 NPE
 *   （旧 probe APK 正是死在这行：MessageDispatchManager.java:184）。
 */
public final class WakeupBridge {

    private static final String TAG = "R1CLIENT";

    /** 唤醒事件所在的消息域（msgcenter type 掩码位） */
    public static final int TYPE_WAKEUP = 33554432;

    /**
     * 唤醒后是否把原厂 App 踢出后台。
     *
     * ⚠️ 保持 false。实测结论：原厂 Pandora 进程既是「总线事件的来源」，
     * 也是「云端会话的发起方」。杀掉它会连唤醒事件一起掐掉，属于自断粮道。
     * 原厂连它的死云端（aios-home.hivoice.cn）报错/闪灯这点副作用，
     * 忍了比杀掉更划算。
     */
    private static final boolean KILL_UNISOUND_AFTER_WAKEUP = false;

    public interface OnWakeup {
        /** @param word 唤醒词（原厂配置，正常为「小讯小讯」） */
        void onWakeup(String word);
    }

    private final Context ctx;
    private final OnWakeup cb;
    private final Handler main = new Handler(Looper.getMainLooper());

    private Object dispatchMgr;
    private Object receiverProxy;
    private Method mRegister;
    private Method mUnregister;
    private volatile boolean registered;

    public WakeupBridge(Context ctx, OnWakeup cb) {
        this.ctx = ctx.getApplicationContext();
        this.cb = cb;
    }

    // ------------------------------------------------------------------
    //  注册 / 注销
    // ------------------------------------------------------------------

    /**
     * 注册到 msgcenter 总线。
     * 注意：普通 APK（非 system 签名、无 root）也能注册成功 ——
     * R1 ROM 对 msgcenter 没做签名校验，实测 8 个 type 全部 REGISTERED。
     */
    public boolean register() {
        if (registered) {
            return true;
        }
        try {
            // 1) 取 MessageDispatchManager
            dispatchMgr = ctx.getSystemService("msgcenter");
            if (dispatchMgr == null) {
                Log.e(TAG, "msgcenter service is null");
                return false;
            }
            Class<?> mgrCls = dispatchMgr.getClass();
            Log.i(TAG, "msgcenter manager class = " + mgrCls.getName());

            // 2) 找 receiver 接口 —— 按可能性排序全试一遍
            Class<?> ifaceCls = null;
            String[] candidates = {
                    "android.os.MessageDispatchManager$MessageReceiver", // 实测可用
                    "android.os.IMessageReceiver",                        // 部分 ROM
                    "android.os.MessageDispatchManager$IReceiver",        // 兜底
            };
            for (String cn : candidates) {
                try {
                    ifaceCls = Class.forName(cn);
                    Log.i(TAG, "receiver iface resolved: " + cn);
                    break;
                } catch (Throwable ignored) {
                }
            }

            // 3) 名字全失败 → 从 registerMessageReceiver 的签名反查接口类型
            if (ifaceCls == null) {
                ifaceCls = guessIfaceFromMethod(mgrCls);
                if (ifaceCls != null) {
                    Log.i(TAG, "receiver iface guessed: " + ifaceCls.getName());
                }
            }

            if (ifaceCls == null) {
                Log.e(TAG, "receiver interface not found; tried "
                        + candidates.length + " names + method-signature scan");
                return false;
            }
            final Class<?> fiface = ifaceCls;

            // 4) 动态代理出 receiver 实现
            receiverProxy = Proxy.newProxyInstance(
                    fiface.getClassLoader(),
                    new Class<?>[]{fiface},
                    new InvocationHandler() {
                        @Override
                        public Object invoke(Object proxy, Method method, Object[] args) {
                            String name = method.getName();
                            try {
                                if ("notifyMsg".equals(name) || "sendMessage".equals(name)
                                        || "onMessage".equals(name)) {
                                    handleMessage(method, args);
                                    return primitiveDefault(method.getReturnType());
                                }
                                // ⚠️ 坑 3：Binder 体系会调用这几个，返回 null 会导致拆箱 NPE
                                if ("equals".equals(name)) {
                                    return proxy == (args != null && args.length > 0 ? args[0] : null);
                                }
                                if ("hashCode".equals(name)) {
                                    return System.identityHashCode(proxy);
                                }
                                if ("toString".equals(name)) {
                                    return "R1WakeupReceiver@" + Integer.toHexString(
                                            System.identityHashCode(proxy));
                                }
                                if ("asBinder".equals(name)) {
                                    return null;
                                }
                                if ("describeContents".equals(name)) {
                                    return Integer.valueOf(0);
                                }
                                return primitiveDefault(method.getReturnType());
                            } catch (Throwable t) {
                                Log.e(TAG, "receiver.invoke(" + name + ") threw", t);
                                return primitiveDefault(method.getReturnType());
                            }
                        }
                    });

            // 5) 遍历所有 registerMessageReceiver 重载，动态匹配签名
            mRegister = findRegister(mgrCls, fiface);
            if (mRegister == null) {
                Log.e(TAG, "no matching registerMessageReceiver(receiver,int) on " + mgrCls.getName());
                dumpMethods(mgrCls);
                return false;
            }

            mRegister.setAccessible(true);
            Object ret = mRegister.invoke(dispatchMgr, receiverProxy, TYPE_WAKEUP);
            registered = true;
            Log.i(TAG, "wakeup bridge REGISTERED on type=" + TYPE_WAKEUP
                    + " via " + mRegister + " ret=" + ret);
            return true;
        } catch (Throwable t) {
            Log.e(TAG, "wakeup bridge register failed", t);
            return false;
        }
    }

    public synchronized void unregister() {
        if (!registered) {
            return;
        }
        try {
            if (mUnregister == null) {
                mUnregister = findMethodByArgc(dispatchMgr.getClass(),
                        "unregisterMessageReceiver", 1);
            }
            if (mUnregister != null && dispatchMgr != null && receiverProxy != null) {
                mUnregister.setAccessible(true);
                mUnregister.invoke(dispatchMgr, receiverProxy);
            }
        } catch (Throwable t) {
            Log.w(TAG, "unregister threw", t);
        }
        registered = false;
        Log.i(TAG, "wakeup bridge unregistered");
    }

    // ------------------------------------------------------------------
    //  消息处理
    // ------------------------------------------------------------------

    /**
     * 回调参数形态（API22 实测，方法名 notifyMsg）：
     *   [0] int what   = 33554432
     *   [1] int arg1   = 3
     *   [2] int arg2   = -1
     *   [3] Parcelable payload —— 反射 getValue() 取出的字符串才是真正内容
     */
    private void handleMessage(Method method, Object[] args) {
        if (args == null || args.length < 4) {
            return;
        }
        final int what = toInt(args[0], -1);
        if (what != TYPE_WAKEUP) {
            return;
        }
        String val = payloadToString(args[3]);

        Log.i(TAG, "[wakeup-bus] " + method.getName() + " what=" + what
                + " arg1=" + args[1] + " arg2=" + args[2] + " val=" + val);

        // v1.3.163：同一条总线上，player 还会推「当前曲目」（arg1=1）：
        //   val=[{"singer":"周杰伦","songName":"晴天","music_id":"100_local_MUSIC_1149",…}]
        // 这是我们**脱离 8080（小飞 WS）之后唯一能拿到真实曲名/歌手**的通道 ——
        // 原厂 player 也有，而且切歌即刻推送，比 8080 的 get_info 轮询更实时。
        // （以前只认 wakeup，其它一律 ignored，这条信息白白丢掉了。）
        if (val != null && val.indexOf("\"songName\"") >= 0 && toInt(args[1], -1) == 1) {
            String bs = jsonField(val, "songName");
            PlayerBridge.onBusSong(jsonField(val, "singer"),
                    bs, jsonField(val, "music_id"));
            tailKickWatch(bs);   // ★ v1.3.296：尾集播完回卷检测 → 整批续拉下一批
            return;
        }

        // 只认 key=wakeup 的事件（同域还有别的用途，如唤醒词同步回复）
        if (val != null && !val.contains("\"key\":\"wakeup\"")) {
            Log.i(TAG, "[wakeup-bus] not a wakeup event, ignored");
            return;
        }

        final String word = extractWakupWord(val);
        Log.i(TAG, "*** BUS WAKEUP: " + word);

        if (KILL_UNISOUND_AFTER_WAKEUP) {
            try {
                android.app.ActivityManager am = (android.app.ActivityManager)
                        ctx.getSystemService(Context.ACTIVITY_SERVICE);
                if (am != null) {
                    am.killBackgroundProcesses("com.phicomm.speaker.device");
                }
            } catch (Throwable ignored) {
            }
        }

        main.post(new Runnable() {
            @Override
            public void run() {
                if (cb != null) {
                    cb.onWakeup(word);
                }
            }
        });
    }

    /**
     * 从 payload 里抠出 wakeupWord。
     * 不引 org.json（不进 dex），用最朴素的下标切割。
     */
    private static String extractWakupWord(String json) {
        if (json == null) {
            return "unknown";
        }
        final String k = "\"wakeupWord\":\"";
        int i = json.indexOf(k);
        if (i < 0) {
            return "unknown";
        }
        int s = i + k.length();
        int e = json.indexOf('"', s);
        if (e <= s) {
            return "unknown";
        }
        return json.substring(s, e);
    }

    /**
     * v1.3.163：从 JSON 里抠一个字符串字段（不引 org.json，同 extractWakupWord 的路子）。
     * 找不到 / 不是字符串值就返回 ""。
     */
    private static String jsonField(String json, String key) {
        if (json == null || key == null) {
            return "";
        }
        final String k = "\"" + key + "\":\"";
        int i = json.indexOf(k);
        if (i < 0) {
            return "";
        }
        int s = i + k.length();
        StringBuilder sb = new StringBuilder();
        for (int p = s; p < json.length(); p++) {
            char c = json.charAt(p);
            if (c == '"') {
                break;
            }
            if (c == '\\' && p + 1 < json.length()) {
                p++;
                sb.append(json.charAt(p));
                continue;
            }
            sb.append(c);
        }
        return sb.toString();
    }

    /**
     * 把 Parcelable 负载转成字符串。
     * R1 上的实现是 ParcelableUtil.obtain(...)，必须反射 getValue()。
     */
    private static String payloadToString(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            Method gv = obj.getClass().getMethod("getValue");
            Object v = gv.invoke(obj);
            if (v != null) {
                return String.valueOf(v);
            }
        } catch (Throwable ignored) {
        }
        try {
            return String.valueOf(obj);
        } catch (Throwable ignored) {
            return null;
        }
    }

    // ------------------------------------------------------------------
    //  反射工具
    // ------------------------------------------------------------------

    /**
     * 找 registerMessageReceiver：2 参，一参可接受我们的代理、另一参是 int。
     * 兼容参数顺序颠倒的 ROM。
     */
    private static Method findRegister(Class<?> mgrCls, Class<?> ifaceCls) {
        for (Method m : mgrCls.getMethods()) {
            if (!"registerMessageReceiver".equals(m.getName())) {
                continue;
            }
            Class<?>[] pt = m.getParameterTypes();
            if (pt.length != 2) {
                continue;
            }
            boolean recvFirst = pt[0].isAssignableFrom(ifaceCls) && pt[1] == int.class;
            boolean intFirst = pt[0] == int.class && pt[1].isAssignableFrom(ifaceCls);
            if (recvFirst || intFirst) {
                return m;
            }
        }
        return null;
    }

    /** 按方法名 + 参数个数在类及其父类/接口中查找 */
    private static Method findMethodByArgc(Class<?> cls, String name, int argc) {
        for (Class<?> c = cls; c != null && c != Object.class; c = c.getSuperclass()) {
            for (Method m : c.getDeclaredMethods()) {
                if (m.getName().equals(name) && m.getParameterTypes().length == argc) {
                    return m;
                }
            }
        }
        for (Class<?> itf : cls.getInterfaces()) {
            for (Method m : itf.getMethods()) {
                if (m.getName().equals(name) && m.getParameterTypes().length == argc) {
                    return m;
                }
            }
        }
        return null;
    }

    /**
     * 兜底：从 manager 的 registerMessageReceiver 签名反查接口类型。
     * 完全不依赖接口名字，适合名字对不上的杂牌 ROM。
     */
    private static Class<?> guessIfaceFromMethod(Class<?> mgrCls) {
        for (Method m : mgrCls.getMethods()) {
            if (!"registerMessageReceiver".equals(m.getName())) {
                continue;
            }
            Class<?>[] pt = m.getParameterTypes();
            if (pt.length != 2) {
                continue;
            }
            if (pt[0].isInterface()) {
                Log.i(TAG, "iface guessed from method sig (param0): " + pt[0].getName());
                return pt[0];
            }
            if (pt[1].isInterface()) {
                Log.i(TAG, "iface guessed from method sig (param1): " + pt[1].getName());
                return pt[1];
            }
        }
        return null;
    }

    /** 失败时把 manager 的方法清单打出来，便于定位 */
    private static void dumpMethods(Class<?> cls) {
        try {
            for (Method m : cls.getMethods()) {
                Log.i(TAG, "  method: " + m);
            }
        } catch (Throwable ignored) {
        }
    }

    private static int toInt(Object o, int def) {
        if (o instanceof Integer) {
            return (Integer) o;
        }
        if (o instanceof Number) {
            return ((Number) o).intValue();
        }
        return def;
    }

    /** 给 InvocationHandler 用的返回值兜底，绝不返回 null 给原始类型 */
    private static Object primitiveDefault(Class<?> rt) {
        if (rt == null || !rt.isPrimitive() || rt == void.class) {
            return null;
        }
        if (rt == boolean.class) return Boolean.FALSE;
        if (rt == byte.class) return Byte.valueOf((byte) 0);
        if (rt == char.class) return Character.valueOf((char) 0);
        if (rt == short.class) return Short.valueOf((short) 0);
        if (rt == int.class) return Integer.valueOf(0);
        if (rt == long.class) return Long.valueOf(0L);
        if (rt == float.class) return Float.valueOf(0f);
        if (rt == double.class) return Double.valueOf(0d);
        return null;
    }

    /* ================= ★ v1.3.296：节目尾集播完回卷检测 =================
     * 背景：整批（如 1~20 集）推进 player 后，player 内核按循环模式播完批尾
     * 会回卷到批首 —— ab_next 的队列快路径这时只会「切第 2 集」，
     * 永远拉不到下一批（21+），听书就困在整批循环里。
     * 这里在总线换曲处检测「上一曲是节目行（第N集，N>1）且 新曲集号变小」
     * （= 内核回卷），后台 dispatch ab_play 显式播 ep+1 ⇒ 走完整候选链整批续拉。
     * 只认节目行（类型词/第N集判据与 PlayerBridge.abLikely 同口径），
     * 歌曲循环播放不受影响；手动从尾集跳回前面的集也会触发（低频，可接受）。 */
    private static final java.util.regex.Pattern TK_WORD_RE = java.util.regex.Pattern.compile(
            "声音剧|广播剧|有声书|有声小说|有声剧|听书|评书|评弹|相声|单田芳|袁阔成|郭德纲|于谦|岳云鹏|德云社|紫襟|头陀渊|青雪");
    private static final java.util.regex.Pattern TK_EP_RE = java.util.regex.Pattern.compile(
            "第\\s*\\d+\\s*[集回话章]|第[一二三四五六七八九十百千]+\\s*[集回话章]");
    private static String tkPrevTitle = "";
    private static long tkLastKick = 0;

    private static void tailKickWatch(String title) {
        try {
            String prev = tkPrevTitle;
            tkPrevTitle = (title == null) ? "" : title;
            if (prev == null || prev.length() == 0 || title == null || title.length() == 0) {
                return;
            }
            int pe = tkEpNo(prev);
            int ne = tkEpNo(title);
            if (pe <= 1 || ne <= 0 || ne >= pe) {
                return;                       // 只认「集号变小」的回卷
            }
            if (!tkLikely(prev)) {
                return;                       // 上一曲必须是节目行
            }
            long now = System.currentTimeMillis();
            if (now - tkLastKick < 15000) {
                return;                       // 冷却 15s：重推队列再推同一曲不重复触发
            }
            /* ★ v1.3.303 门①：30s 内我们自己推过队列 = 用户手动点播/重播，
               不是内核自然回卷 —— 绝不 kick（1.3.302 当晚实测：点 215 集后
               tail-kick 拿 40 分钟前残留的 ep219 记忆当回卷，自己发起「续播
               ep220」把正在听的队列顶掉；13:10 那次更把《道诡异仙》顶回队列）。 */
            if (PlayerBridge.recentPushMs(30000)) {
                Log.w(TAG, "[tail-kick] recent push (manual play) => skip \""
                        + title + "\"");
                return;
            }
            /* ★ v1.3.303 门②：上一曲必须是**当前队列的最后一行** —— 内核循环
               回卷时上一曲必然是队尾；手动跳集/重播时 prev 对不上当前队尾。 */
            if (!PlayerBridge.isQueueTailTitle(prev)) {
                Log.w(TAG, "[tail-kick] prev \"" + prev
                        + "\" is not current queue tail => skip");
                return;
            }
            /* ★ v1.3.303：书名优先拿**队列尾行自己的元数据**（slot[4]，push 时就写好的
               本书名）—— 裸标题「第N集　标题」从标题劈必出垃圾；tkBookOf 只作兜底。 */
            String bk = PlayerBridge.queueTailBook();
            if (bk == null || bk.trim().length() == 0) {
                bk = tkBookOf(prev);
            }
            if (bk != null) {
                bk = bk.replace("　", " ").trim();   // ★ 全角空格也算空白（trim 剥不掉 U+3000）
            }
            if (bk == null || bk.trim().length() == 0
                    || TK_EP_RE.matcher(bk.trim()).matches()) {
                /* ★ v1.3.298：提不出书名（如旧占位行「第1738集」）⇒ 宁可不续拉，
                   也不发 q=第1738集 这种垃圾搜索（会播错书）。 */
                Log.w(TAG, "[tail-kick] no book in \"" + prev + "\" => skip");
                return;
            }
            org.json.JSONObject a = new org.json.JSONObject();
            /* ★ v1.3.298：带上「我的节目」里这本书的精确 albumId —— 兜底 ab_play
               也不许靠书名猜版本（同名多版本播错书的根因）。 */
            org.json.JSONObject pEnt = Prog.findByName(bk);
            /* ★ v1.3.303 门③：书名必须能在「我的节目」精确命中且带 albumId ——
               命不中宁可放弃续拉，绝不发裸书名 ab_play（q=　黑血刀 这种垃圾）。 */
            String paid = pEnt == null ? "" : pEnt.optString("albumId", "").trim();
            if (pEnt == null || paid.length() == 0) {
                Log.w(TAG, "[tail-kick] book \"" + bk
                        + "\" not in Prog (no albumId) => skip");
                return;
            }
            tkLastKick = now;
            Log.w(TAG, "[tail-kick] loop-back: ep" + pe + " -> ep" + ne
                    + " \"" + title + "\" => play ep=" + (pe + 1));
            a.put("book", bk);
            a.put("albumId", paid);
            String pnar = pEnt.optString("narrator", "").trim();
            if (pnar.length() > 0) {
                a.put("narrator", pnar);
            }
            a.put("ep", pe + 1);
            final org.json.JSONObject arg = a;
            new Thread(new Runnable() { public void run() {
                try {
                    /* ★ v1.3.297：优先走 ProgPlay（仿收藏：缓存整批占位入列），
                       缓存不可用再回退 ab_play 现搜。 */
                    String r = ProgPlay.play(arg);
                    if (r == null) {
                        r = PlayerBridge.dispatch("ab_play", arg);
                    }
                    Log.w(TAG, "[tail-kick] play => " + r);
                } catch (Throwable t) {
                    Log.w(TAG, "[tail-kick] dispatch: " + t);
                }
            }}, "tail-kick").start();
        } catch (Throwable t) {
            Log.w(TAG, "[tail-kick] watch: " + t);
        }
    }

    /** 与 PlayerBridge.abLikely 同口径的节目判据（类型词 / 第N集）。 */
    private static boolean tkLikely(String t) {
        if (t == null || t.length() == 0) {
            return false;
        }
        if (TK_WORD_RE.matcher(t).find()) {
            return true;
        }
        return TK_EP_RE.matcher(t).find();
    }

    /** 与 PlayerBridge.abEpNo 同口径：第N集（阿拉伯/中文数字）取集号，认不出 0。 */
    private static int tkEpNo(String title) {
        if (title == null || title.length() == 0) {
            return 0;
        }
        java.util.regex.Matcher m = TK_EP_RE.matcher(title);
        if (!m.find()) {
            return 0;
        }
        String g = m.group();
        java.util.regex.Matcher d = java.util.regex.Pattern.compile("[0-9]+").matcher(g);
        if (d.find()) {
            try {
                return Integer.parseInt(d.group());
            } catch (Throwable t) {
                return 0;
            }
        }
        return tkCnNum(g.replaceAll("[第集回话章\\s　]", ""));
    }

    private static int tkCnNum(String s) {
        if (s == null || s.length() == 0) {
            return 0;
        }
        String D = "零一二三四五六七八九";
        int total = 0, num = 0;
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            int idx = D.indexOf(c);
            if (idx > 0) {
                num = num * 10 + idx;
            } else if (c == '十') {
                total += (num == 0 ? 1 : num) * 10;
                num = 0;
            } else if (c == '百') {
                total += (num == 0 ? 1 : num) * 100;
                num = 0;
            } else if (c == '千') {
                total += (num == 0 ? 1 : num) * 1000;
                num = 0;
            } else if (c == '两') {
                num = num * 10 + 2;
            } else if (idx != 0) {
                return 0;
            }
        }
        return total + num;
    }

    /** 从上一曲标题剥出书名：优先《书名号》；否则剥「第N集 …」后整串；
     *  「我的节目」里能对上的条目优先（返回规范化书名，ab_play 走 loader/历史兜底）。 */
    private static String tkBookOf(String title) {
        try {
            String cand = "";
            int a = title.indexOf('《'), b = title.indexOf('》');
            if (a >= 0 && b > a) {
                cand = title.substring(a + 1, b);
            } else {
                cand = TK_EP_RE.matcher(title).replaceFirst("").trim();
            }
            if (cand.length() == 0) {
                return title;
            }
            org.json.JSONArray ls = Prog.list();
            for (int i = 0; ls != null && i < ls.length(); i++) {
                org.json.JSONObject it = ls.optJSONObject(i);
                String bn = it == null ? "" : it.optString("book", "");
                if (bn.length() > 0 && (bn.indexOf(cand) >= 0 || cand.indexOf(bn) >= 0)) {
                    return bn;
                }
            }
            return cand;
        } catch (Throwable t) {
            return title == null ? "" : title;
        }
    }
}
