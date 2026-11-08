.class public final Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    }
.end annotation


# static fields
.field public static final DEFAULT_SESSION_ID_GENERATOR:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RANDOM:Ljava/util/Random;

.field private static final SESSION_ID_LENGTH:I = 0xc


# instance fields
.field private currentSessionId:Ljava/lang/String;

.field private currentTimeline:Lcom/google/android/exoplayer2/Timeline;

.field private listener:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private final sessionIdGenerator:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    sget-object v0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultPlaybackSessionManager$B6qxTIgw94bl9P0yXoxrMQCmp6U;->INSTANCE:Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultPlaybackSessionManager$B6qxTIgw94bl9P0yXoxrMQCmp6U;

    sput-object v0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->DEFAULT_SESSION_ID_GENERATOR:Lcom/google/common/base/Supplier;

    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 65
    sget-object v0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->DEFAULT_SESSION_ID_GENERATOR:Lcom/google/common/base/Supplier;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;-><init>(Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/base/Supplier;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->sessionIdGenerator:Lcom/google/common/base/Supplier;

    .line 76
    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 77
    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 78
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    .line 79
    sget-object p1, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentTimeline:Lcom/google/android/exoplayer2/Timeline;

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;)Lcom/google/android/exoplayer2/Timeline$Window;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    return-object p0
.end method

