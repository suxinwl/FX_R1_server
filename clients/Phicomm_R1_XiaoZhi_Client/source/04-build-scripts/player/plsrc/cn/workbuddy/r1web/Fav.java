package cn.workbuddy.r1web;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.HashSet;
import java.util.Set;

/**
 * player 侧的收藏**只读缓存** —— 主本在 device（{@code files/r1_fav.json}）。
 *
 * <p>为什么要缓存而不是每次现问：播放页的星标要跟着 3~8s 一轮的
 * {@code /api/status} 走，每轮都去 8088 拉一次全量收藏（几百条 JSON）
 * 既慢又把 device 的 HTTP 通道占住。这里按 8s TTL 缓存一份**key 集合**，
 * 判断「当前这首收没收藏」在本地就能算完，零额外请求。</p>
 *
 * <p>★ 只缓存 key（不缓存条目）：列表页（音乐 tab 的收藏卡）要完整条目时
 * 走 {@code /api/fav} 现拉 —— 那份数据不进轮询路径，慢一点无所谓。</p>
 *
 * <p>★ 语音侧改了收藏，player 这边最多 8 秒后跟上；页面点星标后立刻
 * {@link #invalidate()}，下一轮就是真值（不会像乐观回显那样来回闪）。</p>
 */
public final class Fav {

    private static final long TTL = 8000;

    private static final Set<String> KEYS = new HashSet<String>();
    private static volatile int total = -1;      // -1 = 还没拿到过（device 不可达）
    private static volatile long ts = 0;

    /** 收藏刚变过（自己改的）⇒ 立刻作废缓存，下一轮拉真值。 */
    public static synchronized void invalidate() {
        ts = 0;
    }

    public static synchronized boolean has(String title, String artist) {
        refresh(false);
        if (KEYS.isEmpty()) {
            return false;
        }
        return KEYS.contains(key(title, artist));
    }

    public static int total() {
        return total;
    }

    /** 缓存拿得到吗（device 不可达时是 false ⇒ 页面把星标置灰，别给用户假状态）。 */
    public static boolean known() {
        return total >= 0;
    }

    /* ---------------- key（必须与 device 侧 Fav.key / 页面 favKey() 一致） ---------------- */

    /**
     * 归一化：保留**所有字母 / 数字**（汉字、假名、韩文、西里尔、é ü 全算），
     * 丢掉标点与空白并小写（与 device 侧 Fav.norm / 页面 nk() 逐字等价）。
     *
     * <p>★ pl-1.6.47：以前只留 {@code a-z 0-9 汉字} ⇒ 韩文歌《하루하루》和符号歌《⦵》
     * 归一化后都成了空串（key 全是 "|"）⇒ 播收藏时前者会「匹配」到本地库里的后者，
     * Coldplay 那首《⦵》就一直占着播放队列。</p>
     */
    private static String norm(String s) {
        if (s == null) {
            return "";
        }
        String low = s.toLowerCase();
        StringBuilder sb = new StringBuilder(low.length());
        for (int i = 0; i < low.length(); i++) {
            char c = low.charAt(i);
            if (Character.isLetterOrDigit(c)) {
                sb.append(c);
            }
        }
        return sb.toString();
    }

    public static String key(String title, String artist) {
        String t = norm(title);
        if (t.length() == 0) {
            /* 曲名全是符号 ⇒ 用原串兜底，否则所有符号歌共用同一个 key */
            t = "~" + (title == null ? "" : title.trim().toLowerCase());
        }
        return t + "|" + norm(artist);
    }

    /* ---------------- 拉取 ---------------- */

    private static synchronized void refresh(boolean force) {
        long now = System.currentTimeMillis();
        if (!force && ts > 0 && now - ts < TTL) {
            return;
        }
        /* device 停用了就别干等 —— Proxy 会耗掉 2.5s 超时，而 status 是主心跳，
           拖慢它整个页面都跟着卡。保留旧值（可能过期，但页面会置灰提示）。 */
        if (!DevCtl.alive()) {
            ts = now;                  // 下次再来（相当于降级成每 8s 试一次）
            return;
        }
        String s = Proxy.get("/api/fav", 2500);
        ts = now;
        if (s == null || s.length() == 0) {
            return;
        }
        try {
            JSONObject o = new JSONObject(s);
            if (!o.optBoolean("ok", false)) {
                return;
            }
            JSONArray a = o.optJSONArray("list");
            if (a == null) {
                return;
            }
            Set<String> nk = new HashSet<String>();
            int nEntry = 0;
            for (int i = 0; i < a.length(); i++) {
                JSONObject it = a.optJSONObject(i);
                if (it == null) {
                    continue;
                }
                nEntry++;
                String k = it.optString("k", "");
                if (k.length() == 0) {
                    k = key(it.optString("title", ""), it.optString("artist", ""));
                }
                nk.add(k);
                /* ★ pl-1.6.67：真名 / 库内真名算出来的 key 也收进来 ——
                   播放栏的星标按**当前在播的曲名**判，而 device 推进队列的可能是真名
                   （收藏里存着 source/rid 的条目走的是真名，见 device play_fav 路径④；
                   导入 txt 里的原名反倒不在队列里）⇒ 只索引原名会让这些歌星标全灭。
                   与页面 favReindex() 同一口径（三处逐字一致）。 */
                String rt = it.optString("rtitle", "");
                if (rt.length() > 0) {
                    nk.add(key(rt, it.optString("rartist", "")));
                }
                String lt = it.optString("ltitle", "");
                if (lt.length() > 0) {
                    nk.add(key(lt, it.optString("lartist", "")));
                }
            }
            KEYS.clear();
            KEYS.addAll(nk);
            total = nEntry;
        } catch (Throwable t) {
            Boot.log("fav refresh: " + t);
        }
    }

    private Fav() {
    }
}
