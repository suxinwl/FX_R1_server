package cn.workbuddy.r1client;

import android.content.Context;
import android.os.Environment;
import android.util.Log;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

/**
 * v1.3.248：闹钟铃声缓存。
 *
 * <p>需求（用户 2026-10-26）：「在设备 5g 多那个分区建一个闹钟的文件夹，把主动设成闹钟的
 * 歌直接缓存到那个文件夹，设铃声的时候优先显示已缓存的，随机的不缓存」。追加：
 * 「如果文件夹里没有歌，设闹铃的时候设的又是随机，那当场缓存一首歌到这个文件夹」，
 * 「生成的提示音就不需要了，主动设置闹铃的时候就有缓存的闹铃了」。</p>
 *
 * <h3>为什么放 /sdcard</h3>
 * <p>实测这台机器 <b>/data 只有 988M（剩 758M）</b>，而 <b>/sdcard 是 5.1G</b> ——
 * 用户说的「5g 多那个分区」就是后者。而且两侧权限都够：
 * device（uid 10008）有 READ/WRITE_EXTERNAL_STORAGE，player（uid 1000 system）
 * 有 READ_EXTERNAL_STORAGE ⇒ 文件放这儿，真正出声的 player 读得到，
 * 用户还能用文件管理器直接看见、直接删。</p>
 *
 * <h3>缓存怎么定位</h3>
 * <p>键用 {@link Fav#key(String, String)}（＝ norm(曲名)+"|"+norm(歌手)，全项目同一套），
 * 所以「同一首歌」在收藏、闹钟、缓存三处的 key 一致。文件名取可读的
 * {@code 曲名 - 歌手.ext}，真名映射放在同目录的 {@code index.json} 里 ——
 * 用户打开文件夹看到的是看得懂的文件名，不是一串哈希。</p>
 *
 * <p>★★★ 只缓存<b>用户主动指定</b>的铃声，随机播的不缓存（用户明确要求）。
 * 唯一的例外是「缓存目录为空 + 设的是随机闹钟」⇒ 当场缓存一首，保证闹钟永远有本地可放
 * 的东西（见 {@code Alarm.cacheOneRandom}）。</p>
 */
final class AlarmCache {

    private static final String TAG = "R1AlarmCache";

    /** 缓存目录名。改这里等于换文件夹，老文件不会自动搬。 */
    static final String DIR_NAME = "R1Alarm";
    private static final String INDEX = "index.json";
    /** 单曲上限：再大就不是「一首歌」了，别把 5G 卡塞满 */
    private static final long MAX_BYTES = 80L * 1024 * 1024;
    /** 下载超时。NAS 直连一般 1~2 秒一首，慢的时候给够 */
    private static final int CONNECT_MS = 8000;
    private static final int READ_MS = 20000;

    private static Context app;
    private static File dir;
    /** key → {"title","artist","file","size","ts"} */
    private static final JSONObject items = new JSONObject();
    private static boolean loaded = false;

    private AlarmCache() {
    }

    // ---------------- 生命周期 ----------------

    static synchronized void init(Context c) {
        app = c == null ? null : c.getApplicationContext();
        dir = null;
        loaded = false;
        File d = dir();
        if (d == null) {
            SessionLog.i("alarm cache: 建不了目录，缓存功能不可用");
            return;
        }
        loadIndex();
        SessionLog.i("alarm cache: " + d.getAbsolutePath() + "，已缓存 "
                + items.length() + " 首");
    }

    /** 缓存目录；建不出来返回 null。 */
    static synchronized File dir() {
        if (dir != null && dir.isDirectory()) {
            return dir;
        }
        List<File> cands = new ArrayList<File>();
        try {
            File ext = Environment.getExternalStorageDirectory();
            if (ext != null) {
                cands.add(new File(ext, DIR_NAME));
            }
        } catch (Throwable ignored) {
        }
        cands.add(new File("/sdcard/" + DIR_NAME));
        cands.add(new File("/mnt/sdcard/" + DIR_NAME));
        for (int i = 0; i < cands.size(); i++) {
            File f = cands.get(i);
            try {
                if (f.isDirectory() || f.mkdirs()) {
                    if (f.canWrite() || f.isDirectory()) {
                        dir = f;
                        return f;
                    }
                }
            } catch (Throwable t) {
                Log.w(TAG, "mkdir " + f + ": " + t);
            }
        }
        return null;
    }

