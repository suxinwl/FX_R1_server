.class public Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;
    }
.end annotation


# instance fields
.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final eventTimes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

.field private isSeeking:Z

.field private listeners:Lcom/google/android/exoplayer2/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/ListenerSet<",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private player:Lcom/google/android/exoplayer2/Player;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/Clock;)V
    .registers 5

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/Clock;

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 90
    new-instance v0, Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$buSea3Z1Bo3hrg0reZEjnAD-5NM;->INSTANCE:Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$buSea3Z1Bo3hrg0reZEjnAD-5NM;

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;-><init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 91
    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 92
    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 93
    new-instance p1, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;-><init>(Lcom/google/android/exoplayer2/Timeline$Period;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 94
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    return-void
.end method

.method private generateEventTime(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .registers 5

    .line 951
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_a

    move-object v1, v0

    goto :goto_10

    .line 953
    :cond_a
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 956
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getMediaPeriodIdTimeline(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    :goto_10
    if-eqz p1, :cond_24

    if-nez v1, :cond_15

    goto :goto_24

    .line 964
    :cond_15
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 965
    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    return-object p1

    .line 958
    :cond_24
    :goto_24
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result p1

    .line 959
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    .line 960
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v2

    if-ge p1, v2, :cond_38

    const/4 v2, 0x1

    goto :goto_39

    :cond_38
    const/4 v2, 0x0

    :goto_39
    if-eqz v2, :cond_3c

    goto :goto_3e

    .line 961
    :cond_3c
    sget-object v1, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    :goto_3e
    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    return-object p1
.end method

.method private generateLoadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .registers 2

    .line 977
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getLoadingMediaPeriod()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method private generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .registers 6

    .line 982
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_21

    .line 984
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 985
    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getMediaPeriodIdTimeline(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    if-eqz v2, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_1a

    .line 987
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    goto :goto_20

    :cond_1a
    sget-object v0, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    .line 988
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    :goto_20
    return-object p1

    .line 990
    :cond_21
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object p2

    .line 991
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v2

    if-ge p1, v2, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    if-eqz v0, :cond_32

    goto :goto_34

    .line 992
    :cond_32
    sget-object p2, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    :goto_34
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    return-object p1
.end method

.method private generatePlayingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .registers 2

    .line 969
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getPlayingMediaPeriod()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method private generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .registers 2

    .line 973
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getReadingMediaPeriod()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method private getEventTimeForErrorEvent(Lcom/google/android/exoplayer2/PlaybackException;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .registers 3

    .line 997
    instance-of v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eqz v0, :cond_16

    .line 998
    check-cast p1, Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 999
    iget-object v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaPeriodId;

    if-eqz v0, :cond_16

    .line 1000
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaPeriodId;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriodId;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    return-object p1

    .line 1003
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$jEvlfxUovj6VylddFrJenWbLVqc(Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->releaseInternal()V

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/util/FlagSet;)V
    .registers 2

    return-void
.end method

.method static synthetic lambda$notifySeekStarted$2(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 2

    .line 146
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method static synthetic lambda$onAudioAttributesChanged$56(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/audio/AudioAttributes;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 744
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAudioAttributesChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method static synthetic lambda$onAudioCodecError$11(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 254
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAudioCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$onAudioDecoderInitialized$4(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 14

    .line 174
    invoke-interface {p6, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    .line 175
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    const/4 v3, 0x1

    move-object v1, p6

    move-object v2, p0

    move-object v4, p1

    .line 177
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V

    return-void
.end method

.method static synthetic lambda$onAudioDecoderReleased$8(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 223
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAudioDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAudioDisabled$9(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4

    .line 234
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAudioDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    const/4 v0, 0x1

    .line 235
    invoke-interface {p2, p0, v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDecoderDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method static synthetic lambda$onAudioEnabled$3(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4

    .line 160
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAudioEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    const/4 v0, 0x1

    .line 161
    invoke-interface {p2, p0, v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDecoderEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method static synthetic lambda$onAudioInputFormatChanged$5(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4

    .line 191
    invoke-interface {p3, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    .line 192
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    const/4 p2, 0x1

    .line 193
    invoke-interface {p3, p0, p2, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDecoderInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method static synthetic lambda$onAudioPositionAdvancing$6(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4

    .line 203
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAudioPositionAdvancing(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method static synthetic lambda$onAudioSessionIdChanged$55(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 735
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAudioSessionIdChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onAudioSinkError$10(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 245
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAudioSinkError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$onAudioUnderrun$7(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 14

    move-object v0, p6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 214
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAudioUnderrun(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V

    return-void
.end method

.method static synthetic lambda$onAvailableCommandsChanged$33(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$Commands;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 518
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onAvailableCommandsChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method static synthetic lambda$onBandwidthSample$61(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 14

    move-object v0, p6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 812
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onBandwidthEstimate(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V

    return-void
.end method

.method static synthetic lambda$onCues$51(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/util/List;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 702
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$onCues$52(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/text/CueGroup;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 709
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/text/CueGroup;)V

    return-void
.end method

.method static synthetic lambda$onDeviceInfoChanged$59(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/DeviceInfo;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 780
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDeviceInfoChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method static synthetic lambda$onDeviceVolumeChanged$60(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IZLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4

    .line 789
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDeviceVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IZ)V

    return-void
.end method

.method static synthetic lambda$onDownstreamFormatChanged$28(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 455
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDownstreamFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method static synthetic lambda$onDrmKeysLoaded$63(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 2

    .line 837
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDrmKeysLoaded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method static synthetic lambda$onDrmKeysRemoved$66(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 2

    .line 865
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDrmKeysRemoved(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method static synthetic lambda$onDrmKeysRestored$65(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 2

    .line 856
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDrmKeysRestored(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method static synthetic lambda$onDrmSessionAcquired$62(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 826
    invoke-interface {p2, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 827
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onDrmSessionManagerError$64(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 847
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDrmSessionManagerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$onDrmSessionReleased$67(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 2

    .line 874
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDrmSessionReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method static synthetic lambda$onDroppedFrames$16(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 5

    .line 319
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDroppedVideoFrames(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJ)V

    return-void
.end method

.method static synthetic lambda$onIsLoadingChanged$32(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 507
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    .line 508
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onIsLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method static synthetic lambda$onIsPlayingChanged$38(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 567
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onIsPlayingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method static synthetic lambda$onLoadCanceled$25(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4

    .line 419
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onLoadCanceled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method static synthetic lambda$onLoadCompleted$24(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4

    .line 406
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onLoadCompleted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method static synthetic lambda$onLoadError$26(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;ZLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 12

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 435
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onLoadError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method static synthetic lambda$onLoadStarted$23(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4

    .line 393
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onLoadStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method static synthetic lambda$onMaxSeekToPreviousPositionChanged$47(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4

    .line 667
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method static synthetic lambda$onMediaItemTransition$30(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaItem;ILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4

    .line 481
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onMediaItemTransition(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method static synthetic lambda$onMediaMetadataChanged$48(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 676
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onMediaMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$onMetadata$50(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 694
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onMetadata(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method static synthetic lambda$onPlayWhenReadyChanged$36(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4

    .line 547
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method static synthetic lambda$onPlaybackParametersChanged$44(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackParameters;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 639
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method static synthetic lambda$onPlaybackStateChanged$35(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 537
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPlaybackStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onPlaybackSuppressionReasonChanged$37(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 558
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onPlayerError$41(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 594
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPlayerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$onPlayerErrorChanged$42(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 603
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPlayerErrorChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$onPlayerStateChanged$34(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4

    .line 528
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPlayerStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method static synthetic lambda$onPlaylistMetadataChanged$49(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 685
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$onPositionDiscontinuity$43(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 5

    .line 628
    invoke-interface {p4, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    .line 629
    invoke-interface {p4, p0, p2, p3, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V

    return-void
.end method

.method static synthetic lambda$onRenderedFirstFrame$19(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;JLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 5

    .line 350
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V

    return-void
.end method

.method static synthetic lambda$onRepeatModeChanged$39(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 576
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onRepeatModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onSeekBackIncrementChanged$45(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4

    .line 648
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onSeekBackIncrementChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method static synthetic lambda$onSeekForwardIncrementChanged$46(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4

    .line 657
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onSeekForwardIncrementChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method static synthetic lambda$onSeekProcessed$53(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 2

    .line 717
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onSeekProcessed(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method static synthetic lambda$onShuffleModeEnabledChanged$40(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 585
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onShuffleModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method static synthetic lambda$onSkipSilenceEnabledChanged$54(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 726
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method static synthetic lambda$onSurfaceSizeChanged$22(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4

    .line 378
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onSurfaceSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V

    return-void
.end method

.method static synthetic lambda$onTimelineChanged$29(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 471
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onTimelineChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onTrackSelectionParametersChanged$58(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 771
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method static synthetic lambda$onTracksChanged$31(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Tracks;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 490
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onTracksChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Tracks;)V

    return-void
.end method

.method static synthetic lambda$onUpstreamDiscarded$27(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 445
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onUpstreamDiscarded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method static synthetic lambda$onVideoCodecError$21(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 369
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$onVideoDecoderInitialized$14(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 14

    .line 290
    invoke-interface {p6, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    .line 291
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    const/4 v3, 0x2

    move-object v1, p6

    move-object v2, p0

    move-object v4, p1

    .line 293
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V

    return-void
.end method

.method static synthetic lambda$onVideoDecoderReleased$17(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 328
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onVideoDisabled$18(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4

    .line 339
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    const/4 v0, 0x2

    .line 340
    invoke-interface {p2, p0, v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDecoderDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method static synthetic lambda$onVideoEnabled$13(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4

    .line 276
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    const/4 v0, 0x2

    .line 277
    invoke-interface {p2, p0, v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDecoderEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method static synthetic lambda$onVideoFrameProcessingOffset$20(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 5

    .line 360
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoFrameProcessingOffset(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JI)V

    return-void
.end method

.method static synthetic lambda$onVideoInputFormatChanged$15(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 4

    .line 307
    invoke-interface {p3, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    .line 308
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    const/4 p2, 0x2

    .line 309
    invoke-interface {p3, p0, p2, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDecoderInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method static synthetic lambda$onVideoSizeChanged$57(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/video/VideoSize;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 9

    .line 755
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/video/VideoSize;)V

    .line 756
    iget v2, p1, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    iget v3, p1, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    iget v4, p1, Lcom/google/android/exoplayer2/video/VideoSize;->unappliedRotationDegrees:I

    iget v5, p1, Lcom/google/android/exoplayer2/video/VideoSize;->pixelWidthHeightRatio:F

    move-object v0, p2

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IIIF)V

    return-void
.end method

.method static synthetic lambda$onVolumeChanged$12(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;FLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 263
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V

    return-void
.end method

.method static synthetic lambda$releaseInternal$68(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 2

    .line 946
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPlayerReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method private releaseInternal()V
    .registers 4

    .line 942
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 943
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$Gs7VQOAqmL3ebkeeNoRIlNMO4c4;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$Gs7VQOAqmL3ebkeeNoRIlNMO4c4;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    const/16 v2, 0x404

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 947
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->release()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 100
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ListenerSet;->add(Ljava/lang/Object;)V

    return-void
.end method

.method protected final generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .registers 2

    .line 895
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getCurrentPlayerMediaPeriod()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method protected final generateEventTime(Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .registers 21
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "player"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    .line 902
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_11

    :cond_f
    move-object/from16 v6, p3

    .line 906
    :goto_11
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    .line 908
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 909
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_2f

    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 910
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v1

    if-ne v5, v1, :cond_2f

    const/4 v1, 0x1

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    const-wide/16 v9, 0x0

    if-eqz v6, :cond_5b

    .line 911
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v11

    if-eqz v11, :cond_5b

    if-eqz v1, :cond_51

    .line 912
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 914
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentAdGroupIndex()I

    move-result v1

    iget v11, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v1, v11, :cond_51

    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 915
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentAdIndexInAdGroup()I

    move-result v1

    iget v11, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-ne v1, v11, :cond_51

    goto :goto_52

    :cond_51
    const/4 v7, 0x0

    :goto_52
    if-eqz v7, :cond_75

    .line 917
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v9

    goto :goto_75

    :cond_5b
    if-eqz v1, :cond_64

    .line 919
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getContentPosition()J

    move-result-wide v7

    goto :goto_76

    .line 924
    :cond_64
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6b

    goto :goto_75

    :cond_6b
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v4, v5, v1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v9

    :cond_75
    :goto_75
    move-wide v7, v9

    .line 927
    :goto_76
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getCurrentPlayerMediaPeriod()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v11

    .line 928
    new-instance v16, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 934
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v9

    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 935
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v10

    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 937
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v12

    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 938
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getTotalBufferedDuration()J

    move-result-wide v14

    move-object/from16 v1, v16

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v1 .. v15}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;-><init>(JLcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JLcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)V

    return-object v16
.end method

.method public synthetic lambda$setPlayer$1$DefaultAnalyticsCollector(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/util/FlagSet;)V
    .registers 6

    .line 120
    new-instance v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    invoke-direct {v0, p3, v1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;-><init>(Lcom/google/android/exoplayer2/util/FlagSet;Landroid/util/SparseArray;)V

    invoke-interface {p2, p1, v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;)V

    return-void
.end method

.method public final notifySeekStarted()V
    .registers 4

    .line 142
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->isSeeking:Z

    if-nez v0, :cond_14

    .line 143
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    const/4 v1, 0x1

    .line 144
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->isSeeking:Z

    const/4 v1, -0x1

    .line 145
    new-instance v2, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$eh4KhsDzJWHXVQLgjnC0zKk-T6s;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$eh4KhsDzJWHXVQLgjnC0zKk-T6s;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_14
    return-void
.end method

.method public final onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .registers 4

    .line 740
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 741
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$MGsq9518U8DPxjvYW_I8IpZiWYQ;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$MGsq9518U8DPxjvYW_I8IpZiWYQ;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    const/16 p1, 0x14

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioCodecError(Ljava/lang/Exception;)V
    .registers 4

    .line 250
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 251
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$fdPVijHB3J4Y1rQdbRfJONSl8YY;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$fdPVijHB3J4Y1rQdbRfJONSl8YY;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    const/16 p1, 0x405

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .registers 15

    .line 169
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v7

    .line 170
    new-instance v8, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$9ZhHIeXf3Jp2OZk7Gv0RgA0IF2o;

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$9ZhHIeXf3Jp2OZk7Gv0RgA0IF2o;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    const/16 p1, 0x3f0

    invoke-virtual {p0, v7, p1, v8}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioDecoderReleased(Ljava/lang/String;)V
    .registers 4

    .line 219
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 220
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$0dWLK7r90DnHzRT9MrCmZyd2oAw;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$0dWLK7r90DnHzRT9MrCmZyd2oAw;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    const/16 p1, 0x3f4

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 4

    .line 229
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 230
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$BUI9uw1qgYDsfHb8-3B9_zsuuds;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$BUI9uw1qgYDsfHb8-3B9_zsuuds;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    const/16 p1, 0x3f5

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 4

    .line 155
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 156
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$wjbCwsMOwcCgjAd1637g4PKcnTA;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$wjbCwsMOwcCgjAd1637g4PKcnTA;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    const/16 p1, 0x3ef

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .registers 5

    .line 186
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 187
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$8cxSXwJl6v9MA4sN7UaJvU8vfG8;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$8cxSXwJl6v9MA4sN7UaJvU8vfG8;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    const/16 p1, 0x3f1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioPositionAdvancing(J)V
    .registers 5

    .line 199
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 200
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$QotOq5r1qKOJsA66lifFdLYxflo;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$QotOq5r1qKOJsA66lifFdLYxflo;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    const/16 p1, 0x3f2

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioSessionIdChanged(I)V
    .registers 4

    .line 731
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 732
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$pjy4GsvF8kU-kKVQin_ypp6cheU;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$pjy4GsvF8kU-kKVQin_ypp6cheU;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    const/16 p1, 0x15

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioSinkError(Ljava/lang/Exception;)V
    .registers 4

    .line 241
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 242
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$OBUnc8bObNg_V1A1Xu47O7VLrE4;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$OBUnc8bObNg_V1A1Xu47O7VLrE4;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    const/16 p1, 0x3f6

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioUnderrun(IJJ)V
    .registers 15

    .line 209
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v7

    .line 210
    new-instance v8, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$saK1UR_kTw4kq2VMC1vdJJjM6gA;

    move-object v0, v8

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$saK1UR_kTw4kq2VMC1vdJJjM6gA;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V

    const/16 p1, 0x3f3

    invoke-virtual {p0, v7, p1, v8}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V
    .registers 4

    .line 514
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 515
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$V31PzkH8t0KfeleFx1iIgp72uM8;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$V31PzkH8t0KfeleFx1iIgp72uM8;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$Commands;)V

    const/16 p1, 0xd

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onBandwidthSample(IJJ)V
    .registers 15

    .line 807
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateLoadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v7

    .line 808
    new-instance v8, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$S2ghErYX7dKSC2iyoqBJs8wSYss;

    move-object v0, v8

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$S2ghErYX7dKSC2iyoqBJs8wSYss;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V

    const/16 p1, 0x3ee

    invoke-virtual {p0, v7, p1, v8}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V
    .registers 4

    .line 707
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 708
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$1ZrUhsBp3PDv8QaizGgo3jZwML0;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$1ZrUhsBp3PDv8QaizGgo3jZwML0;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/text/CueGroup;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 700
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 701
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$AYB-71TpEZ9lhqYdiCxcy1WuZPQ;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$AYB-71TpEZ9lhqYdiCxcy1WuZPQ;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V
    .registers 4

    .line 776
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 777
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$7TfaZpTqhKjzIkWA978ydneGAYE;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$7TfaZpTqhKjzIkWA978ydneGAYE;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/DeviceInfo;)V

    const/16 p1, 0x1d

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .registers 5

    .line 785
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 786
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$cRuG6SM6WFkp7Uk2KePwedwMN9c;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$cRuG6SM6WFkp7Uk2KePwedwMN9c;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IZ)V

    const/16 p1, 0x1e

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDownstreamFormatChanged(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 4

    .line 451
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 452
    new-instance p2, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$m2bav8a0qLs38gueUfZFQMU1JXk;

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$m2bav8a0qLs38gueUfZFQMU1JXk;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    const/16 p3, 0x3ec

    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDrmKeysLoaded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 4

    .line 833
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 834
    new-instance p2, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$blDg1dJLBEf1OFIgaX4wmuB6NXU;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$blDg1dJLBEf1OFIgaX4wmuB6NXU;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    const/16 v0, 0x3ff

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDrmKeysRemoved(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 4

    .line 861
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 862
    new-instance p2, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$HOlI_TDjRBSchD1rxIDgpOUroww;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$HOlI_TDjRBSchD1rxIDgpOUroww;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    const/16 v0, 0x402

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDrmKeysRestored(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 4

    .line 852
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 853
    new-instance p2, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$6dQhywXl-BcXXwf_kaGkeIOkhWQ;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$6dQhywXl-BcXXwf_kaGkeIOkhWQ;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    const/16 v0, 0x401

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public synthetic onDrmSessionAcquired(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public final onDrmSessionAcquired(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;I)V
    .registers 4

    .line 821
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 822
    new-instance p2, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$w8SxVk1un8-y4XObvCopIz_az0c;

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$w8SxVk1un8-y4XObvCopIz_az0c;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    const/16 p3, 0x3fe

    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDrmSessionManagerError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .registers 4

    .line 843
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 844
    new-instance p2, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$lH7iOXaNWZkmqu7ThXwRkmDQM3M;

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$lH7iOXaNWZkmqu7ThXwRkmDQM3M;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    const/16 p3, 0x400

    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDrmSessionReleased(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 4

    .line 870
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 871
    new-instance p2, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$bwcM4nbqUp93NDpCVW8Ze38SnPM;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$bwcM4nbqUp93NDpCVW8Ze38SnPM;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    const/16 v0, 0x403

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDroppedFrames(IJ)V
    .registers 6

    .line 315
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 316
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$bPgEtlbyML2eh7kQTIAcmqBXqDY;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$bPgEtlbyML2eh7kQTIAcmqBXqDY;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJ)V

    const/16 p1, 0x3fa

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .registers 3

    return-void
.end method

.method public final onIsLoadingChanged(Z)V
    .registers 4

    .line 502
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 503
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$H6VRya6XOSiV1FqCiRI01spSRF4;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$H6VRya6XOSiV1FqCiRI01spSRF4;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .registers 4

    .line 563
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 564
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$XX4kHlijyH9bRkPN3oALnoVH--Q;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$XX4kHlijyH9bRkPN3oALnoVH--Q;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    const/4 p1, 0x7

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onLoadCanceled(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 5

    .line 415
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 416
    new-instance p2, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$CmW3c9WsbaaxSQ7R-J9oVRe8YE8;

    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$CmW3c9WsbaaxSQ7R-J9oVRe8YE8;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    const/16 p3, 0x3ea

    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onLoadCompleted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 5

    .line 402
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 403
    new-instance p2, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$1yCmkneadwMRXHODVcRfMrFNM-k;

    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$1yCmkneadwMRXHODVcRfMrFNM-k;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    const/16 p3, 0x3e9

    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onLoadError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .registers 13

    .line 430
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 431
    new-instance p2, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$7lPeMXHmG5z0IzrH_ucJszlArYg;

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$7lPeMXHmG5z0IzrH_ucJszlArYg;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V

    const/16 p3, 0x3eb

    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onLoadStarted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 5

    .line 389
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 390
    new-instance p2, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$oe7UHtsuomf4BV1fX3ecaAfr4Ks;

    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$oe7UHtsuomf4BV1fX3ecaAfr4Ks;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    const/16 p3, 0x3e8

    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onLoadingChanged(Z)V
    .registers 2

    return-void
.end method

.method public onMaxSeekToPreviousPositionChanged(J)V
    .registers 5

    .line 662
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 663
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$2A5LouZetQzGo4B3LZOx5Geg0uw;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$2A5LouZetQzGo4B3LZOx5Geg0uw;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    const/16 p1, 0x12

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .registers 5

    .line 477
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 478
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$KCMXKs_H7hemVSh_ZYWoyZIHtUM;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$KCMXKs_H7hemVSh_ZYWoyZIHtUM;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaItem;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 4

    .line 672
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 673
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$lE1yxkgPaohkVxwFVqMrTTDoEf8;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$lE1yxkgPaohkVxwFVqMrTTDoEf8;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V

    const/16 p1, 0xe

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .registers 4

    .line 690
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 691
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$_I9e0aN8kxy697A1AlVozEvVq8Q;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$_I9e0aN8kxy697A1AlVozEvVq8Q;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    const/16 p1, 0x1c

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onPlayWhenReadyChanged(ZI)V
    .registers 5

    .line 543
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 544
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$RJP7K2-RsuD14HSP_Ez7no-T6tI;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$RJP7K2-RsuD14HSP_Ez7no-T6tI;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V

    const/4 p1, 0x5

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 4

    .line 635
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 636
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$fpXBTD3v4YvQ9AykNf8LYWlaRd0;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$fpXBTD3v4YvQ9AykNf8LYWlaRd0;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    const/16 p1, 0xc

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onPlaybackStateChanged(I)V
    .registers 4

    .line 533
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 534
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$_37lHe22bVdGNvTf0de8CdveUh0;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$_37lHe22bVdGNvTf0de8CdveUh0;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onPlaybackSuppressionReasonChanged(I)V
    .registers 4

    .line 553
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 554
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$zXBeY7ZPHZK-Inic5XA80quvzTc;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$zXBeY7ZPHZK-Inic5XA80quvzTc;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    const/4 p1, 0x6

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 4

    .line 590
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->getEventTimeForErrorEvent(Lcom/google/android/exoplayer2/PlaybackException;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 591
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$k_TYZmmyT4A36yBN-ND-k6QWXKk;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$k_TYZmmyT4A36yBN-ND-k6QWXKk;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 4

    .line 599
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->getEventTimeForErrorEvent(Lcom/google/android/exoplayer2/PlaybackException;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 600
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$f0ORgH_cmgs-pw16bBcIwsRiaTc;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$f0ORgH_cmgs-pw16bBcIwsRiaTc;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onPlayerStateChanged(ZI)V
    .registers 5

    .line 524
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 525
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$TADucqfAP8LRQ8KybowVf2b6JIQ;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$TADucqfAP8LRQ8KybowVf2b6JIQ;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V

    const/4 p1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 4

    .line 681
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 682
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$XuEFyg-lZ5LvY-wIjcReCaMj5Xs;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$XuEFyg-lZ5LvY-wIjcReCaMj5Xs;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V

    const/16 p1, 0xf

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .registers 2

    return-void
.end method

.method public final onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .registers 7

    const/4 v0, 0x1

    if-ne p3, v0, :cond_6

    const/4 v0, 0x0

    .line 620
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->isSeeking:Z

    .line 622
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Player;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player;)V

    .line 623
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    const/16 v1, 0xb

    .line 624
    new-instance v2, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$owqPoPB7B-cIT7CRPGcOdtlDJxs;

    invoke-direct {v2, v0, p3, p1, p2}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$owqPoPB7B-cIT7CRPGcOdtlDJxs;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .registers 1

    return-void
.end method

.method public final onRenderedFirstFrame(Ljava/lang/Object;J)V
    .registers 6

    .line 346
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 347
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$bCxbjePV_tYPtimmgFe-NwGeMFk;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$bCxbjePV_tYPtimmgFe-NwGeMFk;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V

    const/16 p1, 0x1a

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .registers 4

    .line 572
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 573
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$pcDXyflstQ6C0KBtA4NTGGDSXHY;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$pcDXyflstQ6C0KBtA4NTGGDSXHY;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    const/16 p1, 0x8

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onSeekBackIncrementChanged(J)V
    .registers 5

    .line 644
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 645
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$RaEVDmO4VbDI9u-vAUFO8pdqJAA;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$RaEVDmO4VbDI9u-vAUFO8pdqJAA;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    const/16 p1, 0x10

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onSeekForwardIncrementChanged(J)V
    .registers 5

    .line 653
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 654
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$4W1M8meilNRSGh92O2V4NV-7Chk;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$4W1M8meilNRSGh92O2V4NV-7Chk;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    const/16 p1, 0x11

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onSeekProcessed()V
    .registers 4

    .line 715
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 716
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$KNopcakUZmTpP6Y9RC9ZHbuRv2w;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$KNopcakUZmTpP6Y9RC9ZHbuRv2w;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onShuffleModeEnabledChanged(Z)V
    .registers 4

    .line 581
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 582
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$4a0ul614flZmuZrJ8qRMP-Qcp-w;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$4a0ul614flZmuZrJ8qRMP-Qcp-w;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    const/16 p1, 0x9

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onSkipSilenceEnabledChanged(Z)V
    .registers 4

    .line 722
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 723
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$ykhxYRWNJ6XdBH4IkY3ffYzO7ts;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$ykhxYRWNJ6XdBH4IkY3ffYzO7ts;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    const/16 p1, 0x17

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onSurfaceSizeChanged(II)V
    .registers 5

    .line 374
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 375
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$oWJvpGHnbz8LzhMz0Fx-GC9VtUY;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$oWJvpGHnbz8LzhMz0Fx-GC9VtUY;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V

    const/16 p1, 0x18

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .registers 4

    .line 466
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Player;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->onTimelineChanged(Lcom/google/android/exoplayer2/Player;)V

    .line 467
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 468
    new-instance v0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$ECNgLWLcBhapmwyplUpyw8Fxt3Y;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$ECNgLWLcBhapmwyplUpyw8Fxt3Y;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .registers 4

    .line 767
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 768
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$JiNuvzE9L1FaFXl-Rggpr3NcBKU;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$JiNuvzE9L1FaFXl-Rggpr3NcBKU;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    const/16 p1, 0x13

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V
    .registers 4

    .line 486
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 487
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$37Rd-XnuVoUnuTDQ2v6-wFeoolU;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$37Rd-XnuVoUnuTDQ2v6-wFeoolU;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Tracks;)V

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onUpstreamDiscarded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 4

    .line 441
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 442
    new-instance p2, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$sGWZ6r2A19zlNTPr8F3BHLu3U4g;

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$sGWZ6r2A19zlNTPr8F3BHLu3U4g;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    const/16 p3, 0x3ed

    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoCodecError(Ljava/lang/Exception;)V
    .registers 4

    .line 365
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 366
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$vSPTfpfzW0EYQpvnKdOyFX0dA_o;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$vSPTfpfzW0EYQpvnKdOyFX0dA_o;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    const/16 p1, 0x406

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .registers 15

    .line 285
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v7

    .line 286
    new-instance v8, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$wsuzmsEroK5VEx2NhT_11F2KlJk;

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$wsuzmsEroK5VEx2NhT_11F2KlJk;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    const/16 p1, 0x3f8

    invoke-virtual {p0, v7, p1, v8}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoDecoderReleased(Ljava/lang/String;)V
    .registers 4

    .line 324
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 325
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$I58YUEWZzLS0mWYUmcE-Gg3vW_k;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$I58YUEWZzLS0mWYUmcE-Gg3vW_k;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    const/16 p1, 0x3fb

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 4

    .line 334
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 335
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$I98RoX850BzVA0QXWxEzLf8SX-s;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$I98RoX850BzVA0QXWxEzLf8SX-s;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    const/16 p1, 0x3fc

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 4

    .line 271
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 272
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$axaYStwt-NKp-GyjbkN67inv7rs;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$axaYStwt-NKp-GyjbkN67inv7rs;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    const/16 p1, 0x3f7

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoFrameProcessingOffset(JI)V
    .registers 6

    .line 355
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 356
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$hLcTsOHbfn9hASH72Hips-eWY4w;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$hLcTsOHbfn9hASH72Hips-eWY4w;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JI)V

    const/16 p1, 0x3fd

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .registers 5

    .line 302
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 303
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$zMESj5x8Xj6VXY4MSjONV7sf1q4;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$zMESj5x8Xj6VXY4MSjONV7sf1q4;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    const/16 p1, 0x3f9

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .registers 4

    .line 750
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 751
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$VxpVlxSCq8kXLOHvYq8vX_gqOTg;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$VxpVlxSCq8kXLOHvYq8vX_gqOTg;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/video/VideoSize;)V

    const/16 p1, 0x19

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVolumeChanged(F)V
    .registers 4

    .line 259
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 260
    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$svjkcO6klu5c7XyPUD_yTqJlDgg;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$svjkcO6klu5c7XyPUD_yTqJlDgg;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V

    const/16 p1, 0x16

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public release()V
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$jEvlfxUovj6VylddFrJenWbLVqc;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$jEvlfxUovj6VylddFrJenWbLVqc;-><init>(Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ListenerSet;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method protected final sendEvent(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;",
            "I",
            "Lcom/google/android/exoplayer2/util/ListenerSet$Event<",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsListener;",
            ">;)V"
        }
    .end annotation

    .line 889
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 890
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/Player;Landroid/os/Looper;)V
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 114
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Player;

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->clock:Lcom/google/android/exoplayer2/util/Clock;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/google/android/exoplayer2/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v1, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$55LmYyPl3UVj_2SnkvkAXFuJsdU;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$55LmYyPl3UVj_2SnkvkAXFuJsdU;-><init>(Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;Lcom/google/android/exoplayer2/Player;)V

    .line 117
    invoke-virtual {v0, p2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->copy(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    return-void
.end method

.method public final updateMediaPeriodQueueInfo(Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ">;",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ")V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplayer2/Player;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Player;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->onQueueUpdated(Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Player;)V

    return-void
.end method
