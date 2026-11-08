.class public final Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
.implements Lcom/google/android/exoplayer2/upstream/TransferListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
    }
.end annotation


# static fields
.field private static final BYTES_TRANSFERRED_FOR_ESTIMATE:I = 0x80000

.field private static final COUNTRY_GROUP_INDEX_2G:I = 0x1

.field private static final COUNTRY_GROUP_INDEX_3G:I = 0x2

.field private static final COUNTRY_GROUP_INDEX_4G:I = 0x3

.field private static final COUNTRY_GROUP_INDEX_5G_NSA:I = 0x4

.field private static final COUNTRY_GROUP_INDEX_5G_SA:I = 0x5

.field private static final COUNTRY_GROUP_INDEX_WIFI:I = 0x0

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATE:J = 0xf4240L

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_2G:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_3G:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_4G:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SLIDING_WINDOW_MAX_WEIGHT:I = 0x7d0

.field private static final ELAPSED_MILLIS_FOR_ESTIMATE:I = 0x7d0

.field private static singletonInstance:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;


# instance fields
.field private bitrateEstimate:J

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final eventDispatcher:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

.field private final initialBitrateEstimates:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastReportedBitrateEstimate:J

.field private networkType:I

.field private networkTypeOverride:I

.field private networkTypeOverrideSet:Z

.field private final resetOnNetworkTypeChange:Z

.field private sampleBytesTransferred:J

.field private sampleStartTimeMs:J

.field private final slidingPercentile:Lcom/google/android/exoplayer2/upstream/SlidingPercentile;

.field private streamCount:I

.field private totalBytesTransferred:J

