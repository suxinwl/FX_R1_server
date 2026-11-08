package cn.workbuddy.r1web;

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

/**
 * pl-1.6.29：播放页要显示的「码率 + 格式」（含电台）。
 *
 * <p>三条取数路径，从上往下退化：</p>
 *
 * <table border="1">
 * <tr><th>来源</th><th>能拿到</th><th>适用</th></tr>
 * <tr><td>① Exo 的 {@code Format}</td><td>码率 / MIME / 采样率 / 声道</td>
 *     <td>Exo 引擎，本地歌 + 电台都准</td></tr>
 * <tr><td>② URL 里的 {@code /64k.mp3}</td><td>码率</td>
 *     <td>蜻蜓 / 喜马拉雅一类把码率写进路径的直播源</td></tr>
 * <tr><td>③ HTTP HEAD 的 Content-Length</td><td>码率 = 字节数*8/时长</td>
 *     <td>mp 引擎的本地歌（异步探测，下一次轮询才看得到）</td></tr>
 * </table>
 *
 * <p>★ 格式（MP3 / FLAC / AAC…）与码率是<b>两件独立的事</b>：
 * ① 给不了格式就退回 ②/③ 的 URL 扩展名，给不了码率就退回路径里的数字，
 * 两者互不阻塞 —— 电台拿不到时长也照样能显示「MP3 · 64k」。</p>
 *
 * <p>★ 为什么不用 {@code MediaMetadataRetriever}：它对网络源要<b>再开一条连接</b>
 * 去解析头，而电台是直播流（没有终点），那条连接会一直挂着不返回 ⇒ 拖死状态轮询。</p>
 */
public final class AudioInfo {

    /** 码率（kbps），0 = 拿不到。 */
    public int br;
    /** 归一化格式名：MP3 / FLAC / AAC / WAV / OGG / Opus / …，空串 = 拿不到。 */
    public String fmt = "";
    /** 采样率（Hz），0 = 拿不到。 */
    public int sr;
    /** 声道数，0 = 拿不到。 */
    public int ch;
    /** 取数来源，排障用：exo / url / head / ""。 */
    public String src = "";
    /** 原始值：Exo 的 sampleMimeType / codecs，排障用。 */
    public String raw = "";

    /* ------------------------------------------------------------------ */
    /* 入口                                                                */
    /* ------------------------------------------------------------------ */

    /**
     * @param url   当前曲目地址（拿不到就传 null，只走 Exo 那条路）
     * @param durMs 总时长（直播流 = 0；只有 &gt; 1000 才会去 HEAD 探测）
     */
    public static AudioInfo of(String url, long durMs) {
        AudioInfo a = exo();
        if (a == null) {
            a = new AudioInfo();
        }
        if (a.fmt.length() == 0) {
            a.fmt = fmtFromUrl(url);
            if (a.fmt.length() > 0 && a.src.length() == 0) {
                a.src = "url";
            }
        }
        if (a.br <= 0) {
            a.br = brFromUrl(url);
            if (a.br > 0 && a.src.length() == 0) {
                a.src = "url";
            }
        }
        if (a.br <= 0 || a.fmt.length() == 0) {
            P p = probe(url, durMs);
            if (p != null) {
                if (a.br <= 0 && p.kbps > 0) {
                    a.br = p.kbps;
                    a.src = "head";
                }
                /* 格式的最后一次机会：在线歌的代理地址 /R/KW/657547062 没有扩展名，
                   只有 HTTP 的 Content-Type（audio/mpeg / audio/flac）能告诉我们它是什么。 */
                if (a.fmt.length() == 0 && p.mime.length() > 0) {
                    String f = fmtFromMime(p.mime);
                    if (f.length() > 0) {
                        a.fmt = f;
                        if (a.src.length() == 0) {
                            a.src = "head";
                        }
                    }
                }
            }
        }
        return a;
    }

    /* ------------------------------------------------------------------ */
    /* ① Exo 的 Format                                                     */
    /* ------------------------------------------------------------------ */

