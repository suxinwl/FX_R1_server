.class final Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;
.super Ljava/lang/Object;
.source "DynamicConcatenatingMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeferredMediaPeriod"
.end annotation


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private final id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field private mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

.field public final mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private preparePositionUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)V
    .registers 4
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;

    .prologue
    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 778
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 779
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 780
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 781
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .registers 4
    .param p1, "positionUs"    # J

    .prologue
    .line 853
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public createPeriod()V
    .registers 5

    .prologue
    .line 784
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 785
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    if-eqz v0, :cond_17

    .line 786
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->preparePositionUs:J

    invoke-interface {v0, p0, v2, v3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    .line 788
    :cond_17
    return-void
.end method

.method public discardBuffer(J)V
    .registers 4
    .param p1, "positionUs"    # J

    .prologue
    .line 828
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(J)V

    .line 829
    return-void
.end method

.method public getBufferedPositionUs()J
    .registers 3

    .prologue
    .line 838
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .prologue
    .line 848
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .registers 2

    .prologue
    .line 816
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 807
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_a

    .line 808
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    .line 812
    :goto_9
    return-void

    .line 810
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    goto :goto_9
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 3
    .param p1, "source"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .prologue
    .line 858
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 859
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .registers 2

    .prologue
    .line 766
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 3
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .prologue
    .line 863
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 864
    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .registers 6
    .param p1, "callback"    # Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
    .param p2, "preparePositionUs"    # J

    .prologue
    .line 798
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 799
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->preparePositionUs:J

    .line 800
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_d

    .line 801
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p0, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    .line 803
    :cond_d
    return-void
.end method

.method public readDiscontinuity()J
    .registers 3

    .prologue
    .line 833
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    return-wide v0
.end method

.method public releasePeriod()V
    .registers 3

    .prologue
    .line 791
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_b

    .line 792
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 794
    :cond_b
    return-void
.end method

.method public seekToUs(J)J
    .registers 6
    .param p1, "positionUs"    # J

    .prologue
    .line 843
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .registers 16
    .param p1, "selections"    # [Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lcom/google/android/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .prologue
    .line 822
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/MediaPeriod;->selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide v0

    return-wide v0
.end method
