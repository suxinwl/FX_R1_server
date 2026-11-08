.class final Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionDescriptor"
.end annotation


# instance fields
.field private adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field private isActive:Z

.field private isCreated:Z

.field private final sessionId:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;

.field private windowIndex:I

.field private windowSequenceNumber:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;Ljava/lang/String;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 5

    .line 332
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->this$0:Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;

    .line 334
    iput p3, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    if-nez p4, :cond_e

    const-wide/16 p1, -0x1

    goto :goto_10

    .line 335
    :cond_e
    iget-wide p1, p4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    :goto_10
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    if-eqz p4, :cond_1c

    .line 337
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 338
    iput-object p4, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    :cond_1c
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;
    .registers 1

    .line 320
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J
    .registers 3

    .line 320
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)I
    .registers 1

    .line 320
    iget p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z
    .registers 1

    .line 320
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z

    return p0
.end method

.method static synthetic access$302(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;Z)Z
    .registers 2

    .line 320
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z
    .registers 1

    .line 320
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isActive:Z

    return p0
.end method

.method static synthetic access$402(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;Z)Z
    .registers 2

    .line 320
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isActive:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .registers 1

    .line 320
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-object p0
.end method

.method private resolveWindowIndexToNewTimeline(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;I)I
    .registers 6

    .line 427
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    const/4 v1, -0x1

    if-lt p3, v0, :cond_10

    .line 428
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result p1

    if-ge p3, p1, :cond_e

    goto :goto_f

    :cond_e
    const/4 p3, -0x1

    :goto_f
    return p3

    .line 430
    :cond_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->this$0:Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->window:Lcom/google/android/exoplayer2/Timeline$Window;
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->access$600(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 431
    iget-object p3, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->this$0:Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->window:Lcom/google/android/exoplayer2/Timeline$Window;
    invoke-static {p3}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->access$600(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p3

    iget p3, p3, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .line 432
    :goto_21
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->this$0:Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->window:Lcom/google/android/exoplayer2/Timeline$Window;
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->access$600(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-gt p3, v0, :cond_45

    .line 434
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v0

    .line 435
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v1, :cond_42

    .line 437
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->this$0:Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;

    # getter for: Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->period:Lcom/google/android/exoplayer2/Timeline$Period;
    invoke-static {p1}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->access$700(Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    return p1

    :cond_42
    add-int/lit8 p3, p3, 0x1

    goto :goto_21

    :cond_45
    return v1
.end method


# virtual methods
.method public belongsToSession(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_b

    .line 358
    iget p2, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    if-ne p1, p2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0

    .line 360
    :cond_b
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    if-nez p1, :cond_20

    .line 363
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p1

    if-nez p1, :cond_1e

    iget-wide p1, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    .line 367
    :cond_20
    iget-wide v2, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_3b

    iget p1, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v2, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne p1, v2, :cond_3b

    iget p1, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget p2, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-ne p1, p2, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    return v0
.end method

.method public isFinishedAtEventTime(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)Z
    .registers 11

    .line 383
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_a

    return v2

    .line 387
    :cond_a
    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    const/4 v1, 0x1

    if-nez v0, :cond_17

    .line 390
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    iget p1, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->windowIndex:I

    if-eq v0, p1, :cond_16

    const/4 v2, 0x1

    :cond_16
    return v2

    .line 392
    :cond_17
    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_22

    return v1

    .line 396
    :cond_22
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    if-nez v0, :cond_27

    return v2

    .line 400
    :cond_27
    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 401
    iget-object v3, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    .line 402
    iget-object v4, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v6, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_83

    if-ge v0, v3, :cond_4a

    goto :goto_83

    :cond_4a
    if-le v0, v3, :cond_4d

    return v1

    .line 411
    :cond_4d
    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 412
    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 413
    iget-object p1, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget p1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 415
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-gt v0, v3, :cond_6f

    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v0, v3, :cond_70

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-le p1, v0, :cond_70

    :cond_6f
    const/4 v2, 0x1

    :cond_70
    return v2

    .line 420
    :cond_71
    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_82

    iget-object p1, p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget p1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-le p1, v0, :cond_83

    :cond_82
    const/4 v2, 0x1

    :cond_83
    :goto_83
    return v2
.end method

.method public maybeSetWindowSequenceNumber(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 8

    .line 374
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_12

    iget v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    if-ne p1, v0, :cond_12

    if-eqz p2, :cond_12

    .line 378
    iget-wide p1, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    :cond_12
    return-void
.end method

.method public tryResolvingToNewTimeline(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Z
    .registers 6

    .line 343
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->resolveWindowIndexToNewTimeline(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_d

    return v0

    .line 347
    :cond_d
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    const/4 v2, 0x1

    if-nez p1, :cond_13

    return v2

    .line 350
    :cond_13
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method
