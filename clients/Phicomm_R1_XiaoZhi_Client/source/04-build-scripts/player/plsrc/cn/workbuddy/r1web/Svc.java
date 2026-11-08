package cn.workbuddy.r1web;

import com.phicomm.speaker.player.model.EasyPlayer;
import com.phicomm.speaker.player.model.RemotePlayer;

import org.json.JSONObject;

/**
 * DLNA / AirPlay 的<b>功能开关</b>（设置页「外部播放源」一栏）。
 *
 * <p>★ 用户 2026-10-17 纠正：要开关的是「程序里的功能」，<b>进程要保留</b>
 * （:DlnaPlayer / :AirPlayer 一直在跑，别动它 —— 第一版做成 unbind+stopService+kill
 * 是错的方向，已废）。</p>
 *
 * <p>★ 真开关是 AIDL 里的 {@code IPlayer.startServer()} / {@code stopServer()}
 * （TRANSACTION 0x11 / 0x12）：
 * <pre>
 *   DlnaPlayer2.startServer()   → startEngine() → initRenderService()  （renderer 起来，手机才搜得到）
 *   AirPortPlayer.startServer() → shairportWrapper.startShairport() + jmdns 广播
 * </pre>
 * 而整个原厂代码里<b>没有任何一处调用过它</b>（只在接口定义和 AIDL Stub/Proxy 里出现）
 * ⇒ 这就是「功能都关着、手机搜不到」的根因：不是开关被拨到关，是压根没人去开。
 * RemotePlayer 没有暴露这两个方法，所以走反射：拿它的 {@code mIPlayer}
 * （服务端的远程代理 {@code IPlayer$Stub$Proxy}）再 invoke。</p>
 *
 * <p>★★ 状态不靠「上次点了什么」的记录（用户 2026-10-17 明确要求「按记录不准」），
 * 直接读内核 socket 表 —— 功能活着就一定占着端口，差分实验实测（2026-10-17）：</p>
 * <pre>
 *   DLNA   开 → /proc/net/udp 出现 :076C（UDP 1900，SSDP/WSDD）
 *   AirPlay 开 → /proc/net/tcp 出现 :138A（TCP 5002，RAOP）LISTEN
 * </pre>
 * 开关与端口痕迹严格同步（关就消失、开就出现），比任何客户端记录都真。
 * 进程也要报（dlnaProc / airProc）—— 进程是功能的载体，进程没了功能一定没，
 * 但进程在 ≠ 功能开着，两个一起看。</p>
 */
public final class Svc {

    /** DLNA renderer 起来后占的 UDP 端口 1900 = 0x76C（SSDP/WSDD）。 */
    private static final int P_DLNA = 0x76C;
    /** AirPlay shairport 起来后占的 TCP 端口 5002 = 0x138A（RAOP）。 */
    private static final int P_AIR = 0x138A;

    private static final String F_DLNA = "mDlnaPlayer";
    private static final String F_AIR = "mAirPortPlayer";

    /**
     * 开 / 关一个外部播放功能（页面按钮入口 = <b>用户手动操作</b>）。
     *
     * <p>pl-1.6.2：执行完把「手动意图」记到账本（{@link #saveManual}）——
     * 这不是状态记录（状态永远读端口），而是「用户想要什么」的账：
     * 被系统自动停掉时按它决定要不要补开（{@link #autoReopenLater}）。</p>
     *
     * @param which "dlna" 或 "airplay"
     * @param on    true = startServer（开功能），false = stopServer（关功能）
     */
    public static String set(String which, boolean on) {
        if (!"dlna".equals(which) && !"airplay".equals(which)) {
            return "未知服务: " + which;
        }
        // 先执行再记账 —— 哪怕这次没生效，用户的意图也已经表达了，
        // 后续自动补开以这本账为准。
        String r = on ? openOnly(which) : closeOnly(which);
        saveManual(which, on);
        return r;
    }

