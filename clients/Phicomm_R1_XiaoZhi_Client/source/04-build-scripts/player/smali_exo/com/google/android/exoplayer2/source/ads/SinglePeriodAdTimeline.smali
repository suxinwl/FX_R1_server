.class public final Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;
.super Lcom/google/android/exoplayer2/source/ForwardingTimeline;


# instance fields
.field private final adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .registers 6

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;)V

    .line 39
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 40
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result p1

    if-ne p1, v2, :cond_18

    const/4 v1, 0x1

    :cond_18
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 41
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    return-void
.end method


# virtual methods
.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 16

    .line 46
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 47
    iget-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    goto :goto_17

    :cond_15
    iget-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    :goto_17
    move-wide v6, v0

    .line 49
    iget-object v3, p2, Lcom/google/android/exoplayer2/Timeline$Period;->id:Ljava/lang/Object;

    iget-object v4, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    iget v5, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 54
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v8

    iget-object v10, p0, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-boolean v11, p2, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    move-object v2, p2

    .line 49
    invoke-virtual/range {v2 .. v11}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/AdPlaybackState;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    return-object p2
.end method