.field private totalElapsedTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const-wide/32 v0, 0x493e00

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/32 v1, 0x2f4d60

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/32 v2, 0x200b20

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v3, 0x16e360

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v4, 0xc3500

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:Lcom/google/common/collect/ImmutableList;

    const-wide/32 v0, 0xf4240

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/32 v1, 0xb2390

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/32 v4, 0x6b6c0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v4, 0x29810

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v0, v1, v2, v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_2G:Lcom/google/common/collect/ImmutableList;

    const-wide/32 v1, 0x2191c0

    .line 53
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/32 v2, 0x155cc0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v3, 0x10c8e0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v4, 0xde2b0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/32 v5, 0x975e0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_3G:Lcom/google/common/collect/ImmutableList;

    const-wide/32 v4, 0x2dc6c0

    .line 57
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/32 v4, 0x1cfde0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/32 v5, 0xa1220

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v4, v2, v0, v5}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_4G:Lcom/google/common/collect/ImmutableList;

    const-wide/32 v1, 0x5b8d80

    .line 61
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/32 v4, 0x3e8fa0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v4, 0x30d400

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/32 v5, 0x1b7740

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v2, v4, v5, v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA:Lcom/google/common/collect/ImmutableList;

    const-wide/32 v0, 0x2ab980

    .line 65
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/32 v1, 0x249f00

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/32 v4, 0x186a00

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v4, 0xe7ef0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public constructor <init>()V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 295
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    sget-object v4, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    const/4 v1, 0x0

    const/16 v3, 0x7d0

    const/4 v5, 0x0

    move-object v0, p0

    .line 293
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>(Landroid/content/Context;Ljava/util/Map;ILcom/google/android/exoplayer2/util/Clock;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/Map;ILcom/google/android/exoplayer2/util/Clock;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;I",
            "Lcom/google/android/exoplayer2/util/Clock;",
            "Z)V"
        }
    .end annotation

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    invoke-static {p2}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->initialBitrateEstimates:Lcom/google/common/collect/ImmutableMap;

    .line 308
    new-instance p2, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->eventDispatcher:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

    .line 309
    new-instance p2, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;

    invoke-direct {p2, p3}, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->slidingPercentile:Lcom/google/android/exoplayer2/upstream/SlidingPercentile;

    .line 310
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 311
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->resetOnNetworkTypeChange:Z

    if-eqz p1, :cond_36

    .line 313
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->getInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    move-result-object p1

    .line 314
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->getNetworkType()I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->networkType:I

    .line 315
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->getInitialBitrateEstimateForNetworkType(I)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    .line 316
    new-instance p2, Lcom/google/android/exoplayer2/upstream/-$$Lambda$DefaultBandwidthMeter$eqWqOhNKhDkkOV8bzYk0-t7LZxc;

    invoke-direct {p2, p0}, Lcom/google/android/exoplayer2/upstream/-$$Lambda$DefaultBandwidthMeter$eqWqOhNKhDkkOV8bzYk0-t7LZxc;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)V

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->register(Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Listener;)V

    goto :goto_3f

    :cond_36
    const/4 p1, 0x0

    .line 318
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->networkType:I

    .line 319
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->getInitialBitrateEstimateForNetworkType(I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    :goto_3f
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/util/Map;ILcom/google/android/exoplayer2/util/Clock;ZLcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$1;)V
    .registers 7

    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>(Landroid/content/Context;Ljava/util/Map;ILcom/google/android/exoplayer2/util/Clock;Z)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)[I
    .registers 1

    .line 41
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->getInitialBitrateCountryGroupAssignment(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method private static getInitialBitrateCountryGroupAssignment(Ljava/lang/String;)[I
    .registers 4

    .line 473
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x82b

    const/4 v2, 0x6

    if-eq v0, v1, :cond_b3e

    const/16 v1, 0x82c

    if-eq v0, v1, :cond_b34

    const/16 v1, 0x836

    if-eq v0, v1, :cond_b29

    const/16 v1, 0x837

    if-eq v0, v1, :cond_b1e

    const/16 v1, 0x83f

    if-eq v0, v1, :cond_b13

    const/16 v1, 0x840

    if-eq v0, v1, :cond_b08

    const/16 v1, 0x851

    if-eq v0, v1, :cond_afd

    const/16 v1, 0x852

    if-eq v0, v1, :cond_af2

    const/16 v1, 0x857

    if-eq v0, v1, :cond_ae7

    const/16 v1, 0x858

    if-eq v0, v1, :cond_adb

    packed-switch v0, :pswitch_data_ede

    sparse-switch v0, :sswitch_data_eea

    packed-switch v0, :pswitch_data_1234

    packed-switch v0, :pswitch_data_1242

    packed-switch v0, :pswitch_data_124e

    goto/16 :goto_b49

    :pswitch_3e
    const-string v0, "CI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x52

    goto/16 :goto_b4a

    :pswitch_4a
    const-string v0, "CH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x17

    goto/16 :goto_b4a

    :pswitch_56
    const-string v0, "CG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x33

    goto/16 :goto_b4a

    :pswitch_62
    const-string v0, "CF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x46

    goto/16 :goto_b4a

    :pswitch_6e
    const-string v0, "BO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xf

    goto/16 :goto_b4a

    :pswitch_7a
    const-string v0, "BN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x1d

    goto/16 :goto_b4a

    :pswitch_86
    const-string v0, "BM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xc8

    goto/16 :goto_b4a

    :pswitch_92
    const-string v0, "BL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xc4

    goto/16 :goto_b4a

    :pswitch_9e
    const-string v0, "AU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/4 p0, 0x7

    goto/16 :goto_b4a

    :pswitch_a9
    const-string v0, "AT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/4 p0, 0x6

    goto/16 :goto_b4a

    :pswitch_b4
    const-string v0, "AS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/4 p0, 0x5

    goto/16 :goto_b4a

    :pswitch_bf
    const-string v0, "AR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xbf

    goto/16 :goto_b4a

    :pswitch_cb
    const-string v0, "AQ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x88

    goto/16 :goto_b4a

    :sswitch_d7
    const-string v0, "ZW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xec

    goto/16 :goto_b4a

    :sswitch_e3
    const-string v0, "ZM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xea

    goto/16 :goto_b4a

    :sswitch_ef
    const-string v0, "ZA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xe9

    goto/16 :goto_b4a

    :sswitch_fb
    const-string v0, "YT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xe8

    goto/16 :goto_b4a

    :sswitch_107
    const-string v0, "YE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xe6

    goto/16 :goto_b4a

    :sswitch_113
    const-string v0, "XK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xdd

    goto/16 :goto_b4a

    :sswitch_11f
    const-string v0, "WS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xdb

    goto/16 :goto_b4a

    :sswitch_12b
    const-string v0, "WF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xda

    goto/16 :goto_b4a

    :sswitch_137
    const-string v0, "VU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xd6

    goto/16 :goto_b4a

    :sswitch_143
    const-string v0, "VN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xd3

    goto/16 :goto_b4a

    :sswitch_14f
    const-string v0, "VI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xd2

    goto/16 :goto_b4a

    :sswitch_15b
    const-string v0, "VG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xd0

    goto/16 :goto_b4a

    :sswitch_167
    const-string v0, "VE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xe5

    goto/16 :goto_b4a

    :sswitch_173
    const-string v0, "VC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xcf

    goto/16 :goto_b4a

    :sswitch_17f
    const-string v0, "VA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xc6

    goto/16 :goto_b4a

    :sswitch_18b
    const-string v0, "UZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xc3

    goto/16 :goto_b4a

    :sswitch_197
    const-string v0, "UY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xc2

    goto/16 :goto_b4a

    :sswitch_1a3
    const-string v0, "US"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xbe

    goto/16 :goto_b4a

    :sswitch_1af
    const-string v0, "UG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xbd

    goto/16 :goto_b4a

    :sswitch_1bb
    const-string v0, "UA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xbb

    goto/16 :goto_b4a

    :sswitch_1c7
    const-string v0, "TZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xb9

    goto/16 :goto_b4a

    :sswitch_1d3
    const-string v0, "TW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xb8

    goto/16 :goto_b4a

    :sswitch_1df
    const-string v0, "TV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xd9

    goto/16 :goto_b4a

    :sswitch_1eb
    const-string v0, "TT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xb2

    goto/16 :goto_b4a

    :sswitch_1f7
    const-string v0, "TR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xb1

    goto/16 :goto_b4a

    :sswitch_203
    const-string v0, "TO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xb0

    goto/16 :goto_b4a

    :sswitch_20f
    const-string v0, "TN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xc1

    goto/16 :goto_b4a

    :sswitch_21b
    const-string v0, "TM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xaa

    goto/16 :goto_b4a

    :sswitch_227
    const-string v0, "TL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xa8

    goto/16 :goto_b4a

    :sswitch_233
    const-string v0, "TK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xa3

    goto/16 :goto_b4a

    :sswitch_23f
    const-string v0, "TJ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xa7

    goto/16 :goto_b4a

    :sswitch_24b
    const-string v0, "TH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xa2

    goto/16 :goto_b4a

    :sswitch_257
    const-string v0, "TG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xa1

    goto/16 :goto_b4a

    :sswitch_263
    const-string v0, "TD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xe4

    goto/16 :goto_b4a

    :sswitch_26f
    const-string v0, "TC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x9f

    goto/16 :goto_b4a

    :sswitch_27b
    const-string v0, "SZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x9d

    goto/16 :goto_b4a

    :sswitch_287
    const-string v0, "SY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xa6

    goto/16 :goto_b4a

    :sswitch_293
    const-string v0, "SX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x9e

    goto/16 :goto_b4a

    :sswitch_29f
    const-string v0, "SV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x9c

    goto/16 :goto_b4a

    :sswitch_2ab
    const-string v0, "ST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x99

    goto/16 :goto_b4a

    :sswitch_2b7
    const-string v0, "SS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x98

    goto/16 :goto_b4a

    :sswitch_2c3
    const-string v0, "SR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x97

    goto/16 :goto_b4a

    :sswitch_2cf
    const-string v0, "SO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xaf

    goto/16 :goto_b4a

    :sswitch_2db
    const-string v0, "SN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x96

    goto/16 :goto_b4a

    :sswitch_2e7
    const-string v0, "SM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x95

    goto/16 :goto_b4a

    :sswitch_2f3
    const-string v0, "SL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xbc

    goto/16 :goto_b4a

    :sswitch_2ff
    const-string v0, "SK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x90

    goto/16 :goto_b4a

    :sswitch_30b
    const-string v0, "SI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x8d

    goto/16 :goto_b4a

    :sswitch_317
    const-string v0, "SH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x8a

    goto/16 :goto_b4a

    :sswitch_323
    const-string v0, "SG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x87

    goto/16 :goto_b4a

    :sswitch_32f
    const-string v0, "SE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xb7

    goto/16 :goto_b4a

    :sswitch_33b
    const-string v0, "SD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xe3

    goto/16 :goto_b4a

    :sswitch_347
    const-string v0, "SC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xa9

    goto/16 :goto_b4a

    :sswitch_353
    const-string v0, "SB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x86

    goto/16 :goto_b4a

    :sswitch_35f
    const-string v0, "SA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x85

    goto/16 :goto_b4a

    :sswitch_36b
    const-string v0, "RW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x84

    goto/16 :goto_b4a

    :sswitch_377
    const-string v0, "RU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x83

    goto/16 :goto_b4a

    :sswitch_383
    const-string v0, "RS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x82

    goto/16 :goto_b4a

    :sswitch_38f
    const-string v0, "RO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x80

    goto/16 :goto_b4a

    :sswitch_39b
    const-string v0, "RE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x7f

    goto/16 :goto_b4a

    :sswitch_3a7
    const-string v0, "QA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x7d

    goto/16 :goto_b4a

    :sswitch_3b3
    const-string v0, "PW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x7c

    goto/16 :goto_b4a

    :sswitch_3bf
    const-string v0, "PT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xb6

    goto/16 :goto_b4a

    :sswitch_3cb
    const-string v0, "PS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x7b

    goto/16 :goto_b4a

    :sswitch_3d7
    const-string v0, "PR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x7a

    goto/16 :goto_b4a

    :sswitch_3e3
    const-string v0, "PM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x94

    goto/16 :goto_b4a

    :sswitch_3ef
    const-string v0, "PL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x79

    goto/16 :goto_b4a

    :sswitch_3fb
    const-string v0, "PK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xae

    goto/16 :goto_b4a

    :sswitch_407
    const-string v0, "PH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x77

    goto/16 :goto_b4a

    :sswitch_413
    const-string v0, "PG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x76

    goto/16 :goto_b4a

    :sswitch_41f
    const-string v0, "PF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x74

    goto/16 :goto_b4a

    :sswitch_42b
    const-string v0, "PE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x72

    goto/16 :goto_b4a

    :sswitch_437
    const-string v0, "PA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x9b

    goto/16 :goto_b4a

    :sswitch_443
    const-string v0, "OM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x70

    goto/16 :goto_b4a

    :sswitch_44f
    const-string v0, "NZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x78

    goto/16 :goto_b4a

    :sswitch_45b
    const-string v0, "NU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x6f

    goto/16 :goto_b4a

    :sswitch_467
    const-string v0, "NR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x6e

    goto/16 :goto_b4a

    :sswitch_473
    const-string v0, "NP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x6d

    goto/16 :goto_b4a

    :sswitch_47f
    const-string v0, "NO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x6c

    goto/16 :goto_b4a

    :sswitch_48b
    const-string v0, "NL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x6a

    goto/16 :goto_b4a

    :sswitch_497
    const-string v0, "NI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x9a

    goto/16 :goto_b4a

    :sswitch_4a3
    const-string v0, "NG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x69

    goto/16 :goto_b4a

    :sswitch_4af
    const-string v0, "NE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xe2

    goto/16 :goto_b4a

    :sswitch_4bb
    const-string v0, "NC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x68

    goto/16 :goto_b4a

    :sswitch_4c7
    const-string v0, "NA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xd5

    goto/16 :goto_b4a

    :sswitch_4d3
    const-string v0, "MZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x67

    goto/16 :goto_b4a

    :sswitch_4df
    const-string v0, "MY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x66

    goto/16 :goto_b4a

    :sswitch_4eb
    const-string v0, "MX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x65

    goto/16 :goto_b4a

    :sswitch_4f7
    const-string v0, "MW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x64

    goto/16 :goto_b4a

    :sswitch_503
    const-string v0, "MV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x63

    goto/16 :goto_b4a

    :sswitch_50f
    const-string v0, "MU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x62

    goto/16 :goto_b4a

    :sswitch_51b
    const-string v0, "MT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x8f

    goto/16 :goto_b4a

    :sswitch_527
    const-string v0, "MS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x93

    goto/16 :goto_b4a

    :sswitch_533
    const-string v0, "MR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xeb

    goto/16 :goto_b4a

    :sswitch_53f
    const-string v0, "MQ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x61

    goto/16 :goto_b4a

    :sswitch_54b
    const-string v0, "MP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x5f

    goto/16 :goto_b4a

    :sswitch_557
    const-string v0, "MO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x5e

    goto/16 :goto_b4a

    :sswitch_563
    const-string v0, "MN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x5d

    goto/16 :goto_b4a

    :sswitch_56f
    const-string v0, "MM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x5c

    goto/16 :goto_b4a

    :sswitch_57b
    const-string v0, "ML"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x75

    goto/16 :goto_b4a

    :sswitch_587
    const-string v0, "MK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x5b

    goto/16 :goto_b4a

    :sswitch_593
    const-string v0, "MH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xd8

    goto/16 :goto_b4a

    :sswitch_59f
    const-string v0, "MG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xe1

    goto/16 :goto_b4a

    :sswitch_5ab
    const-string v0, "MF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x7e

    goto/16 :goto_b4a

    :sswitch_5b7
    const-string v0, "ME"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x5a

    goto/16 :goto_b4a

    :sswitch_5c3
    const-string v0, "MD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x81

    goto/16 :goto_b4a

    :sswitch_5cf
    const-string v0, "MC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x59

    goto/16 :goto_b4a

    :sswitch_5db
    const-string v0, "MA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x58

    goto/16 :goto_b4a

    :sswitch_5e7
    const-string v0, "LY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xad

    goto/16 :goto_b4a

    :sswitch_5f3
    const-string v0, "LV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xb5

    goto/16 :goto_b4a

    :sswitch_5ff
    const-string v0, "LU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x57

    goto/16 :goto_b4a

    :sswitch_60b
    const-string v0, "LT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x56

    goto/16 :goto_b4a

    :sswitch_617
    const-string v0, "LS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x55

    goto/16 :goto_b4a

    :sswitch_623
    const-string v0, "LR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x54

    goto/16 :goto_b4a

    :sswitch_62f
    const-string v0, "LK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x51

    goto/16 :goto_b4a

    :sswitch_63b
    const-string v0, "LI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x92

    goto/16 :goto_b4a

    :sswitch_647
    const-string v0, "LC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xce

    goto/16 :goto_b4a

    :sswitch_653
    const-string v0, "LB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x50

    goto/16 :goto_b4a

    :sswitch_65f
    const-string v0, "LA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x4f

    goto/16 :goto_b4a

    :sswitch_66b
    const-string v0, "KZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x4e

    goto/16 :goto_b4a

    :sswitch_677
    const-string v0, "KY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xcd

    goto/16 :goto_b4a

    :sswitch_683
    const-string v0, "KW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x4d

    goto/16 :goto_b4a

    :sswitch_68f
    const-string v0, "KR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x4b

    goto/16 :goto_b4a

    :sswitch_69b
    const-string v0, "KP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x4a

    goto/16 :goto_b4a

    :sswitch_6a7
    const-string v0, "KN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xcc

    goto/16 :goto_b4a

    :sswitch_6b3
    const-string v0, "KM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xe0

    goto/16 :goto_b4a

    :sswitch_6bf
    const-string v0, "KI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x47

    goto/16 :goto_b4a

    :sswitch_6cb
    const-string v0, "KH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x45

    goto/16 :goto_b4a

    :sswitch_6d7
    const-string v0, "KG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xc0

    goto/16 :goto_b4a

    :sswitch_6e3
    const-string v0, "KE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x49

    goto/16 :goto_b4a

    :sswitch_6ef
    const-string v0, "JP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x44

    goto/16 :goto_b4a

    :sswitch_6fb
    const-string v0, "JO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x43

    goto/16 :goto_b4a

    :sswitch_707
    const-string v0, "JM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x42

    goto/16 :goto_b4a

    :sswitch_713
    const-string v0, "JE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xe7

    goto/16 :goto_b4a

    :sswitch_71f
    const-string v0, "IT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x41

    goto/16 :goto_b4a

    :sswitch_72b
    const-string v0, "IS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xb4

    goto/16 :goto_b4a

    :sswitch_737
    const-string v0, "IR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x40

    goto/16 :goto_b4a

    :sswitch_743
    const-string v0, "IQ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x3f

    goto/16 :goto_b4a

    :sswitch_74f
    const-string v0, "IO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xd7

    goto/16 :goto_b4a

    :sswitch_75b
    const-string v0, "IN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x3e

    goto/16 :goto_b4a

    :sswitch_767
    const-string v0, "IM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xba

    goto/16 :goto_b4a

    :sswitch_773
    const-string v0, "IL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x3d

    goto/16 :goto_b4a

    :sswitch_77f
    const-string v0, "IE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x3b

    goto/16 :goto_b4a

    :sswitch_78b
    const-string v0, "ID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x39

    goto/16 :goto_b4a

    :sswitch_797
    const-string v0, "HU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x38

    goto/16 :goto_b4a

    :sswitch_7a3
    const-string v0, "HT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xdf

    goto/16 :goto_b4a

    :sswitch_7af
    const-string v0, "HR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x8c

    goto/16 :goto_b4a

    :sswitch_7bb
    const-string v0, "HK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x37

    goto/16 :goto_b4a

    :sswitch_7c7
    const-string v0, "GY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x36

    goto/16 :goto_b4a

    :sswitch_7d3
    const-string v0, "GW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x35

    goto/16 :goto_b4a

    :sswitch_7df
    const-string v0, "GU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x71

    goto/16 :goto_b4a

    :sswitch_7eb
    const-string v0, "GT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x32

    goto/16 :goto_b4a

    :sswitch_7f7
    const-string v0, "GR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x8b

    goto/16 :goto_b4a

    :sswitch_803
    const-string v0, "GQ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x31

    goto/16 :goto_b4a

    :sswitch_80f
    const-string v0, "GP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x60

    goto/16 :goto_b4a

    :sswitch_81b
    const-string v0, "GN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x30

    goto/16 :goto_b4a

    :sswitch_827
    const-string v0, "GM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x2f

    goto/16 :goto_b4a

    :sswitch_833
    const-string v0, "GL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xcb

    goto/16 :goto_b4a

    :sswitch_83f
    const-string v0, "GI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x2d

    goto/16 :goto_b4a

    :sswitch_84b
    const-string v0, "GH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xd4

    goto/16 :goto_b4a

    :sswitch_857
    const-string v0, "GG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xd1

    goto/16 :goto_b4a

    :sswitch_863
    const-string v0, "GF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xac

    goto/16 :goto_b4a

    :sswitch_86f
    const-string v0, "GE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x29

    goto/16 :goto_b4a

    :sswitch_87b
    const-string v0, "GD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xca

    goto/16 :goto_b4a

    :sswitch_887
    const-string v0, "GB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x28

    goto/16 :goto_b4a

    :sswitch_893
    const-string v0, "GA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xa0

    goto/16 :goto_b4a

    :sswitch_89f
    const-string v0, "FR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x27

    goto/16 :goto_b4a

    :sswitch_8ab
    const-string v0, "FO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x2c

    goto/16 :goto_b4a

    :sswitch_8b7
    const-string v0, "FM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x26

    goto/16 :goto_b4a

    :sswitch_8c3
    const-string v0, "FK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x48

    goto/16 :goto_b4a

    :sswitch_8cf
    const-string v0, "FJ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x25

    goto/16 :goto_b4a

    :sswitch_8db
    const-string v0, "FI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x24

    goto/16 :goto_b4a

    :sswitch_8e7
    const-string v0, "ET"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x23

    goto/16 :goto_b4a

    :sswitch_8f3
    const-string v0, "ES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x3a

    goto/16 :goto_b4a

    :sswitch_8ff
    const-string v0, "ER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x89

    goto/16 :goto_b4a

    :sswitch_90b
    const-string v0, "EG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x34

    goto/16 :goto_b4a

    :sswitch_917
    const-string v0, "EE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xb3

    goto/16 :goto_b4a

    :sswitch_923
    const-string v0, "EC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x22

    goto/16 :goto_b4a

    :sswitch_92f
    const-string v0, "DZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x53

    goto/16 :goto_b4a

    :sswitch_93b
    const-string v0, "DO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x21

    goto/16 :goto_b4a

    :sswitch_947
    const-string v0, "DM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x2b

    goto/16 :goto_b4a

    :sswitch_953
    const-string v0, "DK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x20

    goto/16 :goto_b4a

    :sswitch_95f
    const-string v0, "DJ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xa5

    goto/16 :goto_b4a

    :sswitch_96b
    const-string v0, "DE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x1f

    goto/16 :goto_b4a

    :sswitch_977
    const-string v0, "CZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x6b

    goto/16 :goto_b4a

    :sswitch_983
    const-string v0, "CY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x4c

    goto/16 :goto_b4a

    :sswitch_98f
    const-string v0, "CX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xc5

    goto/16 :goto_b4a

    :sswitch_99b
    const-string v0, "CW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x1e

    goto/16 :goto_b4a

    :sswitch_9a7
    const-string v0, "CV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x1c

    goto/16 :goto_b4a

    :sswitch_9b3
    const-string v0, "CU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xa4

    goto/16 :goto_b4a

    :sswitch_9bf
    const-string v0, "CR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x1b

    goto/16 :goto_b4a

    :sswitch_9cb
    const-string v0, "CO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x1a

    goto/16 :goto_b4a

    :sswitch_9d7
    const-string v0, "CN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x19

    goto/16 :goto_b4a

    :sswitch_9e3
    const-string v0, "CM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x18

    goto/16 :goto_b4a

    :sswitch_9ef
    const-string v0, "CL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x3c

    goto/16 :goto_b4a

    :sswitch_9fb
    const-string v0, "CK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x73

    goto/16 :goto_b4a

    :sswitch_a07
    const-string v0, "CD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x16

    goto/16 :goto_b4a

    :sswitch_a13
    const-string v0, "CA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x15

    goto/16 :goto_b4a

    :sswitch_a1f
    const-string v0, "BW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x12

    goto/16 :goto_b4a

    :sswitch_a2b
    const-string v0, "BQ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xc9

    goto/16 :goto_b4a

    :sswitch_a37
    const-string v0, "BJ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xe

    goto/16 :goto_b4a

    :sswitch_a43
    const-string v0, "BI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xde

    goto/16 :goto_b4a

    :sswitch_a4f
    const-string v0, "BH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xd

    goto/16 :goto_b4a

    :sswitch_a5b
    const-string v0, "BG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x8e

    goto/16 :goto_b4a

    :sswitch_a67
    const-string v0, "BF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xc

    goto/16 :goto_b4a

    :sswitch_a73
    const-string v0, "BE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xb

    goto/16 :goto_b4a

    :sswitch_a7f
    const-string v0, "BD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xa

    goto/16 :goto_b4a

    :sswitch_a8b
    const-string v0, "AZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xab

    goto/16 :goto_b4a

    :sswitch_a97
    const-string v0, "AO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/4 p0, 0x4

    goto/16 :goto_b4a

    :sswitch_aa2
    const-string v0, "AI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/4 p0, 0x2

    goto/16 :goto_b4a

    :pswitch_aad
    const-string v0, "AG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/4 p0, 0x1

    goto/16 :goto_b4a

    :pswitch_ab8
    const-string v0, "AF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x2e

    goto/16 :goto_b4a

    :pswitch_ac4
    const-string v0, "AE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/4 p0, 0x0

    goto/16 :goto_b4a

    :pswitch_acf
    const-string v0, "AD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xc7

    goto/16 :goto_b4a

    :cond_adb
    const-string v0, "BZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x14

    goto/16 :goto_b4a

    :cond_ae7
    const-string v0, "BY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x13

    goto :goto_b4a

    :cond_af2
    const-string v0, "BT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x11

    goto :goto_b4a

    :cond_afd
    const-string v0, "BS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x10

    goto :goto_b4a

    :cond_b08
    const-string v0, "BB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x2a

    goto :goto_b4a

    :cond_b13
    const-string v0, "BA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x9

    goto :goto_b4a

    :cond_b1e
    const-string v0, "AX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x91

    goto :goto_b4a

    :cond_b29
    const-string v0, "AW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0x8

    goto :goto_b4a

    :cond_b34
    const-string v0, "AM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/4 p0, 0x3

    goto :goto_b4a

    :cond_b3e
    const-string v0, "AL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b49

    const/16 p0, 0xdc

    goto :goto_b4a

    :cond_b49
    :goto_b49
    const/4 p0, -0x1

    :goto_b4a
    packed-switch p0, :pswitch_data_125a

    new-array p0, v2, [I

    .line 863
    fill-array-data p0, :array_1438

    return-object p0

    :pswitch_b53
    new-array p0, v2, [I

    .line 861
    fill-array-data p0, :array_1448

    return-object p0

    :pswitch_b59
    new-array p0, v2, [I

    .line 858
    fill-array-data p0, :array_1458

    return-object p0

    :pswitch_b5f
    new-array p0, v2, [I

    .line 856
    fill-array-data p0, :array_1468

    return-object p0

    :pswitch_b65
    new-array p0, v2, [I

    .line 854
    fill-array-data p0, :array_1478

    return-object p0

    :pswitch_b6b
    new-array p0, v2, [I

    .line 851
    fill-array-data p0, :array_1488

    return-object p0

    :pswitch_b71
    new-array p0, v2, [I

    .line 841
    fill-array-data p0, :array_1498

    return-object p0

    :pswitch_b77
    new-array p0, v2, [I

    .line 838
    fill-array-data p0, :array_14a8

    return-object p0

    :pswitch_b7d
    new-array p0, v2, [I

    .line 836
    fill-array-data p0, :array_14b8

    return-object p0

    :pswitch_b83
    new-array p0, v2, [I

    .line 831
    fill-array-data p0, :array_14c8

    return-object p0

    :pswitch_b89
    new-array p0, v2, [I

    .line 827
    fill-array-data p0, :array_14d8

    return-object p0

    :pswitch_b8f
    new-array p0, v2, [I

    .line 825
    fill-array-data p0, :array_14e8

    return-object p0

    :pswitch_b95
    new-array p0, v2, [I

    .line 822
    fill-array-data p0, :array_14f8

    return-object p0

    :pswitch_b9b
    new-array p0, v2, [I

    .line 820
    fill-array-data p0, :array_1508

    return-object p0

    :pswitch_ba1
    new-array p0, v2, [I

    .line 810
    fill-array-data p0, :array_1518

    return-object p0

    :pswitch_ba7
    new-array p0, v2, [I

    .line 806
    fill-array-data p0, :array_1528

    return-object p0

    :pswitch_bad
    new-array p0, v2, [I

    .line 804
    fill-array-data p0, :array_1538

    return-object p0

    :pswitch_bb3
    new-array p0, v2, [I

    .line 799
    fill-array-data p0, :array_1548

    return-object p0

    :pswitch_bb9
    new-array p0, v2, [I

    .line 797
    fill-array-data p0, :array_1558

    return-object p0

    :pswitch_bbf
    new-array p0, v2, [I

    .line 794
    fill-array-data p0, :array_1568

    return-object p0

    :pswitch_bc5
    new-array p0, v2, [I

    .line 791
    fill-array-data p0, :array_1578

    return-object p0

    :pswitch_bcb
    new-array p0, v2, [I

    .line 789
    fill-array-data p0, :array_1588

    return-object p0

    :pswitch_bd1
    new-array p0, v2, [I

    .line 782
    fill-array-data p0, :array_1598

    return-object p0

    :pswitch_bd7
    new-array p0, v2, [I

    .line 780
    fill-array-data p0, :array_15a8

    return-object p0

    :pswitch_bdd
    new-array p0, v2, [I

    .line 778
    fill-array-data p0, :array_15b8

    return-object p0

    :pswitch_be3
    new-array p0, v2, [I

    .line 771
    fill-array-data p0, :array_15c8

    return-object p0

    :pswitch_be9
    new-array p0, v2, [I

    .line 768
    fill-array-data p0, :array_15d8

    return-object p0

    :pswitch_bef
    new-array p0, v2, [I

    .line 762
    fill-array-data p0, :array_15e8

    return-object p0

    :pswitch_bf5
    new-array p0, v2, [I

    .line 760
    fill-array-data p0, :array_15f8

    return-object p0

    :pswitch_bfb
    new-array p0, v2, [I

    .line 758
    fill-array-data p0, :array_1608

    return-object p0

    :pswitch_c01
    new-array p0, v2, [I

    .line 755
    fill-array-data p0, :array_1618

    return-object p0

    :pswitch_c07
    new-array p0, v2, [I

    .line 752
    fill-array-data p0, :array_1628

    return-object p0

    :pswitch_c0d
    new-array p0, v2, [I

    .line 750
    fill-array-data p0, :array_1638

    return-object p0

    :pswitch_c13
    new-array p0, v2, [I

    .line 746
    fill-array-data p0, :array_1648

    return-object p0

    :pswitch_c19
    new-array p0, v2, [I

    .line 744
    fill-array-data p0, :array_1658

    return-object p0

    :pswitch_c1f
    new-array p0, v2, [I

    .line 742
    fill-array-data p0, :array_1668

    return-object p0

    :pswitch_c25
    new-array p0, v2, [I

    .line 740
    fill-array-data p0, :array_1678

    return-object p0

    :pswitch_c2b
    new-array p0, v2, [I

    .line 738
    fill-array-data p0, :array_1688

    return-object p0

    :pswitch_c31
    new-array p0, v2, [I

    .line 732
    fill-array-data p0, :array_1698

    return-object p0

    :pswitch_c37
    new-array p0, v2, [I

    .line 728
    fill-array-data p0, :array_16a8

    return-object p0

    :pswitch_c3d
    new-array p0, v2, [I

    .line 724
    fill-array-data p0, :array_16b8

    return-object p0

    :pswitch_c43
    new-array p0, v2, [I

    .line 720
    fill-array-data p0, :array_16c8

    return-object p0

    :pswitch_c49
    new-array p0, v2, [I

    .line 718
    fill-array-data p0, :array_16d8

    return-object p0

    :pswitch_c4f
    new-array p0, v2, [I

    .line 716
    fill-array-data p0, :array_16e8

    return-object p0

    :pswitch_c55
    new-array p0, v2, [I

    .line 714
    fill-array-data p0, :array_16f8

    return-object p0

    :pswitch_c5b
    new-array p0, v2, [I

    .line 712
    fill-array-data p0, :array_1708

    return-object p0

    :pswitch_c61
    new-array p0, v2, [I

    .line 710
    fill-array-data p0, :array_1718

    return-object p0

    :pswitch_c67
    new-array p0, v2, [I

    .line 707
    fill-array-data p0, :array_1728

    return-object p0

    :pswitch_c6d
    new-array p0, v2, [I

    .line 705
    fill-array-data p0, :array_1738

    return-object p0

    :pswitch_c73
    new-array p0, v2, [I

    .line 702
    fill-array-data p0, :array_1748

    return-object p0

    :pswitch_c79
    new-array p0, v2, [I

    .line 700
    fill-array-data p0, :array_1758

    return-object p0

    :pswitch_c7f
    new-array p0, v2, [I

    .line 698
    fill-array-data p0, :array_1768

    return-object p0

    :pswitch_c85
    new-array p0, v2, [I

    .line 696
    fill-array-data p0, :array_1778

    return-object p0

    :pswitch_c8b
    new-array p0, v2, [I

    .line 694
    fill-array-data p0, :array_1788

    return-object p0

    :pswitch_c91
    new-array p0, v2, [I

    .line 691
    fill-array-data p0, :array_1798

    return-object p0

    :pswitch_c97
    new-array p0, v2, [I

    .line 689
    fill-array-data p0, :array_17a8

    return-object p0

    :pswitch_c9d
    new-array p0, v2, [I

    .line 686
    fill-array-data p0, :array_17b8

    return-object p0

    :pswitch_ca3
    new-array p0, v2, [I

    .line 683
    fill-array-data p0, :array_17c8

    return-object p0

    :pswitch_ca9
    new-array p0, v2, [I

    .line 680
    fill-array-data p0, :array_17d8

    return-object p0

    :pswitch_caf
    new-array p0, v2, [I

    .line 678
    fill-array-data p0, :array_17e8

    return-object p0

    :pswitch_cb5
    new-array p0, v2, [I

    .line 675
    fill-array-data p0, :array_17f8

    return-object p0

    :pswitch_cbb
    new-array p0, v2, [I

    .line 673
    fill-array-data p0, :array_1808

    return-object p0

    :pswitch_cc1
    new-array p0, v2, [I

    .line 670
    fill-array-data p0, :array_1818

    return-object p0

    :pswitch_cc7
    new-array p0, v2, [I

    .line 668
    fill-array-data p0, :array_1828

    return-object p0

    :pswitch_ccd
    new-array p0, v2, [I

    .line 666
    fill-array-data p0, :array_1838

    return-object p0

    :pswitch_cd3
    new-array p0, v2, [I

    .line 664
    fill-array-data p0, :array_1848

    return-object p0

    :pswitch_cd9
    new-array p0, v2, [I

    .line 662
    fill-array-data p0, :array_1858

    return-object p0

    :pswitch_cdf
    new-array p0, v2, [I

    .line 660
    fill-array-data p0, :array_1868

    return-object p0

    :pswitch_ce5
    new-array p0, v2, [I

    .line 658
    fill-array-data p0, :array_1878

    return-object p0

    :pswitch_ceb
    new-array p0, v2, [I

    .line 656
    fill-array-data p0, :array_1888

    return-object p0

    :pswitch_cf1
    new-array p0, v2, [I

    .line 654
    fill-array-data p0, :array_1898

    return-object p0

    :pswitch_cf7
    new-array p0, v2, [I

    .line 652
    fill-array-data p0, :array_18a8

    return-object p0

    :pswitch_cfd
    new-array p0, v2, [I

    .line 649
    fill-array-data p0, :array_18b8

    return-object p0

    :pswitch_d03
    new-array p0, v2, [I

    .line 646
    fill-array-data p0, :array_18c8

    return-object p0

    :pswitch_d09
    new-array p0, v2, [I

    .line 644
    fill-array-data p0, :array_18d8

    return-object p0

    :pswitch_d0f
    new-array p0, v2, [I

    .line 642
    fill-array-data p0, :array_18e8

    return-object p0

    :pswitch_d15
    new-array p0, v2, [I

    .line 640
    fill-array-data p0, :array_18f8

    return-object p0

    :pswitch_d1b
    new-array p0, v2, [I

    .line 638
    fill-array-data p0, :array_1908

    return-object p0

    :pswitch_d21
    new-array p0, v2, [I

    .line 636
    fill-array-data p0, :array_1918

    return-object p0

    :pswitch_d27
    new-array p0, v2, [I

    .line 634
    fill-array-data p0, :array_1928

    return-object p0

    :pswitch_d2d
    new-array p0, v2, [I

    .line 632
    fill-array-data p0, :array_1938

    return-object p0

    :pswitch_d33
    new-array p0, v2, [I

    .line 630
    fill-array-data p0, :array_1948

    return-object p0

    :pswitch_d39
    new-array p0, v2, [I

    .line 628
    fill-array-data p0, :array_1958

    return-object p0

    :pswitch_d3f
    new-array p0, v2, [I

    .line 624
    fill-array-data p0, :array_1968

    return-object p0

    :pswitch_d45
    new-array p0, v2, [I

    .line 622
    fill-array-data p0, :array_1978

    return-object p0

    :pswitch_d4b
    new-array p0, v2, [I

    .line 620
    fill-array-data p0, :array_1988

    return-object p0

    :pswitch_d51
    new-array p0, v2, [I

    .line 618
    fill-array-data p0, :array_1998

    return-object p0

    :pswitch_d57
    new-array p0, v2, [I

    .line 616
    fill-array-data p0, :array_19a8

    return-object p0

    :pswitch_d5d
    new-array p0, v2, [I

    .line 613
    fill-array-data p0, :array_19b8

    return-object p0

    :pswitch_d63
    new-array p0, v2, [I

    .line 611
    fill-array-data p0, :array_19c8

    return-object p0

    :pswitch_d69
    new-array p0, v2, [I

    .line 607
    fill-array-data p0, :array_19d8

    return-object p0

    :pswitch_d6f
    new-array p0, v2, [I

    .line 604
    fill-array-data p0, :array_19e8

    return-object p0

    :pswitch_d75
    new-array p0, v2, [I

    .line 602
    fill-array-data p0, :array_19f8

    return-object p0

    :pswitch_d7b
    new-array p0, v2, [I

    .line 600
    fill-array-data p0, :array_1a08

    return-object p0

    :pswitch_d81
    new-array p0, v2, [I

    .line 598
    fill-array-data p0, :array_1a18

    return-object p0

    :pswitch_d87
    new-array p0, v2, [I

    .line 596
    fill-array-data p0, :array_1a28

    return-object p0

    :pswitch_d8d
    new-array p0, v2, [I

    .line 594
    fill-array-data p0, :array_1a38

    return-object p0

    :pswitch_d93
    new-array p0, v2, [I

    .line 592
    fill-array-data p0, :array_1a48

    return-object p0

    :pswitch_d99
    new-array p0, v2, [I

    .line 590
    fill-array-data p0, :array_1a58

    return-object p0

    :pswitch_d9f
    new-array p0, v2, [I

    .line 588
    fill-array-data p0, :array_1a68

    return-object p0

    :pswitch_da5
    new-array p0, v2, [I

    .line 585
    fill-array-data p0, :array_1a78

    return-object p0

    :pswitch_dab
    new-array p0, v2, [I

    .line 582
    fill-array-data p0, :array_1a88

    return-object p0

    :pswitch_db1
    new-array p0, v2, [I

    .line 580
    fill-array-data p0, :array_1a98

    return-object p0

    :pswitch_db7
    new-array p0, v2, [I

    .line 578
    fill-array-data p0, :array_1aa8

    return-object p0

    :pswitch_dbd
    new-array p0, v2, [I

    .line 576
    fill-array-data p0, :array_1ab8

    return-object p0

    :pswitch_dc3
    new-array p0, v2, [I

    .line 574
    fill-array-data p0, :array_1ac8

    return-object p0

    :pswitch_dc9
    new-array p0, v2, [I

    .line 570
    fill-array-data p0, :array_1ad8

    return-object p0

    :pswitch_dcf
    new-array p0, v2, [I

    .line 568
    fill-array-data p0, :array_1ae8

    return-object p0

    :pswitch_dd5
    new-array p0, v2, [I

    .line 566
    fill-array-data p0, :array_1af8

    return-object p0

    :pswitch_ddb
    new-array p0, v2, [I

    .line 564
    fill-array-data p0, :array_1b08

    return-object p0

    :pswitch_de1
    new-array p0, v2, [I

    .line 561
    fill-array-data p0, :array_1b18

    return-object p0

    :pswitch_de7
    new-array p0, v2, [I

    .line 556
    fill-array-data p0, :array_1b28

    return-object p0

    :pswitch_ded
    new-array p0, v2, [I

    .line 554
    fill-array-data p0, :array_1b38

    return-object p0

    :pswitch_df3
    new-array p0, v2, [I

    .line 552
    fill-array-data p0, :array_1b48

    return-object p0

    :pswitch_df9
    new-array p0, v2, [I

    .line 550
    fill-array-data p0, :array_1b58

    return-object p0

    :pswitch_dff
    new-array p0, v2, [I

    .line 548
    fill-array-data p0, :array_1b68

    return-object p0

    :pswitch_e05
    new-array p0, v2, [I

    .line 546
    fill-array-data p0, :array_1b78

    return-object p0

    :pswitch_e0b
    new-array p0, v2, [I

    .line 544
    fill-array-data p0, :array_1b88

    return-object p0

    :pswitch_e11
    new-array p0, v2, [I

    .line 542
    fill-array-data p0, :array_1b98

    return-object p0

    :pswitch_e17
    new-array p0, v2, [I

    .line 540
    fill-array-data p0, :array_1ba8

    return-object p0

    :pswitch_e1d
    new-array p0, v2, [I

    .line 538
    fill-array-data p0, :array_1bb8

    return-object p0

    :pswitch_e23
    new-array p0, v2, [I

    .line 536
    fill-array-data p0, :array_1bc8

    return-object p0

    :pswitch_e29
    new-array p0, v2, [I

    .line 534
    fill-array-data p0, :array_1bd8

    return-object p0

    :pswitch_e2f
    new-array p0, v2, [I

    .line 531
    fill-array-data p0, :array_1be8

    return-object p0

    :pswitch_e35
    new-array p0, v2, [I

    .line 529
    fill-array-data p0, :array_1bf8

    return-object p0

    :pswitch_e3b
    new-array p0, v2, [I

    .line 527
    fill-array-data p0, :array_1c08

    return-object p0

    :pswitch_e41
    new-array p0, v2, [I

    .line 525
    fill-array-data p0, :array_1c18

    return-object p0

    :pswitch_e47
    new-array p0, v2, [I

    .line 523
    fill-array-data p0, :array_1c28

    return-object p0

    :pswitch_e4d
    new-array p0, v2, [I

    .line 521
    fill-array-data p0, :array_1c38

    return-object p0

    :pswitch_e53
    new-array p0, v2, [I

    .line 519
    fill-array-data p0, :array_1c48

    return-object p0

    :pswitch_e59
    new-array p0, v2, [I

    .line 517
    fill-array-data p0, :array_1c58

    return-object p0

    :pswitch_e5f
    new-array p0, v2, [I

    .line 515
    fill-array-data p0, :array_1c68

    return-object p0

    :pswitch_e65
    new-array p0, v2, [I

    .line 513
    fill-array-data p0, :array_1c78

    return-object p0

    :pswitch_e6b
    new-array p0, v2, [I

    .line 511
    fill-array-data p0, :array_1c88

    return-object p0

    :pswitch_e71
    new-array p0, v2, [I

    .line 509
    fill-array-data p0, :array_1c98

    return-object p0

    :pswitch_e77
    new-array p0, v2, [I

    .line 507
    fill-array-data p0, :array_1ca8

    return-object p0

    :pswitch_e7d
    new-array p0, v2, [I

    .line 505
    fill-array-data p0, :array_1cb8

    return-object p0

    :pswitch_e83
    new-array p0, v2, [I

    .line 503
    fill-array-data p0, :array_1cc8

    return-object p0

    :pswitch_e89
    new-array p0, v2, [I

    .line 501
    fill-array-data p0, :array_1cd8

    return-object p0

    :pswitch_e8f
    new-array p0, v2, [I

    .line 499
    fill-array-data p0, :array_1ce8

    return-object p0

    :pswitch_e95
    new-array p0, v2, [I

    .line 497
    fill-array-data p0, :array_1cf8

    return-object p0

    :pswitch_e9b
    new-array p0, v2, [I

    .line 495
    fill-array-data p0, :array_1d08

    return-object p0

    :pswitch_ea1
    new-array p0, v2, [I

    .line 493
    fill-array-data p0, :array_1d18

    return-object p0

    :pswitch_ea7
    new-array p0, v2, [I

    .line 491
    fill-array-data p0, :array_1d28

    return-object p0

    :pswitch_ead
    new-array p0, v2, [I

    .line 489
    fill-array-data p0, :array_1d38

    return-object p0

    :pswitch_eb3
    new-array p0, v2, [I

    .line 487
    fill-array-data p0, :array_1d48

    return-object p0

    :pswitch_eb9
    new-array p0, v2, [I

    .line 485
    fill-array-data p0, :array_1d58

    return-object p0

    :pswitch_ebf
    new-array p0, v2, [I

    .line 483
    fill-array-data p0, :array_1d68

    return-object p0

    :pswitch_ec5
    new-array p0, v2, [I

    .line 481
    fill-array-data p0, :array_1d78

    return-object p0

    :pswitch_ecb
    new-array p0, v2, [I

    .line 479
    fill-array-data p0, :array_1d88

    return-object p0

    :pswitch_ed1
    new-array p0, v2, [I

    .line 477
    fill-array-data p0, :array_1d98

    return-object p0

    :pswitch_ed7
    new-array p0, v2, [I

    .line 475
    fill-array-data p0, :array_1da8

    return-object p0

    nop

    :pswitch_data_ede
    .packed-switch 0x823
        :pswitch_acf
        :pswitch_ac4
        :pswitch_ab8
        :pswitch_aad
    .end packed-switch

    :sswitch_data_eea
    .sparse-switch
        0x828 -> :sswitch_aa2
        0x82e -> :sswitch_a97
        0x839 -> :sswitch_a8b
        0x842 -> :sswitch_a7f
        0x843 -> :sswitch_a73
        0x844 -> :sswitch_a67
        0x845 -> :sswitch_a5b
        0x846 -> :sswitch_a4f
        0x847 -> :sswitch_a43
        0x848 -> :sswitch_a37
        0x84f -> :sswitch_a2b
        0x855 -> :sswitch_a1f
        0x85e -> :sswitch_a13
        0x861 -> :sswitch_a07
        0x868 -> :sswitch_9fb
        0x869 -> :sswitch_9ef
        0x86a -> :sswitch_9e3
        0x86b -> :sswitch_9d7
        0x86c -> :sswitch_9cb
        0x86f -> :sswitch_9bf
        0x872 -> :sswitch_9b3
        0x873 -> :sswitch_9a7
        0x874 -> :sswitch_99b
        0x875 -> :sswitch_98f
        0x876 -> :sswitch_983
        0x877 -> :sswitch_977
        0x881 -> :sswitch_96b
        0x886 -> :sswitch_95f
        0x887 -> :sswitch_953
        0x889 -> :sswitch_947
        0x88b -> :sswitch_93b
        0x896 -> :sswitch_92f
        0x89e -> :sswitch_923
        0x8a0 -> :sswitch_917
        0x8a2 -> :sswitch_90b
        0x8ad -> :sswitch_8ff
        0x8ae -> :sswitch_8f3
        0x8af -> :sswitch_8e7
        0x8c3 -> :sswitch_8db
        0x8c4 -> :sswitch_8cf
        0x8c5 -> :sswitch_8c3
        0x8c7 -> :sswitch_8b7
        0x8c9 -> :sswitch_8ab
        0x8cc -> :sswitch_89f
        0x8da -> :sswitch_893
        0x8db -> :sswitch_887
        0x8dd -> :sswitch_87b
        0x8de -> :sswitch_86f
        0x8df -> :sswitch_863
        0x8e0 -> :sswitch_857
        0x8e1 -> :sswitch_84b
        0x8e2 -> :sswitch_83f
        0x8e5 -> :sswitch_833
        0x8e6 -> :sswitch_827
        0x8e7 -> :sswitch_81b
        0x8e9 -> :sswitch_80f
        0x8ea -> :sswitch_803
        0x8eb -> :sswitch_7f7
        0x8ed -> :sswitch_7eb
        0x8ee -> :sswitch_7df
        0x8f0 -> :sswitch_7d3
        0x8f2 -> :sswitch_7c7
        0x903 -> :sswitch_7bb
        0x90a -> :sswitch_7af
        0x90c -> :sswitch_7a3
        0x90d -> :sswitch_797
        0x91b -> :sswitch_78b
        0x91c -> :sswitch_77f
        0x923 -> :sswitch_773
        0x924 -> :sswitch_767
        0x925 -> :sswitch_75b
        0x926 -> :sswitch_74f
        0x928 -> :sswitch_743
        0x929 -> :sswitch_737
        0x92a -> :sswitch_72b
        0x92b -> :sswitch_71f
        0x93b -> :sswitch_713
        0x943 -> :sswitch_707
        0x945 -> :sswitch_6fb
        0x946 -> :sswitch_6ef
        0x95a -> :sswitch_6e3
        0x95c -> :sswitch_6d7
        0x95d -> :sswitch_6cb
        0x95e -> :sswitch_6bf
        0x962 -> :sswitch_6b3
        0x963 -> :sswitch_6a7
        0x965 -> :sswitch_69b
        0x967 -> :sswitch_68f
        0x96c -> :sswitch_683
        0x96e -> :sswitch_677
        0x96f -> :sswitch_66b
        0x975 -> :sswitch_65f
        0x976 -> :sswitch_653
        0x977 -> :sswitch_647
        0x97d -> :sswitch_63b
        0x97f -> :sswitch_62f
        0x986 -> :sswitch_623
        0x987 -> :sswitch_617
        0x988 -> :sswitch_60b
        0x989 -> :sswitch_5ff
        0x98a -> :sswitch_5f3
        0x98d -> :sswitch_5e7
        0x994 -> :sswitch_5db
        0x996 -> :sswitch_5cf
        0x997 -> :sswitch_5c3
        0x998 -> :sswitch_5b7
        0x999 -> :sswitch_5ab
        0x99a -> :sswitch_59f
        0x99b -> :sswitch_593
        0x99e -> :sswitch_587
        0x99f -> :sswitch_57b
        0x9a0 -> :sswitch_56f
        0x9a1 -> :sswitch_563
        0x9a2 -> :sswitch_557
        0x9a3 -> :sswitch_54b
        0x9a4 -> :sswitch_53f
        0x9a5 -> :sswitch_533
        0x9a6 -> :sswitch_527
        0x9a7 -> :sswitch_51b
        0x9a8 -> :sswitch_50f
        0x9a9 -> :sswitch_503
        0x9aa -> :sswitch_4f7
        0x9ab -> :sswitch_4eb
        0x9ac -> :sswitch_4df
        0x9ad -> :sswitch_4d3
        0x9b3 -> :sswitch_4c7
        0x9b5 -> :sswitch_4bb
        0x9b7 -> :sswitch_4af
        0x9b9 -> :sswitch_4a3
        0x9bb -> :sswitch_497
        0x9be -> :sswitch_48b
        0x9c1 -> :sswitch_47f
        0x9c2 -> :sswitch_473
        0x9c4 -> :sswitch_467
        0x9c7 -> :sswitch_45b
        0x9cc -> :sswitch_44f
        0x9de -> :sswitch_443
        0x9f1 -> :sswitch_437
        0x9f5 -> :sswitch_42b
        0x9f6 -> :sswitch_41f
        0x9f7 -> :sswitch_413
        0x9f8 -> :sswitch_407
        0x9fb -> :sswitch_3fb
        0x9fc -> :sswitch_3ef
        0x9fd -> :sswitch_3e3
        0xa02 -> :sswitch_3d7
        0xa03 -> :sswitch_3cb
        0xa04 -> :sswitch_3bf
        0xa07 -> :sswitch_3b3
        0xa10 -> :sswitch_3a7
        0xa33 -> :sswitch_39b
        0xa3d -> :sswitch_38f
        0xa41 -> :sswitch_383
        0xa43 -> :sswitch_377
        0xa45 -> :sswitch_36b
        0xa4e -> :sswitch_35f
        0xa4f -> :sswitch_353
        0xa50 -> :sswitch_347
        0xa51 -> :sswitch_33b
        0xa52 -> :sswitch_32f
        0xa54 -> :sswitch_323
        0xa55 -> :sswitch_317
        0xa56 -> :sswitch_30b
        0xa58 -> :sswitch_2ff
        0xa59 -> :sswitch_2f3
        0xa5a -> :sswitch_2e7
        0xa5b -> :sswitch_2db
        0xa5c -> :sswitch_2cf
        0xa5f -> :sswitch_2c3
        0xa60 -> :sswitch_2b7
        0xa61 -> :sswitch_2ab
        0xa63 -> :sswitch_29f
        0xa65 -> :sswitch_293
        0xa66 -> :sswitch_287
        0xa67 -> :sswitch_27b
        0xa6f -> :sswitch_26f
        0xa70 -> :sswitch_263
        0xa73 -> :sswitch_257
        0xa74 -> :sswitch_24b
        0xa76 -> :sswitch_23f
        0xa77 -> :sswitch_233
        0xa78 -> :sswitch_227
        0xa79 -> :sswitch_21b
        0xa7a -> :sswitch_20f
        0xa7b -> :sswitch_203
        0xa7e -> :sswitch_1f7
        0xa80 -> :sswitch_1eb
        0xa82 -> :sswitch_1df
        0xa83 -> :sswitch_1d3
        0xa86 -> :sswitch_1c7
        0xa8c -> :sswitch_1bb
        0xa92 -> :sswitch_1af
        0xa9e -> :sswitch_1a3
        0xaa4 -> :sswitch_197
        0xaa5 -> :sswitch_18b
        0xaab -> :sswitch_17f
        0xaad -> :sswitch_173
        0xaaf -> :sswitch_167
        0xab1 -> :sswitch_15b
        0xab3 -> :sswitch_14f
        0xab8 -> :sswitch_143
        0xabf -> :sswitch_137
        0xacf -> :sswitch_12b
        0xadc -> :sswitch_11f
        0xaf3 -> :sswitch_113
        0xb0c -> :sswitch_107
        0xb1b -> :sswitch_fb
        0xb27 -> :sswitch_ef
        0xb33 -> :sswitch_e3
        0xb3d -> :sswitch_d7
    .end sparse-switch

    :pswitch_data_1234
    .packed-switch 0x830
        :pswitch_cb
        :pswitch_bf
        :pswitch_b4
        :pswitch_a9
        :pswitch_9e
    .end packed-switch

    :pswitch_data_1242
    .packed-switch 0x84a
        :pswitch_92
        :pswitch_86
        :pswitch_7a
        :pswitch_6e
    .end packed-switch

    :pswitch_data_124e
    .packed-switch 0x863
        :pswitch_62
        :pswitch_56
        :pswitch_4a
        :pswitch_3e
    .end packed-switch

    :pswitch_data_125a
    .packed-switch 0x0
        :pswitch_ed7
        :pswitch_ed1
        :pswitch_ecb
        :pswitch_ec5
        :pswitch_ebf
        :pswitch_eb9
        :pswitch_eb3
        :pswitch_ead
        :pswitch_ea7
        :pswitch_ea1
        :pswitch_e9b
        :pswitch_e95
        :pswitch_e8f
        :pswitch_e89
        :pswitch_e83
        :pswitch_e7d
        :pswitch_e77
        :pswitch_e71
        :pswitch_e6b
        :pswitch_e65
        :pswitch_e5f
        :pswitch_e59
        :pswitch_e53
        :pswitch_e4d
        :pswitch_e47
        :pswitch_e41
        :pswitch_e3b
        :pswitch_e35
        :pswitch_e2f
        :pswitch_e29
        :pswitch_e29
        :pswitch_e23
        :pswitch_e1d
        :pswitch_e17
        :pswitch_e11
        :pswitch_e0b
        :pswitch_e05
        :pswitch_dff
        :pswitch_df9
        :pswitch_df3
        :pswitch_ded
        :pswitch_de7
        :pswitch_de1
        :pswitch_de1
        :pswitch_de1
        :pswitch_de1
        :pswitch_ddb
        :pswitch_ddb
        :pswitch_dd5
        :pswitch_dcf
        :pswitch_dc9
        :pswitch_dc3
        :pswitch_dc3
        :pswitch_dc3
        :pswitch_dbd
        :pswitch_db7
        :pswitch_db1
        :pswitch_dab
        :pswitch_da5
        :pswitch_da5
        :pswitch_d9f
        :pswitch_d9f
        :pswitch_d99
        :pswitch_d93
        :pswitch_d8d
        :pswitch_d87
        :pswitch_d81
        :pswitch_d7b
        :pswitch_d75
        :pswitch_d6f
        :pswitch_d69
        :pswitch_d69
        :pswitch_d63
        :pswitch_d63
        :pswitch_d63
        :pswitch_d5d
        :pswitch_d57
        :pswitch_d57
        :pswitch_d51
        :pswitch_d4b
        :pswitch_d45
        :pswitch_d3f
        :pswitch_d39
        :pswitch_d39
        :pswitch_d39
        :pswitch_d33
        :pswitch_d2d
        :pswitch_d27
        :pswitch_d21
        :pswitch_d1b
        :pswitch_d15
        :pswitch_d0f
        :pswitch_d09
        :pswitch_d03
        :pswitch_cfd
        :pswitch_cfd
        :pswitch_cf7
        :pswitch_cf7
        :pswitch_cf1
        :pswitch_ceb
        :pswitch_ce5
        :pswitch_cdf
        :pswitch_cd9
        :pswitch_cd3
        :pswitch_ccd
        :pswitch_cc7
        :pswitch_cc1
        :pswitch_cbb
        :pswitch_cbb
        :pswitch_cb5
        :pswitch_caf
        :pswitch_caf
        :pswitch_ca9
        :pswitch_ca3
        :pswitch_ca3
        :pswitch_c9d
        :pswitch_c9d
        :pswitch_c97
        :pswitch_c97
        :pswitch_c91
        :pswitch_c8b
        :pswitch_c8b
        :pswitch_c85
        :pswitch_c7f
        :pswitch_c79
        :pswitch_c73
        :pswitch_c6d
        :pswitch_c6d
        :pswitch_c67
        :pswitch_c61
        :pswitch_c61
        :pswitch_c5b
        :pswitch_c55
        :pswitch_c4f
        :pswitch_c49
        :pswitch_c43
        :pswitch_c3d
        :pswitch_c3d
        :pswitch_c3d
        :pswitch_c37
        :pswitch_c37
        :pswitch_c37
        :pswitch_c31
        :pswitch_c31
        :pswitch_c31
        :pswitch_c2b
        :pswitch_c2b
        :pswitch_c2b
        :pswitch_c2b
        :pswitch_c2b
        :pswitch_c25
        :pswitch_c1f
        :pswitch_c19
        :pswitch_c13
        :pswitch_c0d
        :pswitch_c0d
        :pswitch_c0d
        :pswitch_c07
        :pswitch_c01
        :pswitch_c01
        :pswitch_bfb
        :pswitch_bfb
        :pswitch_bf5
        :pswitch_bef
        :pswitch_be9
        :pswitch_be9
        :pswitch_be9
        :pswitch_be9
        :pswitch_be9
        :pswitch_be3
        :pswitch_be3
        :pswitch_bdd
        :pswitch_bdd
        :pswitch_bdd
        :pswitch_bdd
        :pswitch_bdd
        :pswitch_bdd
        :pswitch_bd7
        :pswitch_bd1
        :pswitch_bcb
        :pswitch_bcb
        :pswitch_bcb
        :pswitch_bcb
        :pswitch_bcb
        :pswitch_bcb
        :pswitch_bc5
        :pswitch_bbf
        :pswitch_bbf
        :pswitch_bb9
        :pswitch_bb9
        :pswitch_bb3
        :pswitch_bad
        :pswitch_bad
        :pswitch_bad
        :pswitch_bad
        :pswitch_ba7
        :pswitch_ba1
        :pswitch_ba1
        :pswitch_ba1
        :pswitch_b9b
        :pswitch_b9b
        :pswitch_b9b
        :pswitch_b9b
        :pswitch_b9b
        :pswitch_b9b
        :pswitch_b9b
        :pswitch_b9b
        :pswitch_b9b
        :pswitch_b95
        :pswitch_b8f
        :pswitch_b8f
        :pswitch_b89
        :pswitch_b83
        :pswitch_b83
        :pswitch_b83
        :pswitch_b7d
        :pswitch_b7d
        :pswitch_b7d
        :pswitch_b7d
        :pswitch_b77
        :pswitch_b71
        :pswitch_b71
        :pswitch_b6b
        :pswitch_b6b
        :pswitch_b6b
        :pswitch_b6b
        :pswitch_b6b
        :pswitch_b6b
        :pswitch_b6b
        :pswitch_b6b
        :pswitch_b6b
        :pswitch_b65
        :pswitch_b65
        :pswitch_b5f
        :pswitch_b59
        :pswitch_b53
        :pswitch_b53
    .end packed-switch

    :array_1438
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1448
    .array-data 4
        0x4
        0x2
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1458
    .array-data 4
        0x3
        0x3
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_1468
    .array-data 4
        0x3
        0x2
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_1478
    .array-data 4
        0x4
        0x2
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_1488
    .array-data 4
        0x4
        0x4
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1498
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_14a8
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x2
        0x2
    .end array-data

    :array_14b8
    .array-data 4
        0x4
        0x2
        0x2
        0x4
        0x2
        0x2
    .end array-data

    :array_14c8
    .array-data 4
        0x3
        0x3
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_14d8
    .array-data 4
        0x0
        0x3
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_14e8
    .array-data 4
        0x0
        0x2
        0x0
        0x1
        0x2
        0x2
    .end array-data

    :array_14f8
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1508
    .array-data 4
        0x1
        0x2
        0x0
        0x0
        0x2
        0x2
    .end array-data

    :array_1518
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1528
    .array-data 4
        0x2
        0x2
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_1538
    .array-data 4
        0x2
        0x1
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1548
    .array-data 4
        0x1
        0x0
        0x2
        0x2
        0x3
        0x1
    .end array-data

    :array_1558
    .array-data 4
        0x3
        0x3
        0x4
        0x3
        0x2
        0x2
    .end array-data

    :array_1568
    .array-data 4
        0x0
        0x2
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1578
    .array-data 4
        0x3
        0x4
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_1588
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_1598
    .array-data 4
        0x1
        0x4
        0x1
        0x3
        0x2
        0x2
    .end array-data

    :array_15a8
    .array-data 4
        0x1
        0x1
        0x0
        0x0
        0x2
        0x2
    .end array-data

    :array_15b8
    .array-data 4
        0x3
        0x2
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_15c8
    .array-data 4
        0x4
        0x2
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_15d8
    .array-data 4
        0x4
        0x3
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_15e8
    .array-data 4
        0x2
        0x2
        0x2
        0x4
        0x2
        0x2
    .end array-data

    :array_15f8
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x3
        0x4
    .end array-data

    :array_1608
    .array-data 4
        0x3
        0x4
        0x1
        0x0
        0x2
        0x2
    .end array-data

    :array_1618
    .array-data 4
        0x1
        0x2
        0x1
        0x0
        0x2
        0x2
    .end array-data

    :array_1628
    .array-data 4
        0x3
        0x3
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_1638
    .array-data 4
        0x2
        0x3
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_1648
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_1658
    .array-data 4
        0x4
        0x3
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_1668
    .array-data 4
        0x2
        0x4
        0x3
        0x0
        0x2
        0x2
    .end array-data

    :array_1678
    .array-data 4
        0x4
        0x4
        0x4
        0x3
        0x2
        0x2
    .end array-data

    :array_1688
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1698
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x2
    .end array-data

    :array_16a8
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
        0x2
    .end array-data

    :array_16b8
    .array-data 4
        0x4
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_16c8
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_16d8
    .array-data 4
        0x4
        0x2
        0x4
        0x3
        0x2
        0x2
    .end array-data

    :array_16e8
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_16f8
    .array-data 4
        0x3
        0x4
        0x2
        0x0
        0x2
        0x2
    .end array-data

    :array_1708
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x4
        0x3
    .end array-data

    :array_1718
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x2
        0x2
    .end array-data

    :array_1728
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_1738
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_1748
    .array-data 4
        0x2
        0x4
        0x4
        0x4
        0x4
        0x2
    .end array-data

    :array_1758
    .array-data 4
        0x2
        0x2
        0x4
        0x1
        0x2
        0x2
    .end array-data

    :array_1768
    .array-data 4
        0x3
        0x4
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_1778
    .array-data 4
        0x2
        0x0
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_1788
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x4
        0x2
    .end array-data

    :array_1798
    .array-data 4
        0x2
        0x1
        0x3
        0x3
        0x3
        0x0
    .end array-data

    :array_17a8
    .array-data 4
        0x4
        0x3
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_17b8
    .array-data 4
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_17c8
    .array-data 4
        0x1
        0x2
        0x4
        0x4
        0x4
        0x2
    .end array-data

    :array_17d8
    .array-data 4
        0x2
        0x3
        0x1
        0x3
        0x4
        0x2
    .end array-data

    :array_17e8
    .array-data 4
        0x4
        0x2
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_17f8
    .array-data 4
        0x2
        0x2
        0x4
        0x3
        0x2
        0x2
    .end array-data

    :array_1808
    .array-data 4
        0x0
        0x0
        0x2
        0x0
        0x1
        0x2
    .end array-data

    :array_1818
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x0
        0x3
    .end array-data

    :array_1828
    .array-data 4
        0x3
        0x4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_1838
    .array-data 4
        0x3
        0x3
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1848
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_1858
    .array-data 4
        0x1
        0x0
        0x3
        0x1
        0x3
        0x2
    .end array-data

    :array_1868
    .array-data 4
        0x2
        0x4
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_1878
    .array-data 4
        0x4
        0x2
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_1888
    .array-data 4
        0x3
        0x4
        0x1
        0x4
        0x2
        0x2
    .end array-data

    :array_1898
    .array-data 4
        0x3
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_18a8
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_18b8
    .array-data 4
        0x0
        0x2
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_18c8
    .array-data 4
        0x2
        0x0
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_18d8
    .array-data 4
        0x2
        0x4
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_18e8
    .array-data 4
        0x1
        0x0
        0x0
        0x1
        0x3
        0x2
    .end array-data

    :array_18f8
    .array-data 4
        0x2
        0x0
        0x0
        0x1
        0x2
        0x2
    .end array-data

    :array_1908
    .array-data 4
        0x0
        0x2
        0x2
        0x0
        0x2
        0x2
    .end array-data

    :array_1918
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1928
    .array-data 4
        0x1
        0x0
        0x3
        0x2
        0x1
        0x4
    .end array-data

    :array_1938
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x2
        0x2
    .end array-data

    :array_1948
    .array-data 4
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1958
    .array-data 4
        0x3
        0x4
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1968
    .array-data 4
        0x3
        0x1
        0x3
        0x3
        0x4
        0x2
    .end array-data

    :array_1978
    .array-data 4
        0x3
        0x3
        0x2
        0x4
        0x2
        0x2
    .end array-data

    :array_1988
    .array-data 4
        0x1
        0x2
        0x1
        0x3
        0x2
        0x2
    .end array-data

    :array_1998
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_19a8
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_19b8
    .array-data 4
        0x0
        0x1
        0x1
        0x3
        0x4
        0x4
    .end array-data

    :array_19c8
    .array-data 4
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_19d8
    .array-data 4
        0x4
        0x2
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_19e8
    .array-data 4
        0x2
        0x1
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_19f8
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x2
        0x4
    .end array-data

    :array_1a08
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_1a18
    .array-data 4
        0x2
        0x4
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_1a28
    .array-data 4
        0x0
        0x0
        0x0
        0x1
        0x1
        0x2
    .end array-data

    :array_1a38
    .array-data 4
        0x3
        0x0
        0x1
        0x1
        0x4
        0x1
    .end array-data

    :array_1a48
    .array-data 4
        0x3
        0x2
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_1a58
    .array-data 4
        0x1
        0x1
        0x3
        0x2
        0x3
        0x3
    .end array-data

    :array_1a68
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x3
        0x2
    .end array-data

    :array_1a78
    .array-data 4
        0x0
        0x1
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1a88
    .array-data 4
        0x3
        0x1
        0x2
        0x2
        0x3
        0x2
    .end array-data

    :array_1a98
    .array-data 4
        0x0
        0x0
        0x0
        0x1
        0x3
        0x2
    .end array-data

    :array_1aa8
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x2
        0x0
    .end array-data

    :array_1ab8
    .array-data 4
        0x3
        0x2
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_1ac8
    .array-data 4
        0x3
        0x4
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_1ad8
    .array-data 4
        0x2
        0x3
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1ae8
    .array-data 4
        0x4
        0x2
        0x1
        0x4
        0x2
        0x2
    .end array-data

    :array_1af8
    .array-data 4
        0x4
        0x3
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_1b08
    .array-data 4
        0x4
        0x3
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_1b18
    .array-data 4
        0x0
        0x2
        0x0
        0x0
        0x2
        0x2
    .end array-data

    :array_1b28
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_1b38
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1b48
    .array-data 4
        0x1
        0x2
        0x3
        0x1
        0x0
        0x2
    .end array-data

    :array_1b58
    .array-data 4
        0x4
        0x2
        0x4
        0x1
        0x2
        0x2
    .end array-data

    :array_1b68
    .array-data 4
        0x3
        0x1
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1b78
    .array-data 4
        0x0
        0x0
        0x0
        0x3
        0x0
        0x2
    .end array-data

    :array_1b88
    .array-data 4
        0x4
        0x3
        0x3
        0x1
        0x2
        0x2
    .end array-data

    :array_1b98
    .array-data 4
        0x2
        0x3
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_1ba8
    .array-data 4
        0x3
        0x4
        0x4
        0x4
        0x4
        0x2
    .end array-data

    :array_1bb8
    .array-data 4
        0x0
        0x0
        0x3
        0x2
        0x0
        0x2
    .end array-data

    :array_1bc8
    .array-data 4
        0x0
        0x1
        0x2
        0x2
        0x2
        0x3
    .end array-data

    :array_1bd8
    .array-data 4
        0x2
        0x2
        0x0
        0x0
        0x2
        0x2
    .end array-data

    :array_1be8
    .array-data 4
        0x2
        0x1
        0x0
        0x0
        0x2
        0x2
    .end array-data

    :array_1bf8
    .array-data 4
        0x2
        0x3
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1c08
    .array-data 4
        0x2
        0x3
        0x4
        0x3
        0x2
        0x2
    .end array-data

    :array_1c18
    .array-data 4
        0x2
        0x0
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_1c28
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_1c38
    .array-data 4
        0x0
        0x0
        0x0
        0x1
        0x0
        0x2
    .end array-data

    :array_1c48
    .array-data 4
        0x4
        0x2
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_1c58
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x3
        0x2
    .end array-data

    :array_1c68
    .array-data 4
        0x2
        0x4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_1c78
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_1c88
    .array-data 4
        0x3
        0x2
        0x1
        0x0
        0x2
        0x2
    .end array-data

    :array_1c98
    .array-data 4
        0x3
        0x1
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_1ca8
    .array-data 4
        0x4
        0x4
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1cb8
    .array-data 4
        0x1
        0x2
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_1cc8
    .array-data 4
        0x4
        0x4
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_1cd8
    .array-data 4
        0x1
        0x2
        0x1
        0x3
        0x4
        0x2
    .end array-data

    :array_1ce8
    .array-data 4
        0x4
        0x3
        0x4
        0x3
        0x2
        0x2
    .end array-data

    :array_1cf8
    .array-data 4
        0x0
        0x1
        0x4
        0x4
        0x3
        0x2
    .end array-data

    :array_1d08
    .array-data 4
        0x2
        0x1
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_1d18
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1d28
    .array-data 4
        0x1
        0x3
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_1d38
    .array-data 4
        0x0
        0x1
        0x1
        0x1
        0x2
        0x0
    .end array-data

    :array_1d48
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x0
        0x0
    .end array-data

    :array_1d58
    .array-data 4
        0x2
        0x2
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_1d68
    .array-data 4
        0x4
        0x4
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_1d78
    .array-data 4
        0x2
        0x3
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_1d88
    .array-data 4
        0x0
        0x2
        0x0
        0x3
        0x2
        0x2
    .end array-data

    :array_1d98
    .array-data 4
        0x2
        0x4
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_1da8
    .array-data 4
        0x1
        0x4
        0x4
        0x4
        0x4
        0x0
    .end array-data
.end method

.method private getInitialBitrateEstimateForNetworkType(I)J
    .registers 4

    .line 454
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->initialBitrateEstimates:Lcom/google/common/collect/ImmutableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_1b

    .line 456
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->initialBitrateEstimates:Lcom/google/common/collect/ImmutableMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    :cond_1b
    if-nez p1, :cond_24

    const-wide/32 v0, 0xf4240

    .line 459
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 461
    :cond_24
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized getSingletonInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
    .registers 3

    const-class v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    monitor-enter v0

    .line 260
    :try_start_3
    sget-object v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->singletonInstance:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    if-nez v1, :cond_12

    .line 261
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->build()Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    move-result-object p0

    sput-object p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->singletonInstance:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    .line 263
    :cond_12
    sget-object p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->singletonInstance:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static isTransferAtFullNetworkSpeed(Lcom/google/android/exoplayer2/upstream/DataSpec;Z)Z
    .registers 2

    if-eqz p1, :cond_c

    const/16 p1, 0x8

    .line 465
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DataSpec;->isFlagSet(I)Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static synthetic lambda$eqWqOhNKhDkkOV8bzYk0-t7LZxc(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->onNetworkTypeChanged(I)V

    return-void
.end method

.method private maybeNotifyBandwidthSample(IJJ)V
    .registers 15

    if-nez p1, :cond_f

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_f

    .line 446
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->lastReportedBitrateEstimate:J

    cmp-long v2, p4, v0

    if-nez v2, :cond_f

    return-void

    .line 449
    :cond_f
    iput-wide p4, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->lastReportedBitrateEstimate:J

    .line 450
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->eventDispatcher:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;->bandwidthSample(IJJ)V

    return-void
.end method

.method private declared-synchronized onNetworkTypeChanged(I)V
    .registers 10

    monitor-enter p0

    .line 410
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->networkType:I

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->resetOnNetworkTypeChange:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_57

    if-nez v0, :cond_b

    .line 412
    monitor-exit p0

    return-void

    .line 415
    :cond_b
    :try_start_b
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->networkTypeOverrideSet:Z

    if-eqz v0, :cond_11

    .line 416
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->networkTypeOverride:I

    .line 418
    :cond_11
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->networkType:I
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_57

    if-ne v0, p1, :cond_17

    .line 419
    monitor-exit p0

    return-void

    .line 422
    :cond_17
    :try_start_17
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->networkType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_55

    if-eqz p1, :cond_55

    const/16 v0, 0x8

    if-ne p1, v0, :cond_23

    goto :goto_55

    .line 431
    :cond_23
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->getInitialBitrateEstimateForNetworkType(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    .line 432
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 433
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I

    if-lez p1, :cond_3a

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    sub-long v2, v0, v2

    long-to-int p1, v2

    move v3, p1

    goto :goto_3c

    :cond_3a
    const/4 p1, 0x0

    const/4 v3, 0x0

    .line 434
    :goto_3c
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->maybeNotifyBandwidthSample(IJJ)V

    .line 437
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    const-wide/16 v0, 0x0

    .line 438
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    .line 439
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    .line 440
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    .line 441
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->slidingPercentile:Lcom/google/android/exoplayer2/upstream/SlidingPercentile;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->reset()V
    :try_end_53
    .catchall {:try_start_17 .. :try_end_53} :catchall_57

    .line 442
    monitor-exit p0

    return-void

    .line 427
    :cond_55
    :goto_55
    monitor-exit p0

    return-void

    :catchall_57
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
    .registers 4

    .line 349
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->eventDispatcher:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;->addListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    return-void
.end method

.method public declared-synchronized getBitrateEstimate()J
    .registers 3

    monitor-enter p0

    .line 339
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic getTimeToFirstByteEstimateUs()J
    .registers 3

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$-CC;->$default$getTimeToFirstByteEstimateUs(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransferListener()Lcom/google/android/exoplayer2/upstream/TransferListener;
    .registers 1

    return-object p0
.end method

.method public declared-synchronized onBytesTransferred(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ZI)V
    .registers 5

    monitor-enter p0

    .line 379
    :try_start_1
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->isTransferAtFullNetworkSpeed(Lcom/google/android/exoplayer2/upstream/DataSpec;Z)Z

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_11

    if-nez p1, :cond_9

    .line 380
    monitor-exit p0

    return-void

    .line 382
    :cond_9
    :try_start_9
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    int-to-long p3, p4

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_11

    .line 383
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onTransferEnd(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V
    .registers 14

    monitor-enter p0

    .line 387
    :try_start_1
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->isTransferAtFullNetworkSpeed(Lcom/google/android/exoplayer2/upstream/DataSpec;Z)Z

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_75

    if-nez p1, :cond_9

    .line 388
    monitor-exit p0

    return-void

    .line 390
    :cond_9
    :try_start_9
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I

    const/4 p2, 0x1

    if-lez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 391
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 392
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    sub-long v2, v0, v2

    long-to-int v5, v2

    .line 393
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    int-to-long v6, v5

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    .line 394
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    if-lez v5, :cond_6e

    .line 396
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    long-to-float p1, v2

    const/high16 p3, 0x45fa0000    # 8000.0f

    mul-float p1, p1, p3

    int-to-float p3, v5

    div-float/2addr p1, p3

    .line 397
    iget-object p3, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->slidingPercentile:Lcom/google/android/exoplayer2/upstream/SlidingPercentile;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p3, v2, p1}, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->addSample(IF)V

    .line 398
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    const-wide/16 v6, 0x7d0

    cmp-long p1, v2, v6

    if-gez p1, :cond_55

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    const-wide/32 v6, 0x80000

    cmp-long p1, v2, v6

    if-ltz p1, :cond_60

    .line 400
    :cond_55
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->slidingPercentile:Lcom/google/android/exoplayer2/upstream/SlidingPercentile;

    const/high16 p3, 0x3f000000    # 0.5f

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->getPercentile(F)F

    move-result p1

    float-to-long v2, p1

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    .line 402
    :cond_60
    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->maybeNotifyBandwidthSample(IJJ)V

    .line 403
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    const-wide/16 v0, 0x0

    .line 404
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    .line 406
    :cond_6e
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I
    :try_end_73
    .catchall {:try_start_9 .. :try_end_73} :catchall_75

    .line 407
    monitor-exit p0

    return-void

    :catchall_75
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onTransferInitializing(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V
    .registers 4

    return-void
.end method

.method public declared-synchronized onTransferStart(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V
    .registers 4

    monitor-enter p0

    .line 367
    :try_start_1
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->isTransferAtFullNetworkSpeed(Lcom/google/android/exoplayer2/upstream/DataSpec;Z)Z

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1d

    if-nez p1, :cond_9

    .line 368
    monitor-exit p0

    return-void

    .line 370
    :cond_9
    :try_start_9
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I

    if-nez p1, :cond_15

    .line 371
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    .line 373
    :cond_15
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1d

    .line 374
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeEventListener(Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
    .registers 3

    .line 356
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->eventDispatcher:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;->removeListener(Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    return-void
.end method

.method public declared-synchronized setNetworkTypeOverride(I)V
    .registers 3

    monitor-enter p0

    .line 332
    :try_start_1
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->networkTypeOverride:I

    const/4 v0, 0x1

    .line 333
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->networkTypeOverrideSet:Z

    .line 334
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->onNetworkTypeChanged(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 335
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
