package cn.workbuddy.r1web;

import android.content.Context;
import android.graphics.Color;

import com.phicomm.speaker.player.helpers.PlayerVisualizerHelper;
import com.phicomm.speaker.player.helpers.SPHelper;
import com.phicomm.speaker.player.light.LedLight;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * pl-1.6.32：氛围灯的「多彩」档 —— 在原厂效果上只改一件事：**颜色乱序**。
 *
 * <p>它是<b>氛围灯的子项</b>，不是独立开关。页面上是「氛围灯（总开关）+ 灯效
 * 二选一」：<br>
 * · <b>原厂</b>：本类不接管，原厂 {@code PlayerVisualizer} 每帧算一个基色
 *   （色相随频谱缓慢推进、亮度被 lumaGain 缩放过）然后
 *   {@code LedLight.setColor(0x7FFF, 基色)} —— 15 颗灯<b>同色</b>；<br>
 * · <b>多彩</b>：本类接管每一帧，把 15 颗拆成一整圈色环并每次闪动洗一次牌。
 * 底层 API 本来就是「掩码 + 颜色」（{@code setColor(long mask, int color)}），
 * 逐颗写完全可行（小飞的魔改版就是靠它做多色效果）。</p>
 *
 * <p>本类由 smali 钩子挂在 {@code LedLight.setColor} 入口：
 * 返回 true ⇒ 这一帧由我们接管（原厂不再写）；false ⇒ 原样走原厂。</p>
 *
 * <h3>★ 多彩配色不出白</h3>
 * <p>色相环上本来没有白色，但原厂给的 S 有时接近 0（白/灰帧），直接沿用就会
 * 把 15 颗洗成一片白 ⇒ 见 {@link #vivid(float, float, float)} 的三道闸。</p>
 *
 * <h3>★★ 这一版修的「开了七彩灯却不亮」—— 真因是原厂氛围灯总开关关着</h3>
 * <p>原厂每帧是 {@code if (mUserEnable) setColor(ALL, 彩色) else setColor(ALL, 0)}。
 * device 侧记账的 {@code ambient.on=1} 只是 <b>device 自己的记录</b>，
 * 真正决定 player 送不送彩色的是 <b>player 进程里</b>
 * {@code PlayerVisualizer.mUserEnable}（SP {@code music_light_enable}）——
 * 它俩根本不是一个东西。实测：播着歌，钩子一秒被调十几次，
 * 可基色<b>恒为 #0</b> ⇒ 原厂在每帧送黑，我们老版本老实跟着写黑 ⇒ 灯全灭。
 * 修法见 {@link #enableFactoryAmbient()}：开七彩时顺手把原厂那个开关也拨开
 * （实测基色立刻从 {@code #0} 变 {@code #5f9700}）。</p>
 *
 * <h3>★ 颜色必须 {@code & 0xFFFFFF}</h3>
 * <p>原厂：{@code LedLight.setColor(0x7FFF, 0xffffff & Color.HSBtoColor(...))}；
 * 小飞魔改版：{@code const p3, 0xffffff ... and-int/2addr} 之后再 {@code set_color}
 * —— 传下去的一直是 <b>0x00RRGGBB</b>。而 {@code Color.HSVToColor()} 给的是
 * <b>0xFFRRGGBB</b>（alpha=255），多出来的最高字节被 native 当什么用没人保证
 * ⇒ 按原厂口径砍掉。</p>
 *
 * <h3>★ 不放歌就不闪（用户明确要求）</h3>
 * <p>黑帧分两种，处理方式相反：
 * <br>· 没在播 / 暂停了 ⇒ 该灭就灭，{@code return false} 交回原厂；
 * <br>· <b>在播歌却连续 3 秒只见黑帧</b> ⇒ 判定「原厂总开关没拉起来」，
 *      自驱亮度顶上（否则用户看到的就是「开了七彩但灯不亮」）。
 * 不再有常驻定时器：不放歌 = 不写灯。</p>
 */
public final class Amb {

    /** 灯珠数（原厂 LedVisualizer 的 NUM_LEDS，硬件就是 15 颗）。 */
    private static final int N = 15;
    /** 全部灯珠的掩码（bit0..bit14）。 */
    private static final long ALL = 0x7FFFL;
    /**
     * ★ 顶部 24 颗拾音灯的掩码（bit15..bit38 = 灯号 16..39）。
     *
     * <p>就是小飞版那条 shell 里的 {@code 0x7FFFFF8000}（{@code lights_test set
     * 7fffff8000 ffffff}）。★ 小飞版的开灯 / 关灯<b>根本不走灯效服务</b>，是直接写
     * sysfs —— 我们照抄这条路：夜灯期间顶部也由 player 直写，不再 show 503。</p>
     */
    private static final long TOP = 0x7FFFFF8000L;
    /**
     * 两次「换色」之间的间隔（毫秒）—— 越小越跳。
     *
     * <p>★ pl-1.6.56：默认 100 → <b>600</b>。100ms 意味着一秒重排十次，15 颗灯
     * 每 0.1 秒全盘乱序一次，肉眼就是「闪得发慌」（用户原话「颜色变化太快」）。</p>
     *
     * <p>★ pl-1.6.57：这个间隔<b>只管换色</b>，不管亮度 —— 亮暗每帧跟着音乐走
     * （见 {@link #write}）。别再把它做成整帧节流。</p>
     */
    private static final int DEF_MIN_MS = 600;
    /** 换色间隔的可调范围（毫秒）：最快 60，最慢 6 秒一次。 */
    private static final int MIN_MS_LO = 60;
    private static final int MIN_MS_HI = 6000;
    /** 兜底自驱时用的亮度 / 饱和度（没有原厂频谱可跟的时候）。 */
    private static final float DEF_V = 0.55f;
    private static final float DEF_S = 0.95f;
    /** 在播歌却连续这么久只见黑帧 ⇒ 判定原厂总开关没开，自驱顶上。 */
    private static final long BLIND_MS = 3000L;
    /** 「在不在播」的查询节流（FFT 一秒十几次，别每次都去翻播放状态）。 */
    private static final long PLAY_Q_MS = 500L;

    /* ---- ★ pl-1.6.32：多彩配色「不出白」三道闸 ----
       HSV 里白 = 低 S + 高 V。原厂的基色是「色相推进 + lumaGain 缩放」，
       S 由它自己定（有些帧接近 0 ⇒ 白色）⇒ 直接沿用会出现「15 颗里混着几颗白」。 */
    /** 最低饱和度：低于它颜色就发灰发白。 */
    private static final float MIN_S = 0.90f;
    /** 最高亮度：V≈1 时黄/青会「过曝」成白，压一档保住色感。 */
    private static final float MAX_V = 0.88f;
    /** 复检阈值：算完 (max-min)/max 还低于这个百分比 ⇒ 按满饱和重算一次。 */
    private static final int MIN_SAT_PCT = 55;

    /* ★ pl-1.6.29：开关落 **SharedPreferences**（跟引擎开关 key r1_engine_mp 同一套）。
       以前是纯静态 ⇒ player 进程一重启（换引擎、崩溃自愈、整机上电）七彩就悄悄掉回关，
       而页面那颗按钮是按服务端回显上色的，看着像「开关自己跳了」。 */
    private static final String K_ON = "r1_amb7";
    private static final String K_MS = "r1_amb7_ms";
    /** 原厂氛围灯总开关的 key（PlayerVisualizer.loadParameters() 读的就是它）。 */
    private static final String K_FACTORY = "music_light_enable";
    private static boolean sLoaded = false;
    /** 原厂总开关只在需要时拉一次（拉通了就不必反复发消息）。 */
    private static boolean sFactoryTried = false;

    /** 灯效档位：原厂（不接管）。 */
    public static final int MODE_FACTORY = 0;
    /** 灯效档位：多彩（15 颗各一色，每次闪动乱序重排）。 */
    public static final int MODE_MULTI = 1;
    /** 灯效档位：单色（15 颗同一个颜色，亮度仍跟音乐）。 */
    public static final int MODE_SOLO = 2;
    private static final String K_SOLO = "r1_amb_solo";
    private static final String K_SOLO_H = "r1_amb_soloh";

    private static boolean sOn = false;
    /** 单色模式（{@link #MODE_SOLO}）—— 在 sOn 之下的子档位。 */
    private static boolean sSolo = false;
    /** 单色的色相：-1 = 跟着原厂基色走；0..359 = 用户固定的色相。 */
    private static float sSoloHue = -1f;
    private static int sMinMs = DEF_MIN_MS;
    private static long sLastShuffle = 0;
    /** 上一次洗牌后各灯位的色相（0..360）。 */
    private static final float[] sHue = new float[N];
    /** 自举：第一次进来先按 0..N-1 顺序铺一遍，避免开局全同色。 */
    private static boolean sInit = false;
    /** 自驱基准色相（原厂有输出时跟着它走，没有就沿用上一次）。 */
    private static float sAutoHue = 0f;

    /* ---- 诊断：以前只能靠肉眼猜「钩子到底跑没跑」，现在全记下来 ---- */
    private static long sHits = 0;      // 钩子被调用次数
    private static long sTook = 0;      // 其中被我们接管的次数
    private static long sBlind = 0;     // 兜底自驱写出的帧数（原厂送黑但确实在播）
    private static long sErr = 0;       // 异常次数
    private static long sLastFrameTs = 0;   // 最近一次原厂回调
    private static long sLastLiveTs = 0;    // 最近一次「有效（非黑）」回调
    private static int sLastBase = 0;       // 最近一次基色
    /** 最近一次「别人（原厂 / 七彩）写 A 组」的时间戳 —— 关夜灯时判有没有人接手。 */
    private static long sLastAmbTs = 0;
    private static boolean sPlayCache = false;
    private static long sPlayCacheTs = 0;

    private Amb() {
    }

    /**
     * smali 钩子入口（{@code LedLight.setColor} 开头）。
     *
     * <p>★★ 本方法里<b>只能调 {@code LedLight.set_color}</b>（native），
     * 不能调 {@code setColor} —— 后者被挂了钩子，回调它会无限递归 ⇒
     * StackOverflowError 把播放进程打挂。</p>
     *
     * @param base 原厂这一帧算出来的基色（已含 lumaGain 缩放；灭灯帧是 0）
     * @return true = 已接管，原厂这一次别再写
     */
    public static boolean takeover(int base) {
        /* ★ pl-1.6.58：「A 组最近被**别人**写过」的心跳 —— 无条件先记。
           钩子挂在 LedLight.setColor 上 ⇒ 原厂 PlayerVisualizer 每一帧写灯都会经过，
           我们自己的夜灯走的是 sysfs 直写、不会碰这里 ⇒ 这个时间戳正好用来判断
           「关夜灯之后到底有没有人接手」（见 {@link #scheduleOffBlack}）。 */
        sLastAmbTs = System.currentTimeMillis();
        /* ★★ pl-1.6.59：夜灯占着底部时，**直接拦掉**原厂这一次写灯（不写硬件）。
           以前的做法是「开夜灯就关掉原厂氛围灯」，而**关它这个动作本身**就会让
           PlayerVisualizer 清一次 A 组（写黑）—— 那就是切换时「黑一下」的真正来源
           （用户一语道破：「会不会停用原厂灯效就是会灭呢」，是的）。
           ⇒ 所以根本不关它：让它继续每帧算，我们在门口把它的写全部挡回去，
             硬件保持我们写的夜灯色 ⇒ 氛围灯 → 夜灯是**直接变色**，不经过黑。 */
        if (sNightAmb) {
            return true;
        }
        if (!sOn) {
            return false;
        }
        sHits++;
        long now = System.currentTimeMillis();
        sLastFrameTs = now;
        sLastBase = base;
        try {
            float[] hsv = new float[3];
            Color.colorToHSV(base & 0xFFFFFF, hsv);
            if (hsv[2] > 0.001f) {
                /* 有声：跟着原厂走（色相推进 + 音量亮度），只把 15 颗拆成彩虹 */
                sLastLiveTs = now;
                sAutoHue = hsv[0];
                float s = hsv[1] < 0.01f ? DEF_S : hsv[1];
                write(sAutoHue, s, hsv[2], now);
                sTook++;
                return true;
            }
            /* 原厂这一帧要灭灯。两种可能，处理相反：
               ① 真的该灭（没播歌 / 暂停了）⇒ 交回原厂；
               ② 在播歌却连续只见黑帧 ⇒ 原厂总开关是关的，自驱顶上。 */
            if (playingUi(now) && (now - sLastLiveTs) > BLIND_MS) {
                write(sAutoHue, DEF_S, DEF_V, now);
                sBlind++;
                sTook++;
                return true;
            }
            return false;
        } catch (Throwable t) {
            sErr++;
            return false;
        }
    }

    /** 「在不在播」—— 用页面同款判据（含暂停记账 + 直播流假阴性补判），带节流。 */
    private static boolean playingUi(long now) {
        if ((now - sPlayCacheTs) < PLAY_Q_MS) {
            return sPlayCache;
        }
        boolean p = false;
        try {
            p = PCtl.playingUi();
        } catch (Throwable t) {
            p = false;
        }
        sPlayCache = p;
        sPlayCacheTs = now;
        return p;
    }

    /**
     * 按当前色相基 + 亮度写下去：**换色**按 {@link #sMinMs} 走，**亮暗每帧都跟**。
     *
     * <p>★ pl-1.6.57：pl-1.6.56 把「写硬件」也一起节流了（不到换色点直接 return）
     * ⇒ 亮度 600ms 才更新一次，用户立刻反馈「不随音乐闪动了」。
     * 慢的只该是<b>换色</b>（色相重排），跟着音乐起伏的<b>明暗</b>必须每帧写，
     * 否则「多彩」就退化成「每 600ms 变一次的静态灯」。</p>
     */
    private static void write(float h0, float s, float v, long now) {
        /* ★ pl-1.6.59 单色档：15 颗**同一个颜色**。色相固定（用户没指定就跟着
           原厂基色走），但 v 照样用这一帧的音量 ⇒ 一整圈同色随音乐明暗。
           洗牌 / 换色间隔对它没意义（颜色本来就不换），所以整段直接走这里。 */
        if (sSolo) {
            float h = (sSoloHue >= 0f) ? sSoloHue : h0;
            int c = vivid(h, s, v);
            for (int i = 0; i < N; i++) {
                LedLight.set_color(1L << i, c);
            }
            return;
        }
        if (!sInit || (now - sLastShuffle) >= sMinMs) {
            List<Float> hs = new ArrayList<Float>(N);
            for (int i = 0; i < N; i++) {
                /* 在原厂色相基础上均匀铺满一整圈 —— 保证 15 颗颜色互不重样，
                   整体又跟着原厂的色相推进一起转 */
                float h = (h0 + i * (360.0f / N)) % 360.0f;
                hs.add(Float.valueOf(h));
            }
            Collections.shuffle(hs);            // ★ 每次闪动乱序一次
            for (int i = 0; i < N; i++) {
                sHue[i] = hs.get(i).floatValue();
            }
            sLastShuffle = now;
            sInit = true;
        }
        for (int i = 0; i < N; i++) {
            /* ★★ 多彩配色（不出白）+ 砍掉 alpha：原厂/小飞传下去的都是 0x00RRGGBB。
               ★ sHue 不变（没到换色点），但 v 用的是**这一帧**的音量 ⇒ 跟着音乐明暗。 */
            LedLight.set_color(1L << i, vivid(sHue[i], s, v));
        }
    }

    /**
     * ★★ 多彩配色：在原厂色相上叠一圈色环，但**绝不出白**。
     *
     * <p>卡三道：S 不低于 {@link #MIN_S}、V 不高于 {@link #MAX_V}，
     * 再按 RGB 实际彩度 {@code (max-min)/max} 复检一遍（理论上前两道就够了，
     * 这条是给「原厂哪天改成别的色彩空间」留的兜底）。</p>
     *
     * <p>★ 彩度用<b>比例</b>判而不是绝对值：音乐轻的时候 V 本来就小，
     * 用绝对值卡会把轻音乐段硬拉成「永远满亮」，跟着音乐明暗走这件事就没了。</p>
     */
    private static int vivid(float hue, float s, float v) {
        float ss = s < MIN_S ? MIN_S : (s > 1f ? 1f : s);
        float vv = v > MAX_V ? MAX_V : (v < 0f ? 0f : v);
        int c = Color.HSVToColor(new float[]{hue, ss, vv}) & 0xFFFFFF;
        int r = (c >> 16) & 0xFF;
        int g = (c >> 8) & 0xFF;
        int b = c & 0xFF;
        int mx = Math.max(r, Math.max(g, b));
        int mn = Math.min(r, Math.min(g, b));
        if (mx > 0 && (mx - mn) * 100 < MIN_SAT_PCT * mx) {
            c = Color.HSVToColor(new float[]{hue, 1f, MAX_V}) & 0xFFFFFF;
        }
        return c;
    }

    /** 首次访问时把 SP 里的开关读回来（进程重启后保持用户的选择）。 */
    private static void load() {
        if (sLoaded || Boot.app == null) {
            return;
        }
        try {
            sOn = SPHelper.getIntValue(Boot.app, K_ON, 0) != 0;
            sSolo = SPHelper.getIntValue(Boot.app, K_SOLO, 0) != 0;
            int sh = SPHelper.getIntValue(Boot.app, K_SOLO_H, -1);
            sSoloHue = (sh >= 0 && sh <= 359) ? (float) sh : -1f;
            int ms = SPHelper.getIntValue(Boot.app, K_MS, DEF_MIN_MS);
            if (ms >= MIN_MS_LO && ms <= MIN_MS_HI) {
                sMinMs = ms;
            }
        } catch (Throwable t) {
            // SP 拿不到就保持默认（关）
        }
        sLoaded = true;
        /* ★ 进程重启后开关是从 SP 读回来的（开着）⇒ 原厂总开关也要跟着拉一次，
           否则「页面显示开、灯却一动不动」。 */
        if (sOn && !sFactoryTried) {
            enableFactoryAmbient();
        }
    }

    /**
     * 由 {@link Boot#attach} 在主进程调一次：把 SP 里存着的开关状态接回来
     * （含原厂总开关），这样整机上电后不用等用户再点一次开关。
     */
    public static void boot() {
        try {
            load();
        } catch (Throwable t) {
            // ignore
        }
    }

    public static synchronized boolean isOn() {
        load();
        return sOn;
    }

    public static synchronized void setOn(boolean on) {
        load();
        sOn = on;
        /* ★ pl-1.6.59：op=amb7&v=on|multi 说的是「多彩」，是**明确档位**
           ⇒ 顺手把单色子档清掉（否则从单色切回多彩会残留 sSolo=true）。 */
        if (on) {
            sSolo = false;
        }
        saveMode();
        sInit = false;                 // 再开时重新铺一遍色相
        if (on) {
            enableFactoryAmbient();
        } else {
            /* ★ 关七彩时把原厂的单色去重缓存（LedLight.mColor）冲掉。
               七彩期间我们走的是 native set_color，碰不到那个缓存 ⇒ 它停在
               「最后一次写的那颗灯的颜色」。原厂下一帧拿基色来比，万一相等就被
               去重跳过（if-eq ⇒ 不写硬件）⇒ 灯冻住不跟着音乐变。
               这里退回**公开**的 setColor 写一次黑：它会顺带把 mColor 置 0，
               而黑只对黑才会被去重，正常帧不受影响。 */
            try {
                LedLight.setColor(ALL, 0);
            } catch (Throwable t) {
                // 灯写不动就算了，别把开关操作带崩
            }
        }
    }

    /**
     * 夜灯「让路」专用：停七彩但**不写黑**。
     *
     * <p>★ pl-1.6.58：{@link #setOn(boolean)} 关的时候会 {@code LedLight.setColor(ALL,0)}
     * 写一次黑（为了冲原厂的单色去重缓存）。但夜灯紧接着就要写自己的颜色 ⇒
     * 那一次黑正好卡在中间，用户看到的就是「从氛围灯切夜灯时底部先灭一下再亮」。
     * 让路场景下灯马上要被夜灯覆盖，缓存由 {@link #restoreAmbient} 那侧处理，
     * 这里**只停调度不写黑**。</p>
     */
    private static synchronized void setOnQuiet(boolean on) {
        load();
        sOn = on;
        /* ★ pl-1.6.59：**不写 SP**。让路是临时的，用户真正的档位（多彩 / 原厂）
           必须原样留在 SP 里 —— 写进去的话，夜灯开着时断电重启就会把档位
           变成「原厂」，关夜灯也接不回多彩（用户原话「关闭夜灯会恢复原厂氛围灯效
           而不是之前设置的灯效」）。 */
        sInit = false;                 // 再开时重新铺一遍色相
    }

    /** 当前灯效档位（{@link #MODE_FACTORY} / {@link #MODE_MULTI} / {@link #MODE_SOLO}）。 */
    public static synchronized int mode() {
        load();
        if (!sOn) {
            return MODE_FACTORY;
        }
        return sSolo ? MODE_SOLO : MODE_MULTI;
    }

    /**
     * pl-1.6.59：切灯效档位（原厂 / 多彩 / 单色）。
     *
     * <p>「单色」是应「氛围灯效再加个单色模式」加的第三档：15 颗灯写<b>同一个颜色</b>，
     * 但亮度仍用这一帧的音量 ⇒ 看起来是一整圈同色在随音乐明暗，不像多彩那样花。</p>
     */
    public static synchronized void setMode(int m) {
        load();
        sSolo = (m == MODE_SOLO);
        sOn = (m != MODE_FACTORY);
        saveMode();
        sInit = false;                 // 再开时重新铺一遍色相
        if (sOn) {
            enableFactoryAmbient();
        } else {
            /* 同 {@link #setOn(false)}：退回公开的 setColor 写一次黑，把原厂
               LedLight.mColor 的单色去重缓存冲掉。 */
            try {
                LedLight.setColor(ALL, 0);
            } catch (Throwable t) {
                // 灯写不动就算了
            }
        }
    }

    /**
     * 单色取色：传 RRGGBB —— <b>只取色相</b>，亮度留给每一帧的音量
     * （这样单色也是「跟着音乐明暗」的氛围灯，不是死气沉沉的常亮）。
     */
    public static synchronized void setSoloColor(int rgb) {
        load();
        try {
            float[] hsv = new float[3];
            Color.colorToHSV(0xFF000000 | (rgb & 0xFFFFFF), hsv);
            sSoloHue = hsv[0];
        } catch (Throwable t) {
            sSoloHue = -1f;
        }
        saveMode();
    }

    /** 单色回显（从没指定过就给个默认暖橙，跟夜灯默认色一致）。 */
    public static synchronized int soloColor() {
        load();
        if (sSoloHue < 0f) {
            return 0xFF8C1A;
        }
        return Color.HSVToColor(new float[]{sSoloHue, 1f, 1f}) & 0xFFFFFF;
    }

    private static void saveMode() {
        try {
            if (Boot.app != null) {
                SPHelper.setIntValue(Boot.app, K_ON, sOn ? 1 : 0);
                SPHelper.setIntValue(Boot.app, K_SOLO, sSolo ? 1 : 0);
                SPHelper.setIntValue(Boot.app, K_SOLO_H, (int) sSoloHue);
            }
        } catch (Throwable t) {
            // 存不下也不影响本次生效
        }
    }

    /**
     * ★★ 「灯不亮」的真修法：把原厂氛围灯总开关拨到开。
     *
     * <p>不是为了让它替我们闪 —— 而是它开着时 {@code PlayerVisualizer} 才会喂
     * <b>彩色基色</b>，我们才有「跟着音乐走」的色相 / 亮度可以沿用。
     * 三步都失败也无所谓（{@link #takeover} 里有兜底自驱）。</p>
     */
    private static synchronized void enableFactoryAmbient() {
        if (sFactoryTried) {
            return;
        }
        sFactoryTried = true;
        try {
            if (Boot.app == null) {
                return;
            }
            // ① 原厂 PlayerVisualizer.loadParameters() 读的就是这个 key
            SPHelper.setIntValue(Boot.app, K_FACTORY, 1);
            // ② 让 PlayerVisualizerHelper 单例存在（构造时会 registerMessageReceiver(4)），
            //    否则第 ③ 步的消息没人收
            Class<?> h = Class.forName(
                    "com.phicomm.speaker.player.helpers.PlayerVisualizerHelper");
            Method obtain = h.getMethod("obtain", Context.class);
            obtain.invoke(null, Boot.app);
            // ③ 走原厂总线上报「氛围灯开」：what=4, arg1=64, arg2=1
            Object mdm = Boot.app.getSystemService("msgcenter");
            if (mdm != null) {
                Method send = null;
                for (Method m : mdm.getClass().getMethods()) {
                    if ("sendMessage".equals(m.getName())
                            && m.getParameterTypes().length == 4) {
                        send = m;
                        break;
                    }
                }
                if (send != null) {
                    send.invoke(mdm, Integer.valueOf(4), Integer.valueOf(64),
                            Integer.valueOf(1), null);
                }
            }
        } catch (Throwable t) {
            try {
                Boot.log("amb7 拉原厂氛围灯失败（播歌时会自驱兜底）: " + t);
            } catch (Throwable t2) {
                // ignore
            }
        }
    }

    /** 换色间隔（毫秒），越小越跳。 */
    public static synchronized int minMs() {
        load();
        return sMinMs;
    }

    public static synchronized void setMinMs(int ms) {
        load();
        sMinMs = (ms < MIN_MS_LO) ? MIN_MS_LO : (ms > MIN_MS_HI ? MIN_MS_HI : ms);
        try {
            if (Boot.app != null) {
                SPHelper.setIntValue(Boot.app, K_MS, sMinMs);
            }
        } catch (Throwable t) {
            // 同上
        }
    }

    /**
     * 诊断串（{@code op=amb7&v=probe}）：钩子跑没跑、原厂喂的是彩色还是黑、
     * 兜底顶没顶 —— 以前只能靠「用户说灯不亮」来猜。
     */
    public static synchronized String probe() {
        load();
        long now = System.currentTimeMillis();
        int fac = -1;
        try {
            if (Boot.app != null) {
                fac = SPHelper.getIntValue(Boot.app, K_FACTORY, -1);
            }
        } catch (Throwable t) {
            // ignore
        }
        return "on=" + sOn
                + " ms=" + sMinMs
                + " | 钩子调用=" + sHits + " 接管=" + sTook + " 兜底=" + sBlind
                + " 异常=" + sErr
                + " | 上次回调=" + (sLastFrameTs == 0 ? "从未" : ((now - sLastFrameTs) + "ms前"))
                + " 上次有声=" + (sLastLiveTs == 0 ? "从未" : ((now - sLastLiveTs) + "ms前"))
                + " 基色=#" + Integer.toHexString(sLastBase & 0xFFFFFF)
                + " | 原厂总开关(music_light_enable)=" + fac;
    }

    // ------------------------------------------------------------------
    // pl-1.6.49：拾音灯「单颗直写」
    //
    // 背景（详见 R1/LIGHTS-灯组与灯效.md §6/§7）：
    //   · 拾音灯 = 灯号 16..39（24 颗，白），掩码 bit(N-1) = 灯号 N
    //     ⇒ 第 k 颗（k=1..24）= 1L << (14 + k)
    //   · device 走 0x1000 那套灯效服务，一次点亮 = 播 25 段 ×200ms ≈ 5 秒动画，
    //     所以「非唤醒的聆听点亮」不该走它 —— 只写最后定格的那颗就行。
    //   · device 是 u0_a8，被 SELinux 挡着写不了 /sys/class/leds/.../led_color
    //     （实测 Permission denied），player 是 system(1000) 能写 ⇒ 只能由 player 代写。
    // ------------------------------------------------------------------

    /** 当前用 native 点着的那颗（1..24），0 = 没点。 */
    private static int sPickIdx = 0;
    /** pl-1.6.50：最近一次写灯的错误（成功置 null），排障看 {@code op=led1&v=state}。 */
    private static String sPickErr = null;

    /** pl-1.6.50：LED 驱动的 sysfs 节点（写「掩码 + 颜色」，666）。 */
    private static final String LED_COLOR = "/sys/class/leds/multi_leds0/led_color";

    /**
     * 拾音灯单颗点亮 / 熄灭（不触发灯效服务动画）。
     *
     * <p>★ pl-1.6.50 改走 <b>sysfs 直写</b>。原因：以前只调 native
     * {@code LedLight.set_color(mask, color)}，而这条 native 链（libledLight-jni.so
     * → liblight.so）原厂只用它写 <b>A 组 15 颗</b>（掩码 bit0..14，多彩氛围灯实测可用），
     * 拾音灯用的是 bit15..38 —— 实测「device 记账写了、player 也回了 ok，
     * 但灯就是不亮」。改写成与 {@code /system/bin/lights_test} 完全同格式的字符串
     * （{@code "%llx %06x"}，目视验证过：{@code 8000 ffffff} 确实点亮顶部一颗）。</p>
     *
     * @param k  第几颗，1..24
     * @param on true=白，false=灭
     */
    public static synchronized String pick(int k, boolean on) {
        if (k < 1 || k > 24) {
            return "k 越界(1..24): " + k;
        }
        long mask = 1L << (14 + k);
        int color = on ? 0xFFFFFF : 0;
        sPickErr = null;
        /* ① 主路：直写 sysfs（唯一被目视验证过能点亮 B 组 24 颗的路） */
        String e1 = writeLedColor(mask, color);
        /* ② 备份：native 那一路照旧发一次。写的是同一颗、同一个颜色，
           就算它真的生效也只是重复写，不会造成额外现象。
           ★ 必须直调 native：Java 层 LedLight.setColor 有单色去重缓存 mColor。 */
        String e2 = null;
        try {
            LedLight.set_color(mask, color);
        } catch (Throwable t) {
            e2 = "" + t;
        }
        if (e1 != null) {
            sPickErr = "sysfs:" + e1 + (e2 != null ? (" native:" + e2) : "");
        } else if (e2 != null) {
            sPickErr = "native:" + e2;
        }
        sPickIdx = on ? k : 0;
        return "拾音灯第 " + k + " 颗" + (on ? "亮(白)" : "灭")
                + " mask=0x" + Long.toHexString(mask)
                + " sysfs=" + (e1 == null ? "ok" : ("FAIL " + e1));
    }

    /**
     * 按驱动格式写 {@code /sys/class/leds/multi_leds0/led_color}：
     * {@code "<掩码hex> <RRGGBB>"}（与 {@code /system/bin/lights_test} 一致）。
     *
     * @return null = 写成功；否则返回错误文本
     */
    private static String writeLedColor(long mask, int color) {
        try {
            java.io.FileOutputStream o =
                    new java.io.FileOutputStream(new java.io.File(LED_COLOR), false);
            try {
                o.write((Long.toHexString(mask) + " " + hex6(color) + "\n")
                        .getBytes("UTF-8"));
            } finally {
                o.close();
            }
            return null;
        } catch (Throwable t) {
            return "" + t;
        }
    }

    /** 补成 6 位小写十六进制（不用 String.format，免得踩 locale 的数字本地化）。 */
    private static String hex6(int c) {
        String s = Integer.toHexString(c & 0xFFFFFF);
        while (s.length() < 6) {
            s = "0" + s;
        }
        return s;
    }

    /** 灭掉当前 native 点着的那颗（没点就什么也不做）。 */
    public static synchronized String pickOff() {
        if (sPickIdx <= 0) {
            return "拾音灯单颗：本来就是灭的";
        }
        return pick(sPickIdx, false);
    }

    /** 状态回显（{@code op=led1&v=state}）。 */
    public static synchronized String pickState() {
        return (sPickIdx <= 0 ? "灭" : ("亮 第" + sPickIdx + "颗 mask=0x"
                + Long.toHexString(1L << (14 + sPickIdx))))
                + (sPickErr != null ? (" ⚠ " + sPickErr) : " sysfs=ok");
    }

    // ------------------------------------------------------------------
    // pl-1.6.51：夜灯 —— 底部氛围环（A 组 15 颗）常亮，颜色 / 亮度可调
    //
    // ★ 为什么这次夜灯能成、而 v1.3.206~209 的「单颗直写」成不了
    //   （详见 R1/LIGHTS-灯组与灯效.md §8.6）：
    //     夜灯期间**所有灯效全部停用** —— device 侧关门（唤醒灯 / 播报灯 / 聆听灯
    //     一律不发），player 侧把原厂氛围灯总开关拨到关、七彩自驱也停掉
    //     ⇒ 灯效服务没有任何 close ⇒ 不会再有那次「异步清灯」来抹我们的直写。
    //     当年「夜灯模式」做不成，缺的就是这一步。
    // ★ 顶 / 底必须分走两条路：灯效服务**同时只能跑一个效果** —— 实测
    //   `light 251 preempt light 503`（同 channel 0、同 priority 1，后到的抢占先前的）。
    //   ⇒ 顶部 24 颗交给灯效服务的 503（FORCE 常亮，本来就关不掉，正好当夜灯），
    //     底部 15 颗只能由 player 直写 A 组（掩码 bit0..14）。
    // ------------------------------------------------------------------

    /** 夜灯配置：颜色（SP key）。 */
    private static final String K_NIGHT_C = "r1_night_color";
    /** 夜灯配置：亮度（SP key）。 */
    private static final String K_NIGHT_L = "r1_night_luma";
    /**
     * 夜灯配置：「亮哪一组」（SP key）。
     *
     * <p>取值 0=只底部 / 1=只顶部 / 2=都亮（默认）。★ 这是<b>配置项不是开关</b>
     * —— 见 {@link #nightPower}。</p>
     */
    private static final String K_NIGHT_P = "r1_night_part";
    /** 「亮哪一组」：0=只底部 / 1=只顶部 / 2=都亮。 */
    private static final int PART_AMB = 0;
    private static final int PART_TOP = 1;
    private static final int PART_BOTH = 2;
    /**
     * ★ 亮度上限 <b>100</b>。
     *
     * <p>小飞版 web 上标的是 <code>亮度(1..200, 默认 100)</code>，但那是它自己的口径；
     * 实测原厂 {@code PlayerVisualizer.setLumaGain()} 只收 <b>0..100</b>，
     * 传 200 会静默 {@code return -1}（日志里根本没有那一行）。我们夜灯的亮度是自己
     * 缩放 RGB，不经过原厂，但**同口径取 0..100**，免得页面两套数字对不上。</p>
     */
    private static final int MAX_NIGHT_LUMA = 100;
    /** 默认颜色：暖橙（夜灯不要冷白刺眼）。 */
    private static final int DEF_NIGHT_COLOR = 0xFF8C1A;
    /** 默认亮度：30%（夜里当小夜灯用，不是照明）。 */
    private static final int DEF_NIGHT_LUMA = 30;

    private static boolean sNightLoaded = false;
    private static boolean sNightAmb = false;
    /** 顶部那圈（夜灯顶）现在亮着吗 —— device 通过 op=led1&v=top:... 告知。 */
    private static boolean sNightTop = false;
    /**
     * 守灯：夜灯开着时隔一会儿重写一次（别的进程偶尔会来写灯）。
     *
     * <p>★ pl-1.6.61：1.5s → <b>5s</b>。定位变了：它现在只是「保险」，不是主力。</p>
     *
     * <p>守灯真正防的<b>不是</b>原厂每帧写灯 —— 那个从 pl-1.6.59 起就被
     * {@link #takeover} 钩子拦死了；音乐律动 519 也从 pl-1.6.61 起在
     * {@code PlayerVisualizer.enable()} 门口拦掉。它防的只剩一条：
     * <b>灯效服务里关不掉的残留效果复活</b>（老 pid 的效果 close 时报
     * {@code can not close other process's lights}，它会挂在 pending 里，
     * 等别的效果一 close 就弹回 active 重写一次灯）—— 这是 v1.3.206~209
     * 实测过的现象，但触发条件未知。</p>
     *
     * <p>⇒ 5s 一次幂等重写（不闪）足够自愈，没必要 1.5s 那么密：
     * 每 1.5s 一次 sysfs 写 + 主线程任务，换来的只是「万一复活时少灭 3.5s」。</p>
     */
    private static long KEEP_MS = 5000L;
    private static android.os.Handler sKeepH = null;
    private static boolean sKeepPosted = false;
    private static int sNightColor = DEF_NIGHT_COLOR;
    private static int sNightLuma = DEF_NIGHT_LUMA;
    /** 「亮哪一组」（默认都亮）—— 只是配置，改动它不会点灯。 */
    private static int sNightPart = PART_BOTH;
    /** 最近一次夜灯写灯的错误（成功置 null）。 */
    private static String sNightErr = null;

    private static void loadNight() {
        if (sNightLoaded || Boot.app == null) {
            return;
        }
        sNightLoaded = true;
        try {
            sNightColor = SPHelper.getIntValue(Boot.app, K_NIGHT_C, DEF_NIGHT_COLOR);
            sNightLuma = SPHelper.getIntValue(Boot.app, K_NIGHT_L, DEF_NIGHT_LUMA);
            if (sNightLuma < 0 || sNightLuma > MAX_NIGHT_LUMA) {
                sNightLuma = DEF_NIGHT_LUMA;
            }
            sNightPart = SPHelper.getIntValue(Boot.app, K_NIGHT_P, PART_BOTH);
            if (sNightPart < PART_AMB || sNightPart > PART_BOTH) {
                sNightPart = PART_BOTH;
            }
        } catch (Throwable t) {
            // 读不到就用默认值
        }
    }

    private static void saveNight() {
        try {
            if (Boot.app != null) {
                SPHelper.setIntValue(Boot.app, K_NIGHT_C, sNightColor);
                SPHelper.setIntValue(Boot.app, K_NIGHT_L, sNightLuma);
                SPHelper.setIntValue(Boot.app, K_NIGHT_P, sNightPart);
            }
        } catch (Throwable t) {
            // 存不下也不影响本次生效
        }
    }

    /** 把颜色按亮度百分比缩放（0 = 全黑，100 = 原色）。 */
    private static int scaleLuma(int color, int luma) {
        int p = luma < 0 ? 0 : (luma > MAX_NIGHT_LUMA ? MAX_NIGHT_LUMA : luma);
        int r = ((color >> 16) & 0xFF) * p / MAX_NIGHT_LUMA;
        int g = ((color >> 8) & 0xFF) * p / MAX_NIGHT_LUMA;
        int b = (color & 0xFF) * p / MAX_NIGHT_LUMA;
        return (r << 16) | (g << 8) | b;
    }

    /**
     * 整组 A 组（15 颗氛围环）写同一个颜色 —— 夜灯 / device 代写都用它。
     *
     * @param color 0xRRGGBB（0 = 灭）
     */
    public static synchronized String all(int color) {
        String e = writeLedColor(ALL, color);
        sNightErr = (e == null) ? null : ("sysfs:" + e);
        return "A组15颗 #" + hex6(color) + (sNightErr == null ? " sysfs=ok" : (" ⚠ " + sNightErr));
    }

    /**
     * 顶部 24 颗拾音灯整组写同一个颜色 —— 夜灯的「顶」。
     *
     * <p>★ 走 sysfs 直写（小飞版 {@code lights_test} 那条路），<b>不经过灯效服务</b>：
     * 灯效服务的 503 一旦被别人抢占就挂 pending、等会儿自己复活（「关不掉」的根因），
     * 而直写是我们自己说了算。</p>
     */
    public static synchronized String top(int color) {
        String e = writeLedColor(TOP, color);
        sNightErr = (e == null) ? null : ("sysfs:" + e);
        return "顶部24颗 #" + hex6(color) + (sNightErr == null ? " sysfs=ok" : (" ⚠ " + e));
    }

    /** 夜灯的「顶」：开 = 全白，关 = 写黑。 */
    public static synchronized String nightTop(boolean on) {
        sNightTop = on;
        if (!on) {
            cancelFix();
        }
        String r = top(on ? 0xFFFFFF : 0);
        scheduleKeep();
        if (on) {
            scheduleFix();
        }
        return (on ? "夜灯顶：24 颗全白" : "夜灯顶：灭") + "（" + r + "）";
    }

    // ---------------- pl-1.6.55：写完再补三刀（防「亮一下就灭」） ----------------

    /**
     * 补偿重写的时间点（毫秒）。
     *
     * <p>★ 症状：开夜灯时底部**亮一下就灭**，要等 {@link #KEEP_MS} 守灯那一刀才回来。</p>
     *
     * <p>原因：夜灯开灯的动作会顺手把两拨「也会写 A 组」的人按停 ——
     * ① 我们的七彩自驱（{@code setOn(false)} → {@code LedLight.setColor(ALL,0)} 写黑）；
     * ② 原厂氛围灯（msgcenter what=4 arg1=64 arg2=0）。这两条都是**异步**到达的，
     * 到达时间在我们写完颜色<b>之后</b> ⇒ 它们那一次写黑把夜灯抹了。
     * 另外 device 清场用的 504（A 组 FORCE 灭）也是异步落地，同样可能晚一步。</p>
     *
     * <p>⇒ 凡直写必配补偿（跟 v1.3.206 那套 {@code FIX_DELAYS} 一个道理）：
     * 写完再按这些时间点幂等重写，把晚到的那次写黑压回去。</p>
     *
     * <p>★ pl-1.6.59：加密到六刀（60ms 起）。pl-1.6.58 把「关原厂氛围灯」那次
     * 异步写黑消掉之后，剩下的漏网之鱼只有灯效服务的收尾清灯，来得更没规律 ⇒
     * 前几刀压得很近，把黑窗压到人眼看不出来。</p>
     *
     * <p>★ pl-1.6.58：首刀 400ms → <b>80ms</b>，并补一刀 250ms。
     * 400ms 的黑窗肉眼看得清清楚楚（「先灭一下再亮」的那一瞬），80ms 基本看不见；
     * 后面两刀继续兜住原厂那种几百毫秒后才落地的异步清灯。</p>
     */
    private static final long[] FIX_DELAYS = {60L, 150L, 300L, 500L, 800L, 1200L};
    private static android.os.Handler sFixH = null;
    /**
     * ★ 三次补偿必须是 <b>3 个不同 Runnable</b> —— 同一个对象再 post 时
     * {@code removeCallbacks} 会把前几次一起撤掉，只剩最晚那一刀
     * （当年 R1Lights 踩过，见 v1.3.209）。
     */
    private static Runnable[] sFixTasks = null;

    /** 按当前夜灯状态幂等重写一遍（顶 + 底），并在 FIX_DELAYS 三个点各补一刀。 */
    private static synchronized void scheduleFix() {
        if (!(sNightTop || sNightAmb)) {
            return;
        }
        if (sFixH == null) {
            android.os.Looper lo = android.os.Looper.getMainLooper();
            if (lo == null) {
                return;
            }
            sFixH = new android.os.Handler(lo);
        }
        if (sFixTasks == null) {
            sFixTasks = new Runnable[FIX_DELAYS.length];
            for (int i = 0; i < FIX_DELAYS.length; i++) {
                sFixTasks[i] = new Runnable() {
                    public void run() {
                        try {
                            if (sNightTop) {
                                top(0xFFFFFF);
                            }
                            if (sNightAmb) {
                                all(scaleLuma(sNightColor, sNightLuma));
                            }
                        } catch (Throwable t) {
                            // ignore
                        }
                    }
                };
            }
        }
        for (int i = 0; i < FIX_DELAYS.length; i++) {
            sFixH.removeCallbacks(sFixTasks[i]);
            sFixH.postDelayed(sFixTasks[i], FIX_DELAYS[i]);
        }
    }

    /** 灭灯路径先撤掉补偿（否则刚关又被补亮）。 */
    private static synchronized void cancelFix() {
        if (sFixH == null || sFixTasks == null) {
            return;
        }
        for (int i = 0; i < sFixTasks.length; i++) {
            sFixH.removeCallbacks(sFixTasks[i]);
        }
    }

    /**
     * 守灯：夜灯开着时每 {@link #KEEP_MS} 重写一次。
     *
     * <p>为什么需要：灯效服务里可能残留着<b>别的进程</b>（甚至已经死掉的旧 pid）的效果，
     * 我们 close 不掉它（`can not close other process's lights`），它要是哪天补位复活
     * 就会把夜灯盖掉 ⇒ 定期重写把它压回去。写入是幂等的，不会闪。</p>
     */
    private static synchronized void scheduleKeep() {
        if (!(sNightTop || sNightAmb)) {
            sKeepPosted = false;
            if (sKeepH != null) {
                sKeepH.removeCallbacksAndMessages(null);
            }
            return;
        }
        if (sKeepH == null) {
            android.os.Looper lo = android.os.Looper.getMainLooper();
            if (lo == null) {
                return;
            }
            sKeepH = new android.os.Handler(lo);
        }
        if (sKeepPosted) {
            return;
        }
        sKeepPosted = true;
        sKeepH.postDelayed(new Runnable() {
            public void run() {
                sKeepPosted = false;
                try {
                    if (sNightTop) {
                        top(0xFFFFFF);
                    }
                    if (sNightAmb) {
                        all(scaleLuma(sNightColor, sNightLuma));
                    }
                } catch (Throwable t) {
                    // ignore
                }
                scheduleKeep();
            }
        }, KEEP_MS);
    }

    /**
     * ★ pl-1.6.61：音乐律动灯效（lightId 519）的「按停」。
     *
     * <p>根因（用户报「暂停和播放音乐的时候底部夜灯还是会闪一下」）：</p>
     * <ul>
     *   <li><b>播放</b>时原厂 {@code EasyPlayer.startPlayEffectLight()} →
     *       {@code PlayerVisualizerHelper.enable()} → {@code PlayerVisualizer.enable()}
     *       → {@code requestLightEffect(ctx, 519, true)} —— 519 由<b>灯效服务</b>
     *       跑动画、直接写 A 组，<b>不走 LedLight.setColor</b> ⇒ takeover 钩子拦不到，
     *       底部夜灯被律动盖住；</li>
     *   <li><b>暂停</b>时 {@code disable()} → close 519（灯效服务清它写的灯 ⇒ 底部黑一下）
     *       外加一句 {@code LedLight.setColor(0x7FFF, 0)}（A 组写黑）。</li>
     * </ul>
     *
     * <p>⇒ 夜灯占着底部（{@link #sNightAmb}）时，让这条路整体停摆：
     * 开灯时 disable 一次（close 519 是异步清灯，交给 {@link #scheduleFix} 六刀压），
     * 之后每次起播/切歌想再 enable 都被 {@code PlayerVisualizer.enable()} 门口的
     * 闸门挡掉（smali patch，见 {@code patch_player_visualizer.py}）。</p>
     */
    private static void stopMusicLight() {
        try {
            Boot.log("stopMusicLight: app=" + (Boot.app != null));
            PlayerVisualizerHelper helper =
                    PlayerVisualizerHelper.obtain(Boot.app);
            Boot.log("stopMusicLight: helper=" + (helper != null));
            if (helper != null) {
                helper.disable();
                Boot.log("stopMusicLight: disabled");
            }
        } catch (Throwable t) {
            Boot.log("stopMusicLight failed: " + t);
        }
    }

    /**
     * ★ pl-1.6.61：关夜灯后把音乐律动接回来（还在放歌的话）。
     *
     * <p>只调 {@code enable()}：它内部 show 519 + 重建 Visualizer。
     * 此时 {@link #sNightAmb} 已置 false ⇒ smali 闸门放行。</p>
     */
    private static void restoreMusicLight() {
        try {
            if (!playingUi(System.currentTimeMillis())) {
                return;             // 没在放歌就别开（Visualizer 空采也耗电）
            }
            PlayerVisualizerHelper helper =
                    PlayerVisualizerHelper.obtain(Boot.app);
            if (helper != null) {
                helper.enable();
            }
        } catch (Throwable t) {
            // ignore
        }
    }

    /**
     * ★ pl-1.6.61 排障：519（音乐律动）链路运行时状态（{@code op=led1&v=dbg519}）。
     *
     * <p>查「夜灯期间 519 到底拦没拦 / 为什么不起」：helper 单例的 mUserEnable /
     * mPlayingMusic、PV 的 mUserEnable / mVisualizerEnable，以及我们的闸门结论。</p>
     */
    public static synchronized String dbg519() {
        StringBuilder sb = new StringBuilder();
        sb.append("nightAmbOn=").append(nightAmbOn());
        try {
            Class<?> h = Class.forName(
                    "com.phicomm.speaker.player.helpers.PlayerVisualizerHelper");
            Object helper = h.getMethod("obtain", android.content.Context.class)
                    .invoke(null, Boot.app);
            if (helper == null) {
                sb.append(" | helper=null（单例还没建 ⇒ 519 从没开过）");
                return sb.toString();
            }
            java.lang.reflect.Field f1 = h.getDeclaredField("mUserEnable");
            java.lang.reflect.Field f2 = h.getDeclaredField("mPlayingMusic");
            f1.setAccessible(true);
            f2.setAccessible(true);
            sb.append(" | helper.mUserEnable=").append(f1.get(helper));
            sb.append(" mPlayingMusic=").append(f2.get(helper));
            java.lang.reflect.Field f3 = h.getDeclaredField("mPlayerVisualizer");
            f3.setAccessible(true);
            Object pv = f3.get(helper);
            if (pv != null) {
                Class<?> pc = pv.getClass();
                java.lang.reflect.Field g1 = pc.getDeclaredField("mUserEnable");
                java.lang.reflect.Field g2 = pc.getDeclaredField("mVisualizerEnable");
                g1.setAccessible(true);
                g2.setAccessible(true);
                sb.append(" | PV.mUserEnable=").append(g1.get(pv));
                sb.append(" PV.mVisualizerEnable=").append(g2.get(pv));
            } else {
                sb.append(" | PV=null");
            }        } catch (Throwable t) {
            sb.append(" | ⚠ ").append(t);
        }
        return sb.toString();
    }

    /**
     * 夜灯：底部氛围环常亮 / 熄灭。
     *
     * @param on true = 按当前颜色 + 亮度点亮 15 颗
     */
    public static synchronized String nightAmb(boolean on) {
        loadNight();
        /* ★ pl-1.6.61：音乐律动 519 停摆（理由见 stopMusicLight 的注释）。
           放在 all() 之前：close 519 触发的清灯是异步到达的，先发出去，
           让随后的补刀六刀去压，别让它落在我们写完颜色之后。 */
        if (on) {
            sNightAmb = true;
            stopMusicLight();
            /* ★ pl-1.6.58：**先上色、再让别人停**。顺序反过来的话，quietAmbient()
               那两拨（七彩自驱 / 原厂氛围灯）的「按停」写黑正好卡在「氛围灯灭」和
               「夜灯亮」之间 ⇒ 底部肉眼可见地黑一下（用户原话「先灭掉再亮起」）。 */
            all(scaleLuma(sNightColor, sNightLuma));
            quietAmbient();
            scheduleKeep();
            /* ★ pl-1.6.55：quietAmbient() 里那两条「按停」是异步到达的，
               它们各自会写一次黑 ⇒ 紧跟着补三刀把灯压回来。 */
            scheduleFix();
            return "夜灯氛围环：亮 #" + hex6(scaleLuma(sNightColor, sNightLuma))
                    + "（原色 #" + hex6(sNightColor) + " 亮度 " + sNightLuma + "%）"
                    + (sNightErr == null ? " sysfs=ok" : (" ⚠ " + sNightErr));
        }
        sNightAmb = false;
        cancelFix();               // ★ 先撤补偿，否则刚灭又被补亮
        /* ★ pl-1.6.58：**不再同步写黑**。以前是 all(0) → restoreAmbient()，
           那一刀黑正好卡在「夜灯灭」和「氛围灯接手」之间 —— 而原厂是异步接手的，
           中间能黑上小一秒 ⇒ 「夜灯切回氛围灯时底部先灭再亮」。
           现在先让接手者写起来；真没人接手才由 {@link #scheduleOffBlack} 兜底写黑。 */
        restoreAmbient();          // 把刚才为了让路而停掉的东西接回去
        /* ★ pl-1.6.61：还在放歌就把音乐律动接回来（用户要的「之前设置的灯效」）。
           放在 restoreAmbient() 之后：519 每帧写 A 组，正好当「接手者」。 */
        restoreMusicLight();
        scheduleOffBlack();        // 没人接手就过一会儿写黑
        scheduleKeep();            // 顶还亮着就继续守，都不亮就停
        return "夜灯氛围环：已交回氛围灯";
    }

    /** 关夜灯后多久再确认「有没有人接手」（毫秒）。 */
    private static final long OFF_BLACK_MS = 1200L;
    /** 判定「有人接手」的心跳窗口（毫秒）：比原厂一帧的间隔宽一点。 */
    private static final long AMB_LIVE_MS = 1500L;

    /**
     * 关夜灯后的兜底写黑 —— <b>只在没人接手时</b>才写。
     *
     * <p>夜灯灭了以后底部该是什么样，取决于谁接手：
     * ① 七彩自驱开着 ⇒ 它每帧写，不用我们管；
     * ② 原厂氛围灯开着且在放歌 ⇒ PlayerVisualizer 每帧写，也不用管；
     * ③ 都没人 ⇒ 底部会**留着夜灯的颜色不灭** ⇒ 这时候才要写黑。</p>
     *
     * <p>★ 判据是 {@link #sLastAmbTs}（{@code LedLight.setColor} 钩子里无条件记的
     * 时间戳）：窗口内有人写过 A 组就说明接上了，别多此一举写黑。</p>
     */
    private static void scheduleOffBlack() {
        try {
            android.os.Looper lo = android.os.Looper.getMainLooper();
            if (lo == null) {
                all(0);            // 连 Handler 都拿不到，直接写黑别留着灯
                return;
            }
            new android.os.Handler(lo).postDelayed(new Runnable() {
                public void run() {
                    try {
                        if (sNightAmb) {
                            return;                 // 这一秒里又开夜灯了
                        }
                        long now = System.currentTimeMillis();
                        if ((now - sLastAmbTs) < AMB_LIVE_MS) {
                            return;                 // 有人接手，别抢
                        }
                        all(0);
                    } catch (Throwable t) {
                        // ignore
                    }
                }
            }, OFF_BLACK_MS);
        } catch (Throwable t) {
            all(0);
        }
    }

    // ---------------- pl-1.6.54：总开关 vs 「亮哪一组」 ----------------

    /** 「亮哪一组」的取值归一（认不得的一律都亮）。 */
    private static int normPart(String s) {
        if (s == null) {
            return PART_BOTH;
        }
        s = s.trim();
        if ("top".equals(s)) {
            return PART_TOP;
        }
        if ("amb".equals(s)) {
            return PART_AMB;
        }
        return PART_BOTH;
    }

    private static boolean partTop() {
        return sNightPart == PART_BOTH || sNightPart == PART_TOP;
    }

    private static boolean partAmb() {
        return sNightPart == PART_BOTH || sNightPart == PART_AMB;
    }

    private static String partText() {
        if (sNightPart == PART_TOP) {
            return "只顶部拾音灯";
        }
        if (sNightPart == PART_AMB) {
            return "只底部氛围灯";
        }
        return "顶部拾音灯 + 底部氛围灯";
    }

    /**
     * ★ 夜灯<b>总开关</b> —— 全站只有它是开关。
     *
     * <p>「亮哪一组」（{@link #nightPart}）只是配置：开灯时按它决定亮哪几组，
     * 关着的时候改它<b>不会</b>点灯。以前页面点「只顶部 / 只底部」会顺手把灯打开
     * ⇒ 等于藏了第二个开关，回显跟着乱跳（用户原话「逻辑还是混乱的」）。</p>
     */
    public static synchronized String nightPower(boolean on) {
        loadNight();
        if (!on) {
            return "夜灯关（" + nightTop(false) + "；" + nightAmb(false) + "）";
        }
        StringBuilder sb = new StringBuilder("夜灯开（" + partText() + "）：");
        if (partTop()) {
            sb.append(nightTop(true)).append("；");
        }
        if (partAmb()) {
            sb.append(nightAmb(true));
        }
        return sb.toString();
    }

    /**
     * 夜灯「亮哪一组」：{@code both|top|amb} —— 只改配置。
     *
     * <p>已经亮着就按新选择立刻重排（该灭的那组要写黑）；关着就只记下来，不点灯。</p>
     */
    public static synchronized String nightPart(String p) {
        loadNight();
        sNightPart = normPart(p);
        saveNight();
        String sel = partText();
        if (!(sNightTop || sNightAmb)) {
            return "已记下：夜灯亮「" + sel + "」（当前关着，没点灯）";
        }
        StringBuilder sb = new StringBuilder("夜灯改亮「" + sel + "」：");
        if (partTop()) {
            sb.append(nightTop(true)).append("；");
        } else {
            sb.append(nightTop(false)).append("；");
        }
        if (partAmb()) {
            sb.append(nightAmb(true));
        } else {
            sb.append(nightAmb(false));
        }
        return sb.toString();
    }

    /** 夜灯让路前，七彩自驱 / 原厂氛围灯关的状态（关夜灯时照原样接回）。 */
    private static boolean sQuietAmbOn = false;
    private static int sQuietFactory = -1;
    /**
     * ★ pl-1.6.60：让路前记下的**灯效档位**（{@link #MODE_FACTORY} / {@link #MODE_MULTI}
     * / {@link #MODE_SOLO}），-1 = 没记过。关夜灯时按它接回。
     *
     * <p>以前只记 {@code sQuietAmbOn}（等价于「是不是非原厂」），恢复时走
     * {@code setOn(true)} ⇒ 单色子档被清成 false ⇒ 原本设的是**单色**的，
     * 关夜灯后一律变成多彩（用户原话「切回氛围灯模式是固定多彩模式，
     * 也不是之前设置的灯效」）。</p>
     */
    private static int sQuietMode = -1;

    /**
     * 夜灯开：按住另外两拨会写 A 组的人 —— ① 我们的七彩自驱（{@link #takeover}
     * 每帧写）；② 原厂氛围灯（放歌时 PlayerVisualizer 按频谱写）。
     *
     * <p>不停掉的话，夜灯的颜色随时被它们盖掉 —— 表现就是「调颜色没反应」。</p>
     */
    private static synchronized void quietAmbient() {
        /* ★★ pl-1.6.59：「原本是不是多彩」这个记忆**只能单调累加**，不能被覆盖。
           开一次夜灯会走两趟 nightAmb(true)（player 自己一趟 + device 的 ambon
           回头又一趟）⇒ 第二趟的 isOn() 已经是 false ⇒ 把「原本开着」记成 false
           ⇒ 关夜灯时 setOn(true) 不执行，七彩接不回来，只剩原厂在跑
           （用户原话「关闭夜灯会恢复原厂氛围灯效而不是之前设置的灯效」）。 */
        if (isOn()) {
            sQuietAmbOn = true;
        }
        /* ★ pl-1.6.60：档位也要记，而且**同样只能单调累加**（同上，会走两趟）。
           只记「非原厂」的档位 —— 原本就是原厂档的话，关夜灯什么都不用接。 */
        int m = mode();
        if (m != MODE_FACTORY) {
            sQuietMode = m;
        }
        if (sOn) {
            /* ★ pl-1.6.58：让路用「软停」—— 只停调度，不写黑（否则底部先灭再亮） */
            setOnQuiet(false);     // 停七彩自驱（不动 SP，关夜灯时按记忆接回）
        }
        /* ★★ pl-1.6.59：**不再** sendFactoryAmbient(false)。
           关原厂氛围灯 ⇒ PlayerVisualizer 立刻清一次 A 组（写黑）⇒ 就是切换时
           那一下黑；而且它是异步的，补刀再密也只能缩短、消不掉。
           改成让原厂照常跑，由 {@link #takeover} 在门口把它的写挡回去 ——
           硬件一次黑都不用经过。 */
    }

    /**
     * 夜灯关：把刚才为了让路而停掉的东西按原样接回去。
     *
     * <p>★ pl-1.6.56：改成<b>无条件</b>恢复。以前要 {@code sQuietFactory == 1} 才发，
     * 而那个值是开夜灯瞬间从 SP 读的 —— 只要那次读到的是 -1 / 0（比如氛围灯从来
     * 没被显式开过、或进程重启后 SP 还没落），关夜灯就不恢复 ⇒ 灯一直黑着，
     * 用户只能到页面把氛围灯「关一下再开」（原话「重新点关闭再开启才亮」）。</p>
     *
     * <p>★ 还要<b>延后补发</b>一次：关夜灯这一趟是两条并行链 —— player 先恢复氛围灯，
     * device 后清场写黑 ⇒ 恢复被随后的写黑盖掉。</p>
     */
    private static synchronized void restoreAmbient() {
        try {
            if (Boot.app != null) {
                /* ★ pl-1.6.59：**不再无条件**把原厂氛围灯拨到开。
                   夜灯期间原厂根本没被关过（pl-1.6.59 起是 takeover 拦它的写，
                   不是关它），这里再开一次纯属多余 —— 而且它会在「用户原本设的是
                   多彩 / 单色」时把多出来的一次原厂开关混进来。
                   只保留延后补发（device 清场的写黑可能比这条晚到）。 */
                scheduleAmbRestore();
            }
        } catch (Throwable t) {
            // ignore
        }
        sQuietFactory = -1;
        /* ★ pl-1.6.60：按记忆的**档位**接回（多彩 or 单色），而不是一律 setOn(true)
           —— setOn(true) 会把单色子档清掉 ⇒ 原本单色的被改成多彩。 */
        if (sQuietMode == MODE_MULTI || sQuietMode == MODE_SOLO) {
            restoreModeQuiet(sQuietMode);
        }
        sQuietMode = -1;
        sQuietAmbOn = false;
    }

    /**
     * 夜灯让路结束：按记忆的档位接回（★ 不写黑、也不把单色冲成多彩）。
     *
     * <p>跟 {@link #setOn(boolean)} 的区别：{@code setOn(true)} 是为
     * {@code op=amb7&v=on|multi} 这种「明确选多彩」准备的，会清 {@code sSolo}；
     * 这里是**恢复**场景，必须原样接回去。</p>
     */
    private static synchronized void restoreModeQuiet(int m) {
        load();
        sSolo = (m == MODE_SOLO);
        sOn = true;
        saveMode();
        sInit = false;                 // 再开时重新铺一遍色相
        enableFactoryAmbient();
    }

    /**
     * pl-1.6.56：延后补发一次「原厂氛围灯开」。
     *
     * <p>关夜灯时 device 的清场写黑比 player 的恢复慢半拍 ⇒ 补一刀压住。
     * ★ 若这一秒里用户又把夜灯打开了，这刀就不发（否则跟夜灯抢 A 组）。</p>
     */
    private static void scheduleAmbRestore() {
        try {
            android.os.Looper lo = android.os.Looper.getMainLooper();
            if (lo == null) {
                return;
            }
            new android.os.Handler(lo).postDelayed(new Runnable() {
                public void run() {
                    try {
                        if (!sNightAmb && Boot.app != null) {
                            SPHelper.setIntValue(Boot.app, K_FACTORY, 1);
                            sendFactoryAmbient(true);
                        }
                    } catch (Throwable t) {
                        // ignore
                    }
                }
            }, 1000L);
        } catch (Throwable t) {
            // ignore
        }
    }

    /** 走原厂总线 what=4 arg1=64：arg2=1 开氛围灯 / 0 关。 */
    private static void sendFactoryAmbient(boolean on) {
        try {
            Object mdm = Boot.app.getSystemService("msgcenter");
            if (mdm == null) {
                return;
            }
            Method send = null;
            for (Method m : mdm.getClass().getMethods()) {
                if ("sendMessage".equals(m.getName())
                        && m.getParameterTypes().length == 4) {
                    send = m;
                    break;
                }
            }
            if (send != null) {
                send.invoke(mdm, Integer.valueOf(4), Integer.valueOf(64),
                        Integer.valueOf(on ? 1 : 0), null);
            }
        } catch (Throwable t) {
            try {
                Boot.log("夜灯 关原厂氛围灯失败: " + t);
            } catch (Throwable t2) {
                // ignore
            }
        }
    }

    /** 夜灯改色（立即生效，灭着就只存下来）。 */
    public static synchronized String nightColor(int color) {
        loadNight();
        sNightColor = color & 0xFFFFFF;
        saveNight();
        if (!sNightAmb) {
            return "夜灯颜色已存 #" + hex6(sNightColor) + "（当前夜灯灭着，下次开生效）";
        }
        all(scaleLuma(sNightColor, sNightLuma));
        scheduleFix();             // ★ 改色也补刀
        return "夜灯颜色 #" + hex6(sNightColor) + " 亮度 " + sNightLuma + "%"
                + (sNightErr == null ? " sysfs=ok" : (" ⚠ " + sNightErr));
    }

    /** 夜灯调亮度（0..100，立即生效）。 */
    public static synchronized String nightLuma(int luma) {
        loadNight();
        sNightLuma = luma < 0 ? 0 : (luma > MAX_NIGHT_LUMA ? MAX_NIGHT_LUMA : luma);
        saveNight();
        if (!sNightAmb) {
            return "夜灯亮度已存 " + sNightLuma + "%（上限 " + MAX_NIGHT_LUMA + "）";
        }
        all(scaleLuma(sNightColor, sNightLuma));
        scheduleFix();             // ★ 调亮度也补刀
        return "夜灯亮度 " + sNightLuma + "% → #" + hex6(scaleLuma(sNightColor, sNightLuma))
                + (sNightErr == null ? " sysfs=ok" : (" ⚠ " + sNightErr));
    }

    /** 状态回显（{@code op=night&v=state}）。 */
    public static synchronized String nightState() {
        loadNight();
        return "夜灯" + ((sNightTop || sNightAmb) ? "开" : "关")
                + " 顶(24颗)=" + (sNightTop ? "亮" : "灭")
                + " 氛围环=" + (sNightAmb ? ("亮 #" + hex6(scaleLuma(sNightColor, sNightLuma)))
                : "灭")
                + " 亮哪一组=" + partText()
                + " 颜色=#" + hex6(sNightColor) + " 亮度=" + sNightLuma + "%(0.."
                + MAX_NIGHT_LUMA + ")"
                + (sNightErr != null ? (" ⚠ " + sNightErr) : "");
    }

    /** 夜灯开着吗（供 device / 页面判断）。 */
    public static synchronized boolean nightAmbOn() {
        loadNight();
        return sNightAmb;
    }

    /** 夜灯配置（页面回填用）。 */
    public static synchronized int[] nightCfg() {
        loadNight();
        return new int[]{sNightAmb ? 1 : 0, sNightColor, sNightLuma, sNightPart};
    }
}