    // ---------------- 查询 ----------------

    /**
     * 这首有没有缓存。有就返回<b>绝对路径</b>（file:// 用的就是它），没有返回 null。
     *
     * <p>★ 每次都验一下 {@code exists()}：用户可能拿文件管理器把文件删了，
     * 而 index.json 还在 —— 只信 index 会推出一个播不了的文件，闹钟就哑了。</p>
     */
    static synchronized String fileOf(String k) {
        if (k == null || k.length() == 0) {
            return null;
        }
        loadIndex();
        JSONObject it = items.optJSONObject(k);
        if (it == null) {
            return null;
        }
        String name = it.optString("file", "");
        File d = dir();
        if (name.length() == 0 || d == null) {
            return null;
        }
        File f = new File(d, name);
        if (!f.isFile() || f.length() <= 0) {
            // 文件被人删了 ⇒ 把账也销掉，下次设置铃声会重新下
            items.remove(k);
            saveIndex();
            SessionLog.i("alarm cache: " + name + " 只剩账没有文件，销账");
            return null;
        }
        return f.getAbsolutePath();
    }

    static synchronized boolean has(String k) {
        return fileOf(k) != null;
    }

    static synchronized int count() {
        loadIndex();
        return items.length();
    }

    /** 给页面 / 语音看的一行状态。 */
    static synchronized String desc() {
        File d = dir();
        return (d == null ? "目录建不出来" : d.getAbsolutePath())
                + "，已缓存 " + count() + " 首";
    }

    /** 已缓存的清单（页面「设铃声」优先显示用）。 */
    static synchronized JSONArray list() {
        loadIndex();
        JSONArray a = new JSONArray();
        java.util.Iterator<String> ks = items.keys();
        while (ks.hasNext()) {
            String k = ks.next();
            JSONObject it = items.optJSONObject(k);
            if (it == null) {
                continue;
            }
            try {
                JSONObject o = new JSONObject(it.toString());
                o.put("k", k);
                a.put(o);
            } catch (Throwable ignored) {
            }
        }
        return a;
    }

    // ---------------- 写 ----------------

    /**
     * 同步下载一首。返回 "OK 文件名 (大小)" / "ALREADY 路径" / "ERR 原因"。
     *
     * <p>★ 先写 {@code .part} 再改名：断电 / 进程被杀时不会留半截文件被当成缓存命中。</p>
     */
    static synchronized String save(String k, String title, String artist, String url) {
        if (k == null || k.length() == 0) {
            k = Fav.key(title, artist);
        }
        if (k.length() == 0) {
            return "ERR 没有可定位的键（曲名和歌手都空）";
        }
        String have = fileOf(k);
        if (have != null) {
            return "ALREADY " + have;
        }
        if (url == null || url.length() == 0) {
            return "ERR 没有可下载的地址";
        }
        String low = url.toLowerCase();
        if (!low.startsWith("http://") && !low.startsWith("https://")) {
            return "ERR 地址不是 http（" + url + "）";
        }
        File d = dir();
        if (d == null) {
            return "ERR 缓存目录不可写";
        }
        String name = fileName(k, title, artist, extOf(url));
        File out = new File(d, name);
        File tmp = new File(d, name + ".part");
        long got = 0L;
        HttpURLConnection c = null;
        InputStream in = null;
        OutputStream os = null;
        try {
            c = (HttpURLConnection) new URL(url).openConnection();
            c.setConnectTimeout(CONNECT_MS);
            c.setReadTimeout(READ_MS);
            c.setInstanceFollowRedirects(true);
            c.setRequestProperty("User-Agent", "r1alarm/1.0");
            int code = c.getResponseCode();
            if (code >= 400) {
                return "ERR 服务器返回 HTTP " + code;
            }
            long len = c.getContentLength();
            if (len > MAX_BYTES) {
                return "ERR 文件太大（" + len + "B）";
            }
            in = c.getInputStream();
            os = new FileOutputStream(tmp);
            byte[] buf = new byte[32 * 1024];
            int n;
            while ((n = in.read(buf)) > 0) {
                os.write(buf, 0, n);
                got += n;
                if (got > MAX_BYTES) {
                    break;
                }
            }
            os.flush();
            os.close();
            os = null;
            in.close();
            in = null;
            if (got <= 0) {
                tmp.delete();
                return "ERR 下载到 0 字节";
            }
            if (!tmp.renameTo(out)) {
                // 某些 fuse 层不支持 rename ⇒ 退化成直写
                out.delete();
                if (!tmp.renameTo(out)) {
                    tmp.delete();
                    return "ERR 落盘失败（rename）";
                }
            }
            JSONObject it = new JSONObject();
            it.put("title", title == null ? "" : title);
            it.put("artist", artist == null ? "" : artist);
            it.put("file", name);
            it.put("size", got);
            it.put("ts", System.currentTimeMillis());
            it.put("url", url);
            items.put(k, it);
            saveIndex();
            SessionLog.i("alarm cache: 存好 " + name + "（" + got + "B）");
            return "OK " + name + " (" + got + "B)";
        } catch (Throwable t) {
            tmp.delete();
            Log.w(TAG, "save: " + t);
            SessionLog.i("alarm cache: 下载失败 " + t);
            return "ERR " + t;
        } finally {
            try {
                if (os != null) {
                    os.close();
                }
            } catch (Throwable ignored) {
            }
            try {
                if (in != null) {
                    in.close();
                }
            } catch (Throwable ignored) {
            }
            if (c != null) {
                c.disconnect();
            }
        }
    }

