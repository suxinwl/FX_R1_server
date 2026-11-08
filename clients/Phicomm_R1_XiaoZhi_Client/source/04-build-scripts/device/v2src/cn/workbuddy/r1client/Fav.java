package cn.workbuddy.r1client;

import android.content.Context;
import android.util.Log;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FileInputStream;

import java.text.Normalizer;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * 收藏列表（v1.3.200）—— **唯一主本在 device 侧** {@code files/r1_fav.json}。
 *
 * <p>为什么放 device 而不是 player：</p>
 * <ul>
 *   <li>语音（小智 MCP）活在 device 进程里，「把这首歌加进收藏」必须能本地落盘；</li>
 *   <li>曲库 / 在线四件套 / 电台名册都在 device，播收藏要回库反查，只有这里查得到；</li>
 *   <li>player（:8080 控制台）只做**只读缓存 + 转发**（见 player 侧的 Fav.java），
 *       它重启频繁，不适合当主本。</li>
 * </ul>
 *
 * <p>★ 条目 key = {@code norm(曲名) + "|" + norm(歌手)}（只留小写字母 / 数字 / 汉字），
 * 目的是**同一首歌在不同来源下只算一条**：在线搜到的《晴天》和曲库里的《晴天》
 * url 完全不同（一个是惰性 {@code /r/<source>/<rid>}、一个是 NAS 直链），
 * 按 url 去重会收重两份。页面 JS 的 {@code favKey()} 必须与这里的
 * {@link #key(String, String)} 逐字一致，否则星标会亮错。</p>
 *
 * <p>条目字段（冗余存、按需用）：</p>
 * <pre>
 *   k      归一化 key（去重判据）
 *   title / artist   展示 + 回库反查
 *   url    能直接播的地址（曲库直链 / 惰性在线地址 / 电台流）
 *   index  本地曲库序号（1-based，0 = 没有）
 *   source / rid  在线四件套（url 失效时靠它重新取链）
 *   album / duration / kind  展示用
 *   ts     收藏时间（毫秒）
 *   nsTs   v1.3.203：网上搜过但没搜到源的时间戳（负缓存，见 skipSearch）
 *   ltitle / lartist  v1.3.221：上次**模糊匹配**到本地曲库的那一首的真名
 *          （收藏里的曲名常和库里差几个字 —— 少了「(Live)」、多了空格），
 *          模糊匹配要把整库字符串比一遍，几百首就是好几秒；记下真名后
 *          下次按它 O(1) 命中，模糊匹配一次都不用跑。
 *          ★ 存**歌名**不存下标：曲库顺序会漂（NAS 重扫 / 加歌），存下标会指向错歌；
 *            歌还在库里就命中，不在了自然退回去重新模糊匹配。
 *          ★ 只服务于匹配，**不参与展示**（展示看 rtitle）。
 *   rtitle / rartist  v1.3.223：**展示用真名** —— 本地库命中的那首的真名，
 *          或在线补源时 NAS 搜回来的真名。收藏列表、播放队列、导出 txt 都显示它，
 *          这样「搜索结果点歌」和「收藏列表点歌」看到的是同一套名字。
 *          ★ title / artist 保持导入时的原文不动 —— key 是它们算出来的，
 *            改成真名会算出另一个 key ⇒ 同一首歌被当成两首（见 realHit）。
 * </pre>
 *
 * <p>播收藏时的取值优先级：{@code index}（库内最稳）→ {@code url} →
 * {@code source+rid}（拼惰性地址）→ 最后拿曲名回库 matchTracks。</p>
 */
public final class Fav {

    private static final String TAG = "R1Fav";
    private static final String FILE = "r1_fav.json";
    /**
     * ★ v1.3.241：上限从 500 提到 5000 —— 用户「导入播放列表不设数量限制」。
     *
     * <p>原来的 500 是业务拍脑袋（「没人真翻到第 501 首」），但收藏现在是**按需解析**的：
     * 导进来时一首都不搜、不占网络，只是歌名存盘；真正的拉源推迟到「播到那一首」。
     * 所以条数多只影响 JSON 文件大小（约 300B/首 ⇒ 5000 首 ~1.5MB），不影响导入速度。
     * 留 5000 只是**物理安全阀**（device 侧每次 patch 要整份重写盘，再大就明显卡）。</p>
     */
    private static final int MAX = 5000;

    private static Context app;
    private static final Object LOCK = new Object();
    private static JSONArray cache = null;

    public static void init(Context c) {
        app = c.getApplicationContext();
    }

    private static File file() {
        return new File(app.getFilesDir(), FILE);
    }

    /* ---------------- key ---------------- */

    /**
     * 归一化：保留**所有字母 / 数字**（汉字、日文假名、韩文、西里尔、é ü 全算），
     * 丢掉标点与空白，并统一小写（页面 JS 的 nk() 必须与这里逐字等价）。
     *
     * <p>★ v1.3.203：以前只留 {@code a-z 0-9 汉字} ⇒ 韩文歌《하루하루》和符号歌《⦵》
     * 归一化后**都变成空串**，key 全是 "|" ⇒ 播收藏时 findLocal 拿《하루하루》
     * 去本地库一比，命中的却是 Coldplay 那首《⦵》（它一直占着播放队列第 2 位）。</p>
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
        /* ★ 曲名全是符号（「⦵」「♥」）时不能塌成空串 —— 否则所有这类歌
           共用同一个 key，互相误判成同一首、还会互相覆盖。用原串兜底。 */
        if (t.length() == 0) {
            t = "~" + (title == null ? "" : title.trim().toLowerCase());
        }
        return t + "|" + norm(artist);
    }

    /* ---------------- 读写 ---------------- */

    private static JSONArray read() {
        JSONArray a = new JSONArray();
        try {
            File f = file();
            if (!f.exists()) {
                return a;
            }
            FileInputStream in = new FileInputStream(f);
            StringBuilder sb = new StringBuilder();
            try {
                byte[] b = new byte[8192];
                int n;
                while ((n = in.read(b)) > 0) {
                    sb.append(new String(b, 0, n, "UTF-8"));
                }
            } finally {
                in.close();
            }
            JSONObject o = new JSONObject(sb.toString());
            JSONArray l = o.optJSONArray("list");
            if (l != null) {
                a = l;
                /* ★ v1.3.203：key 算法升级过（保留集扩大 + 全符号曲名兜底）
                   ⇒ 载入时按新算法重算一遍，老文件自动迁移，不用手改 JSON。 */
                for (int i = 0; i < a.length(); i++) {
                    JSONObject it = a.optJSONObject(i);
                    if (it == null) {
                        continue;
                    }
                    String t = it.optString("title", "");
                    if (t.length() == 0) {
                        continue;
                    }
                    try {
                        it.put("k", key(t, it.optString("artist", "")));
                    } catch (Throwable ignore) {
                        // ignore
                    }
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "read: " + t);
        }
        return a;
    }

    /** 原子写：先写 .tmp 再 rename —— 写到一半断电也不会留个半截 JSON。 */
    private static void write(JSONArray a) {
        try {
            JSONObject o = new JSONObject();
            o.put("v", 1);
            o.put("list", a);
            File f = file();
            File tmp = new File(app.getFilesDir(), FILE + ".tmp");
            FileOutputStream os = new FileOutputStream(tmp);
            try {
                os.write(o.toString().getBytes("UTF-8"));
            } finally {
                os.close();
            }
            tmp.renameTo(f);
        } catch (Throwable t) {
            Log.w(TAG, "write: " + t);
        }
    }

    public static JSONArray list() {
        synchronized (LOCK) {
            if (cache == null) {
                cache = read();
            }
            return cache;
        }
    }

    public static int total() {
        return list().length();
    }

    public static boolean has(String title, String artist) {
        return has(key(title, artist));
    }

    public static boolean has(String k) {
        if (k == null || k.length() == 0) {
            return false;
        }
        JSONArray a = list();
        for (int i = 0; i < a.length(); i++) {
            JSONObject it = a.optJSONObject(i);
            if (it != null && (k.equals(it.optString("k", "")) || realHit(it, k))) {
                return true;
            }
        }
        return false;
    }

    /**
     * v1.3.223：按**真名**算出来的 key 也算命中这一条。
     *
     * <p>为什么需要它：收藏条目里 {@code title} 是导入时写的原文（用来算 {@code k}），
     * 而列表 / 播放队列现在显示的是 {@code rtitle}（库里或在线搜回来的真名）。
     * 用户拿真名去点星 / 取消收藏时，按 {@code k} 一比对必然落空 ⇒ 同一首歌被收成两条、
     * 或者取消不掉。这里两条路都认。</p>
     */
    private static boolean realHit(JSONObject it, String k) {
        if (it == null || k == null || k.length() == 0) {
            return false;
        }
        String rt = it.optString("rtitle", "");
        if (rt.length() > 0 && k.equals(key(rt, it.optString("rartist", "")))) {
            return true;
        }
        String lt = it.optString("ltitle", "");
        if (lt.length() > 0 && k.equals(key(lt, it.optString("lartist", "")))) {
            return true;
        }
        return false;
    }

    /* ---------------- 增删改 ---------------- */

    /**
     * 加一条收藏（同 key 视为同一首 ⇒ 用新信息补齐旧条目的空字段，不收第二份）。
     *
     * @param it 至少要有 title；其余字段能给多少给多少
     * @return 给小智 / 页面看的一句话
     */
    public static String add(JSONObject it) {
        if (it == null) {
            return "ERR 没有曲目信息";
        }
        String title = it.optString("title", "").trim();
        String artist = it.optString("artist", "").trim();
        if (title.length() == 0) {
            return "ERR 要先有歌名才知道收藏哪一首";
        }
        String k = key(title, artist);
        synchronized (LOCK) {
            JSONArray a = list();
            for (int i = 0; i < a.length(); i++) {
                JSONObject old = a.optJSONObject(i);
                /* ★ v1.3.223：原名 / 真名对上都算「同一首」—— 用真名再点一次 ☆
                   不能收成第二份（也不能把「本来就在收藏里」说成新收藏）。 */
                if (old != null && (k.equals(old.optString("k", "")) || realHit(old, k))) {
                    fill(old, it);          // 已在收藏里 ⇒ 只补字段，不重复收
                    write(a);
                    return "OK 《" + title + "》本来就在收藏里（已补齐信息）";
                }
            }
            JSONObject n = buildEntry(it, k);
            if (n == null) {
                return "ERR 收藏条目组装失败";
            }
            if (a.length() >= MAX) {
                return "ERR 收藏到上限了（" + MAX + " 首），先删几首再加";
            }
            a.put(n);
            write(a);
            return "OK 已收藏《" + title + "》"
                    + (artist.length() > 0 ? ("（" + artist + "）") : "")
                    + "　收藏里共 " + a.length() + " 首";
        }
    }

    /** 组装一条新收藏（v1.3.257 从 {@link #add} 抽出来给 {@link #addBatch} 复用）。
     *  失败返回 null。 */
    /**
     * v1.3.262：条目类型识别 —— 有声书/节目 vs 普通音乐。
     *
     * <p>判据与 NAS MediaServer 的 detectKind 同一套（2026-10-31 定稿）：
     * 专辑名关键词 → 评书/相声艺术家名单 → 标题类型词 → 《…》第N集 形态。
     * ★ 裸「第N集」不加书名号门槛不算 —— Live/MV 也常带序号，误伤率太高。</p>
     *
     * <p>kind=program 的条目：fav_resolve 在线补源走 &amp;kind=program（只搜节目，
     * 不会拿同名歌顶包），网页收藏列表带 📖 标记。</p>
     */
    private static final java.util.regex.Pattern PROG_ALBUM_RE = java.util.regex.Pattern.compile(
            "声音剧|广播剧|有声书|有声小说|有声剧|听书|评书|评弹|相声|单播|单田芳|袁阔成");
    private static final java.util.regex.Pattern PROG_TITLE_RE = java.util.regex.Pattern.compile(
            "第\\s*\\d+\\s*[集回话章]|第[一二三四五六七八九十百]+\\s*[集回话章]");
    private static final java.util.regex.Pattern PROG_ARTIST_RE = java.util.regex.Pattern.compile(
            "单田芳|袁阔成|田连元|刘兰芳|张震讲|青雪|紫襟|头陀渊|郭德纲|于谦|岳云鹏|德云社|相声|评书|听书|有声|广播剧|声音剧");

    public static String detectKind(String title, String album, String artist) {
        if (album != null && PROG_ALBUM_RE.matcher(album).find()) {
            return "program";
        }
        if (artist != null && PROG_ARTIST_RE.matcher(artist).find()) {
            return "program";
        }
        if (title != null && PROG_ALBUM_RE.matcher(title).find()) {
            return "program";
        }
        if (title != null && title.indexOf("《") >= 0 && title.indexOf("》") >= 0
                && PROG_TITLE_RE.matcher(title).find()) {
            return "program";
        }
        return "";
    }

    private static JSONObject buildEntry(JSONObject it, String k) {
        try {
            JSONObject n = new JSONObject();
            n.put("k", k);
            n.put("title", it.optString("title", "").trim());
            n.put("artist", it.optString("artist", "").trim());
            n.put("url", it.optString("url", ""));
            n.put("index", it.optInt("index", 0));
            n.put("source", it.optString("source", ""));
            n.put("rid", it.optString("rid", ""));
            n.put("album", it.optString("album", ""));
            n.put("duration", it.optString("duration", ""));
            /* ★ v1.3.262：kind 空着就按 title/album/artist 现场识别一次 ——
               导入歌单、fav_add、fav_toggle 全部路径一处收口，调用方不用各自判断。 */
            String kd = it.optString("kind", "");
            if (kd.length() == 0) {
                kd = detectKind(n.optString("title", ""), it.optString("album", ""),
                        n.optString("artist", ""));
            }
            n.put("kind", kd);
            n.put("ts", System.currentTimeMillis());
            /* ★ v1.3.244：「上传歌单」带来的绑定信息（导出 txt 的扩展列）——
               rt/rtitle 这些落进来，效果等同于当初手动 🔗 绑过：不用再绑一次，
               purgeUnrelated 也不会当脏数据清（rman=1）。 */
            String[] bf = {"rtitle", "rartist", "ltitle", "lartist"};
            for (int j = 0; j < bf.length; j++) {
                String v = it.optString(bf[j], "");
                if (v.length() > 0) {
                    n.put(bf[j], v);
                }
            }
            if (it.optInt("rman", 0) > 0) {
                n.put("rman", it.optInt("rman", 0));
            }
            /* ★ v1.3.227：重新导入同歌单时把上次练出来的缓存字段带回来，
               别每次都冷启动重新 fuzzy + 在线补源（见 clear() 里的说明）。 */
            restoreFromPrev(n, k);
            return n;
        } catch (Throwable t) {
            return null;
        }
    }

    /**
     * v1.3.257：批量导入 —— 「上传歌单」专用。
     *
     * <p>★ 为什么必须有：以前 player 对每首歌发一次 {@code fav_add}，而 {@link #add}
     * 每次都 {@link #write}（整表序列化 + tmp + rename）⇒ 双重 O(N²)：357 首实测 28s，
     * 1000 首要一两分钟。批量版把去重 / 补齐全放内存，最后只 {@link #write} 一次。</p>
     *
     * <p>判「同一首」与 {@link #add} 一致：k 相同，或者跟条目的真名（rtitle/rartist）、
     * 本地名（ltitle/lartist）对上（{@link #realHit} 的集合化版本）。</p>
     *
     * @param arr 每项至少有 title，字段越多越好（url/source/rid/rtitle/...）
     * @return 给页面的一句话（调用方包成 {"ok","msg"}）
     */
    public static String addBatch(JSONArray arr) {
        if (arr == null || arr.length() == 0) {
            return "ERR 没有可导入的条目";
        }
        int added = 0, merged = 0, skip = 0, total;
        synchronized (LOCK) {
            JSONArray a = list();
            /* 现有条目的全部「身份 key」收进倒排：k + 真名 + 本地名 → 下标 */
            HashMap<String, Integer> byKey = new HashMap<String, Integer>();
            for (int i = 0; i < a.length(); i++) {
                JSONObject old = a.optJSONObject(i);
                if (old == null) {
                    continue;
                }
                batchIndex(byKey, old.optString("k", ""), i);
                batchIndex(byKey, key(old.optString("rtitle", ""),
                        old.optString("rartist", "")), i);
                batchIndex(byKey, key(old.optString("ltitle", ""),
                        old.optString("lartist", "")), i);
            }
            for (int i = 0; i < arr.length(); i++) {
                JSONObject it = arr.optJSONObject(i);
                if (it == null) {
                    skip++;
                    continue;
                }
                String title = it.optString("title", "").trim();
                if (title.length() == 0) {
                    skip++;
                    continue;
                }
                String k = key(title, it.optString("artist", "").trim());
                Integer at = byKey.get(k);
                if (at != null) {
                    JSONObject old = a.optJSONObject(at.intValue());
                    if (old != null) {
                        fill(old, it);          // 已在收藏里 ⇒ 只补字段，不重复收
                        merged++;
                    } else {
                        skip++;
                    }
                    continue;
                }
                if (a.length() >= MAX) {
                    return "ERR 收藏到上限了（" + MAX + " 首），本轮已新增 " + added
                            + " 首，剩下的没导";
                }
                JSONObject n = buildEntry(it, k);
                if (n == null) {
                    skip++;
                    continue;
                }
                a.put(n);
                batchIndex(byKey, k, a.length() - 1);
                batchIndex(byKey, key(n.optString("rtitle", ""),
                        n.optString("rartist", "")), a.length() - 1);
                batchIndex(byKey, key(n.optString("ltitle", ""),
                        n.optString("lartist", "")), a.length() - 1);
                added++;
            }
            write(a);                            // ★ 整批只落这一次盘
            total = a.length();
        }
        return "OK 批量导入完成：新增 " + added + "、合并 " + merged
                + (skip > 0 ? ("、跳过 " + skip) : "") + "，收藏共 " + total + " 首";
    }

    /** {@link #addBatch} 的小工具：非空 key 才收进倒排。 */
    private static void batchIndex(HashMap<String, Integer> m, String k, int idx) {
        if (k != null && k.length() > 0 && !m.containsKey(k)) {
            m.put(k, Integer.valueOf(idx));
        }
    }

    /** 按 key 取一条收藏（没有就 null）—— fav_resolve 播到时才解析用。 */
    public static JSONObject entry(String k) {
        if (k == null || k.length() == 0) {
            return null;
        }
        JSONArray a = list();
        for (int i = 0; i < a.length(); i++) {
            JSONObject it = a.optJSONObject(i);
            if (it != null && k.equals(it.optString("k", ""))) {
                return it;
            }
        }
        return null;
    }

    /**
     * 按 key 补一个**空**字段并落盘（已有值不动）—— 在线补源用：
     * 播收藏时给「只有歌名」的条目搜到 source+rid 后回写，下次就不用再搜一遍。
     */
    public static void patch(String k, String field, String value) {
        if (k == null || k.length() == 0 || field == null
                || value == null || value.length() == 0) {
            return;
        }
        synchronized (LOCK) {
            JSONArray a = list();
            for (int i = 0; i < a.length(); i++) {
                JSONObject it = a.optJSONObject(i);
                if (it == null || !k.equals(it.optString("k", ""))) {
                    continue;
                }
                if (it.optString(field, "").length() > 0) {
                    return;                      // 已经有值，别覆盖
                }
                try {
                    it.put(field, value);
                    write(a);
                } catch (Throwable t) {
                    Log.w(TAG, "patch: " + t);
                }
                return;
            }
        }
    }

    /**
     * 批量补空字段，**整批只落盘一次**（v1.3.221）。
     *
     * <p>为什么不能一条条 {@link #patch}：{@code patch} 每次都 {@code write(a)}
     * 全量重写文件。导入 357 首收藏时要把 271 首的模糊匹配结果回写 ⇒ 271×2 次
     * 全量写盘，光落盘就要好几秒。这里一次加锁、改完统一写一次。</p>
     *
     * <p>覆盖规则：<b>值相同就不动</b>（不写盘），值不同才覆盖 —— 曲库歌名改了
     * （重新扫过、加了「(Live)」后缀）时这里会跟着更新，不会永远停在旧真名上。</p>
     *
     * @param rows 每行 {@code {key, field, value}}
     * @return 实际写入的字段条数
     */
    public static int patchBatch(List<String[]> rows) {
        if (rows == null || rows.isEmpty()) {
            return 0;
        }
        int n = 0;
        synchronized (LOCK) {
            JSONArray a = list();
            HashMap<String, JSONObject> map
                    = new HashMap<String, JSONObject>(Math.max(16, a.length() * 2));
            for (int i = 0; i < a.length(); i++) {
                JSONObject it = a.optJSONObject(i);
                if (it != null) {
                    map.put(it.optString("k", ""), it);
                }
            }
            boolean dirty = false;
            for (int i = 0; i < rows.size(); i++) {
                String[] r = rows.get(i);
                if (r == null || r.length < 3 || r[0] == null
                        || r[1] == null || r[2] == null || r[2].length() == 0) {
                    continue;
                }
                JSONObject it = map.get(r[0]);
                if (it == null) {
                    continue;                      // 没有这条收藏
                }
                if (r[2].equals(it.optString(r[1], ""))) {
                    continue;                      // 值一样 ⇒ 不写盘
                }
                try {
                    it.put(r[1], r[2]);
                    dirty = true;
                    n++;
                } catch (Throwable t) {
                    Log.w(TAG, "patchBatch: " + t);
                }
            }
            if (dirty) {
                write(a);
            }
        }
        return n;
    }

    /**
     * 清掉某条收藏的**整条解析缓存**（v1.3.223）：ltitle / lartist / source / rid / nsTs。
     *
     * <p>旧版本「空串恒真」的宽松匹配会把这一整串写脏（真名指到不相干的歌、source/rid
     * 也是那次瞎配带出来的）。光在播收藏时「不认」不够 —— 脏数据一直躺在文件里，
     * 每轮都要重新判一遍，导出/回库反查也可能被它带偏 ⇒ 判脏就**清干净**，一次自愈。</p>
     */
    public static void clearCache(String k) {
        if (k == null || k.length() == 0) {
            return;
        }
        synchronized (LOCK) {
            JSONArray a = list();
            for (int i = 0; i < a.length(); i++) {
                JSONObject it = a.optJSONObject(i);
                if (it == null || !k.equals(it.optString("k", ""))) {
                    continue;
                }
                String[] fs = {"ltitle", "lartist", "rtitle", "rartist",
                        "source", "rid", "url", "nsTs"};
                boolean dirty = false;
                for (int j = 0; j < fs.length; j++) {
                    if (it.has(fs[j])) {
                        it.remove(fs[j]);
                        dirty = true;
                    }
                }
                if (dirty) {
                    write(a);
                }
                return;
            }
        }
    }

    /**
     * v1.3.243：按 key 取一条 —— **真名 / 库内真名**算出来的 key 也认。
     *
     * <p>手动重链接的入口长在「播放列表 / 收藏列表的**显示名**」上，而显示名是
     * {@code rtitle}（在线真名）或 {@code ltitle}（库内真名），拿它算出来的 key 和
     * 条目自己的 {@code k}（导入原文算的）常常对不上。{@link #entry} 只认 {@code k}，
     * 所以这里再走一遍 {@link #realHit}。</p>
     */
    public static JSONObject hit(String k) {
        JSONObject e = entry(k);
        if (e != null) {
            return e;
        }
        if (k == null || k.length() == 0) {
            return null;
        }
        JSONArray a = list();
        for (int i = 0; i < a.length(); i++) {
            JSONObject it = a.optJSONObject(i);
            if (it != null && realHit(it, k)) {
                return it;
            }
        }
        return null;
    }

    /**
     * v1.3.243：强制写一个字段（有值也覆盖；value 为空 = 清空）—— 手动重链接专用。
     *
     * <p>{@link #patch} 是「只补空字段」的语义（在线补源用，不能覆盖已有信息）。
     * 而重链接是**用户亲手改的**：旧 source/rid、旧直链、旧库内真名必须被压掉，
     * 不然刚挑的那一版还会被旧缓存顶掉（playFavOne 的 ①本地 → ③直链 都在 src 前面）。</p>
     */
    public static void force(String k, String field, String value) {
        if (k == null || k.length() == 0 || field == null) {
            return;
        }
        synchronized (LOCK) {
            JSONArray a = list();
            for (int i = 0; i < a.length(); i++) {
                JSONObject it = a.optJSONObject(i);
                if (it == null || !k.equals(it.optString("k", ""))) {
                    continue;
                }
                try {
                    if (value == null || value.length() == 0) {
                        if (it.optString(field, "").length() == 0) {
                            return;                 // 本来就是空的 ⇒ 不用写盘
                        }
                        it.put(field, "");
                    } else {
                        if (value.equals(it.optString(field, ""))) {
                            return;                 // 值没变 ⇒ 不用写盘
                        }
                        it.put(field, value);
                    }
                    write(a);
                } catch (Throwable t) {
                    Log.w(TAG, "force: " + t);
                }
                return;
            }
        }
    }

    /** 这条已经有确定的源了（手动绑定 / 后来找到了）⇒ 旧负缓存作废。 */
    public static void clearNoSrc(String k) {
        if (k == null || k.length() == 0) {
            return;
        }
        synchronized (LOCK) {
            JSONArray a = list();
            for (int i = 0; i < a.length(); i++) {
                JSONObject it = a.optJSONObject(i);
                if (it != null && k.equals(it.optString("k", "")) && it.has("nsTs")) {
                    it.remove("nsTs");
                    write(a);
                    return;
                }
            }
        }
    }

    /* ---------------- 名字可比性（v1.3.224）---------------- */

    /**
     * 把一个名字折成「最能拿来互相比较」的形态：去注音 → 小写 → 只留字母/数字/汉字，
     * 标点折成空格（空格留着，{@link #cover} 要按**词**比）。
     *
     * <p>为什么非要有它：跨语的歌名就差在这些「不可见字符」上 ——
     * {@code Côme}（库里）/ {@code Come}（NAS 搜回来）、{@code Bohème} / {@code Boheme}，
     * 逐字符比是两个毫不相干的字符串，于是这一首被判「不像」⇒ 不敢认、不写缓存
     * ⇒ 每次导入都为它重新搜一遍（慢），运气不好还会被别的候选顶替（配错歌）。</p>
     */
    public static String fold(String s) {
        if (s == null) {
            return "";
        }
        String d = Normalizer.normalize(s, Normalizer.Form.NFD);
        StringBuilder sb = new StringBuilder(d.length());
        for (int i = 0; i < d.length(); i++) {
            char c = d.charAt(i);
            /* NFD 会把 é 拆成 e + U+0301；那个组合记号是非间距 Mek（Mn），
               isLetterOrDigit 返回 false ⇒ 自动丢掉 ⇒ é 落回 e。 */
            if (Character.isLetterOrDigit(c)) {
                sb.append(Character.toLowerCase(c));
            } else if (Character.isWhitespace(c) || c == '-' || c == '_' || c == '/'
                    || c == ',' || c == '·' || c == '.') {
                sb.append(' ');
            }
        }
        // 连续空格压成一个，去首尾
        StringBuilder o = new StringBuilder(sb.length());
        boolean sp = true;
        for (int i = 0; i < sb.length(); i++) {
            char c = sb.charAt(i);
            if (c == ' ') {
                if (!sp) {
                    o.append(' ');
                    sp = true;
                }
                continue;
            }
            o.append(c);
            sp = false;
        }
        String r = o.toString();
        if (r.endsWith(" ")) {
            r = r.substring(0, r.length() - 1);
        }
        return r;
    }

    /**
     * 两个**折叠过**的名字的词元覆盖率：{@code 交集词长之和 / 较短一侧的总词长}。
     *
     * <p>{@code "紅蓮華 (THE FIRST TAKE Studio Ver.)"} vs {@code "紅蓮華"} 还能用包含判定，
     * 但《戀愛告急 (Koi SOS!!)》vs《戀愛告急》这种词换了位置的只能靠它。
     * 返回 0..1，越大越像同一首。</p>
     */
    public static double cover(String fa, String fb) {
        if (fa == null || fb == null) {
            return 0;
        }
        String[] A = fa.split(" ");
        String[] B = fb.split(" ");
        Set<String> setB = new HashSet<String>();
        Set<String> hit = new HashSet<String>();
        int sa = 0, sb = 0, common = 0;
        for (int i = 0; i < B.length; i++) {
            if (B[i].length() > 0) {
                setB.add(B[i]);
                sb += B[i].length();
            }
        }
        for (int i = 0; i < A.length; i++) {
            if (A[i].length() > 0) {
                sa += A[i].length();
            }
        }
        if (sa == 0 || sb == 0) {
            return 0;
        }
        for (int i = 0; i < A.length; i++) {
            if (A[i].length() > 0 && setB.contains(A[i]) && !hit.contains(A[i])) {
                hit.add(A[i]);
                common += A[i].length();
            }
        }
        return (double) common / (double) Math.min(sa, sb);
    }

    /** 按词切开（输入已经 {@link #fold} 过时可直接用 {@link #tokens}）。 */
    public static String[] tokens(String s) {
        String f = fold(s);
        if (f.length() == 0) {
            return new String[0];
        }
        String[] p = f.split(" ");
        java.util.ArrayList<String> out = new java.util.ArrayList<String>();
        for (int i = 0; i < p.length; i++) {
            if (p[i].length() > 0) {
                out.add(p[i]);
            }
        }
        return out.toArray(new String[out.size()]);
    }

    private static String join(String[] a) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < a.length; i++) {
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(a[i]);
        }
        return sb.toString();
    }

    /**
     * 「对比方覆盖了请求方多少」：{@code 交集词长 / fa 的总词长}（v1.3.226）。
     *
     * <p>★ {@link #cover} 用 min(两边) 当分母，短歌名很容易把另一条<b>整条</b>覆盖掉 ——
     * 《Don't Wanna Know》(13 字符) 覆盖了《I Don't Wanna Live Forever (Fifty Shades
     * Darker)》的 "dont"+"wanna" ⇒ 0.69，看着「很像」，其实是两首歌。
     * 这里只认**请求侧**：对方再短，也要求它覆盖住我这一侧的一大半，否则不算像。</p>
     */
    public static double coverQuery(String fa, String fb) {
        if (fa == null || fb == null) {
            return 0;
        }
        String[] A = fa.split(" ");
        String[] B = fb.split(" ");
        Set<String> setB = new HashSet<String>();
        Set<String> hit = new HashSet<String>();
        int sa = 0, common = 0;
        for (int i = 0; i < B.length; i++) {
            if (B[i].length() > 0) {
                setB.add(B[i]);
            }
        }
        for (int i = 0; i < A.length; i++) {
            if (A[i].length() > 0) {
                sa += A[i].length();
            }
        }
        if (sa == 0) {
            return 0;
        }
        for (int i = 0; i < A.length; i++) {
            if (A[i].length() > 0 && setB.contains(A[i]) && !hit.contains(A[i])) {
                hit.add(A[i]);
                common += A[i].length();
            }
        }
        return (double) common / (double) sa;
    }

    /**
     * 两个歌名的**词元**相似度 0..100（两旁已经是 {@link #tokens} 的结果）。
     *
     * <p>★ v1.3.225：收藏解析**只认词**，绝不认子串。点歌那条 {@code matchTracks}
     * 用子串 + OR 语义（命中任意一个词就算），放到 357 首批量解析上就是灾难 ——
     * 《Il aurait suffi》的词 "il" 藏在《Waiting for the Night [Rodg Chill Mix]》的
     * "chill" 里，《End Of The World》的 "of" 藏在《The Phantom of the Opera》里，
     * 《ปูหนีบอีปิ (Cut Ver.)》的 "cut" 藏在《Supercut》里 ⇒ 用户的法语歌变英语歌。</p>
     */
    public static int tokScore(String[] A, String[] B) {
        if (A == null || B == null || A.length == 0 || B.length == 0) {
            return 0;
        }
        Set<String> setB = new HashSet<String>();
        for (int i = 0; i < B.length; i++) {
            setB.add(B[i]);
        }
        Set<String> hit = new HashSet<String>();
        for (int i = 0; i < A.length; i++) {
            if (setB.contains(A[i])) {
                hit.add(A[i]);
            }
        }
        int common = hit.size();
        if (common == 0) {
            return 0;
        }
        if (common == A.length && common == B.length) {
            return 100;               // 词完全一样
        }
        if (common == A.length) {
            return 92;                // 收藏名的每个词都在库名里（《晴天》vs《晴天 (Live)》）
        }
        if (common == B.length && B.length >= 2) {
            return 88;                // 反过来：库名整条藏在收藏名里（库名只有 1 个词时太容易蒙中）
        }
        /* ★ v1.3.226：分母必须是**请求方**（按 min 取分母时，短歌名能把长歌名整条覆盖，
           于是《Don't Wanna Know》认走了《I Don't Wanna Live Forever》）。 */
        double c = coverQuery(join(A), join(B));
        if (c >= 0.7) {
            return 74;
        }
        return 0;
    }

    /**
     * 歌名 {@link #tokScore} + **歌手当判据**（v1.3.226）。
     *
     * <p>★ 用户提醒：「歌名 + 歌手一起匹配应该挺准的吧」—— 对，前提是歌手得当**判据**
     * 而不是当加分项。以前歌手只加 4~10 分，于是《Don't Wanna Know》(Maroon 5) 可以顶着
     * 完全不同的人名认走《I Don't Wanna Live Forever》(ZAYN / Taylor Swift)，
     * 《the 1》(Taylor Swift) 认走《紅蓮華》(LiSA)。现在：</p>
     * <ul>
     *   <li>歌手几乎无关（双向覆盖都是 0）⇒ 歌名不是它的超集就**直接不认**；</li>
     *   <li>歌手对得上 ⇒ 反过来**放宽**歌名要求：写到 Include follow 译名 / 版本名的
     *       差异也能认（《Côme》《Come》、《xxx (Live)》）。</li>
     * </ul>
     */
    public static int nameScore(String[] A, String[] aA, String[] B, String[] aB) {
        int base = tokScore(A, B);
        if (A.length == 0 || B.length == 0) {
            return 0;
        }
        double cf = coverQuery(join(A), join(B));
        double af = (aA.length > 0 && aB.length > 0) ? coverQuery(join(aA), join(aB)) : 0;
        double ab = (aA.length > 0 && aB.length > 0) ? coverQuery(join(aB), join(aA)) : 0;
        int sc = base;
        if (aA.length > 0 && aB.length > 0) {
            /* ★ v1.3.257：歌手权重高于歌名 —— 对牢 +20（以前 +12，抵不过歌名一个档差），
               且歌名只要沾边（cover ≥ 0.4，以前 0.5）就抬到 74 档：
               「歌手是这个人」比「歌名几个词对上」更能证明是同一首歌 ——
               歌名会因译名 / Live / Remastered / feat. 写法千差万别，歌手不会。 */
            if (af >= 0.7 || ab >= 0.7) {
                sc += 20;
                if (sc < 74 && cf >= 0.4) {
                    sc = 74;                 // 歌手对牢了 ⇒ 容忍歌名的译名/版本差异
                }
            } else if (af <= 0 && ab <= 0) {
                if (base < 92) {
                    return 0;                // 人完全不对、歌名又不足以服人 ⇒ 不认
                }
            } else {
                sc += 4;                     // 沾点边（feat. / 多歌手）
            }
        }
        return (sc > 100) ? 100 : sc;
    }

    /** {@code cachedName} 和收藏原名 {@code name} 是不是「同一首歌」的宽容判据。 */
    public static boolean relatedName(String name, String artist,
                                      String cachedName, String cachedArtist) {
        String ft = fold(name);
        String fc = fold(cachedName);
        if (ft.length() == 0 || fc.length() == 0) {
            return false;
        }
        String a = ft.replace(" ", "");
        String c = fc.replace(" ", "");
        if (a.equals(c)) {
            return true;
        }
        /* 包含判定要去空格再比：库里多了空格就不再是子串了 */
        if (a.length() >= 3 && c.length() >= 3 && (a.contains(c) || c.contains(a))) {
            return true;
        }
        /* ★ v1.3.226：一律以**收藏原名**为准（coverQuery）—— 用 min 当分母时，
           短短一条《Don't Wanna Know》能覆盖《I Don't Wanna Live Forever (Fifty Shades
           Darker)》的 0.69，《紅蓮華 (THE FIRST TAKE Studio Ver.)》也能被《the 1》覆盖，
           脏缓存就这样清洗不掉、一路留到现在。 */
        if (coverQuery(ft, fc) >= 0.6) {
            return true;
        }
        String fat = fold(artist);
        String fca = fold(cachedArtist);
        if (fat.length() > 0 && fca.length() > 0) {
            if (fat.contains(fca) || fca.contains(fat) || coverQuery(fat, fca) >= 0.6) {
                return true;
            }
        }
        return false;
    }

    /**
     * v1.3.238：两个歌手名是否指同一个（人 / 组合）。
     *
     * <p>★ 为什么需要：{@link #relatedName} 只拿歌名当判据、歌手只是「歌名不相关时」的
     * 加分项 ⇒ 歌名完全一样、歌手完全不同的脏缓存永远清不掉。实测收藏
     * 《hotline bling / Billie Eilish》曾被配上《Hotline Bling / Drake》，两边歌名一字不差，
     * 于是 ltitle/lartist 一路留着，播收藏直接放成 Drake 版。</p>
     *
     * <p>判据：任一方为空 ⇒ 认（信息不足不能定罪）；有共同词元 ⇒ 认
     * （「Aaron Smith,Luvli,Krono」vs「Aaron Smith / Vimisu」这种多歌手写法差异）；
     * 整体互相包含 ⇒ 认（「Billie Eilish」vs「Billie Eilish、Justin Bieber」）；
     * 全不沾 ⇒ 不认（Billie Eilish vs Drake）。</p>
     */
    public static boolean artistSame(String a, String b) {
        String fa = fold(a);
        String fb = fold(b);
        if (fa.length() == 0 || fb.length() == 0) {
            return true;
        }
        if (fa.contains(fb) || fb.contains(fa)) {
            return true;
        }
        String[] ta = tokens(a);
        String[] tb = tokens(b);
        for (int i = 0; i < ta.length; i++) {
            if (ta[i] == null || ta[i].length() < 2) {
                continue;
            }
            for (int j = 0; j < tb.length; j++) {
                if (ta[i].equals(tb[j])) {
                    return true;
                }
            }
        }
        return false;
    }

    /**
     * v1.3.224：扫**全表**清掉和收藏原名八竿子打不着的旧缓存（ltitle / rtitle /
     * source / rid / nsTs 一并清），返回清了几条。
     *
     * <p>★ 为什么必须在这里做、而不能塞进播收藏那条链路里：那条主循环带
     * {@code pick.size() < cap} 上限，歌单一旦超过播放列表上限，后面的收藏**根本不会被
     * 遍历到** —— 于是它们的脏缓存既判不了脏、也用不上怀里这支 ct，
     * 显示在列表里的永远是旧版本瞎配出来的那首英文名。全表扫一遍是纯字符串比较，
     * 不发网络、不碰曲库，几百条也就几毫秒。</p>
     */
    public static int purgeUnrelated() {
        int n = 0;
        synchronized (LOCK) {
            JSONArray a = list();
            String[] fs = {"ltitle", "lartist", "rtitle", "rartist",
                    "source", "rid", "url", "nsTs"};
            for (int i = 0; i < a.length(); i++) {
                JSONObject it = a.optJSONObject(i);
                if (it == null) {
                    continue;
                }
                String title = it.optString("title", "");
                if (title.length() == 0) {
                    continue;
                }
                String artist = it.optString("artist", "");
                /* ★ v1.3.236：k 自愈 —— 磁盘上有个别条目的 k 字段被错误编码写坏过
                   （实测《风继续吹》的 k 变成 "风继续\uFFFD\uFFFD\uFFFD|张国荣"，
                   title 却是好的）。而 patch / patchBatch / findLocal / 页面星标**全都按 k 查**
                   ⇒ 这一条永远补不上 ltitle/source（于是永远占位、永远没星）。
                   k 本来就只由 title+artist 决定，这里顺手重算一遍即可。 */
                try {
                    String kk = key(title, artist);
                    if (!kk.equals(it.optString("k", ""))) {
                        it.put("k", kk);
                        n++;
                    }
                } catch (Throwable ignore) {
                    // ignore
                }
                /* ★ v1.3.242：用户手动 🔗 绑过的条目不参与自动清洗。
                   favBind 写进来的 rtitle/rartist 是**明确意图**（他就是要那一版，
                   哪怕歌手不一样），下面「歌手不沾就判脏」会把它当脏数据清掉。 */
                if ("1".equals(it.optString("rman", ""))) {
                    continue;
                }
                String lt = it.optString("ltitle", "");
                String rt = it.optString("rtitle", "");
                boolean bad = false;
                if (lt.length() > 0
                        && !relatedName(title, artist, lt, it.optString("lartist", ""))) {
                    bad = true;
                }
                /* ★ v1.3.238：歌名一字不差、歌手完全不同的 ltitle 也要判脏。
                   relatedName 只看歌名（歌手是「歌名不相关时」的加分项），于是
                   《hotline bling / Billie Eilish》配成《Hotline Bling / Drake》这种事
                   在缓存里可以永久存活 —— 播收藏就直接放成别人的版本。
                   ★ 只查 ltitle（本地库命中，ID3 歌手权威）；rtitle 可能是用户
                   手动 🔗 绑定的结果，那是明确意图，不能自动清。 */
                if (!bad && lt.length() > 0
                        && !artistSame(artist, it.optString("lartist", ""))) {
                    bad = true;
                }
                if (!bad && rt.length() > 0
                        && !relatedName(title, artist, rt, it.optString("rartist", ""))) {
                    bad = true;
                }
                /* ★ v1.3.242：在线搜索写回的 rartist 也要查歌手。
                   上一段只比歌名（relatedName 里歌手是「歌名不相关时」的加分项），
                   于是「歌名一模一样、歌手完全不同」的缓存可以永久存活：
                   实测《bitches broken hearts / Billie Eilish》被配成 cyo 的
                   《bitches broken hearts（翻自 Billie Eilish）》—— 翻唱曲名把原名
                   整条包住得 92 分，正牌原唱写歪一个字母只有 90 分，翻唱反而胜出。
                   手工绑定过的条目在上面的 rman 处已经跳过，不会被误清。 */
                if (!bad && !artistSame(artist, it.optString("rartist", ""))) {
                    bad = true;
                }
                if (!bad) {
                    continue;
                }
                for (int j = 0; j < fs.length; j++) {
                    if (it.has(fs[j])) {
                        it.remove(fs[j]);
                    }
                }
                n++;
            }
            if (n > 0) {
                write(a);
            }
        }
        return n;
    }

    /* ---------------- 负缓存（v1.3.203）---------------- */

    /**
     * 「网上搜过但没搜到源」的条目记一个时间戳，6 小时内播收藏**不再为它发搜索**。
     *
     * <p>背景：收藏里偶尔混进只有歌名的条目（语音收藏时拿不到地址），播收藏时
     * 要在线搜一次拿 source+rid。以前每次导入都重搜一遍 ⇒ 整批 1.5s 里有 1s
     * 卡在这一首上，而搜几百首的曲库导入是秒回，对比很明显。
     * 搜到会回写 source+rid（下次零搜索）；搜不到就记 nsTs，短期内不再白搜。</p>
     */
    private static final long NOSRC_TTL = 6 * 3600 * 1000L;

    /** 这条最近已经搜过且没搜到 ⇒ 本次导入跳过搜索（别再为它卡一秒）。 */
    public static boolean skipSearch(JSONObject it) {
        if (it == null) {
            return false;
        }
        long ts = it.optLong("nsTs", 0);
        return ts > 0 && System.currentTimeMillis() - ts < NOSRC_TTL;
    }

    /** 标记「这首歌名在网上搜不到源」。 */
    public static void markNoSrc(String k) {
        if (k == null || k.length() == 0) {
            return;
        }
        synchronized (LOCK) {
            JSONArray a = list();
            for (int i = 0; i < a.length(); i++) {
                JSONObject it = a.optJSONObject(i);
                if (it == null || !k.equals(it.optString("k", ""))) {
                    continue;
                }
                try {
                    it.put("nsTs", System.currentTimeMillis());
                    write(a);
                } catch (Throwable t) {
                    Log.w(TAG, "markNoSrc: " + t);
                }
                return;
            }
        }
    }

    /** 新条目补旧条目的空字段（url / 四件套这类后来才拿到的信息）。 */
    private static void fill(JSONObject old, JSONObject it) {
        /* ★ v1.3.244：把绑定信息也纳入「补空」范围 —— 上传歌单时收藏里已有同 key 的条目，
           以前只补 url/source/rid，rtitle/lartist 这些展示名与 rman 会漏掉。 */
        String[] fs = {"url", "source", "rid", "album", "duration", "artist", "kind",
                "rtitle", "rartist", "ltitle", "lartist"};
        for (int i = 0; i < fs.length; i++) {
            String f = fs[i];
            if (old.optString(f, "").length() > 0) {
                continue;
            }
            String v = it.optString(f, "");
            if (v.length() > 0) {
                try {
                    old.put(f, v);
                } catch (Throwable t) {
                    // ignore
                }
            }
        }
        if (old.optInt("rman", 0) <= 0 && it.optInt("rman", 0) > 0) {
            try {
                old.put("rman", it.optInt("rman", 0));
            } catch (Throwable t) {
                // ignore
            }
        }
        if (old.optInt("index", 0) == 0 && it.optInt("index", 0) > 0) {
            try {
                old.put("index", it.optInt("index", 0));
            } catch (Throwable t) {
                // ignore
            }
        }
    }

    /**
     * 取消收藏。
     *
     * @param title 曲名；为空时按 key 精确删（{@code artist} 传 key）
     */
    public static String del(String title, String artist) {
        String k = (title == null || title.length() == 0) ? artist : key(title, artist);
        synchronized (LOCK) {
            JSONArray a = list();
            for (int i = 0; i < a.length(); i++) {
                JSONObject it = a.optJSONObject(i);
                if (it != null && (k.equals(it.optString("k", "")) || realHit(it, k))) {
                    String nm = it.optString("title", "");
                    JSONArray b = new JSONArray();
                    for (int j = 0; j < a.length(); j++) {
                        if (j != i) {
                            b.put(a.opt(j));
                        }
                    }
                    cache = b;
                    write(b);
                    return "OK 已取消收藏《" + nm + "》　收藏里还剩 " + b.length() + " 首";
                }
            }
        }
        return "ERR 收藏里没有这一首";
    }

    public static String clear() {
        synchronized (LOCK) {
            /* ★ v1.3.267：清空 = 彻底清 —— 连 v1.3.227 的恢复快照 r1_fav_prev.json
               一起删（v1.3.227 的快照是为了「重传同歌单秒回」，但错误匹配结果
               source/rid/rtitle 也在快照里，「清空 → 重传」会把错缓存原样捡回来，
               有声书被认成歌后怎么重传都治不好。用户 2026-11-01 点名要「清空带清缓存」。
               重传后的解析本来就推迟到播到时 fav_resolve 单次现搜（v1.3.232 起导入
               已不批量匹配），冷启动代价只是每首播到时多搜一次；手动 🔗 绑定不受
               影响 —— 导出 txt 自带 src=/rid=/rman=1 列，重传以本次为准。
               负缓存 nsTs 在条目里，随整表清空自然消失。 */
            try {
                File pf = new File(app.getFilesDir(), "r1_fav_prev.json");
                if (pf.exists()) {
                    pf.delete();
                }
            } catch (Throwable t) {
                Log.w(TAG, "clear delprev: " + t);
            }
            prevMap = null;
            JSONArray b = new JSONArray();
            cache = b;
            write(b);
        }
        return "OK 收藏列表已清空（解析缓存一并清掉，重传后播到时重新匹配）";
    }

    /** clear() 留下的上一份收藏（key → 条目），add() 新条目时回来捡缓存字段。 */
    private static HashMap<String, JSONObject> prevMap = null;

    /**
     * 从 clear() 的快照里把**缓存类字段**捡回新条目（v1.3.227）。
     *
     * <p>只捡解析结果，不捡展示/输入字段 —— title/artist/url/index 由调用方
     * 按本次导入的原文填。source/rid 只在本次没带来时才捡（带上本次的优先）。</p>
     */
    private static void restoreFromPrev(JSONObject n, String k) {
        try {
            if (prevMap == null) {
                File f = new File(app.getFilesDir(), "r1_fav_prev.json");
                HashMap<String, JSONObject> m = new HashMap<String, JSONObject>();
                if (f.exists()) {
                    FileInputStream in = new FileInputStream(f);
                    StringBuilder sb = new StringBuilder();
                    byte[] buf = new byte[8192];
                    int rd;
                    while ((rd = in.read(buf)) > 0) {
                        sb.append(new String(buf, 0, rd, "UTF-8"));
                    }
                    in.close();
                    JSONArray a = new JSONArray(sb.toString());
                    for (int i = 0; i < a.length(); i++) {
                        JSONObject it = a.optJSONObject(i);
                        if (it != null) {
                            m.put(it.optString("k", ""), it);
                        }
                    }
                }
                prevMap = m;
            }
            JSONObject old = prevMap.get(k);
            if (old == null) {
                return;
            }
            String[] fs = {"ltitle", "lartist", "rtitle", "rartist", "nsTs"};
            for (int i = 0; i < fs.length; i++) {
                /* ★ v1.3.244：本次（歌单里的扩展列）已经带了的，以本次为准，快照别覆盖 */
                if (n.optString(fs[i], "").length() > 0) {
                    continue;
                }
                String v = old.optString(fs[i], "");
                if (v.length() > 0) {
                    n.put(fs[i], v);
                }
            }
            /* ★ v1.3.244：手动绑定标记也要能捡回来（否则重传后 purgeUnrelated 会把它清掉） */
            if (n.optInt("rman", 0) <= 0 && old.optInt("rman", 0) > 0) {
                n.put("rman", old.optInt("rman", 0));
            }
            if (n.optString("source", "").length() == 0) {
                String s = old.optString("source", "");
                if (s.length() > 0) {
                    n.put("source", s);
                    String r = old.optString("rid", "");
                    if (r.length() > 0) {
                        n.put("rid", r);
                    }
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "restoreFromPrev: " + t);
        }
    }

    /* ---------------- 对外 JSON ---------------- */

    /** 给 player 反代 / 页面列表用：{ok,total,list}。 */
    public static JSONObject json() {
        JSONObject o = new JSONObject();
        try {
            JSONArray a = list();
            o.put("ok", true);
            o.put("total", a.length());
            o.put("list", a);
        } catch (Throwable t) {
            Log.w(TAG, "json: " + t);
        }
        return o;
    }

    private Fav() {
    }
}