    /** startServer（含 connectRemoteService 确保 bind）。autoReopenLater 也走它。 */
    static String openOnly(String which) {
        String name = "dlna".equals(which) ? "DLNA" : "AirPlay";
        RemotePlayer rp = rp("dlna".equals(which) ? F_DLNA : F_AIR);
        if (rp == null) {
            return "拿不到原厂的 RemotePlayer（EasyPlayer 还没起来？）";
        }
        try {
            // 绑定要在，否则拿不到远端代理（进程本来就在，这里只是确保 bind）
            rp.connectRemoteService();
            Thread.sleep(1500);
            Object ip = PCtl.field(rp, "mIPlayer");
            if (ip == null) {
                return name + " 服务还没连上（mIPlayer 为空），等两秒再点一次";
            }
            ip.getClass().getMethod("startServer").invoke(ip);
            Boot.log("svc " + name + " startServer OK");
            Thread.sleep(1500);
        } catch (Throwable t) {
            Boot.log("svc " + name + ": " + t);
            return name + " 开启失败: " + t;
        }
        /* 读真状态回报，不拿自己的记录忽悠 */
        boolean up = "dlna".equals(which) ? dlnaUp() : airUp();
        return name + " 功能已开启（" + (up ? "端口已就绪" : "端口没起来，可能没生效") + "）";
    }

    /** stopServer。 */
    static String closeOnly(String which) {
        String name = "dlna".equals(which) ? "DLNA" : "AirPlay";
        RemotePlayer rp = rp("dlna".equals(which) ? F_DLNA : F_AIR);
        if (rp == null) {
            return "拿不到原厂的 RemotePlayer（EasyPlayer 还没起来？）";
        }
        try {
            Object ip = PCtl.field(rp, "mIPlayer");
            if (ip == null) {
                return name + " 服务还没连上（mIPlayer 为空），等两秒再点一次";
            }
            ip.getClass().getMethod("stopServer").invoke(ip);
            Boot.log("svc " + name + " stopServer OK");
            Thread.sleep(1500);
        } catch (Throwable t) {
            Boot.log("svc " + name + ": " + t);
            return name + " 关闭失败: " + t;
        }
        boolean up = "dlna".equals(which) ? dlnaUp() : airUp();
        return name + " 功能已关闭（" + (up ? "端口还在，可能没生效" : "端口已退出") + "）";
    }

    /* ---------- pl-1.6.2 手动意图账本 + 被系统停掉后自动补开 ---------- */

    private static final String F_MANUAL = "r1_svc_manual.txt";

    /**
     * 用户是否<b>手动开过</b>这个功能。
     *
     * <p>规则（用户 2026-10-17）：手动开过的，被系统停掉后自动补开；
     * 手动关过的、或从来没手动开过的，绝不自动补开。</p>
     */
    public static boolean manualOn(String which) {
        try {
            java.util.Properties p = manual();
            return "1".equals(p.getProperty(which));
        } catch (Throwable t) {
            return false;
        }
    }

    private static java.util.Properties manual() {
        java.util.Properties p = new java.util.Properties();
        try {
            java.io.File f = new java.io.File(WebSrv.app.getFilesDir(), F_MANUAL);
            if (f.exists()) {
                java.io.FileInputStream in = new java.io.FileInputStream(f);
                p.load(in);
                in.close();
            }
        } catch (Throwable t) {
            Boot.log("svc manual 读账本: " + t);
        }
        return p;
    }

    public static synchronized void saveManual(String which, boolean on) {
        try {
            java.util.Properties p = manual();
            p.setProperty(which, on ? "1" : "0");
            java.io.FileOutputStream o =
                    new java.io.FileOutputStream(new java.io.File(
                            WebSrv.app.getFilesDir(), F_MANUAL));
            p.store(o, "");
            o.close();
        } catch (Throwable t) {
            Boot.log("svc manual 记账: " + t);
        }
    }

    private static final Object REOPEN_LOCK = new Object();

    /** 补开观察窗口长度（ms）：stopServer 后端口是<b>异步</b>释放的，实测 0~4s 都可能。 */
    private static final long REOPEN_WINDOW_MS = 5000;
    /** 窗口内采样间隔（ms）。 */
    private static final long REOPEN_GAP_MS = 500;
    /** 蓝牙补开的固定延迟（沿用旧版 2.5s：蓝牙没有端口可判，只能按时补一次）。 */
    private static final long REOPEN_BT_DELAY_MS = 2500;

