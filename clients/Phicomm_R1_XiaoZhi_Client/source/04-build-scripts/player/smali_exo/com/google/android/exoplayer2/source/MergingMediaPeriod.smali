.class final Lcom/google/android/exoplayer2/source/MergingMediaPeriod;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;,
        Lcom/google/android/exoplayer2/source/MergingMediaPeriod$TimeOffsetSampleStream;,
        Lcom/google/android/exoplayer2/source/MergingMediaPeriod$TimeOffsetMediaPeriod;
    }
.end annotation


# instance fields
.field private callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private final childTrackGroupByMergedTrackGroup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final childrenPendingPreparation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/MediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

.field private final compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

.field private final periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

.field private final streamPeriodIndices:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/android/exoplayer2/source/SampleStream;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;


# direct methods
.method public varargs constructor <init>(Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;[J[Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 9

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 61
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->childTrackGroupByMergedTrackGroup:Ljava/util/HashMap;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .line 65
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;->createCompositeSequenceableLoader([Lcom/google/android/exoplayer2/source/SequenceableLoader;)Lcom/google/android/exoplayer2/source/SequenceableLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .line 66
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    new-array p1, v0, [Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 67
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 68
    :goto_29
    array-length p1, p3

    if-ge v0, p1, :cond_44

    .line 69
    aget-wide v1, p2, v0

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_41

    .line 70
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    new-instance v1, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$TimeOffsetMediaPeriod;

    aget-object v2, p3, v0

    aget-wide v3, p2, v0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$TimeOffsetMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriod;J)V

    aput-object v1, p1, v0

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_44
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .registers 7

    .line 200
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_20

    .line 204
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v3, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_20
    return v1

    .line 208
    :cond_21
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->continueLoading(J)Z

    move-result p1

    return p1
.end method

.method public discardBuffer(JZ)V
    .registers 8

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 189
    invoke-interface {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .registers 7

    .line 271
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_9

    aget-object v0, v0, v2

    goto :goto_d

    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    aget-object v0, v0, v2

    .line 272
    :goto_d
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getChildPeriod(I)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    aget-object v1, v0, p1

    instance-of v1, v1, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$TimeOffsetMediaPeriod;

    if-eqz v1, :cond_11

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$TimeOffsetMediaPeriod;

    .line 82
    # getter for: Lcom/google/android/exoplayer2/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->access$000(Lcom/google/android/exoplayer2/source/MergingMediaPeriod$TimeOffsetMediaPeriod;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p1

    goto :goto_13

    :cond_11
    aget-object p1, v0, p1

    :goto_13
    return-object p1
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/MediaPeriod$-CC;->$default$getStreamKeys(Lcom/google/android/exoplayer2/source/MediaPeriod;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->isLoading()Z

    move-result v0

    return v0
.end method

.method public maybeThrowPrepareError()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 98
    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 2

    .line 305
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .registers 2

    .line 43
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 11

    .line 279
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 280
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    return-void

    .line 284
    :cond_e
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_14
    if-ge v2, v0, :cond_22

    aget-object v4, p1, v2

    .line 285
    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v4

    iget v4, v4, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 287
    :cond_22
    new-array p1, v3, [Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 289
    :goto_26
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v4, v3

    if-ge v0, v4, :cond_64

    .line 290
    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    .line 291
    iget v4, v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    const/4 v5, 0x0

    :goto_34
    if-ge v5, v4, :cond_61

    .line 293
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    .line 294
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/google/android/exoplayer2/source/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->copyWithId(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    .line 295
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->childTrackGroupByMergedTrackGroup:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x1

    .line 296
    aput-object v7, p1, v2

    add-int/lit8 v5, v5, 0x1

    move v2, v6

    goto :goto_34

    :cond_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 299
    :cond_64
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 300
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .registers 7

    .line 88
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 89
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 90
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_17

    aget-object v2, p1, v1

    .line 91
    invoke-interface {v2, p0, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_17
    return-void
.end method

.method public readDiscontinuity()J
    .registers 18

    move-object/from16 v0, p0

    .line 225
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v2, v1

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v7, v4

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v2, :cond_60

    aget-object v9, v1, v6

    .line 226
    invoke-interface {v9}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v10

    const-string v12, "Unexpected child seekToUs result."

    cmp-long v13, v10, v4

    if-eqz v13, :cond_4a

    cmp-long v13, v7, v4

    if-nez v13, :cond_3d

    .line 231
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v8, v7

    const/4 v13, 0x0

    :goto_23
    if-ge v13, v8, :cond_3b

    aget-object v14, v7, v13

    if-ne v14, v9, :cond_2a

    goto :goto_3b

    .line 235
    :cond_2a
    invoke-interface {v14, v10, v11}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v14

    cmp-long v16, v14, v10

    if-nez v16, :cond_35

    add-int/lit8 v13, v13, 0x1

    goto :goto_23

    .line 236
    :cond_35
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3b
    :goto_3b
    move-wide v7, v10

    goto :goto_5d

    :cond_3d
    cmp-long v9, v10, v7

    if-nez v9, :cond_42

    goto :goto_5d

    .line 240
    :cond_42
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Conflicting discontinuities."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4a
    cmp-long v10, v7, v4

    if-eqz v10, :cond_5d

    .line 244
    invoke-interface {v9, v7, v8}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-nez v11, :cond_57

    goto :goto_5d

    .line 245
    :cond_57
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5d
    :goto_5d
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_60
    return-wide v7
.end method

.method public reevaluateBuffer(J)V
    .registers 4

    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->reevaluateBuffer(J)V

    return-void
.end method

.method public seekToUs(J)J
    .registers 7

    .line 259
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p1

    const/4 v0, 0x1

    .line 261
    :goto_a
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v2, v1

    if-ge v0, v2, :cond_24

    .line 262
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_1c

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 263
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected child seekToUs result."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    return-wide p1
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 115
    array-length v3, v1

    new-array v3, v3, [I

    .line 116
    array-length v4, v1

    new-array v4, v4, [I

    const/4 v6, 0x0

    .line 117
    :goto_d
    array-length v7, v1

    const/4 v8, 0x0

    if-ge v6, v7, :cond_5f

    .line 118
    aget-object v7, v2, v6

    if-nez v7, :cond_16

    goto :goto_21

    :cond_16
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    aget-object v8, v2, v6

    invoke-virtual {v7, v8}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/Integer;

    :goto_21
    const/4 v7, -0x1

    if-nez v8, :cond_26

    const/4 v8, -0x1

    goto :goto_2a

    .line 119
    :cond_26
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_2a
    aput v8, v3, v6

    .line 120
    aput v7, v4, v6

    .line 121
    aget-object v8, v1, v6

    if-eqz v8, :cond_5c

    .line 122
    aget-object v8, v1, v6

    invoke-interface {v8}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    .line 123
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->childTrackGroupByMergedTrackGroup:Ljava/util/HashMap;

    .line 124
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v9, 0x0

    .line 125
    :goto_45
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v11, v10

    if-ge v9, v11, :cond_5c

    .line 126
    aget-object v10, v10, v9

    invoke-interface {v10}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v10

    if-eq v10, v7, :cond_59

    .line 127
    aput v9, v4, v6

    goto :goto_5c

    :cond_59
    add-int/lit8 v9, v9, 0x1

    goto :goto_45

    :cond_5c
    :goto_5c
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 133
    :cond_5f
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    .line 135
    array-length v6, v1

    new-array v7, v6, [Lcom/google/android/exoplayer2/source/SampleStream;

    .line 136
    array-length v9, v1

    new-array v9, v9, [Lcom/google/android/exoplayer2/source/SampleStream;

    .line 137
    array-length v10, v1

    new-array v15, v10, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 138
    new-instance v14, Ljava/util/ArrayList;

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v10, v10

    invoke-direct {v14, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-wide/from16 v17, p5

    const/4 v13, 0x0

    .line 139
    :goto_78
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v10, v10

    if-ge v13, v10, :cond_11b

    const/4 v10, 0x0

    .line 140
    :goto_7e
    array-length v11, v1

    if-ge v10, v11, :cond_b4

    .line 141
    aget v11, v3, v10

    if-ne v11, v13, :cond_88

    aget-object v11, v2, v10

    goto :goto_89

    :cond_88
    move-object v11, v8

    :goto_89
    aput-object v11, v9, v10

    .line 142
    aget v11, v4, v10

    if-ne v11, v13, :cond_af

    .line 143
    aget-object v11, v1, v10

    invoke-static {v11}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 144
    invoke-interface {v11}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v12

    .line 145
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->childTrackGroupByMergedTrackGroup:Ljava/util/HashMap;

    .line 146
    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 147
    new-instance v12, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;

    invoke-direct {v12, v11, v5}, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;-><init>(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;Lcom/google/android/exoplayer2/source/TrackGroup;)V

    aput-object v12, v15, v10

    goto :goto_b1

    .line 149
    :cond_af
    aput-object v8, v15, v10

    :goto_b1
    add-int/lit8 v10, v10, 0x1

    goto :goto_7e

    .line 152
    :cond_b4
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    aget-object v10, v5, v13

    move-object v11, v15

    move-object/from16 v12, p2

    move v5, v13

    move-object v13, v9

    move-object v8, v14

    move-object/from16 v14, p4

    move-object/from16 v19, v15

    move-wide/from16 v15, v17

    .line 153
    invoke-interface/range {v10 .. v16}, Lcom/google/android/exoplayer2/source/MediaPeriod;->selectTracks([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide v10

    if-nez v5, :cond_cd

    move-wide/from16 v17, v10

    goto :goto_d1

    :cond_cd
    cmp-long v12, v10, v17

    if-nez v12, :cond_113

    :goto_d1
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 161
    :goto_d3
    array-length v12, v1

    if-ge v10, v12, :cond_102

    .line 162
    aget v12, v4, v10

    const/4 v13, 0x1

    if-ne v12, v5, :cond_f2

    .line 164
    aget-object v11, v9, v10

    invoke-static {v11}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/source/SampleStream;

    .line 165
    aget-object v12, v9, v10

    aput-object v12, v7, v10

    .line 167
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v11, v14}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x1

    goto :goto_ff

    .line 168
    :cond_f2
    aget v12, v3, v10

    if-ne v12, v5, :cond_ff

    .line 170
    aget-object v12, v9, v10

    if-nez v12, :cond_fb

    goto :goto_fc

    :cond_fb
    const/4 v13, 0x0

    :goto_fc
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    :cond_ff
    :goto_ff
    add-int/lit8 v10, v10, 0x1

    goto :goto_d3

    :cond_102
    if-eqz v11, :cond_10b

    .line 174
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    aget-object v10, v10, v5

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10b
    add-int/lit8 v13, v5, 0x1

    move-object v14, v8

    move-object/from16 v15, v19

    const/4 v8, 0x0

    goto/16 :goto_78

    .line 158
    :cond_113
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Children enabled at different positions."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11b
    move-object v8, v14

    const/4 v1, 0x0

    .line 178
    invoke-static {v7, v1, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v1, [Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 180
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/source/MediaPeriod;

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 181
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 182
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;->createCompositeSequenceableLoader([Lcom/google/android/exoplayer2/source/SequenceableLoader;)Lcom/google/android/exoplayer2/source/SequenceableLoader;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->compositeSequenceableLoader:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    return-wide v17
.end method