.method private static generateDefaultSessionId()Ljava/lang/String;
    .registers 2

    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 305
    sget-object v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->RANDOM:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    const/16 v1, 0xa

    .line 306
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOrAddSession(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    .registers 13

    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 281
    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->maybeSetWindowSequenceNumber(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    .line 282
    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->belongsToSession(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 283
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J
    invoke-static {v4}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-eqz v9, :cond_4c

    cmp-long v7, v5, v2

    if-gez v7, :cond_34

    goto :goto_4c

    :cond_34
    cmp-long v7, v5, v2

    if-nez v7, :cond_10

    .line 289
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-static {v5}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$500(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 290
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-static {v4}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$500(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v5

    if-eqz v5, :cond_10

    move-object v1, v4

    goto :goto_10

    :cond_4c
    :goto_4c
    move-object v1, v4

    move-wide v2, v5

    goto :goto_10

    :cond_4f
    if-nez v1, :cond_63

    .line 296
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->sessionIdGenerator:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 297
    new-instance v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;-><init>(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;Ljava/lang/String;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    .line 298
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_63
    return-object v1
.end method

.method public static synthetic lambda$B6qxTIgw94bl9P0yXoxrMQCmp6U()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->generateDefaultSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateCurrentSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 9
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "listener"
        }
    .end annotation

    .line 241
    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x0

    .line 243
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    return-void

    .line 246
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 247
    iget v1, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget-object v2, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 248
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object v1

    .line 249
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    .line 250
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->updateSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    .line 251
    iget-object v2, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    if-eqz v2, :cond_7f

    iget-object v2, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 252
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_7f

    if-eqz v0, :cond_5f

    .line 254
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J

    move-result-wide v2

    iget-object v4, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_5f

    .line 256
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$500(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v2

    if-eqz v2, :cond_5f

    .line 257
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$500(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget-object v3, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v2, v3, :cond_5f

    .line 259
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$500(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-object v2, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v2, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-eq v0, v2, :cond_7f

    .line 262
    :cond_5f
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    .line 265
    iget v2, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->windowIndex:I

    .line 266
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object v0

    .line 267
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->listener:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;

    .line 268
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-interface {v2, p1, v0, v1}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;->onAdPlaybackStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7f
    return-void
.end method


# virtual methods
.method public declared-synchronized belongsToSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z
    .registers 5

    monitor-enter p0

    .line 96
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1f

    if-nez p2, :cond_e

    const/4 p1, 0x0

    .line 98
    monitor-exit p0

    return p1

    .line 100
    :cond_e
    :try_start_e
    iget v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget-object v1, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->maybeSetWindowSequenceNumber(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    .line 101
    iget v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget-object p1, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->belongsToSession(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return p1

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized finishAllSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 227
    :try_start_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 229
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 230
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 231
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 232
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z
    invoke-static {v1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$300(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->listener:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;

    if-eqz v2, :cond_e

    .line 233
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->listener:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;

    .line 234
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 233
    invoke-interface {v2, p1, v1, v3}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;->onSessionFinished(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Z)V
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_34

    goto :goto_e

    .line 237
    :cond_32
    monitor-exit p0

    return-void

    :catchall_34
    move-exception p1

    monitor-exit p0

    goto :goto_38

    :goto_37
    throw p1

    :goto_38
    goto :goto_37
.end method

.method public declared-synchronized getActiveSessionId()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 222
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSessionForMediaPeriodId(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 90
    :try_start_1
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object p1

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object p1

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setListener(Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->listener:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;

    return-void
.end method

.method public declared-synchronized updateSessions(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 106
    :try_start_5
    iget-object v2, v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->listener:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v2, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11e

    if-eqz v2, :cond_14

    .line 109
    monitor-exit p0

    return-void

    .line 111
    :cond_14
    :try_start_14
    iget-object v2, v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 112
    iget-object v3, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    const/4 v4, 0x1

    if-eqz v3, :cond_4b

    if-eqz v2, :cond_4b

    .line 118
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    const/4 v3, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_3a

    .line 119
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$200(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)I

    move-result v2

    iget v5, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->windowIndex:I

    if-eq v2, v5, :cond_47

    :goto_38
    const/4 v3, 0x1

    goto :goto_47

    :cond_3a
    iget-object v5, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    .line 120
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J

    move-result-wide v7
    :try_end_42
    .catchall {:try_start_14 .. :try_end_42} :catchall_11e

    cmp-long v2, v5, v7

    if-gez v2, :cond_47

    goto :goto_38

    :cond_47
    :goto_47
    if-eqz v3, :cond_4b

    .line 122
    monitor-exit p0

    return-void

    .line 125
    :cond_4b
    :try_start_4b
    iget v2, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget-object v3, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 126
    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object v2

    .line 127
    iget-object v3, v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    if-nez v3, :cond_5d

    .line 128
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    .line 130
    :cond_5d
    iget-object v3, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    if-eqz v3, :cond_df

    iget-object v3, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_df

    .line 132
    new-instance v10, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v5, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v7, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v7, v7, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-direct {v10, v3, v5, v6, v7}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    .line 137
    iget v3, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->windowIndex:I

    .line 138
    invoke-direct {v1, v3, v10}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object v3

    .line 139
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z
    invoke-static {v3}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$300(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v5

    if-nez v5, :cond_df

    .line 140
    # setter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$302(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;Z)Z

    .line 141
    iget-object v5, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v6, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v7, v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 142
    iget-object v5, v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v6, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v6, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 143
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v5

    iget-object v7, v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 144
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v7

    add-long/2addr v5, v7

    const-wide/16 v7, 0x0

    .line 146
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 147
    new-instance v15, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-object v8, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v9, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget-object v13, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->currentTimeline:Lcom/google/android/exoplayer2/Timeline;

    iget v14, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->currentWindowIndex:I

    iget-object v5, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->currentMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object/from16 v16, v5

    iget-wide v4, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->currentPlaybackPositionMs:J

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    iget-wide v2, v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->totalBufferedDurationMs:J

    move-wide/from16 v22, v4

    move-object/from16 v4, v16

    move-wide/from16 v16, v22

    move-object v5, v15

    move-object v0, v15

    move-object v15, v4

    move-wide/from16 v18, v2

    invoke-direct/range {v5 .. v19}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;-><init>(JLcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JLcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)V

    .line 159
    iget-object v2, v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->listener:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;->onSessionCreated(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    goto :goto_e1

    :cond_df
    move-object/from16 v20, v2

    .line 162
    :goto_e1
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z
    invoke-static/range {v20 .. v20}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$300(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v0

    if-nez v0, :cond_f9

    move-object/from16 v0, v20

    const/4 v2, 0x1

    .line 163
    # setter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$302(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;Z)Z

    .line 164
    iget-object v2, v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->listener:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-interface {v2, v4, v3}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;->onSessionCreated(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    goto :goto_fd

    :cond_f9
    move-object/from16 v4, p1

    move-object/from16 v0, v20

    .line 166
    :goto_fd
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11c

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isActive:Z
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$400(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v2

    if-nez v2, :cond_11c

    const/4 v2, 0x1

    .line 167
    # setter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isActive:Z
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$402(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;Z)Z

    .line 168
    iget-object v2, v1, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->listener:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;->onSessionActive(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    :try_end_11c
    .catchall {:try_start_4b .. :try_end_11c} :catchall_11e

    .line 170
    :cond_11c
    monitor-exit p0

    return-void

    :catchall_11e
    move-exception v0

    monitor-exit p0

    goto :goto_122

    :goto_121
    throw v0

    :goto_122
    goto :goto_121
.end method

.method public declared-synchronized updateSessionsWithDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 9

    monitor-enter p0

    .line 198
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->listener:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_c

    const/4 p2, 0x1

    goto :goto_d

    :cond_c
    const/4 p2, 0x0

    .line 200
    :goto_d
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 201
    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 202
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 203
    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isFinishedAtEventTime(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 204
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 205
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z
    invoke-static {v3}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$300(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 206
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz p2, :cond_48

    if-eqz v4, :cond_48

    .line 208
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isActive:Z
    invoke-static {v3}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$400(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_48

    const/4 v5, 0x1

    goto :goto_49

    :cond_48
    const/4 v5, 0x0

    :goto_49
    if-eqz v4, :cond_4e

    const/4 v4, 0x0

    .line 210
    iput-object v4, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    .line 212
    :cond_4e
    iget-object v4, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->listener:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, p1, v3, v5}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;->onSessionFinished(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Z)V

    goto :goto_17

    .line 216
    :cond_58
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->updateCurrentSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_5d

    .line 217
    monitor-exit p0

    return-void

    :catchall_5d
    move-exception p1

    monitor-exit p0

    goto :goto_61

    :goto_60
    throw p1

    :goto_61
    goto :goto_60
.end method

.method public declared-synchronized updateSessionsWithTimelineChange(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 7

    monitor-enter p0

    .line 174
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->listener:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentTimeline:Lcom/google/android/exoplayer2/Timeline;

    .line 176
    iget-object v1, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iput-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentTimeline:Lcom/google/android/exoplayer2/Timeline;

    .line 177
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 178
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 179
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 180
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentTimeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->tryResolvingToNewTimeline(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 181
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isFinishedAtEventTime(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 182
    :cond_30
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 183
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$300(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 184
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    const/4 v3, 0x0

    .line 185
    iput-object v3, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    .line 187
    :cond_48
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->listener:Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;

    .line 188
    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 187
    invoke-interface {v3, p1, v2, v4}, Lcom/google/android/exoplayer2/analytics/PlaybackSessionManager$Listener;->onSessionFinished(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Z)V

    goto :goto_16

    .line 192
    :cond_53
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->updateCurrentSession(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    :try_end_56
    .catchall {:try_start_1 .. :try_end_56} :catchall_58

    .line 193
    monitor-exit p0

    return-void

    :catchall_58
    move-exception p1

    monitor-exit p0

    goto :goto_5c

    :goto_5b
    throw p1

    :goto_5c
    goto :goto_5b
.end method