    private static volatile long reopenTill = 0;
    private static volatile boolean reopenRunning = false;

    /**
     * ★★ pl-1.6.20：外部引擎被原厂停掉的那一刻 —— 由 smali 钩子
     * {@code EasyPlayer.shutdownAllExternalConnectPlayer → Boot.onExternalShutdown}
     * 打进来。
     *
     * <p>为什么这是比「我们播歌了吗」更准的触发：{@code shutdownAllExternalConnectPlayer}
     * 是原厂<b>唯一</b>停这三个引擎的地方（本地接管 / 切源 / 超时都会走到它），
     * 它一被调用，DLNA / AirPlay / 蓝牙就注定要没了 —— 不用等我们播了歌再反向猜。</p>
     *
     * <p>为什么判据用端口而不是「推流停了没有」：手机主动断开时推流也会停，
     * 但 renderer 还在、手机还能再推 ⇒ 不该补开；只有<b>端口没了</b>才是真死了。
     * 而且端口消失的时刻不晚于推流停的时刻，所以又准又不慢。</p>
     */
    public static void onExternalShutdown() {
        watchReopen("shutdownAllExternalConnectPlayer");
    }

    /**
     * 兼容旧调用点（{@code PCtl.ensureBusy} 里手动触发）：跟
     * {@link #onExternalShutdown()} 走同一条路，同一个窗口里合并成一次。
     *
     * @param reason 触发原因（进日志）
     */
    public static void autoReopenLater(final String reason) {
        watchReopen(reason);
    }

    /**
     * 起一个<b>有界</b>的补开观察窗口：窗口内反复看端口真值，谁没了就补谁。
     *
     * <p>对比 pl-1.6.20 之前那版 45 秒常驻巡检：那是用「永远轮询」去 cover
     * 「端口异步释放（0~4s）」这一件几秒钟的事，代价与收益不对等。
     * 现在改成事件驱动 —— 空闲时一个线程都不存在，只在真被停掉之后盯 5 秒。</p>
     *
     * <p>三条闸门（缺一不可）：① 账本说用户手动开过才管；② 判据永远是端口真值；
     * ③ 同一时刻只有一个窗口（重复触发只续期，不叠线程）。</p>
     */
    public static void watchReopen(final String reason) {
        // ① 用户从没手动开过任何一样 ⇒ 直接返回，不启线程、不读端口（零成本）
        if (!manualOn("dlna") && !manualOn("airplay") && !manualOn("bt")) {
            return;
        }
        synchronized (REOPEN_LOCK) {
            reopenTill = System.currentTimeMillis() + REOPEN_WINDOW_MS;   // 续期
            if (reopenRunning) {
                return;                     // ③ 已有窗口在跑，续期就够了
            }
            reopenRunning = true;
        }
        new Thread(new Runnable() {
            public void run() {
                try {
                    long t0 = System.currentTimeMillis();
                    boolean[] done = new boolean[2];        // 0=dlna 1=airplay
                    boolean btDone = false;
                    while (true) {
                        boolean pending = false;
                        for (int i = 0; i < 2; i++) {
                            if (done[i]) {
                                continue;
                            }
                            String w = i == 0 ? "dlna" : "airplay";
                            if (!manualOn(w)) {             // 账本说不用管
                                done[i] = true;
                                continue;
                            }
                            boolean up = i == 0 ? dlnaUp() : airUp();
                            if (up) {
                                pending = true;     // 还在（可能还没释放完）⇒ 继续盯
                                continue;
                            }
                            Boot.log("svcReopen: " + w + " 端口已消失（" + reason
                                    + "），账本要求开 ⇒ 补开");
                            Boot.log("svcReopen: " + openOnly(w));
                            done[i] = true;
                        }
                        if (!btDone && manualOn("bt")) {
                            if (System.currentTimeMillis() - t0 >= REOPEN_BT_DELAY_MS) {
                                Boot.log("svcReopen: bt 引擎可能被停（" + reason
                                        + "），账本要求开 ⇒ 补开");
                                Bt.reopenEngine();  // adapter 没开→enable、引擎停了→startServer
                                btDone = true;
                            } else {
                                pending = true;     // 还没到 2.5s，继续等
                            }
                        }
                        if (!pending) {
                            break;                  // 都处理完 / 都不用管
                        }
                        if (System.currentTimeMillis() >= reopenTill) {
                            break;                  // 窗口到点（引擎一直没被停 = 不用补）
                        }
                        Thread.sleep(REOPEN_GAP_MS);
                    }
                } catch (Throwable t) {
                    Boot.log("svcReopen: " + t);
                } finally {
                    synchronized (REOPEN_LOCK) {
                        reopenRunning = false;
                    }
                }
            }
        }, "r1web-svc-reopen").start();
    }

