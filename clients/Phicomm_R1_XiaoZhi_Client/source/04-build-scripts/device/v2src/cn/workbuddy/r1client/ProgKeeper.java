package cn.workbuddy.r1client;

import android.util.Log;

import org.json.JSONArray;
import org.json.JSONObject;

/**
 * 「我的节目」集表缓存守护（对应 v1.3.294 设计的 Keeper，v1.3.298 重写拉全所有页）。
 *
 * <p>三件事：</p>
 * <ol>
 *   <li>骨架预生成：条目 epsState==0 且 count&gt;0 ⇒ {@link Prog#setEpsSkeleton}。</li>
 *   <li>后台填全：epsState&lt;2 的条目，逐页 {@link ProgPlay#fetchAndMerge} 拉全整本
 *       （v1.3.297 只拉第 1 页的教训：填率卡死 ~10%，90% 点击落在骨架行）；
 *       填满后 mergeEpsPage 自动置 epsState=2，Keeper 不再重复拉。</li>
 *   <li>Keeper 追更：每 90s 一轮，长连载新集自动补齐。</li>
 * </ol>
 */
public final class ProgKeeper {

    private static final String TAG = "R1ProgKeeper";
    private static volatile boolean started = false;

    private ProgKeeper() {
    }

    /** 幂等启动：多次调用只起一个守护线程。 */
    public static void start() {
        if (started) {
            return;
        }
        started = true;
        Thread t = new Thread(new Runnable() {
            public void run() {
                try {
                    Thread.sleep(8000);                 // 等开机/网络稳定
                } catch (Throwable ignored) {
                }
                while (true) {
                    try {
                        tick();
                    } catch (Throwable e) {
                        Log.w(TAG, "tick: " + e);
                    }
                    try {
                        Thread.sleep(90000);
                    } catch (Throwable ignored) {
                    }
                }
            }
        }, "prog-keeper");
        t.setDaemon(true);
        t.start();
        Log.i(TAG, "started");
    }

    private static void tick() {
        JSONArray a = Prog.list();
        int n = a.length();
        for (int i = 0; i < n; i++) {
            JSONObject it = a.optJSONObject(i);
            if (it == null) {
                continue;
            }
            String albumId = it.optString("albumId", "").trim();
            if (albumId.length() == 0 || "null".equals(albumId)) {
                continue;
            }
            String book = it.optString("book", "");
            String src = it.optString("source", "");
            int state = it.optInt("epsState", 0);
            int count = it.optInt("count", 0);
            if (state == 0 && count > 0) {
                Prog.setEpsSkeleton(albumId, count, src);
                state = 1;
            }
            if (state < 2) {
                fillOne(book, albumId, src);
            }
        }
    }

    /** 逐页拉全整本；拿到空页或填满（state=2）即止。 */
    private static void fillOne(String book, String albumId, String src) {
        try {
            for (int page = 1; page <= ProgPlay.MAX_PAGES; page++) {
                if (!ProgPlay.fetchAndMerge(book, albumId, page, ProgPlay.PAGE_SIZE, src)) {
                    return;                            // 空页/异常 ⇒ 本轮结束
                }
                JSONObject meta = Prog.epsMeta(albumId);
                if (meta != null && meta.optInt("state", 0) >= 2) {
                    Log.i(TAG, "filled all pages: aid=" + albumId);
                    return;
                }
            }
        } catch (Throwable e) {
            Log.w(TAG, "fill " + albumId + ": " + e);
        }
    }
}