    /** 后台下载，立刻返回。闹钟响的时候不能等 8 秒的网络。 */
    static void saveAsync(final String k, final String title, final String artist,
                          final String url) {
        Thread t = new Thread(new Runnable() {
            public void run() {
                String r = save(k, title, artist, url);
                SessionLog.i("alarm cache(async) " + title + " -> " + r);
            }
        }, "r1-alarm-cache");
        t.setDaemon(true);
        t.start();
    }

    /** 删掉某一首的缓存（账 + 文件）。 */
    static synchronized String remove(String k) {
        loadIndex();
        JSONObject it = items.optJSONObject(k);
        if (it == null) {
            return "没有这条缓存";
        }
        String name = it.optString("file", "");
        File d = dir();
        if (d != null && name.length() > 0) {
            new File(d, name).delete();
        }
        items.remove(k);
        saveIndex();
        return "已删 " + name;
    }

    /** 清空缓存目录里的音频（index.json 保留，重写成空账）。 */
    static synchronized String clear() {
        loadIndex();
        File d = dir();
        int n = 0;
        // ★ 必须按 key 删账：items 的键是 k（norm 曲名|歌手），不是文件名。
        //   v1.3.248 一开始按文件名 remove ⇒ 一条都没删掉，清空后账本仍是满的，
        //   于是 count() 骗人、cacheOneRandom 以为"已有缓存"不肯补歌。
        java.util.Iterator<String> ks = items.keys();
        List<String> keys = new ArrayList<String>();
        while (ks.hasNext()) {
            keys.add(ks.next());
        }
        for (int i = 0; i < keys.size(); i++) {
            String k = keys.get(i);
            JSONObject it = items.optJSONObject(k);
            String nm = it == null ? "" : it.optString("file", "");
            if (nm.length() > 0 && d != null && new File(d, nm).delete()) {
                n++;
            }
            items.remove(k);
        }
        // index.json 之外的残留（用户手动丢进去的 .part 之类）不动，免得误删
        saveIndex();
        return "已清 " + n + " 首";
    }

    // ---------------- 内部 ----------------

    /** 可读文件名：曲名 - 歌手.ext。非法字符换成 _，太长就截断。 */
    private static String fileName(String k, String title, String artist, String ext) {
        String t = safe(title);
        String a = safe(artist);
        String base = (t.length() == 0 ? "alarm" : t)
                + (a.length() == 0 ? "" : " - " + a);
        if (base.length() > 80) {
            base = base.substring(0, 80);
        }
        String name = base + "." + ext;
        // 撞名保护：同名文件已经属于别的 key ⇒ 补一段 key 的哈希
        File d = dir();
        if (d != null && new File(d, name).isFile()) {
            JSONObject owner = ownerOfFile(name);
            if (owner != null && !owner.optString("_k", "").equals(k)) {
                name = base + " " + shortHash(k) + "." + ext;
            }
        }
        return name;
    }