    /**
     * 反射链路（注入层编译期引用不到这些类）：
     * <pre>
     * MultiExoPlayer.staticInstance          （静态单例）
     *   .currentPlayer  → MultiExoPlayer$PlayerInstance
     *   .player         → exomedia ... ExoMediaPlayer
     *   .currentFormat  → com.google.android.exoplayer2.Format
     * </pre>
     * Format 的 bitrate / sampleMimeType / sampleRate / channelCount 都是 public final 字段。
     *
     * @return null = 这条路走不通（mp 引擎 / 还没起播 / 反射失败）
     */
    private static AudioInfo exo() {
        try {
            Class<?> cm = Class.forName("com.phicomm.speaker.player.model.MultiExoPlayer");
            java.lang.reflect.Field fs = cm.getDeclaredField("staticInstance");
            fs.setAccessible(true);
            Object mp = fs.get(null);
            if (mp == null) {
                return null;
            }
            Object pi = PCtl.field(mp, "currentPlayer");
            Object emp = PCtl.field(pi, "player");
            if (emp == null) {
                return null;
            }
            Object fmt = PCtl.field(emp, "currentFormat");
            if (fmt == null) {
                return null;
            }
            AudioInfo a = new AudioInfo();
            a.br = intOf(fmt, "bitrate") / 1000;          // Exo 用 bit/s
            a.sr = intOf(fmt, "sampleRate");
            a.ch = intOf(fmt, "channelCount");
            a.raw = strOf(fmt, "sampleMimeType");
            if (a.raw == null || a.raw.length() == 0) {
                a.raw = strOf(fmt, "codecs");
            }
            a.fmt = fmtFromMime(a.raw);
            a.src = "exo";
            return a;
        } catch (Throwable t) {
            return null;
        }
    }

    private static int intOf(Object o, String name) {
        try {
            java.lang.reflect.Field f = o.getClass().getField(name);
            Object v = f.get(o);
            return v instanceof Number ? ((Number) v).intValue() : 0;
        } catch (Throwable t) {
            return 0;
        }
    }

    private static String strOf(Object o, String name) {
        try {
            java.lang.reflect.Field f = o.getClass().getField(name);
            Object v = f.get(o);
            return v == null ? "" : String.valueOf(v);
        } catch (Throwable t) {
            return "";
        }
    }

    /* ------------------------------------------------------------------ */
    /* ② URL 里的线索                                                      */
    /* ------------------------------------------------------------------ */

    /** {@code .../live/15318317/64k.mp3} ⇒ 64。 */
    private static int brFromUrl(String url) {
        if (url == null) {
            return 0;
        }
        try {
            java.util.regex.Matcher m = java.util.regex.Pattern
                    .compile("/(\\d{2,3})[kK]\\.(?:mp3|aac|m4a|ogg|flac)(?:\\?|$)")
                    .matcher(url);
            if (m.find()) {
                return Integer.parseInt(m.group(1));
            }
        } catch (Throwable t) {
            // ignore
        }
        return 0;
    }

    private static String fmtFromUrl(String url) {
        return fmtFromMime(mimeFromPath(url));
    }

    /**
     * 去掉 query 再取扩展名。
     *
     * ★★ 坑：不能只找最后一个 '.' —— 在线歌的 URL 是
     * {@code http://192.168.2.189:8100/R/KW/657547062}，路径里没有点，
     * 于是命中 **IP 里的那个点** ⇒ 扩展名变成一整串 "189:8100/R/KW/657547062"。
     * 必须要求点在**最后一个 '/' 之后**（且长度合理）。
     */
    private static String mimeFromPath(String url) {
        if (url == null) {
            return "";
        }
        String s = url;
        int q = s.indexOf('?');
        if (q >= 0) {
            s = s.substring(0, q);
        }
        int slash = s.lastIndexOf('/');
        int d = s.lastIndexOf('.');
        if (d < 0 || d < slash) {
            return "";                 // 路径段里没有点 ⇒ 没有扩展名
        }
        String ext = s.substring(d + 1).toLowerCase();
        /* 音频扩展名最长 5 个字符（flac / mpeg / opus / m4a）⇒ 更长的必然是切错了 */
        return ext.length() > 5 ? "" : ext;
    }