    /**
     * 状态快照 —— 全部是「实际读到的事实」，没有一处是我们自己记的账：
     * <ul>
     *   <li>{@code dlna}/{@code airplay}：内核 socket 表里功能端口在不在</li>
     *   <li>{@code dlnaPlaying}/{@code airPlaying}：问 :DlnaPlayer/:AirPlayer
     *       进程里的真实播放引擎（AIDL {@code isPlaying()}）—— 手机推流中才为 true</li>
     *   <li>{@code dlnaProc}/{@code airProc}：服务进程在不在</li>
     *   <li>{@code manualDlna}/{@code manualAir}/{@code manualBt}：pl-1.6.93 起把
     *       <b>用户意图账本</b>也报出来 —— 排「记账失效」时一眼就能分清是
     *       「账本没写进去」还是「账本对但没人补开」。</li>
     * </ul>
     */
    public static JSONObject state() {
        JSONObject o = new JSONObject();
        try {
            o.put("dlna", dlnaUp());
            o.put("airplay", airUp());
            o.put("dlnaPlaying", playing("dlna"));
            o.put("airPlaying", playing("airplay"));
            o.put("dlnaProc", Sys.hasProc(":DlnaPlayer"));
            o.put("airProc", Sys.hasProc(":AirPlayer"));
            /* pl-1.6.93：账本（用户想要什么）—— 与实际状态分开报，排障用 */
            o.put("manualDlna", manualOn("dlna"));
            o.put("manualAir", manualOn("airplay"));
            o.put("manualBt", manualOn("bt"));
        } catch (Throwable t) {
            // ignore
        }
        return o;
    }

    /**
     * 外部引擎是否在出声：走 AIDL 代理问 :DlnaPlayer / :AirPlayer 进程里的
     * {@code IPlayer.isPlaying()}（DLNA 实现在自己进程的 MusicPlayEngineImpl 上，
     * AirPlay 在 ShairportWrapper 上 —— 都不是本进程能直接看到的，只能 Binder 问）。
     * 代理没连上（功能从没开过）/ 进程死了都算 false。
     */
    public static boolean playing(String which) {
        try {
            RemotePlayer rp = rp("dlna".equals(which) ? F_DLNA : F_AIR);
            if (rp == null) {
                return false;
            }
            Object ip = PCtl.field(rp, "mIPlayer");
            if (ip == null) {
                return false;
            }
            Object r = ip.getClass().getMethod("isPlaying").invoke(ip);
            return Boolean.TRUE.equals(r);
        } catch (Throwable t) {
            return false;
        }
    }

    /**
     * DLNA renderer 是否真在跑：/proc/net/udp 有没有 UDP 1900(0x076C)。
     * DMR 的 SSDP 监听就是这个端口（renderer 走 UDP，没有 TCP LISTEN，
     * 别拿 netstat -ltn 当失败证据）。
     *
     * <p>★ pl-1.6.19：IPv6 表也要查 —— 见 {@link #airUp()}。</p>
     */
    public static boolean dlnaUp() {
        return portOpen("/proc/net/udp", P_DLNA, false)
                || portOpen("/proc/net/udp6", P_DLNA, false);
    }

