.class final Lcom/google/android/exoplayer2/ExoPlayerImpl$Api31;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api31"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 3077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerMediaMetricsListener(Landroid/content/Context;Lcom/google/android/exoplayer2/ExoPlayerImpl;Z)Lcom/google/android/exoplayer2/analytics/PlayerId;
    .registers 3

    .line 3082
    invoke-static {p0}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->create(Landroid/content/Context;)Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;

    move-result-object p0

    if-nez p0, :cond_15

    const-string p0, "ExoPlayerImpl"

    const-string p1, "MediaMetricsService unavailable."

    .line 3084
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3085
    new-instance p0, Lcom/google/android/exoplayer2/analytics/PlayerId;

    sget-object p1, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/analytics/PlayerId;-><init>(Landroid/media/metrics/LogSessionId;)V

    return-object p0

    :cond_15
    if-eqz p2, :cond_1a

    .line 3088
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 3090
    :cond_1a
    new-instance p1, Lcom/google/android/exoplayer2/analytics/PlayerId;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener;->getLogSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/analytics/PlayerId;-><init>(Landroid/media/metrics/LogSessionId;)V

    return-object p1
.end method
