package cn.workbuddy.r1client;

import android.os.Process;
import android.os.SystemClock;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;

/**
 * v1.3.191：给 USC 唤醒引擎的 native 线程让出 CPU / 调度。
 *
 * 起因（2026-10-19 A-B-A 实证）：播电台（以及任何走 NuPlayer 的在线流）时，
 * 起播后约 6 秒会卡 3~4 秒，然后一路流畅。对照实验结果是：
 *
 * | 组 | device 进程 | 起播停顿 |
 * |----|------------|---------|
 * | A  device 活着（106% CPU） | 4.001 s |
 * | B  am force-stop device   | 0 次 buffer low |
 * | C  拉回来再测             | 4.001 s |
 *
 * ⇒ 卡顿与我们写的代码无关，也与「查询播放状态」无关，是 **Unisound 的 native 线程
 * 把 mediaserver / 网络收包 / AudioTrack 挤死了**。线程剖面：
 *
 *   usc_record_thre  48.2%  nice -19
 *   usc_fix_thread   40.4%  nice -8
 *   usc_vad_thread    9.6%  nice -8   （合计 ~107%，**空闲时也 108%**，是常驻开销）
 *
 * 致命的不是占用率而是**优先级**：这些线程 nice 是 -19/-8，等于它们的 vruntime
 * 增长远慢于普通线程，CFS 永远先排它们。而整机 load 只有 1.1~1.3（四核），
 * 机器根本不忙 —— 是「优先级挤死」不是「算力不够」。
 *
 * 关键点：这些线程**在我们自己的进程里**（com.phicomm.speaker.device），所以可以
 * 在进程内调 {@code Process.setThreadPriority(tid, nice)} 降它们的优先级。
 * （adb shell renice 不行：Operation not permitted —— 缺 CAP_SYS_NICE；
 *   进程内对自己的线程调用则不需要该 capability。）
 *
 * ★ 另一个已确认的事实：还有一个 usc_record_thre 是 **SCHED_FIFO / rt_priority 99**。
 * 那种 RT 线程 **nice 对它完全无效**（RT 线程不参与 CFS 的 nice 加权），setpriority 只能改它的
 * nice 字段、改不动它的调度策略。好在它实测 CPU 占用很低（累计只有其他 usc 线程的 1/30），
 * 基本一直在睡眠 ⇒ 先不管它；真要剥夺它需要 native 层的 sched_setscheduler，将来再说。
 * 使用方式（web 控制台 op=cool）：
 *   op=cool            —— 当前状态（是否降级、降级了几个线程）
 *   op=cool&v=probe    —— 剖析：本进程线程 CPU% top12 + 相关进程总 CPU%
 *   op=cool&v=on[&n=N] —— 把 usc_* 降到 nice N（默认 10=BACKGROUND）
 *   op=cool&v=off      —— 恢复原 nice
 */
public final class CpuGovernor {

    /** /proc 的时钟频率（ticks/s），ARM Linux 恒为 100。 */
    private static final long HZ = 100L;

    /** 默认降级到的 nice：Android THREAD_PRIORITY_BACKGROUND = 10。 */
    public static final int DEFAULT_NICE = 10;

    /** 要降级的线程名前缀。 */
    public static final String PREFIX = "usc";

    /** tid → 降级前的 nice（-19/-8…），用于 v=off 精确恢复。 */
    private static final LinkedHashMap<Integer, Integer> ORIG =
            new LinkedHashMap<Integer, Integer>();

    private static volatile boolean cooled = false;
    private static volatile long coolSinceMs = 0L;
    private static volatile int coolNice = DEFAULT_NICE;

    private CpuGovernor() {
    }

    // ------------------------------------------------------------------
    // 数据结构
    // ------------------------------------------------------------------
    public static final class TI {
        public final int tid;
        public final String name;
        /** task_prio：普通线程 = 20+nice；RT 线程 = -1-rt_priority（负到 -100）。 */
        public final int prio;
        public final int nice;
        /** utime+stime（累计 ticks）。 */
        public final long cpu;