    /**
     * AirPlay shairport 是否真在跑：/proc/net/tcp 有没有 TCP 5002(0x138A) LISTEN。
     *
     * <p>★★ pl-1.6.19：只查 IPv4 表会<b>恒假</b>。本机 2026-10-19 实测内核 socket 表：</p>
     * <pre>
     *   UDP 1900 (DLNA/SSDP) → 只在 /proc/net/udp
     *   UDP 5353 (mDNS)      → 只在 /proc/net/udp6
     *   TCP 8080 (控制台)     → 只在 /proc/net/tcp6
     *   TCP 5012            → 两张表都有
     * </pre>
     * ⇒ 「哪个服务落哪张表」没有规律，只查一张必然漏。shairport/jmdns 这类
     * 走 mDNS 的服务尤其可能只开 IPv6 socket（AF_INET6 双栈），
     * 于是 AirPlay 明明开着、端口也在，页面却永远显示「关」
     * （回报文案读的就是这个方法）。两张表都查才算数。
     */
    public static boolean airUp() {
        return portOpen("/proc/net/tcp", P_AIR, true)
                || portOpen("/proc/net/tcp6", P_AIR, true);
    }

    /**
     * 读内核 socket 表找端口。
     *
     * @param proto    "/proc/net/udp" 或 "/proc/net/tcp"
     * @param hexPort  端口（十六进制形式写，如 0x76C = 1900）
     * @param listen   true 时还要状态位是 0A（LISTEN），UDP 用 false
     */
    private static boolean portOpen(String proto, int hexPort, boolean listen) {
        java.io.BufferedReader br = null;
        try {
            br = new java.io.BufferedReader(
                    new java.io.FileReader(proto), 1024);
            String port = String.format("%04X", hexPort);
            String l;
            while ((l = br.readLine()) != null) {
                String[] t = l.trim().split("\\s+");
                if (t.length < 4) {
                    continue;
                }
                int c = t[1].indexOf(':');
                if (c < 0 || !t[1].substring(c + 1).equals(port)) {
                    continue;
                }
                if (!listen || "0A".equals(t[3])) {
                    return true;
                }
            }
        } catch (Throwable t) {
            Boot.log("svc port " + proto + ": " + t);
        } finally {
            try {
                if (br != null) {
                    br.close();
                }
            } catch (Throwable t) {
                // ignore
            }
        }
        return false;
    }

    /** 反射拿 EasyPlayer 里那两个 RemotePlayer 字段（编译期不能引用私有成员）。 */
    private static RemotePlayer rp(String field) {
        try {
            EasyPlayer ep = PCtl.ep();
            if (ep == null) {
                return null;
            }
            java.lang.reflect.Field f = EasyPlayer.class.getDeclaredField(field);
            f.setAccessible(true);
            return (RemotePlayer) f.get(ep);
        } catch (Throwable t) {
            Boot.log("svc field " + field + ": " + t);
            return null;
        }
    }

    private Svc() {
    }

    /* ================= pl-1.6.93：开机按账本恢复 + 静默死亡看门狗 =================
     *
     * 症状（用户 2026-10-28）：DLNA / AirPlay「记账似乎又失效了，非主动关闭不会
     * 自动打开」。实测：装完新 player（13:27 重启）后两个功能都是关的，日志里
     * 一条 svc 相关记录都没有 —— 也就是说压根没人尝试补开。
     *
     * 根因不是账本坏了，而是<b>触发面太窄</b>：上面那套补开只挂在
     * ① 原厂 shutdownAllExternalConnectPlayer（本地接管/切源时才调）
     * ② PCtl.ensureBusy
     * 这两条都是「播放动作」捎带出来的。而 <b>player 重启</b>（装机、切引擎、
     * 进程被杀）根本不经过它们：重启后外部引擎本来就没起，原厂也没得可停
     * ⇒ 事件不发生 ⇒ 账本说「用户开过」，功能却一直关着，直到下次播放才可能补。
     *
     * 修法两条：
     *  · restoreOnBoot()：启动后按账本主动恢复一次（等 EasyPlayer/mIPlayer 就绪，
     *    失败重试 4 次，每次隔 3 秒）；
     *  · startWatch()：15 秒看门狗，专治「静默死亡」（引擎自己退出、:DlnaPlayer 崩了、
     *    端口被系统回收 —— 这些都不走 shutdownAllExternalConnectPlayer）。
     *    每个服务 2 分钟最多试一次，连续失败退到 10 分钟，避免起不来时刷屏。
     * 两条都只认「账本要求开」—— 用户手动关掉的（账本=0）绝不自动开。
     */