    /** MIME / 扩展名 / codecs ⇒ 归一化格式名；认不出来就原样返回（大写）。 */
    static String fmtFromMime(String m) {
        if (m == null) {
            return "";
        }
        String s = m.trim().toLowerCase();
        /* Content-Type 常带参数：audio/mpeg; charset=utf-8 ⇒ 只留分号前那半 */
        int semi = s.indexOf(';');
        if (semi >= 0) {
            s = s.substring(0, semi).trim();
        }
        if (s.length() == 0) {
            return "";
        }
        if (s.startsWith("audio/")) {
            s = s.substring(6);
        }
        if (s.equals("mpeg") || s.equals("mp3") || s.equals("mpeg-l3")
                || s.startsWith("mp4a") || s.equals("aac") || s.equals("m4a")) {
            /* mp4a-latm 是 AAC 在 MP4/ADTS 里的 MIME，用户层面叫 AAC */
            return s.startsWith("mp4a") ? "AAC" : (s.equals("m4a") ? "AAC" : "MP3");
        }
        if (s.equals("flac") || s.equals("x-flac")) {
            return "FLAC";
        }
        if (s.equals("wav") || s.equals("x-wav") || s.equals("raw") || s.equals("wave")) {
            return "WAV";
        }
        if (s.equals("ogg") || s.equals("vorbis")) {
            return "OGG";
        }
        if (s.equals("opus")) {
            return "Opus";
        }
        if (s.equals("amr") || s.equals("amr-wb") || s.equals("3gpp")) {
            return "AMR";
        }
        if (s.equals("ac3") || s.equals("eac3")) {
            return "AC3";
        }
        /* 认不出来的（比如 "mp4"、"unknown"）原样大写返回，比留空有用 */
        return s.toUpperCase();
    }

    /* ------------------------------------------------------------------ */
    /* ③ HTTP HEAD 探测（异步 + 缓存）                                      */
    /* ------------------------------------------------------------------ */

    /** 一次 HEAD 的探测结果。 */
    private static final class P {
        int kbps;
        String mime = "";
    }

    /** url ⇒ 探测结果。★ 探测失败也要记进去（kbps=0）—— 否则每次轮询都会重发一次 HEAD。 */
    private static final Map<String, P> sCache = new HashMap<String, P>();
    private static final Map<String, Long> sBusy = new HashMap<String, Long>();
    private static final long BUSY_TTL = 20000L;

    private static synchronized P cached(String url) {
        return sCache.get(url);            // null = 还没探测过
    }

    private static synchronized void putCache(String url, P p) {
        sCache.put(url, p);
        sBusy.remove(url);
    }

    /**
     * 返回缓存（null = 还没有）；顺手在后台发一次 HEAD。
     *
     * <p>★ 一次请求同时拿两个东西：{@code Content-Length}（算码率）与
     * {@code Content-Type}（定格式）。后者对在线歌是**唯一**的格式来源 ——
     * 落雪代理地址 {@code /R/KW/657547062} 根本没有扩展名。</p>
     */
    private static P probe(final String url, final long durMs) {
        if (url == null || !url.startsWith("http")) {
            return null;
        }
        P c = cached(url);
        if (c != null) {
            return c;
        }
        long now = System.currentTimeMillis();
        synchronized (sCache) {
            Long t = sBusy.get(url);
            if (t != null && now - t.longValue() < BUSY_TTL) {
                return null;                   // 已经在飞了
            }
            sBusy.put(url, Long.valueOf(now));
        }
        try {
            new Thread(new Runnable() {
                public void run() {
                    P p = new P();
                    try {
                        HttpURLConnection c = (HttpURLConnection) new URL(url).openConnection();
                        c.setRequestMethod("HEAD");
                        c.setConnectTimeout(4000);
                        c.setReadTimeout(4000);
                        c.setRequestProperty("Connection", "close");
                        int len = c.getHeaderFieldInt("Content-Length", -1);
                        p.mime = nz(c.getHeaderField("Content-Type"));
                        c.disconnect();
                        if (len > 0 && durMs > 1000) {
                            p.kbps = (int) (len * 8L / (durMs / 1000L) / 1000L);
                        }
                    } catch (Throwable t) {
                        p.kbps = 0;
                    }
                    putCache(url, p);
                }
            }, "r1-bitrate").start();
        } catch (Throwable t) {
            synchronized (sCache) {
                sBusy.remove(url);
            }
        }
        return null;
    }

    private static String nz(String s) {
        return s == null ? "" : s;
    }

    private AudioInfo() {
    }
}
