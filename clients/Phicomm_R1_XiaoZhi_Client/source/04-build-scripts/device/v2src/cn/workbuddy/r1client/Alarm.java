package cn.workbuddy.r1client;

import android.content.Context;
import android.media.AudioManager;
import android.util.Log;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * v1.3.245：闹钟。
 *
 * <p>需求（2026-10-26）：「可以用小智设置闹钟，一次性或者每天或者每周周几到周几，默认是
 * 闹钟响时随机播一首歌，可以喊小智关闭闹钟，关闭闹钟指的是关闭这次正在响的闹钟不是停用
 * 这个闹钟，可以语音停用或者删除指定闹钟，查询现在开着哪些闹钟」。</p>
 *
 * <p>★★★ 为什么必须落在 <b>device 进程</b>（Pandora / {@code com.phicomm.speaker.device}）
 * 而不是 player，也不是「靠小智服务端的定时任务」：</p>
 * <ul>
 *   <li>用户明确要求「<b>停用语音助手不影响闹钟功能</b>」。语音软开关（{@link VoicePower}）
 *       停的是原厂 USC 引擎的唤醒/录音和 WS 长连 —— 进程本身还在，所以这里的调度线程
 *       照跑；而「靠语音链路定时」在停用后就彻底哑了。</li>
 *   <li>宿主 Pandora 是原厂开机自启的常驻进程（{@code ExampleApp.onCreate} 天然覆盖），
 *       不需要 AlarmManager + BroadcastReceiver —— 那套需要 manifest 里有组件，
 *       而我们是 Janus 前置 dex，<b>改不了宿主的 manifest</b>（见 XzBootstrap 头注释）。</li>
 *   <li>因此调度就是一个 5 秒一跳的守护线程 + 内存里的「下次触发毫秒」表。没有 PendingIntent，
 *       进程被杀闹钟就停 —— 与语音、播放都是同一前提，不额外引入新的失败面。</li>
 * </ul>
 *
 * <p>响铃 = <b>播一首歌</b>（默认随机）。指定了歌就用收藏里那一条的精确源
 * （{@code play_fav_one}，不按歌名重搜，避免同名翻唱顶掉）；没指定就从三个池子里
 * 等概率洗牌随机 —— <b>收藏 / 在线曲库（{@code random_online}）/ 本地曲库</b>。</p>
 *
 * <p>v1.3.246 补了两件事（用户 2026-10-26）：「随机音乐包含在线音乐」和
 * 「闹钟要有音量设置兜底，防止静音了闹钟没声」⇒ 响铃前先把媒体流抬起来
 * （{@link AlarmVol}），关掉再还原。</p>
 *
 * <p>v1.3.248 按用户要求<b>去掉了合成的「嘀嘀嘀」提示音</b>，改成真铃声缓存：
 * 主动指定的铃声会下载到 <b>/sdcard/R1Alarm</b>（{@link AlarmCache}），响铃时
 * 直接播本地文件；歌播完就重放同一首（＝单曲循环），不再需要提示音兜底。
 * 随机闹钟在缓存为空时也会当场补一首，保证一定有本地可放的东西。</p>
 *
 * <p>「关闭闹钟」= {@link #dismiss()} = 停播 + 清 ring 标记，<b>不动 enabled</b>
 * （用户原话：关的是这次正在响的，不是停用这个闹钟）。停用/删除是另外两个入口。</p>
 *
 * <p>持久化：{@code files/r1_alarms.json}。结构</p>
 * <pre>
 * {"list":[
 *   {"id":"a1700000000000","h":7,"m":30,"repeat":"daily|weekly|once",
 *    "days":[1,2,3,4,5],          // weekly：1=周一 … 7=周日
 *    "at":1700000000000,          // once：绝对触发毫秒
 *    "enabled":true,"label":"起床","last":0,
 *    "song":{"k":"...","title":"...","artist":"..."}   // 可为 null = 随机
 *   }]}
 * </pre>
 */
public final class Alarm {

    private static final String TAG = "R1Alarm";
    private static final String FILE = "r1_alarms.json";
    /** 物理安全阀：闹钟不是待办清单，几十条就顶天了 */
    private static final int MAX = 100;
    /** 调度粒度。5 秒跳动开销可忽略（只有几条 JSON），精度 ±5s */
    private static final long TICK_MS = 5000L;
    /** ring 标记的有效期：不点「关闭」也不会永远显示正在响 */
    private static final long RING_HOLD_MS = 10 * 60 * 1000L;
    /**
     * 「试响」保持抬高音量的时长。
     *
     * <p>试响不是真闹钟：没有人来点「关闭」，所以必须自己有个头。窗口内音量保持抬高、
     * 歌可以随便放；窗口一到就收提示音 + 还原音量。</p>
     */
    private static final long TEST_HOLD_MS = 5 * 60 * 1000L;

    // ---------------- v1.3.246：音量兜底 / 续响 ----------------

    /**
     * 响铃时把闹钟流抬到多少（0~100）。
     *
     * <p>★ 实测系统默认只有 1/15（≈7%），不抬就是「闹钟响了但没声」。</p>
     *
     * <p>★ 默认 50 是用户实测拍的（2026-10-26：先给 80，用户当场说「80 太高了，
     * 我自己调的」，自己拖到 35~50 之间）。所以别把默认值写高 —— 闹钟音量宁可由
     * 用户往上拖，也不要一响就炸。设备自己调过的值存在 r1_alarms.json 的 vol 里，
     * 换包重装会读回用户值，不会被这个默认值覆盖。</p>
     */
    static final int VOL_DEFAULT = 50;
    /**
     * 媒体流保底值。
     *
     * <p>★ 铃声和歌现在**都走媒体流** —— 系统 STREAM_ALARM 在这台机器上写不动、
     * 也喂不进声（实测见 {@link AlarmVol} 与 {@link AlarmCache} 的类注释）。所以
     * 「响铃听得见」这件事完全落在抬媒体流上，这个下限就是最后一道保险。</p>
     */
    private static final int VOL_MUSIC_MIN = 30;
    /** 铃响中歌曲播完之后，隔多久补一次提示音（别让屋子彻底安静下来） */
    private static final long NAG_MS = 15000L;
    /**
     * v1.3.253：「已经到点、但 tick 还没轮到」的宽限期（tick 5 秒一轮，取 60 秒足够宽）。
     *
     * <p>为什么要它：用户反馈「响铃前摸了一下音量滑块，闹钟就没响」。真因是
     * {@link #rebuildNext(long)} 在到点之后、tick 之前被调用（改音量会 touch()），
     * {@link #nextTs(JSONObject, long)} 就把这一档判成「过期」—— 一次性闹钟直接变
     * 「永不触发」，每天/每周的直接跳到明天。现在到点未响的那一档算「待触发」。</p>
     */
    private static final long GRACE_MS = 60000L;

    /** 用户可调的闹钟音量（持久化在 r1_alarms.json 的 vol 字段） */
    private static volatile int sVol = VOL_DEFAULT;
    /** 上次补响提示音的时刻，防抖用 */
    private static volatile long sNagAt = 0L;

    private static Context app;
    private static final Object LOCK = new Object();
    private static JSONArray cache = null;
    /** v1.3.251：全局默认铃声（设过一次之后，新建/语音建的闹钟都用它）。 */
    private static JSONObject sDflt = null;

    /** 内存里的下次触发时刻：id → 毫秒（-1 = 不再触发）。增删改后重建。 */
    private static final Map<String, Long> sNext = new HashMap<String, Long>();
    private static volatile String sRingId = "";
    private static volatile long sRingAt = 0L;
    /** 试响窗口的截止时刻（0 = 没有试响在跑）。见 {@link #TEST_HOLD_MS} */
    private static volatile long sHoldUntil = 0L;
    /**
     * v1.3.248：这一次响铃正在用的<b>本地缓存文件</b>绝对路径（null = 没有本地铃声）。
     *
     * <p>歌播完之后要靠它「重放同一首」——这就是去掉合成提示音之后的续响方式：
     * 缓存文件在 /sdcard 上，重放不依赖网络，比「嘀嘀嘀」像闹钟得多。</p>
     */
    private static volatile String sRingCache = null;
    /**
     * v1.3.250：这一次响铃<b>实际播的那首</b>的歌名（随机挑的也记下来）。
     *
     * <p>闹钟配的是「随机一首」时，配置里没有歌名 —— 但页面响铃卡片要显示
     * 「正在响：07:30 · 某某歌」，所以响铃那一刻把实际曲名存这儿。</p>
     */
    private static volatile String sRingSong = "";
    private static volatile boolean sStarted = false;
    /**
     * v1.3.253：这一次响铃的声音是不是走<b>主播放器</b>放的
     * （独立通道起不来、或随机挑到在线/本地曲库那几首时才为 true）。
     *
     * <p>用途：响铃期间检测「用户开始放音乐 ⇒ 自动关掉闹钟」时，必须能区分
     * 「主播放器在放音乐」和「主播放器正在放我们的铃声」。是后者就绝不自关 ——
     * 否则闹钟会自己把自己关掉。</p>
     */
    private static volatile boolean sRingOnMain = false;
    /** v1.3.253：看护线程是否已确认过「主播放器确实停着」（防止响铃起手误判） */
    private static volatile boolean sWatchArmed = false;

    private Alarm() {
    }

    // ---------------- 生命周期 ----------------

    public static void init(Context c) {
        try {
            app = c.getApplicationContext();
            // v1.3.246：音量兜底先就位
            // v1.3.248：铃声缓存目录（/sdcard/R1Alarm）也在这儿建。提示音已按用户
            //   要求去掉 —— 主动设了铃声就有缓存文件可播，随机闹钟在缓存为空时
            //   也会当场补一首（见 cacheOneRandom），所以不再需要合成「嘀嘀嘀」。
            try {
                AlarmVol.init(app);
                AlarmCache.init(app);
            } catch (Throwable t) {
                Log.w(TAG, "vol/cache init: " + t);
            }
            synchronized (LOCK) {
                cache = read();
                rebuildNext(System.currentTimeMillis());
            }
            SessionLog.i("alarm ready: " + cache.length() + " 个闹钟，音量 " + sVol
                    + "%，" + AlarmVol.desc());
            startScheduler();
            warmCacheLater();
        } catch (Throwable t) {
            Log.w(TAG, "init: " + t);
        }
    }

    /**
     * v1.3.248：给「本版之前设过歌、但还没缓存」的闹钟补缓存。
     *
     * <p>延迟 20 秒再动：开机时 device 要连小智、要读索引，别抢带宽。
     * 只补用户主动指定的那些（{@code song != null}），随机的补不了也不该补。</p>
     */
    private static void warmCacheLater() {
        Thread th = new Thread(new Runnable() {
            public void run() {
                try {
                    Thread.sleep(20000L);
                } catch (InterruptedException ignored) {
                }
                try {
                    // v1.3.251：全局默认铃声也要有本地文件（新建闹钟会套用它）
                    JSONObject dl = dfltSong();
                    if (dl != null) {
                        String dk = dl.optString("k", "");
                        if (dk.length() > 0 && !AlarmCache.has(dk)) {
                            cacheSongAsync(dk, dl.optString("title", ""), dl.optString("artist", ""));
                        }
                    }
                    JSONArray a = list();
                    for (int i = 0; i < a.length(); i++) {
                        JSONObject it = a.optJSONObject(i);
                        JSONObject sg = (it == null) ? null : it.optJSONObject("song");
                        if (sg == null) {
                            continue;
                        }
                        String k = sg.optString("k", "");
                        if (k.length() == 0) {
                            k = Fav.key(sg.optString("title", ""), sg.optString("artist", ""));
                        }
                        if (k.length() == 0 || AlarmCache.has(k)) {
                            continue;
                        }
                        cacheSongAsync(k, sg.optString("title", ""), sg.optString("artist", ""));
                    }
                } catch (Throwable t) {
                    Log.w(TAG, "warmCache: " + t);
                }
            }
        }, "r1-alarm-cachewarm");
        th.setDaemon(true);
        th.start();
    }

    private static void startScheduler() {
        if (sStarted) {
            return;
        }
        sStarted = true;
        Thread th = new Thread(new Runnable() {
            public void run() {
                while (true) {
                    try {
                        Thread.sleep(TICK_MS);
                    } catch (InterruptedException ignored) {
                        // 继续跑：闹钟线程不该因为谁 interrupt 就退出
                    }
                    try {
                        tick();
                    } catch (Throwable t) {
                        Log.w(TAG, "tick: " + t);
                    }
                }
            }
        }, "r1-alarm");
        th.setDaemon(true);
        th.start();
    }

    // ---------------- 存储 ----------------

    private static File file() {
        return new File(app.getFilesDir(), FILE);
    }

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
                byte[] b = new byte[4096];
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
            }
            // v1.3.246：闹钟音量（老文件没有这个字段 ⇒ 保持默认 80）
            // v1.3.251：全局默认铃声
            JSONObject dl = o.optJSONObject("dflt");
            sDflt = (dl == null || dl.optString("title", "").length() == 0) ? null : dl;
            int v = o.optInt("vol", -1);
            if (v >= 1 && v <= 100) {
                sVol = v;
            }
        } catch (Throwable t) {
            Log.w(TAG, "read: " + t);
        }
        return a;
    }

    private static void save() {
        try {
            JSONObject o = new JSONObject();
            o.put("list", cache);
            o.put("vol", sVol);              // v1.3.246
            if (sDflt != null) {             // v1.3.251：全局默认铃声
                o.put("dflt", sDflt);
            }
            o.put("ts", System.currentTimeMillis());
            FileOutputStream out = new FileOutputStream(file());
            try {
                out.write(o.toString().getBytes("UTF-8"));
                out.flush();
            } finally {
                out.close();
            }
        } catch (Throwable t) {
            Log.w(TAG, "save: " + t);
        }
    }

    private static JSONArray list() {
        synchronized (LOCK) {
            if (cache == null) {
                cache = read();
            }
            return cache;
        }
    }

    // ---------------- v1.3.251：全局默认铃声 ----------------

    /**
     * 全局默认铃声（页面「响铃歌曲」一栏显示它）。{@code null} = 随机一首。
     */
    public static JSONObject dfltSong() {
        synchronized (LOCK) {
            if (cache == null) {
                cache = read();
            }
            return sDflt;
        }
    }

    /** {@code t} 空 = 清掉默认（回到随机）。{@code JSONObject.put} 会抛 JSONException。 */
    private static void setDflt(String k, String t, String ar) throws Exception {
        synchronized (LOCK) {
            if (t == null || t.length() == 0) {
                if (sDflt == null) {
                    return;          // 本来就没有默认，不用写盘
                }
                sDflt = null;
            } else {
                String kk = (k == null || k.length() == 0) ? Fav.key(t, ar) : k;
                JSONObject s = new JSONObject();
                s.put("k", kk);
                s.put("title", t);
                s.put("artist", ar == null ? "" : ar);
                sDflt = s;
            }
            touch();
        }
    }

    /**
     * v1.3.251：查 / 设 / 清全局默认铃声。
     *
     * <p>用户 2026-10-27：「之后 web 上或者语音设置铃声都应默认是设置的铃声」——
     * 设过一次就记住，之后新建的闹钟（不管 web 还是语音说「每天早上七点叫我」）
     * 都自动用这首，不用每次再指定。</p>
     */
    private static String dfltOp(JSONObject args) throws Exception {
        if (args != null && ("1".equals(str(args, "clear")) || args.optInt("clear", 0) == 1)) {
            setDflt("", "", "");
            return "OK 已清除默认铃声 —— 之后新建的闹钟随机播";
        }
        String t = str(args, "songTitle");
        if (t.length() == 0) {
            t = str(args, "title");
        }
        String ar = str(args, "songArtist");
        if (ar.length() == 0) {
            ar = str(args, "artist");
        }
        if (t.length() == 0) {
            JSONObject d = dfltSong();
            return d == null ? "OK 默认铃声：随机一首"
                    : "OK 默认铃声：" + songOf(d);
        }
        String k = str(args, "k");
        if (k.length() == 0) {
            k = Fav.key(t, ar);
        }
        setDflt(k, t, ar);
        if (AlarmCache.has(k)) {
            return "OK 默认铃声设为 " + songOfName(t, ar) + "（已缓存，断网也能响）";
        }
        cacheSongAsync(k, t, ar);
        return "OK 默认铃声设为 " + songOfName(t, ar) + "，正在缓存到铃声目录";
    }

    private static String songOfName(String t, String a) {
        return "《" + t + "》" + (a == null ? "" : a);
    }

    private static String songOf(JSONObject s) {
        return songOfName(s.optString("title", ""), s.optString("artist", ""));
    }

    // ---------------- 对外 JSON（web 用） ----------------

    /**
     * {@code {ok,total,now,ring,ringTitle,list:[…]}}。
     *
     * <p>每项在原始字段之外补三样页面直接能显示的东西：{@code text}（「每天 07:30」）、
     * {@code next}（下次触发毫秒，-1 = 不再触发）、{@code nextText}（「明天 07:30」）。</p>
     */
    public static JSONObject json() {
        JSONObject o = new JSONObject();
        try {
            JSONArray src = list();
            long now = System.currentTimeMillis();
            JSONArray out = new JSONArray();
            List<JSONObject> tmp = new ArrayList<JSONObject>();
            for (int i = 0; i < src.length(); i++) {
                JSONObject a = src.optJSONObject(i);
                if (a == null) {
                    continue;
                }
                JSONObject it = new JSONObject(a.toString());
                it.put("text", repeatText(a));
                // ★ 停用的不报「下次」：报一个明天的时刻会让页面看着像它还会响。
                boolean on = a.optBoolean("enabled", true);
                long nx = on ? nextTs(a, now) : -1L;
                it.put("next", nx);
                it.put("nextText", on ? (nx > 0 ? whenText(nx, now) : "—") : "已停用");
                // v1.3.248：这首铃声有没有本地缓存（页面打「已缓存」标签）
                JSONObject sg = a.optJSONObject("song");
                String sk = (sg == null) ? "" : sg.optString("k", "");
                if (sk.length() == 0 && sg != null) {
                    sk = Fav.key(sg.optString("title", ""), sg.optString("artist", ""));
                }
                it.put("cached", sk.length() > 0 && AlarmCache.has(sk));
                tmp.add(it);
            }
            // 开着的、快到点的排前面；停用的沉底（页面就那么渲染，不再二次排序）
            Collections.sort(tmp, new Comparator<JSONObject>() {
                public int compare(JSONObject x, JSONObject y) {
                    boolean ex = x.optBoolean("enabled", true);
                    boolean ey = y.optBoolean("enabled", true);
                    if (ex != ey) {
                        return ex ? -1 : 1;
                    }
                    long nx = x.optLong("next", -1);
                    long ny = y.optLong("next", -1);
                    if (nx <= 0 && ny <= 0) {
                        return 0;
                    }
                    if (nx <= 0) {
                        return 1;
                    }
                    if (ny <= 0) {
                        return -1;
                    }
                    return nx < ny ? -1 : (nx > ny ? 1 : 0);
                }
            });
            for (int i = 0; i < tmp.size(); i++) {
                out.put(tmp.get(i));
            }
            o.put("ok", true);
            o.put("total", out.length());
            o.put("now", now);
            o.put("ring", ringId());
            o.put("ringTitle", ringDesc());
            // v1.3.246：音量状态。页面靠它显示「闹钟音量 50%」「当前媒体流 xx%」。
            o.put("vol", sVol);
            o.put("alarmVol", AlarmVol.get(AlarmVol.STREAM_ALARM));
            o.put("musicVol", AlarmVol.get(AlarmVol.STREAM_MUSIC));
            // v1.3.253：响铃期间媒体流被设成「闹钟音量」—— 页面只该显示音乐音量，
            //   所以另外给一个「用户自己的音乐音量」（设之前的原值）
            o.put("ringVolOn", AlarmVol.isTouched());
            o.put("musicVolUser", AlarmVol.userMusic());
            o.put("ringAt", sRingAt);
            // v1.3.248：铃声缓存。cache = 已缓存几首；cacheDir = 目录（用户能自己去删）；
            //   ringLocal = 这次响的是不是本地文件（页面显示「本地铃声」）
            o.put("cache", AlarmCache.count());
            o.put("cacheDir", AlarmCache.dir() == null ? "" : AlarmCache.dir().getAbsolutePath());
            o.put("ringLocal", sRingCache != null);
            // v1.3.252：这次响铃走的是哪条路。local = 独立铃声通道（主播放器没被占用）
            o.put("ringCh", RingPlayer.isPlaying() ? "local" : "");
            // 已缓存的 key 列表：页面「设铃声」要把这些排到最前面并打「已缓存」
            JSONArray ck = new JSONArray();
            JSONArray cks = AlarmCache.list();
            for (int i = 0; i < cks.length(); i++) {
                JSONObject c = cks.optJSONObject(i);
                if (c != null && c.optString("k", "").length() > 0) {
                    ck.put(c.optString("k", ""));
                }
            }
            o.put("cacheKeys", ck);
            // v1.3.250：页面「铃声缓存」点开后的清单（点一条就直接设成铃声）。
            //   带 k/title/artist/size，页面只管显示，不自己拼 key。
            o.put("cacheList", AlarmCache.list());
            // v1.3.251：全局默认铃声 —— 页面「响铃歌曲」一栏显示它
            JSONObject dl = dfltSong();
            o.put("dfltSong", dl == null ? "" : dl.optString("title", ""));
            o.put("dfltArtist", dl == null ? "" : dl.optString("artist", ""));
            o.put("dfltK", dl == null ? "" : dl.optString("k", ""));
            // 正在响的这首叫什么 —— 响铃卡片上要显示歌名（用户：设成闹铃后
            //   上方响铃歌曲要同步显示对应歌名）
            o.put("ringSong", ringSongText());
            // 下一条要响的闹钟（页面「设为闹钟铃声」就设给它，用户明确指定**不是**全部）
            JSONObject nxt = nextUp(list(), now);
            o.put("nextId", nxt == null ? "" : nxt.optString("id", ""));
            o.put("nextText", nxt == null ? "" : repeatText(nxt) + " " + hhmm(nxt));
            o.put("list", out);
        } catch (Throwable t) {
            Log.w(TAG, "json: " + t);
            try {
                o.put("ok", false);
                o.put("msg", "ERR " + t);
            } catch (Throwable ignored) {
            }
        }
        return o;
    }

    /** 正在响的那个闹钟 id（超过 RING_HOLD_MS 自动视为不响了）。 */
    public static String ringId() {
        if (sRingId.length() == 0) {
            return "";
        }
        if (System.currentTimeMillis() - sRingAt > RING_HOLD_MS) {
            sRingId = "";
            return "";
        }
        return sRingId;
    }

    private static String ringDesc() {
        if (ringId().length() == 0) {
            return "";
        }
        JSONArray a = list();
        for (int i = 0; i < a.length(); i++) {
            JSONObject it = a.optJSONObject(i);
            if (it != null && sRingId.equals(it.optString("id", ""))) {
                return hhmm(it) + (it.optString("label", "").length() > 0
                        ? "（" + it.optString("label", "") + "）" : "");
            }
        }
        return "";
    }

    /**
     * v1.3.250：正在响的这首叫什么（响铃卡片上要显示歌名）。
     *
     * <p>优先用内存里的 {@code sRingSong}（响铃那一刻就知道播的是哪首）；
     * 拿不到再退回该闹钟配置的 song。随机响的那一首不写回闹钟配置，
     * 所以只配了随机就返回空 —— 页面这时只显示「本地铃声」之类的标记。</p>
     */
    private static String ringSongText() {
        if (sRingSong.length() > 0) {
            return sRingSong;
        }
        if (ringId().length() == 0) {
            return "";
        }
        JSONArray a = list();
        for (int i = 0; i < a.length(); i++) {
            JSONObject it = a.optJSONObject(i);
            if (it == null || !sRingId.equals(it.optString("id", ""))) {
                continue;
            }
            JSONObject s = it.optJSONObject("song");
            return s == null ? "" : s.optString("title", "");
        }
        return "";
    }

    /**
     * v1.3.250：<b>下一条要响的</b>闹钟（开着的、next 最小那条）。
     *
     * <p>页面「长按搜到的歌 / 点已缓存的铃声 ⇒ 设为闹钟铃声」用它当落点 ——
     * 用户 2026-10-26 明确要求只设下一条要响的，不是全部闹钟都换。</p>
     */
    private static JSONObject nextUp(JSONArray a, long now) {
        JSONObject best = null;
        long bn = Long.MAX_VALUE;
        for (int i = 0; i < a.length(); i++) {
            JSONObject it = a.optJSONObject(i);
            if (it == null || !it.optBoolean("enabled", true)) {
                continue;
            }
            long n = nextTs(it, now);
            if (n <= 0L) {
                continue;
            }
            if (n < bn) {
                bn = n;
                best = it;
            }
        }
        return best;
    }

    // ---------------- 调度 ----------------

    private static void rebuildNext(long now) {
        sNext.clear();
        JSONArray a = list();
        for (int i = 0; i < a.length(); i++) {
            JSONObject it = a.optJSONObject(i);
            if (it == null) {
                continue;
            }
            sNext.put(it.optString("id", ""), nextTs(it, now));
        }
    }

    /** 一次性重建 + 落盘（增删改都走这里，避免两处状态不一致）。 */
    private static void touch() {
        save();
        synchronized (LOCK) {
            rebuildNext(System.currentTimeMillis());
        }
    }

    private static void tick() {
        long now = System.currentTimeMillis();
        JSONArray a = list();
        for (int i = 0; i < a.length(); i++) {
            JSONObject it = a.optJSONObject(i);
            if (it == null || !it.optBoolean("enabled", true)) {
                continue;
            }
            String id = it.optString("id", "");
            Long nx = sNext.get(id);
            if (nx == null) {
                // 新加进来的（或上次没算到）—— 补算，不补响过去的
                long t = nextTs(it, now);
                sNext.put(id, t);
                continue;
            }
            if (nx <= 0 || now < nx) {
                continue;
            }
            // 到点：先算下一次再触发，避免触发过程中被 tick 重入
            sNext.put(id, nextTs(it, now + 1000L));
            fire(it);
        }
        // v1.3.246：铃响期间的看护（超时收尾 / 歌播完续响）
        maintain(now);
    }

    /**
     * 铃响期间的看护。每 5 秒一次：
     *
     * <ol>
     *   <li><b>收尾（关闭 / 超时）</b>：{@code RING_HOLD_MS} 到点后 {@link #ringId()}
     *       会自动清标记 ⇒ 这里收提示音、还原音量。提示音是独立线程，没人停就一直响，
     *       不收的话「没人理的闹钟」会在屋里响一下午。</li>
     *   <li><b>试响窗口</b>：{@link #TEST_HOLD_MS} 内保持抬高音量让歌放完；
     *       窗口一到整收。试响没人来点「关闭」，必须自己有个头。</li>
     *   <li><b>歌播完了续响</b>：一首歌三四分钟，响完屋子就静了，可闹钟其实还"开着"
     *       （用户还没喊关闭）。用 {@link PlayerBridge#isMusicActive()} 判真的没声了，
     *       就重新起提示音 —— 这才是闹钟该有的行为：一直响到你关掉。</li>
     * </ol>
     *
     * <p>★★★ 还原音量<b>不能</b>以「提示音还在响」为前提。歌一起来提示音就让位停了，
     * 那个条件永远不成立 ⇒ 音量会一直停在抬高的档位。{@link AlarmVol#restore()}
     * 自己是幂等的，无条件调用最稳妥。</p>
     *
     * <p>不用 {@code isMusicActive()} 判「歌在不在播」是权威的（覆盖我们推的歌单、
     * 原厂起的播放），但它会把小智自己的 TTS 也算成音乐 —— 这里只用于「续提示音」，
     * 误判成 true 的后果仅仅是晚 15 秒补响，不会误停，可以接受。</p>
     */
    private static void maintain(long now) {
        boolean ringing = ringId().length() > 0;

        if (!ringing) {
            // ① 试响有自己的窗口：窗口内什么都别动（音量要一直抬着、歌随便放）
            if (sHoldUntil > 0L) {
                if (now <= sHoldUntil) {
                    return;
                }
                sHoldUntil = 0L;
                RingPlayer.stop();   // v1.3.252：试响窗口到点，独立通道也要停
            }
            // ② 响铃结束的收尾。★★★ 还原音量必须**无条件**调用，不能挂在
            //    「还有没有声音」上 —— 歌一接管就没声音了，那个条件永远不成立，
            //    音量会一直停在抬高的档位（2026-10-26 试响后实测踩到）。
            //    restore() 自己幂等：没抬过就什么都不做。
            boolean had = AlarmVol.isTouched();
            AlarmVol.restore();
            RingPlayer.stop();       // v1.3.252：独立铃声通道一起收
            sRingCache = null;
            sRingSong = "";          // v1.3.250
            if (had) {
                SessionLog.i("alarm maintain: 响铃结束，还原音量");
            }
            return;
        }
        // ③ 真响铃中：还在出声就静着（v1.3.252：独立铃声通道也算出声）
        if (RingPlayer.isPlaying() || PlayerBridge.isMusicActive()) {
            return;
        }
        if (now - sNagAt < NAG_MS) {
            return;
        }
        sNagAt = now;
        // ④ v1.3.248：歌播完了 ⇒ 重放同一首本地铃声（＝单曲循环）。
        //    这就是去掉合成提示音之后的续响方式：文件在 /sdcard，重放不依赖网络。
        String f = sRingCache;
        if (f != null && new File(f).isFile()) {
            // v1.3.252：独立通道被意外停了（文件被删 / 解码器抽风）就重起同一条通道。
            //   ★ 绝不落回 play_local —— 那会把主播放器占掉，正是这次要修的病。
            if (RingPlayer.play(f)) {
                SessionLog.i("alarm maintain: 独立通道断了，重新起播");
                return;
            }
        }
        SessionLog.i("alarm maintain: 歌播完了但闹钟还开着，续播一首");
        if (!randomAnyPool()) {
            playAnyCached("re-nag");
        }
    }

    /** 从现在起严格大于 from 的下一次触发时刻；-1 = 不会再触发。 */
    static long nextTs(JSONObject a, long from) {
        try {
            String rp = a.optString("repeat", "daily");
            int h = a.optInt("h", 7);
            int m = a.optInt("m", 0);
            /* v1.3.253：last = 这一条上次真的响过的时刻（fire() 写的）。 */
            long last = a.optLong("last", 0L);
            if ("once".equals(rp)) {
                long at = a.optLong("at", 0L);
                if (at <= 0L) {
                    return -1L;
                }
                if (at > from) {
                    return at;
                }
                // 到点了、还没响过、而且刚过去不久 ⇒ 仍然是「待触发」，别吞掉
                if (at > last && from - at <= GRACE_MS) {
                    return at;
                }
                return -1L;
            }
            Calendar c = Calendar.getInstance();
            c.setTimeInMillis(from);
            if ("daily".equals(rp)) {
                c.set(Calendar.HOUR_OF_DAY, h);
                c.set(Calendar.MINUTE, m);
                c.set(Calendar.SECOND, 0);
                c.set(Calendar.MILLISECOND, 0);
                if (c.getTimeInMillis() <= from) {
                    long t0 = c.getTimeInMillis();
                    // v1.3.253：今天这一档刚到点、还没响过 ⇒ 仍是待触发
                    if (t0 > last && from - t0 <= GRACE_MS) {
                        return t0;
                    }
                    c.add(Calendar.DAY_OF_YEAR, 1);
                }
                return c.getTimeInMillis();
            }
            // weekly：最多往后翻一周（含今天）
            JSONArray ds = a.optJSONArray("days");
            if (ds == null || ds.length() == 0) {
                // 没选周几的「每周」等价于每天（页面不会产生这种，语音可能）
                c.set(Calendar.HOUR_OF_DAY, h);
                c.set(Calendar.MINUTE, m);
                c.set(Calendar.SECOND, 0);
                c.set(Calendar.MILLISECOND, 0);
                if (c.getTimeInMillis() <= from) {
                    long t0 = c.getTimeInMillis();
                    if (t0 > last && from - t0 <= GRACE_MS) {
                        return t0;
                    }
                    c.add(Calendar.DAY_OF_YEAR, 1);
                }
                return c.getTimeInMillis();
            }
            for (int i = 0; i <= 7; i++) {
                Calendar t = Calendar.getInstance();
                t.setTimeInMillis(from);
                t.add(Calendar.DAY_OF_YEAR, i);
                t.set(Calendar.HOUR_OF_DAY, h);
                t.set(Calendar.MINUTE, m);
                t.set(Calendar.SECOND, 0);
                t.set(Calendar.MILLISECOND, 0);
                if (t.getTimeInMillis() <= from) {
                    // v1.3.253：今天这一档刚到点、还没响过 ⇒ 仍是待触发
                    long t0 = t.getTimeInMillis();
                    if (hasDay(ds, isoDow(t)) && t0 > last && from - t0 <= GRACE_MS) {
                        return t0;
                    }
                    continue;
                }
                if (hasDay(ds, isoDow(t))) {
                    return t.getTimeInMillis();
                }
            }
            return -1L;
        } catch (Throwable t) {
            return -1L;
        }
    }

    /** Calendar.DAY_OF_WEEK（周日=1…周六=7）→ ISO（周一=1…周日=7）。 */
    private static int isoDow(Calendar c) {
        int d = c.get(Calendar.DAY_OF_WEEK);
        return d == Calendar.SUNDAY ? 7 : d - 1;
    }

    private static boolean hasDay(JSONArray ds, int d) {
        for (int i = 0; i < ds.length(); i++) {
            if (ds.optInt(i, -1) == d) {
                return true;
            }
        }
        return false;
    }

    // ---------------- 触发 ----------------

    private static void fire(JSONObject a) {
        final String id = a.optString("id", "");
        sRingId = id;
        sRingAt = System.currentTimeMillis();
        try {
            a.put("last", sRingAt);
            if ("once".equals(a.optString("repeat", ""))) {
                // 一次性闹钟响过就自动停用：留着条目（页面上能看到「已响过」），
                // 但不再触发。用户要删可以删，要说「再响一次」就重新加一个。
                a.put("enabled", false);
            }
        } catch (Throwable ignored) {
        }
        touch();
        String desc = repeatText(a) + (a.optString("label", "").length() > 0
                ? "（" + a.optString("label", "") + "）" : "");
        SessionLog.i("alarm fire: " + desc);

        // ★ v1.3.246：响铃的三段式，顺序不能换
        //   ①先抬音量 —— 默认音量下什么都听不见
        //   ②后台去准备音乐（有本地缓存就立刻播文件，没缓存才去解析网络源）
        //   ③歌播完了 maintain() 会重放本地铃声，一直响到你关掉
        // v1.3.248：合成提示音已按用户要求去掉 —— 「主动设了铃声就有缓存文件」，
        //   随机闹钟在缓存为空时也会当场补一首（cacheOneRandom），不再需要嘀嘀嘀。
        // ★ v1.3.253：声音互斥的**顺序死规矩** —— 先设音量，再出声。
        //   ① 音乐在放 ⇒ 先停音乐（不然它会先按「闹钟音量」炸一下再停）
        //   ② 把媒体流设成闹钟音量（高了也降 —— 用户要求「音量设到铃声音量」）
        //   ③ 才去播铃声（下面那个线程）
        try {
            if (PlayerBridge.isMusicActive()) {
                PlayerBridge.dispatch("pause", null);
                SessionLog.i("alarm fire: 音乐在放，先暂停音乐");
            }
        } catch (Throwable t) {
            Log.w(TAG, "fire pause music: " + t);
        }
        sRingOnMain = false;
        sWatchArmed = false;
        AlarmVol.guard(Math.max(sVol, VOL_MUSIC_MIN));
        sNagAt = sRingAt;

        final JSONObject song = a.optJSONObject("song");
        Thread th = new Thread(new Runnable() {
            public void run() {
                playRing(song);
            }
        }, "r1-alarm-play");
        th.setDaemon(true);
        th.start();

        // v1.3.253：响铃期间盯着「用户是不是开始放音乐了」（兜底路径，见 watchMusic）
        Thread w = new Thread(new Runnable() {
            public void run() {
                watchMusic();
            }
        }, "r1-alarm-watch");
        w.setDaemon(true);
        w.start();
    }

    /**
     * v1.3.253：响铃期间的「音乐互斥」看护（每 700ms 看一眼）。
     *
     * <p>用户要求：「响铃时播放音乐 ⇒ 关闭响铃，音量恢复到音乐音量」。
     * 两条要求合起来只有一种正确做法 —— <b>先还原音量，再让音乐出声</b>，
     * 否则新起的音乐会先按「闹钟音量」响一下再跳回原音量（用户原话：声音突然变大变小）。</p>
     *
     * <p>主路径在 player 侧：起播前先调 {@code op=alarm_yield}（精确、零延迟）。
     * 这里是兜底 —— 语音点歌 / DLNA 推送这些不经过 player 控制台的路径，靠总线回推的
     * 「当前曲目」（{@link PlayerBridge#isSoftPlaying()}）发现，最迟 0.7 秒收。</p>
     *
     * <p>★★★ 必须先「确认过一次停了」才武装（{@link #sWatchArmed}）：响铃起手我们先暂停
     * 音乐，那个 false 要过一会儿才生效；不武装的话第一眼就可能读到 true ⇒ 自己把自己关掉。
     * 另一个硬条件：{@link #sRingOnMain} 为真时<b>绝不</b>自关 —— 那种情况下主播放器
     * 播的就是我们的铃声。</p>
     */
    private static void watchMusic() {
        while (sRingId.length() > 0) {
            try {
                Thread.sleep(700L);
            } catch (InterruptedException e) {
                return;
            }
            if (sRingId.length() == 0) {
                return;
            }
            if (sRingOnMain) {
                continue;       // 主播放器放的是我们的铃声，别自关
            }
            boolean playing = PlayerBridge.isSoftPlaying();
            if (!sWatchArmed) {
                if (!playing) {
                    sWatchArmed = true;     // 确认过「确实停着」，之后再见 playing 就是用户开的
                }
                continue;
            }
            if (!playing) {
                continue;
            }
            String back = closeRing();
            SessionLog.i("alarm: 响铃中开始放音乐 ⇒ 自动关掉闹钟"
                    + (back.length() > 0 ? "，" + back : ""));
            return;
        }
    }

    /**
     * v1.3.253：一次响铃的收尾（停独立通道 / 清响铃记账 / 把音量还原）。幂等。
     *
     * <p>顺序：<b>先停声音，再把音量还回去</b> —— 反过来会让正在响的那一下先变小声，
     * 听着像卡了一下。</p>
     *
     * @return 音量还原的日志串（空 = 本来就没动过音量）
     */
    private static String closeRing() {
        sRingId = "";
        sRingAt = 0L;
        sHoldUntil = 0L;
        RingPlayer.stop();
        sRingCache = null;
        sRingSong = "";
        sWatchArmed = false;
        return AlarmVol.restore();
    }

    /**
     * 响铃选曲 + 播放。
     *
     * <p>v1.3.246 改了两处：</p>
     * <ul>
     *   <li><b>随机池包含在线音乐</b>（用户 2026-10-26 原话：「随机音乐包含在线音乐」）。
     *       以前只有「收藏随机 → 本地曲库」，NAS 上那几万首根本轮不到。现在三池
     *       等概率洗牌：收藏 / <b>在线</b> / 本地，谁先成功用谁。</li>
     *   <li><b>全都失败也不静音</b>：提示音在 {@link #fire} 里已经起来了，
     *       这里只在「歌真的起来了」时才叫它停（见末尾）。</li>
     * </ul>
     */
    private static void playRing(JSONObject song) {
        boolean ok = false;
        sRingOnMain = false;        // v1.3.253：每次起播先假设走独立通道
        try {
            String k = "";
            String title = "";
            String artist = "";
            if (song != null) {
                k = song.optString("k", "");
                title = song.optString("title", "");
                artist = song.optString("artist", "");
                if (k.length() == 0 && title.length() > 0) {
                    k = Fav.key(title, artist);
                }
            }
            // ① v1.3.248：指定了歌 + 本地有缓存 ⇒ 首选本地文件
            //    完全不依赖网络、不依赖原厂播放器的源解析 —— 闹钟最该稳的一条路
            if (k.length() > 0) {
                String f = AlarmCache.fileOf(k);
                if (f != null) {
                    // v1.3.252：改走独立铃声通道 —— 主播放器一个字节都不碰，
                    //   关闭闹钟后播放界面不会残留铃声歌曲
                    ok = playByRing(f, title);
                }
            }
            // ② 指定了歌但没缓存：走收藏精确源（play_fav_one 不按歌名重搜，
            //    避免同名翻唱顶掉）；成了就顺手把缓存补上，下次响铃走 ①
            if (!ok && song != null && (k.length() > 0 || title.length() > 0)) {
                JSONObject g = new JSONObject();
                if (k.length() > 0) {
                    g.put("k", k);
                }
                if (title.length() > 0) {
                    g.put("title", title);
                    g.put("artist", artist);
                }
                String r = PlayerBridge.dispatch("play_fav_one", g);
                SessionLog.i("alarm play(fixed) " + title + " -> " + r);
                ok = r != null && r.startsWith("OK");
                if (ok) {
                    sRingSong = title;               // v1.3.250
                }
                if (ok && k.length() > 0 && !AlarmCache.has(k)) {
                    cacheSongAsync(k, title, artist);
                }
                // 绑的那首歌被删了 / 源失效 ⇒ 往下走随机，闹钟不能因为一首歌哑掉
            }
            // ③ 没指定 / 指定的失效 ⇒ 三个池子洗牌随机（随机的不缓存）
            if (!ok) {
                sRingCache = null;
                sRingSong = "";
                // v1.3.252：随机也先看铃声缓存（本地文件 ⇒ 独立通道 ⇒ 界面不残留），
                //   缓存空 / 文件都没了才去三池洗牌（那条会占主播放器）
                ok = playRandomCached();
                if (!ok) {
                    ok = randomAnyPool();
                }
            }
            // ④ 最后的兜底：缓存目录里随便挑一首 —— 网络全挂时也有声
            if (!ok) {
                ok = playAnyCached("ring-fallback");
            }
            if (!ok) {
                SessionLog.i("alarm play: 所有音乐来源都失败（含本地缓存），这次真的没声");
            }
        } catch (Throwable t) {
            Log.w(TAG, "playRing: " + t);
            SessionLog.i("alarm play FAILED: " + t);
        }
    }

    /**
     * v1.3.252：用<b>独立铃声通道</b>播一个本地文件。
     *
     * <p>背景（用户 2026-10-27）：「闹钟铃声确定不能用专门的铃声通道播吗，
     * 关闭闹钟以后铃声歌曲还占着播放界面挺突兀的」。</p>
     *
     * <p>STREAM_ALARM 这条路在 R1 上是死的（见 {@link AlarmVol}），但「换个播放入口」
     * 完全可行：{@link RingPlayer} 自己 new 一个 MediaPlayer 播 /sdcard 上的缓存文件，
     * 主播放器全程没被碰过 ⇒ 关闭闹钟后播放界面保持原样（原本空着还是空着）。</p>
     *
     * <p>顺序：①{@link PlayerBridge#isMusicActive()} 为真才让主播放器让路
     * （没在放歌就别发指令，免得白白抖一次玩家状态）；②起独立通道；
     * ③只有独立通道起不来才退回老的 {@code play_local} —— 那条会占主播放器，
     * 界面会残留，但至少闹钟不会哑。返回值就是「这次真出声了吗」。</p>
     */
    private static boolean playByRing(String f, String title) {
        if (f == null || f.length() == 0) {
            return false;
        }
        try {
            if (PlayerBridge.isMusicActive()) {
                PlayerBridge.dispatch("pause", null);
            }
        } catch (Throwable t) {
            Log.w(TAG, "playByRing pause: " + t);
        }
        if (RingPlayer.play(f)) {
            sRingCache = f;
            sRingSong = title;
            SessionLog.i("alarm play(ring-ch) " + title);
            return true;
        }
        // 兜底：独立通道起不来（SELinux / 解码器），走老路
        try {
            JSONObject g = new JSONObject();
            g.put("f", f);
            g.put("title", title);
            String r = PlayerBridge.dispatch("play_local", g);
            SessionLog.i("alarm play(cached-fallback) " + title + " -> " + r);
            if (r != null && r.startsWith("OK")) {
                sRingCache = f;
                sRingSong = title;
                // v1.3.253：这条兜底是主播放器在放铃声 ⇒ 看护线程不许把响铃当「用户放音乐」
                sRingOnMain = true;
                return true;
            }
        } catch (Throwable t) {
            Log.w(TAG, "playByRing fallback: " + t);
        }
        return false;
    }

    /**
     * v1.3.252：随机响铃先从<b>已缓存的铃声</b>里挑一首。
     *
     * <p>缓存里都是本地 mp3 ⇒ 能走独立通道 ⇒ 关闭闹钟后界面不残留。
     * 用户 2026-10-27 的「随机」诉求（包含在线音乐）仍然保留：这里挑不到
     * （缓存空 / 文件全丢了）就交回 {@link #randomAnyPool()} 三池洗牌。</p>
     */
    private static boolean playRandomCached() {
        try {
            JSONArray a = AlarmCache.list();
            int n = a.length();
            if (n == 0) {
                return false;
            }
            int start = (int) (Math.random() * n);
            for (int i = 0; i < n; i++) {
                JSONObject it = a.optJSONObject((start + i) % n);
                if (it == null) {
                    continue;
                }
                String f = AlarmCache.fileOf(it.optString("k", ""));
                if (f == null) {
                    continue;
                }
                if (playByRing(f, it.optString("title", ""))) {
                    SessionLog.i("alarm play(rand-cached) " + it.optString("title", ""));
                    return true;
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "playRandomCached: " + t);
        }
        return false;
    }

    /**
     * v1.3.252：独立铃声通道自测（web {@code alarm_ring}）。
     *
     * <p>{@code act=status} 查状态、{@code act=stop} 停、都不带给文件就播缓存里第一首。
     * 存在的意义是装机后能<b>一条命令确认</b>「MediaPlayer 在这个进程里到底能不能出声」，
     * 不用等到闹钟点。</p>
     */
    private static String ringOp(JSONObject args) {
        String act = str(args, "act");
        if ("stop".equals(act)) {
            RingPlayer.stop();
            return "OK 独立铃声通道已停";
        }
        if ("status".equals(act)) {
            return "OK playing=" + RingPlayer.isPlaying()
                    + " file=" + RingPlayer.currentFile();
        }
        String f = str(args, "f");
        if (f.length() == 0) {
            JSONArray l = AlarmCache.list();
            if (l.length() > 0) {
                f = AlarmCache.fileOf(l.optJSONObject(0).optString("k", ""));
            }
        }
        if (f == null || f.length() == 0) {
            return "ERR 没有可用的本地铃声文件（先设一首铃声让它缓存下来）";
        }
        boolean ok = RingPlayer.play(f);
        return (ok ? "OK 独立通道起播 " : "ERR 独立通道起不来 ") + f
                + "（playing=" + RingPlayer.isPlaying() + "）";
    }

    /**
     * v1.3.248：把「用户主动指定的铃声」解析出地址并缓存到 /sdcard/R1Alarm。
     *
     * <p>解析走 {@link PlayerBridge#favResolve} —— 它本身就是那条「按需解析」的权威路径
     * （本地模糊命中优先，没有才在线搜一次），缓存只是把它的结果落成文件。
     * 整个过程在后台线程做：在线搜一次可能要等 8 秒，不能卡住设闹钟的人。</p>
     */
    private static void cacheSongAsync(final String k, final String title,
                                       final String artist) {
        Thread t = new Thread(new Runnable() {
            public void run() {
                try {
                    JSONObject g = new JSONObject();
                    g.put("k", k);
                    g.put("title", title);
                    g.put("artist", artist);
                    String u = PlayerBridge.favResolve(g);
                    if (u == null || !u.startsWith("http")) {
                        SessionLog.i("alarm cache: 解析不到《" + title + "》的地址 -> " + u);
                        return;
                    }
                    String r = AlarmCache.save(k, title, artist, u);
                    SessionLog.i("alarm cache: 《" + title + "》 -> " + r);
                } catch (Throwable t) {
                    Log.w(TAG, "cacheSong: " + t);
                    SessionLog.i("alarm cache FAILED: " + t);
                }
            }
        }, "r1-alarm-cachesong");
        t.setDaemon(true);
        t.start();
    }

    /**
     * v1.3.248（用户追加要求）：<b>缓存目录为空 + 设的是随机闹钟 ⇒ 当场缓存一首</b>。
     *
     * <p>这样「随机」闹钟也有本地可放的东西，合成提示音才能彻底去掉。
     * 只缓存一首（不是每个随机闹钟一首）：闹钟铃声本来就是「有个响」，
     * 多存只是白占空间。挑收藏里随机的，因为收藏里的条目都有可用源。</p>
     */
    private static String cacheOneRandom() {
        try {
            if (AlarmCache.count() > 0) {
                return "已有缓存，不用补";
            }
            JSONArray l = Fav.list();
            if (l == null || l.length() == 0) {
                return "收藏是空的，没东西可缓存";
            }
            List<Integer> idx = new ArrayList<Integer>();
            for (int i = 0; i < l.length(); i++) {
                idx.add(Integer.valueOf(i));
            }
            Collections.shuffle(idx);
            int tried = 0;
            for (int n = 0; n < idx.size() && tried < 5; n++) {
                JSONObject it = l.optJSONObject(idx.get(n).intValue());
                if (it == null) {
                    continue;
                }
                String t = it.optString("title", "");
                String a = it.optString("artist", "");
                String k = it.optString("k", "");
                if (k.length() == 0) {
                    k = Fav.key(t, a);
                }
                if (k.length() == 0) {
                    continue;
                }
                tried++;
                cacheSongAsync(k, t, a);
                return "正在缓存《" + t + "》" + a;
            }
            return "没挑到合适的歌";
        } catch (Throwable t) {
            return "ERR " + t;
        }
    }

    /** 从缓存里随便挑一首播（网络全挂时的最后一道兜底）。 */
    private static boolean playAnyCached(String why) {
        try {
            JSONArray a = AlarmCache.list();
            int n = a.length();
            if (n == 0) {
                return false;
            }
            int start = (int) (Math.random() * n);
            for (int i = 0; i < n; i++) {
                JSONObject it = a.optJSONObject((start + i) % n);
                if (it == null) {
                    continue;
                }
                String f = AlarmCache.fileOf(it.optString("k", ""));
                if (f == null) {
                    continue;
                }
                // v1.3.252：走独立铃声通道（不占用主播放器）
                if (playByRing(f, it.optString("title", ""))) {
                    SessionLog.i("alarm play(" + why + ") 本地铃声 "
                            + it.optString("title", ""));
                    return true;
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "playAnyCached: " + t);
        }
        return false;
    }

    /**
     * 三池等概率随机：收藏 / 在线 / 本地。
     *
     * <p>★ 洗牌而不是固定顺序：「收藏 → 在线 → 本地」会让在线永远轮不到
     * （收藏有 300 多首时几乎必然命中）。等概率才叫「随机包含在线音乐」。</p>
     */
    private static boolean randomAnyPool() {
        List<Integer> order = new ArrayList<Integer>();
        order.add(Integer.valueOf(0));   // 收藏
        order.add(Integer.valueOf(1));   // 在线（NAS）
        order.add(Integer.valueOf(2));   // 本地曲库
        Collections.shuffle(order);
        for (int i = 0; i < order.size(); i++) {
            int which = order.get(i).intValue();
            String r;
            if (which == 0) {
                r = playRandomFav();
            } else if (which == 1) {
                r = playRandomOnline();
            } else {
                r = playRandomLocal();
            }
            if (r != null && r.startsWith("OK")) {
                sRingOnMain = true;     // v1.3.253：这次铃声是主播放器在放
                return true;
            }
        }
        return false;
    }

    private static String playRandomFav() {
        JSONArray f = Fav.list();
        if (f == null || f.length() == 0) {
            return null;
        }
        String r = null;
        for (int attempt = 0; attempt < 5; attempt++) {
            int i = (int) (Math.random() * f.length());
            JSONObject it = f.optJSONObject(i);
            if (it == null) {
                continue;
            }
            try {
                JSONObject g = new JSONObject();
                String k = it.optString("k", "");
                if (k.length() > 0) {
                    g.put("k", k);
                }
                g.put("title", it.optString("title", ""));
                g.put("artist", it.optString("artist", ""));
                r = PlayerBridge.dispatch("play_fav_one", g);
                SessionLog.i("alarm play(rand-fav) " + it.optString("title", "")
                        + " -> " + r);
            } catch (Throwable t) {
                Log.w(TAG, "playRandomFav: " + t);
            }
            if (r != null && r.startsWith("OK")) {
                return r;
            }
        }
        return r;
    }

    /**
     * 在线随机（NAS 曲库）。
     *
     * <p>count 给 3 而不是默认 100：闹钟只要一首，推 100 首进 player 队列要多花
     * 一两秒，没有意义。★ NAS 不可达时 dispatch 内部会自己回落到本地并返回 OK
     * （random_online→local），所以这条返回 OK 不代表真的来自在线，日志里能看出来。</p>
     */
    private static String playRandomOnline() {
        try {
            JSONObject g = new JSONObject();
            g.put("count", 3);
            String r = PlayerBridge.dispatch("random_online", g);
            SessionLog.i("alarm play(rand-online) -> " + r);
            return r;
        } catch (Throwable t) {
            Log.w(TAG, "playRandomOnline: " + t);
            return null;
        }
    }

    private static String playRandomLocal() {
        try {
            JSONObject g = new JSONObject();
            g.put("count", 1);
            String r = PlayerBridge.dispatch("random", g);
            SessionLog.i("alarm play(rand-local) -> " + r);
            return r;
        } catch (Throwable t) {
            Log.w(TAG, "playRandomLocal: " + t);
            return null;
        }
    }

    // ---------------- 文本 ----------------

    static String hhmm(JSONObject a) {
        int h = a.optInt("h", 7);
        int m = a.optInt("m", 0);
        return (h < 10 ? "0" + h : "" + h) + ":" + (m < 10 ? "0" + m : "" + m);
    }

    private static final String[] WK = {"周一", "周二", "周三", "周四", "周五", "周六", "周日"};

    /** 「每天 07:30」「周一、周三 08:00」「仅一次 10-27 07:00」。 */
    static String repeatText(JSONObject a) {
        String rp = a.optString("repeat", "daily");
        if ("once".equals(rp)) {
            long at = a.optLong("at", 0L);
            if (at <= 0) {
                return "仅一次 " + hhmm(a);
            }
            Calendar c = Calendar.getInstance();
            c.setTimeInMillis(at);
            return "仅一次 " + (c.get(Calendar.MONTH) + 1) + "-"
                    + c.get(Calendar.DAY_OF_MONTH) + " " + hhmm(a);
        }
        if ("weekly".equals(rp)) {
            JSONArray ds = a.optJSONArray("days");
            if (ds == null || ds.length() == 0) {
                return "每天 " + hhmm(a);
            }
            if (ds.length() == 7) {
                return "每天 " + hhmm(a);
            }
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < ds.length(); i++) {
                int d = ds.optInt(i, 0);
                if (d < 1 || d > 7) {
                    continue;
                }
                if (sb.length() > 0) {
                    sb.append("、");
                }
                sb.append(WK[d - 1]);
            }
            String s = sb.toString();
            if (s.length() == 0) {
                return "每天 " + hhmm(a);
            }
            // 「周一到周五」这种连续段压成范围，念起来和页面显示都短
            String range = compactDays(ds);
            return (range.length() > 0 ? range : s) + " " + hhmm(a);
        }
        return "每天 " + hhmm(a);
    }

    /** days 恰好是连续一段（且 ≥3 天）时给「周一到周五」，否则返回空串。 */
    private static String compactDays(JSONArray ds) {
        int n = ds.length();
        if (n < 3) {
            return "";
        }
        boolean[] hit = new boolean[8];
        for (int i = 0; i < n; i++) {
            int d = ds.optInt(i, 0);
            if (d >= 1 && d <= 7) {
                hit[d] = true;
            }
        }
        int first = -1;
        int cnt = 0;
        for (int d = 1; d <= 7; d++) {
            if (hit[d]) {
                if (first < 0) {
                    first = d;
                }
                cnt++;
            }
        }
        if (first < 0 || cnt != n) {
            return "";
        }
        for (int d = first; d < first + cnt; d++) {
            if (d > 7 || !hit[d]) {
                return "";
            }
        }
        if (cnt < 3) {
            return "";
        }
        return WK[first - 1] + "到" + WK[first + cnt - 2];
    }

    /** 「今天 07:30」「明天 07:30」「周三 07:30」。 */
    private static String whenText(long ts, long now) {
        Calendar a = Calendar.getInstance();
        a.setTimeInMillis(now);
        Calendar b = Calendar.getInstance();
        b.setTimeInMillis(ts);
        int days = b.get(Calendar.DAY_OF_YEAR) - a.get(Calendar.DAY_OF_YEAR);
        if (b.get(Calendar.YEAR) != a.get(Calendar.YEAR)) {
            days += 365;
        }
        String hh = (b.get(Calendar.HOUR_OF_DAY) < 10 ? "0" : "")
                + b.get(Calendar.HOUR_OF_DAY) + ":"
                + (b.get(Calendar.MINUTE) < 10 ? "0" : "") + b.get(Calendar.MINUTE);
        if (days == 0) {
            return "今天 " + hh;
        }
        if (days == 1) {
            return "明天 " + hh;
        }
        if (days == 2) {
            return "后天 " + hh;
        }
        return WK[isoDow(b) - 1] + " " + hh;
    }

    private static String songText(JSONObject a) {
        JSONObject s = a.optJSONObject("song");
        if (s == null) {
            return "随机一首";
        }
        String t = s.optString("title", "");
        if (t.length() == 0) {
            return "随机一首";
        }
        String ar = s.optString("artist", "");
        return ar.length() > 0 ? ("《" + t + "》" + ar) : ("《" + t + "》");
    }

    // ---------------- 语音 / web 入口 ----------------

    /**
     * 统一入口：语音 MCP（{@code self.r1alarm.*}）与 web（{@code /api/act?op=alarm_*}）
     * 都落到这里，返回 {@code OK …} / {@code ERR …}。
     */
    public static String mcp(String op, JSONObject args) {
        try {
            if (op == null) {
                return "ERR 缺 op";
            }
            if ("add".equals(op)) {
                return add(args);
            }
            if ("list".equals(op)) {
                return listText();
            }
            if ("toggle".equals(op)) {
                return toggle(args);
            }
            if ("del".equals(op)) {
                return del(args);
            }
            if ("dismiss".equals(op)) {
                return dismiss(args);
            }
            if ("song".equals(op)) {
                return setSong(args);
            }
            if ("test".equals(op)) {
                return test(args);
            }
            if ("vol".equals(op)) {          // v1.3.246：查/设闹钟音量
                return vol(args);
            }
            if ("cache".equals(op)) {        // v1.3.248：铃声缓存（/sdcard/R1Alarm）
                return cacheOp(args);
            }
            if ("dflt".equals(op)) {         // v1.3.251：全局默认铃声（记住设过的那首）
                return dfltOp(args);
            }
            if ("ring".equals(op)) {         // v1.3.252：独立铃声通道自测 play/stop/status
                return ringOp(args);
            }
            if ("yield".equals(op)) {        // v1.3.253：起播音乐前「让路」——关掉正在响的闹钟
                return yieldOp();
            }
            return "ERR unknown alarm op: " + op;
        } catch (Throwable t) {
            Log.w(TAG, "mcp " + op + ": " + t);
            return "ERR " + t;
        }
    }

    /** 语音「每天早上 7 点叫我」→ 加一个闹钟。 */
    private static String add(JSONObject args) throws Exception {
        int h;
        int m;
        String tm = str(args, "time");
        if (tm.length() > 0) {
            int[] v = parseHm(tm);
            if (v == null) {
                return "ERR 时间格式不对：" + tm + "（要 7:30 这种）";
            }
            h = v[0];
            m = v[1];
        } else {
            h = args == null ? -1 : args.optInt("hour", -1);
            m = args == null ? 0 : args.optInt("minute", 0);
        }
        if (h < 0 || h > 23 || m < 0 || m > 59) {
            return "ERR 时间不对（hour 0~23 / minute 0~59）";
        }
        String rp = normRepeat(str(args, "repeat"));
        JSONArray days = null;
        if ("weekly".equals(rp)) {
            days = parseDays(args == null ? null : args.opt("days"));
            if (days == null || days.length() == 0) {
                rp = "daily";
            }
        }
        long at = 0L;
        if ("once".equals(rp)) {
            at = onceAt(args, h, m);
            if (at <= 0) {
                return "ERR 那个时间已经过去了";
            }
        }
        if (list().length() >= MAX) {
            return "ERR 闹钟最多 " + MAX + " 个，先删几个";
        }
        JSONObject a = new JSONObject();
        a.put("id", "a" + System.currentTimeMillis());
        a.put("h", h);
        a.put("m", m);
        a.put("repeat", rp);
        if (days != null) {
            a.put("days", days);
        }
        if (at > 0) {
            a.put("at", at);
        }
        a.put("enabled", true);
        a.put("label", str(args, "label"));
        a.put("last", 0);
        String st = str(args, "songTitle");
        if (st.length() == 0) {
            st = str(args, "title");
        }
        String sa = str(args, "songArtist");
        if (sa.length() == 0) {
            sa = str(args, "artist");
        }
        // v1.3.251：没指定歌 ⇒ 用全局默认铃声（用户：语音 / web 建的闹钟都默认用设过的那首）
        if (st.length() == 0) {
            JSONObject d = dfltSong();
            if (d != null) {
                st = d.optString("title", "");
                sa = d.optString("artist", "");
            }
        }
        if (st.length() > 0) {
            JSONObject s = new JSONObject();
            s.put("k", Fav.key(st, sa));
            s.put("title", st);
            s.put("artist", sa);
            a.put("song", s);
        }
        synchronized (LOCK) {
            JSONArray l = list();
            l.put(a);
            touch();
        }
        // v1.3.248：指定了歌 ⇒ 缓存它；没指定（随机）且缓存目录为空 ⇒ 当场补一首
        //   （用户 2026-10-26 追加：「如果文件夹里没有歌，设闹铃的时候设的又是随机，
        //     那当场缓存一首歌到这个文件夹」）
        String extra = "";
        if (st.length() > 0) {
            String k = Fav.key(st, sa);
            if (!AlarmCache.has(k)) {
                cacheSongAsync(k, st, sa);
                extra = "，正在缓存到铃声目录";
            }
        } else {
            String cm = cacheOneRandom();
            if (cm.length() > 0) {
                extra = "（" + cm + "）";
            }
        }
        return "OK 已添加闹钟：" + repeatText(a) + "，响铃 " + songText(a)
                + "（下次 " + whenText(nextTs(a, System.currentTimeMillis()),
                System.currentTimeMillis()) + "）" + extra;
    }

    /** 「我有哪些闹钟 / 现在开着哪些闹钟」。 */
    private static String listText() {
        // ★ 必须用和页面/序号定位同一套顺序（sortedForShow），否则用户听到「2. 每天 07:30」，
        //   接着说「停用第 2 个」时 pick(2) 按另一套顺序取，会停错那个。
        JSONArray a = sortedForShow();
        long now = System.currentTimeMillis();
        if (a.length() == 0) {
            return "现在一个闹钟都没有。可以说「每天早上七点叫我」来加一个";
        }
        StringBuilder sb = new StringBuilder();
        int on = 0;
        String ring = ringId();
        for (int i = 0; i < a.length(); i++) {
            JSONObject it = a.optJSONObject(i);
            if (it == null) {
                continue;
            }
            boolean en = it.optBoolean("enabled", true);
            if (en) {
                on++;
            }
            sb.append("\n").append(i + 1).append(". ").append(repeatText(it));
            if (it.optString("label", "").length() > 0) {
                sb.append("（").append(it.optString("label", "")).append("）");
            }
            sb.append("　响铃 ").append(songText(it));
            if (!en) {
                sb.append("　［已停用］");
            } else if (it.optString("id", "").equals(ring)) {
                sb.append("　［正在响］");
            } else {
                long nx = nextTs(it, now);
                if (nx > 0) {
                    sb.append("　下次 ").append(whenText(nx, now));
                }
            }
        }
        return "一共有 " + a.length() + " 个闹钟，其中 " + on + " 个开着：" + sb;
    }

    /** 停用 / 启用。定位方式：index（跟 list 的序号一致）→ id → hour+minute 匹配。 */
    private static String toggle(JSONObject args) throws Exception {
        JSONObject it = pick(args);
        if (it == null) {
            return "ERR 没找到那个闹钟（可以问「我有哪些闹钟」，或按列表序号说第几个）";
        }
        JSONObject out;
        String v = str(args, "enabled");
        if (v.length() == 0) {
            v = str(args, "v");
        }
        boolean on;
        if (v.length() == 0) {
            on = !it.optBoolean("enabled", true);   // 不带就翻转
        } else {
            on = "on".equalsIgnoreCase(v) || "1".equals(v) || "true".equalsIgnoreCase(v)
                    || "开".equals(v) || "启用".equals(v);
        }
        synchronized (LOCK) {
            it.put("enabled", on);
            touch();
        }
        out = it;
        return "OK 已" + (on ? "启用" : "停用") + "闹钟：" + repeatText(out)
                + (on ? "（下次 " + whenText(nextTs(out, System.currentTimeMillis()),
                System.currentTimeMillis()) + "）" : "");
    }

    private static String del(JSONObject args) throws Exception {
        JSONObject it = pick(args);
        if (it == null) {
            return "ERR 没找到那个闹钟（可以问「我有哪些闹钟」，或按列表序号说第几个）";
        }
        String desc = repeatText(it);
        String id = it.optString("id", "");
        synchronized (LOCK) {
            JSONArray l = list();
            JSONArray n = new JSONArray();
            for (int i = 0; i < l.length(); i++) {
                JSONObject x = l.optJSONObject(i);
                if (x == null || id.equals(x.optString("id", ""))) {
                    continue;
                }
                n.put(x);
            }
            cache = n;
            if (id.equals(sRingId)) {
                sRingId = "";
            }
            touch();
        }
        return "OK 已删除闹钟：" + desc;
    }

    /**
     * 「关闭闹钟」—— <b>只关这次响铃</b>，不动 enabled（用户明确要求）。
     * 顺带停播（闹铃就是那首歌）；{@code dispatch("pause")} 会记成「用户主动暂停」，
     * 不会被 MusicResume 在下次会话结束时接回来。
     */
    private static String dismiss(JSONObject args) {
        // v1.3.253：quiet=1 ⇒ 只关闹钟、**不动音乐**。
        //   场景就是「响铃时用户开始放音乐」：音乐要接着响，只有闹钟该停。

        // ★ 先把 id 抓下来：ringId() 会顺手把过期的响铃标记清掉，
        //   清完再问「刚才是哪个」就问不出来了。文案得按那个闹钟的 repeat 分岔 ——
        //   对一次性闹钟说「明天照样响」是错的（它响过就已经自动停用了）。
        String rid = ringId();
        String was = ringDesc();
        boolean ringing = rid.length() > 0;
        // v1.3.246：抬起来的音量收回去（volBack 只进日志，不念给用户听）
        String volBack = closeRing();
        if (volBack.length() > 0) {
            SessionLog.i("alarm dismiss: " + volBack);
        }
        boolean quiet = args != null
                && (args.optBoolean("quiet", false) || "1".equals(args.optString("quiet", "")));
        String r = quiet ? "quiet 不动音乐" : PlayerBridge.dispatch("pause", null);
        if (!ringing) {
            // ★ 用户可能只是「以为还在响」（响完被自己忽略了），照样把提示音和音量收干净
            return "OK 现在没有闹钟在响（顺带暂停了播放：" + r + "）"
                    + "。停用闹钟请说「停用某个闹钟」";
        }
        String tail = "，这个闹钟本身还开着，明天照样响";
        JSONObject it = byId(rid);
        if (it != null) {
            if ("once".equals(it.optString("repeat", ""))) {
                tail = "。这是一次性的，响过就结束了（条目还留着，想再响一次就再设一个）";
            } else if (!it.optBoolean("enabled", true)) {
                tail = "（这个闹钟现在是停用状态，不会再响）";
            }
        }
        return "OK 已关闭闹钟" + (was.length() > 0 ? "（" + was + "）" : "") + tail;
    }

    /** 按 id 找一条（找不到返回 null）。 */
    private static JSONObject byId(String id) {
        if (id == null || id.length() == 0) {
            return null;
        }
        JSONArray a = list();
        for (int i = 0; i < a.length(); i++) {
            JSONObject x = a.optJSONObject(i);
            if (x != null && id.equals(x.optString("id", ""))) {
                return x;
            }
        }
        return null;
    }

    /**
     * 给闹钟指定歌曲；{@code title} 留空 = 改回随机。
     *
     * <p>v1.3.251：<b>设铃声同时写全局默认</b>（用户 2026-10-27：「之后 web 上或者
     * 语音设置铃声都应默认是设置的铃声」）。而且<b>即使一个闹钟都没有也能设</b> ——
     * 只写默认 + 缓存，之后新建 / 语音建的闹钟自动套用它。以前这里对 {@code id=next}
     * 直接报「ERR 没有开着的闹钟」，于是页面长按设铃声永远失败、缓存也不增加。</p>
     */
    private static String setSong(JSONObject args) throws Exception {
        String t = str(args, "songTitle");
        if (t.length() == 0) {
            t = str(args, "title");
        }
        String ar = str(args, "songArtist");
        if (ar.length() == 0) {
            ar = str(args, "artist");
        }
        String k = str(args, "k");
        if (k.length() == 0 && t.length() > 0) {
            k = Fav.key(t, ar);
        }
        boolean random = (t.length() == 0 || "random".equalsIgnoreCase(str(args, "mode")));
        // ① 全局默认先落 —— 不管有没有闹钟、设的又是哪一条
        setDflt(random ? "" : k, random ? "" : t, random ? "" : ar);
        // ② 再落目标闹钟
        JSONObject it = pick(args);
        String idArg = str(args, "id");
        boolean explicitId = idArg.length() > 0 && !"next".equalsIgnoreCase(idArg);
        if (it == null && explicitId) {
            return "ERR 没找到那个闹钟";          // 明确指了某一条却不存在 ⇒ 还是报错
        }
        if (it == null) {
            // 一个闹钟都没有（或没开着的）：默认已设好，照样缓存
            if (random) {
                String m = cacheOneRandom();
                return "OK 已改成随机播一首" + (m.length() > 0 ? "（" + m + "）" : "");
            }
            String tail = "。之后新建的闹钟都用它";
            if (AlarmCache.has(k)) {
                return "OK 默认铃声已设为 " + songOfName(t, ar) + "（已缓存，断网也能响）" + tail;
            }
            cacheSongAsync(k, t, ar);
            return "OK 默认铃声已设为 " + songOfName(t, ar) + "，正在缓存到铃声目录" + tail;
        }
        synchronized (LOCK) {
            if (random) {
                it.remove("song");
            } else {
                JSONObject s = new JSONObject();
                s.put("k", k);
                s.put("title", t);
                s.put("artist", ar);
                it.put("song", s);
            }
            touch();
        }
        if (random) {
            // v1.3.248：改成随机 ⇒ 缓存目录空的话当场补一首（用户 2026-10-26 追加要求）
            String m = cacheOneRandom();
            return "OK 已改成随机播一首" + (m.length() > 0 ? "（" + m + "）" : "");
        }
        // v1.3.248：用户主动指定的铃声 ⇒ 后台缓存到 /sdcard/R1Alarm（随机的不缓存）
        // v1.3.250：消息里带上「设给了哪一条」，页面从曲库 / 缓存列表设铃声时才知道落点
        String tail2 = "，之后新建的闹钟也默认用它";
        if (AlarmCache.has(k)) {
            return "OK " + hhmm(it) + " 的铃声已设为 " + songText(it) + "（已缓存，断网也能响）"
                    + tail2;
        }
        cacheSongAsync(k, t, ar);
        return "OK " + hhmm(it) + " 的铃声已设为 " + songText(it) + "，正在缓存到铃声目录"
                + tail2;
    }

    /**
     * v1.3.253：{@code alarm_yield} —— player 起播音乐<b>之前</b>调一次。
     *
     * <p>为什么必须由 player 来叫：音量是这边设的，只有「先还原音量、再让音乐出声」
     * 才听不出跳变（用户原话：防止声音突然变大或变小）。player 起播那一刻是最早的时机。</p>
     *
     * <p>没在响铃也不怕：顺手把「设过但还没还」的音量还掉（{@link AlarmVol#restore()}
     * 幂等，没动过就什么都不做）。</p>
     */
    private static String yieldOp() {
        boolean ringing = ringId().length() > 0;
        String back = closeRing();
        if (!ringing) {
            return "OK 没在响铃" + (back.length() > 0 ? "（" + back + "）" : "");
        }
        SessionLog.i("alarm yield: 开始放音乐 ⇒ 关掉响铃"
                + (back.length() > 0 ? "，" + back : ""));
        return "OK 已让路（关掉响铃）" + (back.length() > 0 ? "，" + back : "");
    }

    /** 试响：不等到点，立刻按这个闹钟的配置播一次（只播歌，不标 ring）。 */
    private static String test(JSONObject args) {
        JSONObject it = pick(args);
        final JSONObject song = it == null ? null : it.optJSONObject("song");
        // v1.3.246：试响必须走和真响铃完全一样的链路（抬音量 + 同一套选曲）。
        //   否则「试响有声音」证明不了「真响铃有声音」——两者的音量条件不一样。
        // v1.3.253：试响也守同一条规矩 —— 先停音乐、先设音量，再出声
        try {
            if (PlayerBridge.isMusicActive()) {
                PlayerBridge.dispatch("pause", null);
            }
        } catch (Throwable t) {
            Log.w(TAG, "test pause music: " + t);
        }
        sRingOnMain = false;
        sWatchArmed = false;
        AlarmVol.guard(Math.max(sVol, VOL_MUSIC_MIN));
        sNagAt = System.currentTimeMillis();
        // ★ 试响没人来点「关闭」，自己开一个窗口：到点由 maintain() 收尾+还原音量
        sHoldUntil = sNagAt + TEST_HOLD_MS;
        Thread th = new Thread(new Runnable() {
            public void run() {
                playRing(song);
            }
        }, "r1-alarm-test");
        th.setDaemon(true);
        th.start();
        return "OK 正在试响（播 " + (it == null ? "随机一首" : songText(it))
                + "，音量保底 " + sVol + "%）";
    }

    /**
     * v1.3.248：铃声缓存管理（/sdcard/R1Alarm）。
     *
     * <p>无参 = 列清单（页面「设铃声」优先显示这些）；{@code clear=1} = 全清；
     * {@code del=<k>} = 删一条；{@code save=<k>&title=&artist=} = 立刻缓存一首。</p>
     *
     * <p>★ 这里只做管理，不做自动缓存 —— 自动缓存的规则是
     * 「用户主动指定的铃声才缓存，随机的不缓存」（见 {@link #cacheSongAsync}），
     * 唯一例外是缓存为空时设随机闹钟会补一首（{@link #cacheOneRandom}）。</p>
     */
    private static String cacheOp(JSONObject args) {
        String clr = (args == null) ? "" : args.optString("clear", "");
        if ("1".equals(clr) || "true".equals(clr)) {
            return "OK " + AlarmCache.clear() + "（" + AlarmCache.desc() + "）";
        }
        String del = (args == null) ? "" : args.optString("del", "").trim();
        if (del.length() > 0) {
            return "OK " + AlarmCache.remove(del) + "（" + AlarmCache.desc() + "）";
        }
        String sv = (args == null) ? "" : args.optString("save", "").trim();
        if (sv.length() > 0) {
            String t = args.optString("title", "");
            String a = args.optString("artist", "");
            if (AlarmCache.has(sv)) {
                return "OK 已经缓存过了：" + AlarmCache.fileOf(sv);
            }
            cacheSongAsync(sv, t, a);
            return "OK 开始缓存《" + t + "》" + a + "，几秒后可用（" + AlarmCache.desc() + "）";
        }
        JSONArray l = AlarmCache.list();
        StringBuilder b = new StringBuilder();
        b.append(AlarmCache.desc()).append("；");
        if (l.length() == 0) {
            b.append("目录是空的 —— 设个指定铃声就会自动缓存；随机闹钟在空目录下也会补一首");
        } else {
            for (int i = 0; i < l.length() && i < 20; i++) {
                JSONObject it = l.optJSONObject(i);
                if (it == null) {
                    continue;
                }
                b.append(i + 1).append(".《").append(it.optString("title", "")).append("》")
                        .append(it.optString("artist", "")).append(" ");
            }
        }
        return "OK " + b;
    }

    /**
     * v1.3.246：闹钟音量（0~100）。
     *
     * <p>无参 = 查询；带 {@code v} / {@code level} = 设置。这个值只在<b>响铃时</b>用来抬
     * <b>媒体流</b>（{@link AlarmVol#guard(int)}），平时不动系统音量，关闭时还原。</p>
     *
     * <p>为什么不抬系统闹钟流：本机那个通道是死的（写不动音量、也喂不进声），
     * 详见 {@link AlarmVol} 类注释的实测记录。</p>
     *
     * <p>下限 20：再低就不是"叫醒"了。上限 100 会顶满，RK 的小喇叭在高音区容易糊，
     * 所以默认给 {@link #VOL_DEFAULT}（50）而不是顶满。</p>
     */
    private static String vol(JSONObject args) {
        int v = -1;
        if (args != null) {
            v = args.optInt("v", -1);
            if (v < 0) {
                v = args.optInt("level", -1);
            }
        }
        if (v >= 0) {
            if (v < 20) {
                return "ERR 闹钟音量太小（20~100，推荐 " + VOL_DEFAULT + "）";
            }
            if (v > 100) {
                v = 100;
            }
            sVol = v;
            touch();
            SessionLog.i("alarm vol -> " + v + "%");
            // v1.3.253：语义改成「设成」（音乐比闹钟响也要降下来）
            return "OK 闹钟音量设为 " + v + "%（响铃时把媒体音量设成这个值，最低 "
                    + VOL_MUSIC_MIN + "%，关闭后回到你原来的音乐音量）";
        }
        return "OK 闹钟音量 " + sVol + "%（可设 20~100）。当前系统音量：" + AlarmVol.desc();
    }

    /** 按 index / id / hour+minute 定位一个闹钟（index 就是列表页显示的序号，1 起）。 */
    private static JSONObject pick(JSONObject args) {
        JSONArray a = list();
        if (a.length() == 0) {
            return null;
        }
        int idx = args == null ? 0 : args.optInt("index", 0);
        if (idx <= 0) {
            idx = args == null ? 0 : args.optInt("i", 0);
        }
        String id = str(args, "id");
        if ("next".equalsIgnoreCase(id)) {
            // v1.3.250：页面「长按搜到的歌 / 点已缓存的铃声 ⇒ 设为闹钟铃声」。
            //   用户 2026-10-26 明确：只设**下一条要响的**那条，其它闹钟不动。
            return nextUp(a, System.currentTimeMillis());
        }
        if (idx >= 1 && idx <= a.length()) {
            // 序号与 listText / 页面列表一致 ⇒ 用同一种排序
            JSONArray sorted = sortedForShow();
            JSONObject x = sorted.optJSONObject(idx - 1);
            if (x != null) {
                return x;
            }
        }
        if (id.length() > 0) {
            for (int i = 0; i < a.length(); i++) {
                JSONObject x = a.optJSONObject(i);
                if (x != null && id.equals(x.optString("id", ""))) {
                    return x;
                }
            }
        }
        int h = args == null ? -1 : args.optInt("hour", -1);
        int m = args == null ? -1 : args.optInt("minute", -1);
        String tm = str(args, "time");
        if (tm.length() > 0) {
            int[] v = parseHm(tm);
            if (v != null) {
                h = v[0];
                m = v[1];
            }
        }
        if (h >= 0) {
            for (int i = 0; i < a.length(); i++) {
                JSONObject x = a.optJSONObject(i);
                if (x != null && x.optInt("h", -1) == h
                        && (m < 0 || x.optInt("m", -1) == m)) {
                    return x;
                }
            }
        }
        // 最后兜底：只有一条就不用猜
        if (a.length() == 1) {
            return a.optJSONObject(0);
        }
        return null;
    }

    /** listText 与页面用的是同一套顺序（开着的、快到点的在前）。 */
    private static JSONArray sortedForShow() {
        JSONArray a = list();
        final long now = System.currentTimeMillis();
        List<JSONObject> tmp = new ArrayList<JSONObject>();
        for (int i = 0; i < a.length(); i++) {
            JSONObject x = a.optJSONObject(i);
            if (x != null) {
                tmp.add(x);
            }
        }
        Collections.sort(tmp, new Comparator<JSONObject>() {
            public int compare(JSONObject x, JSONObject y) {
                boolean ex = x.optBoolean("enabled", true);
                boolean ey = y.optBoolean("enabled", true);
                if (ex != ey) {
                    return ex ? -1 : 1;
                }
                long nx = nextTs(x, now);
                long ny = nextTs(y, now);
                if (nx <= 0 && ny <= 0) {
                    return 0;
                }
                if (nx <= 0) {
                    return 1;
                }
                if (ny <= 0) {
                    return -1;
                }
                return nx < ny ? -1 : (nx > ny ? 1 : 0);
            }
        });
        JSONArray out = new JSONArray();
        for (int i = 0; i < tmp.size(); i++) {
            out.put(tmp.get(i));
        }
        return out;
    }

    // ---------------- 解析小工具 ----------------

    private static String str(JSONObject o, String k) {
        if (o == null) {
            return "";
        }
        String v = o.optString(k, "");
        return v == null ? "" : v.trim();
    }

    private static int[] parseHm(String s) {
        if (s == null) {
            return null;
        }
        String t = s.trim();
        // 「7:30」「07:30」「7点30」「7点半」「7点」
        t = t.replace("：", ":").replace("点", ":").replace("时", ":");
        t = t.replace("分", "").replace("半", "30").trim();
        if (t.endsWith(":")) {
            t = t + "0";
        }
        try {
            int c = t.indexOf(':');
            if (c < 0) {
                int h = Integer.parseInt(t);
                return (h >= 0 && h <= 23) ? new int[]{h, 0} : null;
            }
            int h = Integer.parseInt(t.substring(0, c).trim());
            int m = Integer.parseInt(t.substring(c + 1).trim());
            if (h < 0 || h > 23 || m < 0 || m > 59) {
                return null;
            }
            return new int[]{h, m};
        } catch (Throwable e) {
            return null;
        }
    }

    private static String normRepeat(String s) {
        if (s == null || s.length() == 0) {
            return "daily";
        }
        String t = s.trim().toLowerCase();
        if (t.indexOf("once") >= 0 || t.indexOf("one") >= 0
                || t.indexOf("一次") >= 0 || t.indexOf("明天") >= 0
                || t.indexOf("单次") >= 0) {
            return "once";
        }
        if (t.indexOf("week") >= 0 || t.indexOf("周") >= 0 || t.indexOf("星期") >= 0
                || t.indexOf("每星期") >= 0) {
            return "weekly";
        }
        if (t.indexOf("day") >= 0 || t.indexOf("每天") >= 0 || t.indexOf("每日") >= 0) {
            return "daily";
        }
        return "daily";
    }

    /** 「1,2,3」「1-5」「周一到周五」「mon-fri」「工作日」→ JSONArray(1..7)。 */
    static JSONArray parseDays(Object raw) {
        if (raw == null) {
            return null;
        }
        String s;
        if (raw instanceof JSONArray) {
            JSONArray a = (JSONArray) raw;
            JSONArray out = new JSONArray();
            for (int i = 0; i < a.length(); i++) {
                int d = a.optInt(i, 0);
                if (d >= 1 && d <= 7) {
                    out.put(d);
                }
            }
            return sortUniq(out);
        }
        s = String.valueOf(raw);
        return parseDaysText(s);
    }

    static JSONArray parseDaysText(String s) {
        if (s == null) {
            return null;
        }
        String t = s.toLowerCase().trim();
        if (t.length() == 0) {
            return null;
        }
        if (t.indexOf("工作日") >= 0) {
            return rangeOf(1, 5);
        }
        if (t.indexOf("周末") >= 0) {
            return rangeOf(6, 7);
        }
        if (t.indexOf("每天") >= 0 || t.indexOf("天天") >= 0 || t.indexOf("daily") >= 0) {
            return rangeOf(1, 7);
        }
        // 英文缩写 → 数字
        t = t.replace("monday", "1").replace("tuesday", "2").replace("wednesday", "3")
                .replace("thursday", "4").replace("friday", "5").replace("saturday", "6")
                .replace("sunday", "7");
        t = t.replace("mon", "1").replace("tue", "2").replace("wed", "3")
                .replace("thu", "4").replace("fri", "5").replace("sat", "6")
                .replace("sun", "7");
        // 中文「周/星期/礼拜」只是前缀，去掉不影响数字提取
        t = t.replace("星期", "").replace("礼拜", "").replace("周", "");
        // 中文数字（只在周几语境里出现，安全）
        t = t.replace("一", "1").replace("二", "2").replace("三", "3").replace("四", "4")
                .replace("五", "5").replace("六", "6")
                .replace("日", "7").replace("天", "7");
        t = t.replace("到", "-").replace("至", "-").replace("~", "-")
                .replace("－", "-").replace("、", ",").replace("，", ",")
                .replace(" ", ",").replace("和", ",");
        JSONArray out = new JSONArray();
        String[] parts = t.split("[,;]+");
        for (int i = 0; i < parts.length; i++) {
            String p = parts[i].trim();
            if (p.length() == 0) {
                continue;
            }
            int dash = p.indexOf('-');
            if (dash > 0 && dash < p.length() - 1) {
                try {
                    int a = Integer.parseInt(p.substring(0, dash).trim());
                    int b = Integer.parseInt(p.substring(dash + 1).trim());
                    if (a >= 1 && b <= 7 && a <= b) {
                        for (int d = a; d <= b; d++) {
                            out.put(d);
                        }
                    }
                } catch (Throwable ignored) {
                }
                continue;
            }
            try {
                int d = Integer.parseInt(p);
                if (d >= 1 && d <= 7) {
                    out.put(d);
                }
            } catch (Throwable ignored) {
            }
        }
        return sortUniq(out);
    }

    private static JSONArray rangeOf(int a, int b) {
        JSONArray out = new JSONArray();
        for (int d = a; d <= b; d++) {
            out.put(d);
        }
        return out;
    }

    private static JSONArray sortUniq(JSONArray a) {
        boolean[] hit = new boolean[8];
        for (int i = 0; i < a.length(); i++) {
            int d = a.optInt(i, 0);
            if (d >= 1 && d <= 7) {
                hit[d] = true;
            }
        }
        JSONArray out = new JSONArray();
        for (int d = 1; d <= 7; d++) {
            if (hit[d]) {
                out.put(d);
            }
        }
        return out;
    }

    /** 一次性闹钟的绝对时刻：给了 date 就按那天，没给就「下一次该时刻」。 */
    private static long onceAt(JSONObject args, int h, int m) {
        Calendar c = Calendar.getInstance();
        String date = str(args, "date");
        boolean dated = false;
        if (date.length() > 0) {
            try {
                String d = date.replace("/", "-").replace(".", "-").trim();
                String[] p = d.split("-");
                if (p.length == 3) {
                    c.set(Calendar.YEAR, Integer.parseInt(p[0]));
                    c.set(Calendar.MONTH, Integer.parseInt(p[1]) - 1);
                    c.set(Calendar.DAY_OF_MONTH, Integer.parseInt(p[2]));
                    dated = true;
                }
            } catch (Throwable ignored) {
                dated = false;
            }
        }
        c.set(Calendar.HOUR_OF_DAY, h);
        c.set(Calendar.MINUTE, m);
        c.set(Calendar.SECOND, 0);
        c.set(Calendar.MILLISECOND, 0);
        long at = c.getTimeInMillis();
        if (at <= System.currentTimeMillis()) {
            if (dated) {
                return -1L;     // 明确说了哪天却已经过去 ⇒ 报错，别偷偷顺延
            }
            c.add(Calendar.DAY_OF_YEAR, 1);
            at = c.getTimeInMillis();
        }
        return at;
    }
}