    private static JSONObject ownerOfFile(String name) {
        java.util.Iterator<String> ks = items.keys();
        while (ks.hasNext()) {
            String k = ks.next();
            JSONObject it = items.optJSONObject(k);
            if (it != null && name.equals(it.optString("file", ""))) {
                try {
                    it.put("_k", k);
                } catch (Throwable ignored) {
                }
                return it;
            }
        }
        return null;
    }

    private static String safe(String s) {
        if (s == null) {
            return "";
        }
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < s.length() && b.length() < 60; i++) {
            char ch = s.charAt(i);
            boolean bad = ch == '/' || ch == '\\' || ch == ':' || ch == '*' || ch == '?'
                    || ch == '"' || ch == '<' || ch == '>' || ch == '|' || ch < ' ';
            b.append(bad ? '_' : ch);
        }
        return b.toString().trim();
    }

    private static String shortHash(String s) {
        int h = 0;
        for (int i = 0; i < s.length(); i++) {
            h = h * 31 + s.charAt(i);
        }
        return Integer.toHexString(h & 0xffff);
    }

    /** 从地址猜扩展名；猜不到按 mp3（NAS 那套基本都是 mp3）。 */
    private static String extOf(String url) {
        String u = url == null ? "" : url;
        int q = u.indexOf('?');
        if (q > 0) {
            u = u.substring(0, q);
        }
        int dot = u.lastIndexOf('.');
        if (dot > 0 && dot > u.length() - 6) {
            String e = u.substring(dot + 1).toLowerCase();
            if (e.equals("mp3") || e.equals("flac") || e.equals("m4a")
                    || e.equals("aac") || e.equals("wav") || e.equals("ogg")
                    || e.equals("ape") || e.equals("wma")) {
                return e;
            }
        }
        return "mp3";
    }

    private static void loadIndex() {
        if (loaded) {
            return;
        }
        loaded = true;
        File d = dir();
        if (d == null) {
            return;
        }
        File f = new File(d, INDEX);
        if (!f.isFile()) {
            return;
        }
        try {
            String s = readText(f);
            JSONObject o = new JSONObject(s);
            JSONObject it = o.optJSONObject("items");
            if (it != null) {
                java.util.Iterator<String> ks = it.keys();
                int dropped = 0;
                while (ks.hasNext()) {
                    String k = ks.next();
                    JSONObject v = it.optJSONObject(k);
                    if (v == null) {
                        continue;
                    }
                    // ★ 剪掉幽灵条目：文件已被用户拿文件管理器删了，账却还在
                    //   ⇒ count() 报假数、播放随便挑会挑到不存在的东西。
                    String nm = v.optString("file", "");
                    if (nm.length() == 0 || !new File(d, nm).isFile()) {
                        dropped++;
                        continue;
                    }
                    items.put(k, v);
                }
                if (dropped > 0) {
                    SessionLog.i("alarm cache: 清掉 " + dropped + " 条失效账（文件已不在）");
                    saveIndex();
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "loadIndex: " + t);
            SessionLog.i("alarm cache: index.json 读坏了（" + t + "），按空账处理");
        }
    }

    private static void saveIndex() {
        File d = dir();
        if (d == null) {
            return;
        }
        File f = new File(d, INDEX);
        File tmp = new File(d, INDEX + ".part");
        try {
            JSONObject o = new JSONObject();
            o.put("v", 1);
            o.put("items", new JSONObject(items.toString()));
            writeText(tmp, o.toString());
            if (!tmp.renameTo(f)) {
                f.delete();
                if (!tmp.renameTo(f)) {
                    writeText(f, o.toString());
                    tmp.delete();
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "saveIndex: " + t);
        }
    }

    /** 小文件读文本（index.json 只有几 KB）。别拿它读音频。 */
    private static String readText(File f) throws Exception {
        byte[] buf = new byte[(int) Math.min(f.length(), 4L * 1024 * 1024)];
        InputStream in = new java.io.FileInputStream(f);
        try {
            int off = 0;
            int n;
            while (off < buf.length && (n = in.read(buf, off, buf.length - off)) > 0) {
                off += n;
            }
            return new String(buf, 0, off, "UTF-8");
        } finally {
            in.close();
        }
    }

    private static void writeText(File f, String s) throws Exception {
        OutputStream o = new FileOutputStream(f);
        try {
            o.write(s.getBytes("UTF-8"));
            o.flush();
        } finally {
            o.close();
        }
    }
}
