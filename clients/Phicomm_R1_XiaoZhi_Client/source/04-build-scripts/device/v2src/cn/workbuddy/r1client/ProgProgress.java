package cn.workbuddy.r1client;

import android.util.Log;

/**
 * 听书进度自记（v1.3.308）。
 *
 * <p>问题：以前「播到第几秒」只有**网页开着**的时候才回写（player.html 每 8 秒
 * POST /api/prog/pos）。语音听书是最常见的用法，网页根本没开 ⇒ 我的节目里
 * 只有集数、lastPos 永远是上次开网页那一刻的旧值（或者 0）。于是用户喊
 * 「继续播放《凡人修仙传》」时，集数对得上，秒数只能从 0:00 起。</p>
 *
 * <p>现在 device 自己每 15 秒记一次：正在播的是节目行 ⇒ 问 player 要当前
 * 秒数（它自己的 /api/status.music.posMs）⇒ 写回 Prog.setProgress。
 * 网页那条路照旧，两边写的是同一份记忆。</p>
 *
 * <p>节流：位置比上次写入前进不足 15 秒就不写（也不回退写 —— 回退说明用户
 * 刚拖过进度条，那就立刻记）。文件写入量 ≈ 听 1 小时 240 次 → 15 秒粒度
 * 实际约 120 次，可忽略。</p>
 */
public final class ProgProgress {

    private static final String TAG = "R1ProgPos";
    private static final int PERIOD_MS = 15000;

    private static volatile boolean started = false;
    private static String lastKey = "";
    private static int lastPos = -1;
    /** ★ v1.3.309：SP 那份「最近听书记忆」的节流状态（与收藏无关的那条路）。 */
    private static String liveKey = "";
    private static int liveLastPos = -1;

    private ProgProgress() {
    }

    /** 幂等启动（XzBootstrap 开机挂一次）。 */
    public static void start() {
        if (started) {
            return;
        }
        started = true;
        Thread t = new Thread(new Runnable() {
            public void run() {
                try {
                    Thread.sleep(10000);            // 等 player 的 web 起来
                } catch (Throwable ignored) {
                }
                while (true) {
                    try {
                        tick();
                    } catch (Throwable e) {
                        Log.w(TAG, "tick: " + e);
                    }
                    try {
                        Thread.sleep(PERIOD_MS);
                    } catch (Throwable ignored) {
                    }
                }
            }
        }, "prog-progress");
        t.setDaemon(true);
        t.start();
        Log.i(TAG, "started");
    }

    private static void tick() {
        /* ★ v1.3.309：先记一份「最近听书记忆」（SP，跟收藏无关）——
           纯语音 ab_play 播的书不在我的节目里，Prog 没条目，但「继续听」也得接得上。 */
        String[] live = PlayerBridge.liveListenNow();
        if (live == null) {
            liveKey = "";
            liveLastPos = -1;
            lastKey = "";
            lastPos = -1;
            return;
        }
        int ep;
        try {
            ep = Integer.parseInt(live[1]);
        } catch (Throwable t) {
            return;
        }
        int pos = PlayerBridge.playerPosSec();
        if (ep <= 0 || pos < 8) {
            return;
        }
        String lk = live[0] + ":" + ep;
        /* 前进不足 15 秒不写；回退（拖了进度条）立刻写 */
        if (!lk.equals(liveKey) || liveLastPos < 0 || pos < liveLastPos
                || pos - liveLastPos >= 15) {
            PlayerBridge.noteListenPos(live[0], ep, pos);
            liveKey = lk;
            liveLastPos = pos;
        }
        /* 已收藏的书再写一份到我的节目（网页 / 卡片读的就是这份） */
        String[] now = PlayerBridge.liveProgNow();
        if (now == null) {
            lastKey = "";
            lastPos = -1;
            return;
        }
        String key = now[2] + ":" + ep;
        if (!key.equals(lastKey)) {                 // 换集 ⇒ 重新开始记
            lastKey = key;
            lastPos = -1;
        }
        if (lastPos > 0 && pos > lastPos && pos - lastPos < 15) {
            return;
        }
        if (Prog.setProgress(now[2], ep, pos)) {
            lastPos = pos;
            Log.i(TAG, "prog pos " + now[0] + " ep=" + ep + " pos=" + pos + "s");
        }
    }
}