    /** 开机按账本恢复（由 Boot.attach 在 EasyPlayer bind 之后调用）。 */
    public static void restoreOnBoot() {
        new Thread(new Runnable() {
            public void run() {
                try {
                    Thread.sleep(3000);          // 让 bind / mIPlayer 再稳一点
                } catch (Throwable t) {
                    // ignore
                }
                restoreOne("dlna");
                restoreOne("airplay");
                if (manualOn("bt")) {
                    try {
                        Boot.log("svcRestore: bt 账本要求开 ⇒ reopenEngine");
                        Bt.reopenEngine();
                    } catch (Throwable t) {
                        Boot.log("svcRestore bt: " + t);
                    }
                }
                /* ★ 恢复跑完再起看门狗。pl-1.6.93 的第一版是两件事同时起，
                   watchdog 首轮立刻发现「端口不在」⇒ 和 restore 抢着 startServer，
                   日志里每个功能都开两次（幂等所以没坏，但白折腾）。 */
                startWatch();
            }
        }, "r1web-svc-restore").start();
    }

    private static void restoreOne(String w) {
        String name = "dlna".equals(w) ? "DLNA" : "AirPlay";
        if (!manualOn(w)) {
            Boot.log("svcRestore: " + name + " 账本没开过 ⇒ 不动");
            return;
        }
        if (upOf(w)) {
            Boot.log("svcRestore: " + name + " 已经在跑，不用补");
            return;
        }
        for (int i = 0; i < 4; i++) {
            Boot.log("svcRestore: " + name + " 账本要求开但端口不在 ⇒ 补开(" + (i + 1) + ")");
            Boot.log("svcRestore: " + openOnly(w));
            if (upOf(w)) {
                return;
            }
            try {
                Thread.sleep(3000);
            } catch (Throwable t) {
                // ignore
            }
        }
    }

    private static boolean upOf(String w) {
        return "dlna".equals(w) ? dlnaUp() : airUp();
    }

    private static volatile boolean sWatching = false;
    private static final long WATCH_MS = 15000;

    /** 静默死亡看门狗（进程内单例，重复调用只起一个线程）。 */
    public static void startWatch() {
        synchronized (Svc.class) {
            if (sWatching) {
                return;
            }
            sWatching = true;
        }
        new Thread(new Runnable() {
            public void run() {
                long[] lastTry = new long[2];
                int[] fails = new int[2];
                /* 首轮先等一个周期：刚启动时 restoreOnBoot 正在补开，
                   这一轮要是立刻检查就会和它抢（见 restoreOnBoot 里的注释）。 */
                try {
                    Thread.sleep(WATCH_MS);
                } catch (Throwable t) {
                    // ignore
                }
                lastTry[0] = lastTry[1] = System.currentTimeMillis();
                while (true) {
                    try {
                        for (int i = 0; i < 2; i++) {
                            String w = i == 0 ? "dlna" : "airplay";
                            if (!manualOn(w)) {
                                continue;            // 用户没要 ⇒ 零成本跳过
                            }
                            if (upOf(w)) {
                                fails[i] = 0;
                                continue;
                            }
                            long now = System.currentTimeMillis();
                            long gap = (fails[i] >= 3) ? 600000 : 120000;
                            if (now - lastTry[i] < gap) {
                                continue;
                            }
                            lastTry[i] = now;
                            fails[i]++;
                            Boot.log("svcWatch: " + w + " 关了但账本要求开 ⇒ 补开(第"
                                    + fails[i] + "次)");
                            Boot.log("svcWatch: " + openOnly(w));
                        }
                    } catch (Throwable t) {
                        Boot.log("svcWatch: " + t);
                    }
                    try {
                        Thread.sleep(WATCH_MS);
                    } catch (Throwable t) {
                        // ignore
                    }
                }
            }
        }, "r1web-svc-watch").start();
    }
}