        TI(int tid, String name, int prio, int nice, long cpu) {
            this.tid = tid;
            this.name = name;
            this.prio = prio;
            this.nice = nice;
            this.cpu = cpu;
        }
    }

    // ------------------------------------------------------------------
    // /proc 读取
    // ------------------------------------------------------------------
    private static String readAll(File f) {
        FileInputStream in = null;
        try {
            in = new FileInputStream(f);
            byte[] b = new byte[8192];
            int n = in.read(b);
            if (n <= 0) {
                return "";
            }
            return new String(b, 0, n, "UTF-8");
        } catch (Throwable t) {
            return "";
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable t2) {
                    // ignore
                }
            }
        }
    }

    /**
     * 解析 {@code /proc/<pid>/stat}。字段下标（去掉 comm 之后，以 state 为 0 号）：
     * 11=utime 12=stime 15=prio 16=nice。comm 可能含空格 ⇒ 用最后一个 ')' 切。
     */
    private static TI stat(String path) {
        String s = readAll(new File(path));
        if (s.length() == 0) {
            return null;
        }
        s = s.trim();
        int lp = s.lastIndexOf(')');
        if (lp <= 0) {
            return null;
        }
        String head = s.substring(0, lp);
        int ob = head.indexOf('(');
        if (ob <= 0) {
            return null;
        }
        String name = head.substring(ob + 1, lp);
        int tid;
        try {
            tid = Integer.parseInt(head.substring(0, ob).trim());
        } catch (Throwable t) {
            return null;
        }
        String[] f = s.substring(lp + 2).split(" ");
        if (f.length < 20) {
            return null;
        }
        try {
            long ut = Long.parseLong(f[11]);
            long st = Long.parseLong(f[12]);
            int prio = Integer.parseInt(f[15]);
            int nice = Integer.parseInt(f[16]);
            return new TI(tid, name, prio, nice, ut + st);
        } catch (Throwable t) {
            return null;
        }
    }

    private static TI stat(int pid) {
        return stat("/proc/" + pid + "/stat");
    }

    private static TI statSelf(int tid) {
        return stat("/proc/self/task/" + tid + "/stat");
    }

    /** 本进程全部线程。 */
    public static ArrayList<TI> scan() {
        ArrayList<TI> out = new ArrayList<TI>();
        String[] dirs = new File("/proc/self/task").list();
        if (dirs == null) {
            return out;
        }
        for (int i = 0; i < dirs.length; i++) {
            try {
                TI t = statSelf(Integer.parseInt(dirs[i].trim()));
                if (t != null) {
                    out.add(t);
                }
            } catch (Throwable t) {
                // ignore
            }
        }
        return out;
    }

    private static ArrayList<TI> targets(ArrayList<TI> all, String prefix) {
        ArrayList<TI> out = new ArrayList<TI>();
        for (int i = 0; i < all.size(); i++) {
            TI t = all.get(i);
            if (t.name.startsWith(prefix)) {
                out.add(t);
            }
        }
        return out;
    }

    // ------------------------------------------------------------------
    // 动作
    // ------------------------------------------------------------------
    /** 把 usc_* 线程的 nice 降到 {@code nice}，返回人读的多行报告。 */
    public static String cool(int nice) {
        ArrayList<TI> tg = targets(scan(), PREFIX);
        if (tg.size() == 0) {
            return "本进程里没有 " + PREFIX + "* 线程（USC 引擎没起？）";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("cool → nice ").append(nice).append('\n');
        for (int i = 0; i < tg.size(); i++) {
            TI t = tg.get(i);
            Integer old = ORIG.get(Integer.valueOf(t.tid));
            if (old == null) {
                ORIG.put(Integer.valueOf(t.tid), Integer.valueOf(t.nice));
                old = Integer.valueOf(t.nice);
            }
            String err = "";
            try {
                Process.setThreadPriority(t.tid, nice);
            } catch (Throwable e) {
                err = " SET_ERR:" + e;
            }
            TI after = statSelf(t.tid);
            int n2 = after == null ? -999 : after.nice;
            int p2 = after == null ? -999 : after.prio;
            boolean rt = t.prio < 0;
            sb.append("  ").append(t.name).append(" #").append(t.tid)
                    .append("  nice ").append(old).append("→").append(n2)
                    .append("   prio ").append(t.prio).append("→").append(p2)
                    .append(err);
            if (rt) {
                sb.append("   [RT rt_priority=").append(-1 - t.prio)
                        .append("：改 nice 改不动它的调度]");
            }
            sb.append('\n');
        }
        cooled = true;
        coolNice = nice;
        coolSinceMs = SystemClock.elapsedRealtime();
        SessionLog.i("cpu: cool nice=" + nice + " threads=" + tg.size());
        sb.append("已降级 ").append(tg.size()).append(" 个线程。");
        return sb.toString();
    }

    /** 恢复降级前的 nice。 */
    public static String restore() {
        if (ORIG.size() == 0) {
            cooled = false;
            return "没有待恢复的线程（没降级过）";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("restore\n");
        int ok = 0;
        Iterator it = ORIG.entrySet().iterator();
        while (it.hasNext()) {
            java.util.Map.Entry me = (java.util.Map.Entry) it.next();
            int tid = ((Integer) me.getKey()).intValue();
            int nice = ((Integer) me.getValue()).intValue();
            String err = "";
            try {
                Process.setThreadPriority(tid, nice);
            } catch (Throwable e) {
                err = " SET_ERR:" + e;
            }
            TI after = statSelf(tid);
            sb.append("  #").append(tid).append(" → nice ")
                    .append(after == null ? "?" : String.valueOf(after.nice)).append(err).append('\n');
            ok++;
        }
        ORIG.clear();
        cooled = false;
        SessionLog.i("cpu: restore threads=" + ok);
        sb.append("已恢复 ").append(ok).append(" 个线程。");
        return sb.toString();
    }

    public static String state() {
        StringBuilder sb = new StringBuilder();
        sb.append(cooled ? "已降级" : "未降级")
                .append("  nice=").append(coolNice)
                .append("  线程=").append(ORIG.size());
        if (cooled) {
            long ms = SystemClock.elapsedRealtime() - coolSinceMs;
            sb.append("  已持续 ").append(ms / 1000L).append('s');
        }
        ArrayList<TI> tg = targets(scan(), PREFIX);
        sb.append('\n');
        for (int i = 0; i < tg.size(); i++) {
            TI t = tg.get(i);
            sb.append("  ").append(t.name).append(" #").append(t.tid)
                    .append("  nice=").append(t.nice)
                    .append("  prio=").append(t.prio)
                    .append(t.prio < 0 ? "  (RT/FIFO)" : "").append('\n');
        }
        return sb.toString();
    }

    // ------------------------------------------------------------------
    // 剖析
    // ------------------------------------------------------------------
    private static LinkedHashMap<Integer, TI> mapOf(ArrayList<TI> l) {
        LinkedHashMap<Integer, TI> m = new LinkedHashMap<Integer, TI>();
        for (int i = 0; i < l.size(); i++) {
            m.put(Integer.valueOf(l.get(i).tid), l.get(i));
        }
        return m;
    }

    /** 找出名字里含关键字的进程 pid（只看 /proc 顶层数字目录的 cmdline）。 */
    private static LinkedHashMap<String, Integer> findPids(String[] keys) {
        LinkedHashMap<String, Integer> out = new LinkedHashMap<String, Integer>();
        String[] ps = new File("/proc").list();
        if (ps == null) {
            return out;
        }
        for (int i = 0; i < ps.length; i++) {
            int pid;
            try {
                pid = Integer.parseInt(ps[i].trim());
            } catch (Throwable t) {
                continue;
            }
            String cmd = readAll(new File("/proc/" + pid + "/cmdline")).replace('\0', ' ').trim();
            if (cmd.length() == 0) {
                continue;
            }
            for (int k = 0; k < keys.length; k++) {
                if (cmd.indexOf(keys[k]) >= 0 && !out.containsKey(cmd)) {
                    out.put(cmd, Integer.valueOf(pid));
                    break;
                }
            }
        }
        return out;
    }

    /**
     * 剖析：先采一次 → 睡 winMs → 再采一次，按 delta 算 CPU%。
     * 输出本进程 top12 + 相关进程总 CPU%。
     */
    public static String probe(long winMs) {
        if (winMs < 200L) {
            winMs = 200L;
        }
        if (winMs > 5000L) {
            winMs = 5000L;
        }
        String[] keys = {"com.phicomm.speaker.device", "com.phicomm.speaker.player",
                "/system/bin/mediaserver"};
        LinkedHashMap<String, Integer> pids = findPids(keys);

        LinkedHashMap<Integer, TI> a = mapOf(scan());
        LinkedHashMap<String, Long> p1 = new LinkedHashMap<String, Long>();
        Iterator it0 = pids.entrySet().iterator();
        while (it0.hasNext()) {
            java.util.Map.Entry e = (java.util.Map.Entry) it0.next();
            TI t = stat(((Integer) e.getValue()).intValue());
            p1.put((String) e.getKey(), Long.valueOf(t == null ? 0L : t.cpu));
        }

        long t0 = SystemClock.elapsedRealtime();
        SystemClock.sleep(winMs);
        long real = SystemClock.elapsedRealtime() - t0;

        LinkedHashMap<Integer, TI> b = mapOf(scan());
        StringBuilder sb = new StringBuilder();
        sb.append("=== 采样窗口 ").append(real).append("ms ===\n");

        // 进程级
        it0 = pids.entrySet().iterator();
        while (it0.hasNext()) {
            java.util.Map.Entry e = (java.util.Map.Entry) it0.next();
            int pid = ((Integer) e.getValue()).intValue();
            TI t = stat(pid);
            long dd = (t == null ? 0L : t.cpu) - p1.get(e.getKey()).longValue();
            double pct = dd * 100.0 / (real / 1000.0 * HZ);
            sb.append("  进程 ").append(trimName((String) e.getKey())).append(" [").append(pid).append("]  ")
                    .append(fmt(pct)).append("%\n");
        }

        // 线程级 top12
        ArrayList<TI> delta = new ArrayList<TI>();
        Iterator it = b.entrySet().iterator();
        while (it.hasNext()) {
            java.util.Map.Entry e = (java.util.Map.Entry) it.next();
            int tid = ((Integer) e.getKey()).intValue();
            TI aft = (TI) e.getValue();
            TI bef = a.get(Integer.valueOf(tid));
            long dd = aft.cpu - (bef == null ? aft.cpu : bef.cpu);
            if (dd < 0) {
                dd = 0;
            }
            delta.add(new TI(tid, aft.name, aft.prio, aft.nice, dd));
        }
        Collections.sort(delta, new Comparator<TI>() {
            public int compare(TI x, TI y) {
                if (x.cpu < y.cpu) {
                    return 1;
                }
                if (x.cpu > y.cpu) {
                    return -1;
                }
                return 0;
            }
        });
        sb.append("--- 本进程线程 top12 ---\n");
        int n = Math.min(12, delta.size());
        for (int i = 0; i < n; i++) {
            TI t = delta.get(i);
            double pct = t.cpu * 100.0 / (real / 1000.0 * HZ);
            if (pct < 0.5 && i > 5) {
                break;
            }
            sb.append("  ").append(t.name).append(" #").append(t.tid)
                    .append("  cpu ").append(fmt(pct)).append('%')
                    .append("  nice ").append(t.nice)
                    .append(t.prio < 0 ? "  RT" : "").append('\n');
        }
        return sb.toString();
    }

    private static String trimName(String cmd) {
        String s = cmd;
        int sp = s.indexOf(' ');
        if (sp > 0) {
            s = s.substring(0, sp);
        }
        int sl = s.lastIndexOf('/');
        if (sl >= 0) {
            s = s.substring(sl + 1);
        }
        if (s.length() > 34) {
            s = s.substring(0, 34);
        }
        return s;
    }

    private static String fmt(double v) {
        String s = String.valueOf((long) (v * 10 + 0.5));
        if (s.length() <= 1) {
            return "0";
        }
        return s.substring(0, s.length() - 1) + "." + s.substring(s.length() - 1);
    }
}
