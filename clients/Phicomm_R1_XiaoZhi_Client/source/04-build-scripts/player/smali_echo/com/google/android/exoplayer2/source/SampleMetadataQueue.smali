.class final Lcom/google/android/exoplayer2/source/SampleMetadataQueue;
.super Ljava/lang/Object;
.source "SampleMetadataQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;
    }
.end annotation


# static fields
.field private static final SAMPLE_CAPACITY_INCREMENT:I = 0x3e8


# instance fields
.field private absoluteStartIndex:I

.field private capacity:I

.field private cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

.field private flags:[I

.field private formats:[Lcom/google/android/exoplayer2/Format;

.field private largestDiscardedTimestampUs:J

.field private largestQueuedTimestampUs:J

.field private length:I

.field private offsets:[J

.field private readPosition:I

.field private relativeStartIndex:I

.field private sizes:[I

.field private sourceIds:[I

.field private timesUs:[J

.field private upstreamFormat:Lcom/google/android/exoplayer2/Format;

.field private upstreamFormatRequired:Z

.field private upstreamKeyframeRequired:Z

.field private upstreamSourceId:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    const/4 v1, 0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    .line 67
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sourceIds:[I

    .line 68
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    .line 69
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    .line 70
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->flags:[I

    .line 71
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sizes:[I

    .line 72
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 73
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    new-array v0, v0, [Lcom/google/android/exoplayer2/Format;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    .line 74
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    .line 75
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    .line 76
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormatRequired:Z

    .line 77
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamKeyframeRequired:Z

    .line 78
    return-void
.end method

.method private discardSamples(I)J
    .registers 8
    .param p1, "discardCount"    # I

    .prologue
    .line 487
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    .line 488
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getLargestTimestamp(I)J

    move-result-wide v4

    .line 487
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    .line 489
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    .line 490
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->absoluteStartIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->absoluteStartIndex:I

    .line 491
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    .line 492
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    if-lt v1, v2, :cond_28

    .line 493
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    .line 495
    :cond_28
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    .line 496
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    if-gez v1, :cond_34

    .line 497
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    .line 499
    :cond_34
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    if-nez v1, :cond_4e

    .line 500
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    if-nez v1, :cond_4b

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    :goto_3e
    add-int/lit8 v0, v1, -0x1

    .line 501
    .local v0, "relativeLastDiscardIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sizes:[I

    aget v1, v1, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 503
    .end local v0    # "relativeLastDiscardIndex":I
    :goto_4a
    return-wide v2

    .line 500
    :cond_4b
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    goto :goto_3e

    .line 503
    :cond_4e
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    aget-wide v2, v1, v2

    goto :goto_4a
.end method

.method private findSampleBefore(IIJZ)I
    .registers 13
    .param p1, "relativeStartIndex"    # I
    .param p2, "length"    # I
    .param p3, "timeUs"    # J
    .param p5, "keyframe"    # Z

    .prologue
    .line 464
    const/4 v1, -0x1

    .line 465
    .local v1, "sampleCountToTarget":I
    move v2, p1

    .line 466
    .local v2, "searchIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, p2, :cond_22

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    aget-wide v4, v3, v2

    cmp-long v3, v4, p3

    if-gtz v3, :cond_22

    .line 467
    if-eqz p5, :cond_17

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->flags:[I

    aget v3, v3, v2

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_18

    .line 469
    :cond_17
    move v1, v0

    .line 471
    :cond_18
    add-int/lit8 v2, v2, 0x1

    .line 472
    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    if-ne v2, v3, :cond_1f

    .line 473
    const/4 v2, 0x0

    .line 466
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 476
    :cond_22
    return v1
.end method

.method private getLargestTimestamp(I)J
    .registers 8
    .param p1, "length"    # I

    .prologue
    .line 516
    if-nez p1, :cond_5

    .line 517
    const-wide/high16 v2, -0x8000000000000000L

    .line 531
    :cond_4
    return-wide v2

    .line 519
    :cond_5
    const-wide/high16 v2, -0x8000000000000000L

    .line 520
    .local v2, "largestTimestampUs":J
    add-int/lit8 v4, p1, -0x1

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v1

    .line 521
    .local v1, "relativeSampleIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, p1, :cond_4

    .line 522
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    aget-wide v4, v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 523
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->flags:[I

    aget v4, v4, v1

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_4

    .line 526
    add-int/lit8 v1, v1, -0x1

    .line 527
    const/4 v4, -0x1

    if-ne v1, v4, :cond_29

    .line 528
    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    add-int/lit8 v1, v4, -0x1

    .line 521
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method private getRelativeIndex(I)I
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 540
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    add-int v0, v1, p1

    .line 541
    .local v0, "relativeIndex":I
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    if-ge v0, v1, :cond_9

    .end local v0    # "relativeIndex":I
    :goto_8
    return v0

    .restart local v0    # "relativeIndex":I
    :cond_9
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    sub-int/2addr v0, v1

    goto :goto_8
.end method


# virtual methods
.method public declared-synchronized advanceTo(JZZ)I
    .registers 14
    .param p1, "timeUs"    # J
    .param p3, "toKeyframe"    # Z
    .param p4, "allowTimeBeyondBuffer"    # Z

    .prologue
    const/4 v7, -0x1

    .line 263
    monitor-enter p0

    :try_start_2
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v2

    .line 264
    .local v2, "relativeReadIndex":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->hasNextSample()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    aget-wide v4, v1, v2

    cmp-long v1, p1, v4

    if-ltz v1, :cond_1e

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestQueuedTimestampUs:J
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_38

    cmp-long v1, p1, v4

    if-lez v1, :cond_21

    if-nez p4, :cond_21

    :cond_1e
    move v0, v7

    .line 273
    :goto_1f
    monitor-exit p0

    return v0

    .line 268
    :cond_21
    :try_start_21
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    sub-int v3, v1, v3

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->findSampleBefore(IIJZ)I

    move-result v0

    .line 269
    .local v0, "offset":I
    if-ne v0, v7, :cond_32

    move v0, v7

    .line 270
    goto :goto_1f

    .line 272
    :cond_32
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I
    :try_end_37
    .catchall {:try_start_21 .. :try_end_37} :catchall_38

    goto :goto_1f

    .line 263
    .end local v0    # "offset":I
    .end local v2    # "relativeReadIndex":I
    :catchall_38
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized advanceToEnd()I
    .registers 4

    .prologue
    .line 282
    monitor-enter p0

    :try_start_1
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    sub-int v0, v1, v2

    .line 283
    .local v0, "skipCount":I
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    iput v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 284
    monitor-exit p0

    return v0

    .line 282
    .end local v0    # "skipCount":I
    :catchall_d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized attemptSplice(J)Z
    .registers 14
    .param p1, "timeUs"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 426
    monitor-enter p0

    :try_start_3
    iget v6, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    if-nez v6, :cond_11

    .line 427
    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_4c

    cmp-long v6, p1, v6

    if-lez v6, :cond_f

    .line 444
    :goto_d
    monitor-exit p0

    return v4

    :cond_f
    move v4, v5

    .line 427
    goto :goto_d

    .line 429
    :cond_11
    :try_start_11
    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    .line 430
    invoke-direct {p0, v8}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getLargestTimestamp(I)J

    move-result-wide v8

    .line 429
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 431
    .local v0, "largestReadTimestampUs":J
    cmp-long v6, v0, p1

    if-ltz v6, :cond_23

    move v4, v5

    .line 432
    goto :goto_d

    .line 434
    :cond_23
    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    .line 435
    .local v3, "retainCount":I
    iget v5, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v2

    .line 436
    .local v2, "relativeSampleIndex":I
    :cond_2d
    :goto_2d
    iget v5, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    if-le v3, v5, :cond_45

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    aget-wide v6, v5, v2

    cmp-long v5, v6, p1

    if-ltz v5, :cond_45

    .line 437
    add-int/lit8 v3, v3, -0x1

    .line 438
    add-int/lit8 v2, v2, -0x1

    .line 439
    const/4 v5, -0x1

    if-ne v2, v5, :cond_2d

    .line 440
    iget v5, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    add-int/lit8 v2, v5, -0x1

    goto :goto_2d

    .line 443
    :cond_45
    iget v5, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->absoluteStartIndex:I

    add-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardUpstreamSamples(I)J
    :try_end_4b
    .catchall {:try_start_11 .. :try_end_4b} :catchall_4c

    goto :goto_d

    .line 426
    .end local v0    # "largestReadTimestampUs":J
    .end local v2    # "relativeSampleIndex":I
    .end local v3    # "retainCount":I
    :catchall_4c
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized commitSample(JIJILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .registers 23
    .param p1, "timeUs"    # J
    .param p3, "sampleFlags"    # I
    .param p4, "offset"    # J
    .param p6, "size"    # I
    .param p7, "cryptoData"    # Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .prologue
    .line 356
    monitor-enter p0

    :try_start_1
    iget-boolean v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamKeyframeRequired:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e0

    if-eqz v11, :cond_e

    .line 357
    and-int/lit8 v11, p3, 0x1

    if-nez v11, :cond_b

    .line 412
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 360
    :cond_b
    const/4 v11, 0x0

    :try_start_c
    iput-boolean v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamKeyframeRequired:Z

    .line 362
    :cond_e
    iget-boolean v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormatRequired:Z

    if-nez v11, :cond_e3

    const/4 v11, 0x1

    :goto_13
    invoke-static {v11}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 363
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->commitSampleTimestamp(J)V

    .line 365
    iget v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    invoke-direct {p0, v11}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v10

    .line 366
    .local v10, "relativeEndIndex":I
    iget-object v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    aput-wide p1, v11, v10

    .line 367
    iget-object v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    aput-wide p4, v11, v10

    .line 368
    iget-object v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sizes:[I

    aput p6, v11, v10

    .line 369
    iget-object v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->flags:[I

    aput p3, v11, v10

    .line 370
    iget-object v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    aput-object p7, v11, v10

    .line 371
    iget-object v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    iget-object v12, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    aput-object v12, v11, v10

    .line 372
    iget-object v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sourceIds:[I

    iget v12, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamSourceId:I

    aput v12, v11, v10

    .line 374
    iget v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    .line 375
    iget v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    iget v12, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    if-ne v11, v12, :cond_9

    .line 377
    iget v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    add-int/lit16 v2, v11, 0x3e8

    .line 378
    .local v2, "newCapacity":I
    new-array v8, v2, [I

    .line 379
    .local v8, "newSourceIds":[I
    new-array v6, v2, [J

    .line 380
    .local v6, "newOffsets":[J
    new-array v9, v2, [J

    .line 381
    .local v9, "newTimesUs":[J
    new-array v4, v2, [I

    .line 382
    .local v4, "newFlags":[I
    new-array v7, v2, [I

    .line 383
    .local v7, "newSizes":[I
    new-array v3, v2, [Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 384
    .local v3, "newCryptoDatas":[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
    new-array v5, v2, [Lcom/google/android/exoplayer2/Format;

    .line 385
    .local v5, "newFormats":[Lcom/google/android/exoplayer2/Format;
    iget v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    iget v12, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    sub-int v1, v11, v12

    .line 386
    .local v1, "beforeWrap":I
    iget-object v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    iget v12, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    const/4 v13, 0x0

    invoke-static {v11, v12, v6, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    iget-object v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    iget v12, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    const/4 v13, 0x0

    invoke-static {v11, v12, v9, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    iget-object v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->flags:[I

    iget v12, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    const/4 v13, 0x0

    invoke-static {v11, v12, v4, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    iget-object v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sizes:[I

    iget v12, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    const/4 v13, 0x0

    invoke-static {v11, v12, v7, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    iget-object v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    iget v12, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    const/4 v13, 0x0

    invoke-static {v11, v12, v3, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    iget-object v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    iget v12, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    const/4 v13, 0x0

    invoke-static {v11, v12, v5, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    iget-object v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sourceIds:[I

    iget v12, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    const/4 v13, 0x0

    invoke-static {v11, v12, v8, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    .line 394
    .local v0, "afterWrap":I
    iget-object v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    const/4 v12, 0x0

    invoke-static {v11, v12, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    iget-object v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    const/4 v12, 0x0

    invoke-static {v11, v12, v9, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    iget-object v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->flags:[I

    const/4 v12, 0x0

    invoke-static {v11, v12, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    iget-object v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sizes:[I

    const/4 v12, 0x0

    invoke-static {v11, v12, v7, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    iget-object v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    const/4 v12, 0x0

    invoke-static {v11, v12, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    iget-object v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    const/4 v12, 0x0

    invoke-static {v11, v12, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    iget-object v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sourceIds:[I

    const/4 v12, 0x0

    invoke-static {v11, v12, v8, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    iput-object v6, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    .line 402
    iput-object v9, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    .line 403
    iput-object v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->flags:[I

    .line 404
    iput-object v7, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sizes:[I

    .line 405
    iput-object v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 406
    iput-object v5, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    .line 407
    iput-object v8, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sourceIds:[I

    .line 408
    const/4 v11, 0x0

    iput v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    .line 409
    iget v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    iput v11, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    .line 410
    iput v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I
    :try_end_de
    .catchall {:try_start_c .. :try_end_de} :catchall_e0

    goto/16 :goto_9

    .line 356
    .end local v0    # "afterWrap":I
    .end local v1    # "beforeWrap":I
    .end local v2    # "newCapacity":I
    .end local v3    # "newCryptoDatas":[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
    .end local v4    # "newFlags":[I
    .end local v5    # "newFormats":[Lcom/google/android/exoplayer2/Format;
    .end local v6    # "newOffsets":[J
    .end local v7    # "newSizes":[I
    .end local v8    # "newSourceIds":[I
    .end local v9    # "newTimesUs":[J
    .end local v10    # "relativeEndIndex":I
    :catchall_e0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 362
    :cond_e3
    const/4 v11, 0x0

    goto/16 :goto_13
.end method

.method public declared-synchronized commitSampleTimestamp(J)V
    .registers 6
    .param p1, "timeUs"    # J

    .prologue
    .line 415
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestQueuedTimestampUs:J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 416
    monitor-exit p0

    return-void

    .line 415
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized discardTo(JZZ)J
    .registers 16
    .param p1, "timeUs"    # J
    .param p3, "toKeyframe"    # Z
    .param p4, "stopAtReadPosition"    # Z

    .prologue
    const-wide/16 v8, -0x1

    .line 300
    monitor-enter p0

    :try_start_3
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    aget-wide v4, v1, v2
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_36

    cmp-long v1, p1, v4

    if-gez v1, :cond_14

    :cond_11
    move-wide v4, v8

    .line 308
    :goto_12
    monitor-exit p0

    return-wide v4

    .line 303
    :cond_14
    if-eqz p4, :cond_2e

    :try_start_16
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    if-eq v1, v2, :cond_2e

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    add-int/lit8 v3, v1, 0x1

    .line 304
    .local v3, "searchLength":I
    :goto_20
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->findSampleBefore(IIJZ)I

    move-result v0

    .line 305
    .local v0, "discardCount":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_31

    move-wide v4, v8

    .line 306
    goto :goto_12

    .line 303
    .end local v0    # "discardCount":I
    .end local v3    # "searchLength":I
    :cond_2e
    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    goto :goto_20

    .line 308
    .restart local v0    # "discardCount":I
    .restart local v3    # "searchLength":I
    :cond_31
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardSamples(I)J
    :try_end_34
    .catchall {:try_start_16 .. :try_end_34} :catchall_36

    move-result-wide v4

    goto :goto_12

    .line 300
    .end local v0    # "discardCount":I
    .end local v3    # "searchLength":I
    :catchall_36
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized discardToEnd()J
    .registers 3

    .prologue
    .line 331
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-nez v0, :cond_9

    .line 332
    const-wide/16 v0, -0x1

    .line 334
    :goto_7
    monitor-exit p0

    return-wide v0

    :cond_9
    :try_start_9
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardSamples(I)J
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    move-result-wide v0

    goto :goto_7

    .line 331
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized discardToRead()J
    .registers 3

    .prologue
    .line 318
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-nez v0, :cond_9

    .line 319
    const-wide/16 v0, -0x1

    .line 321
    :goto_7
    monitor-exit p0

    return-wide v0

    :cond_9
    :try_start_9
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardSamples(I)J
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    move-result-wide v0

    goto :goto_7

    .line 318
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public discardUpstreamSamples(I)J
    .registers 8
    .param p1, "discardFromIndex"    # I

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getWriteIndex()I

    move-result v2

    sub-int v0, v2, p1

    .line 118
    .local v0, "discardCount":I
    if-ltz v0, :cond_2d

    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_2d

    const/4 v2, 0x1

    :goto_10
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 119
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    .line 120
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getLargestTimestamp(I)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    .line 121
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    if-nez v2, :cond_2f

    .line 122
    const-wide/16 v2, 0x0

    .line 125
    :goto_2c
    return-wide v2

    .line 118
    :cond_2d
    const/4 v2, 0x0

    goto :goto_10

    .line 124
    :cond_2f
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v1

    .line 125
    .local v1, "relativeLastWriteIndex":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    aget-wide v2, v2, v1

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sizes:[I

    aget v4, v4, v1

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_2c
.end method

.method public declared-synchronized format(Lcom/google/android/exoplayer2/Format;)Z
    .registers 5
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 340
    monitor-enter p0

    if-nez p1, :cond_a

    .line 341
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormatRequired:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_19

    .line 350
    :cond_8
    :goto_8
    monitor-exit p0

    return v0

    .line 344
    :cond_a
    const/4 v2, 0x0

    :try_start_b
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormatRequired:Z

    .line 345
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 349
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_19

    move v0, v1

    .line 350
    goto :goto_8

    .line 340
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLargestQueuedTimestampUs()J
    .registers 3

    .prologue
    .line 179
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestQueuedTimestampUs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReadIndex()I
    .registers 3

    .prologue
    .line 139
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->absoluteStartIndex:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized getUpstreamFormat()Lcom/google/android/exoplayer2/Format;
    .registers 2

    .prologue
    .line 164
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormatRequired:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_6
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_b

    goto :goto_6

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWriteIndex()I
    .registers 3

    .prologue
    .line 106
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->absoluteStartIndex:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized hasNextSample()Z
    .registers 3

    .prologue
    .line 157
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public peekSourceId()I
    .registers 3

    .prologue
    .line 149
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v0

    .line 150
    .local v0, "relativeReadIndex":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->hasNextSample()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sourceIds:[I

    aget v1, v1, v0

    :goto_10
    return v1

    :cond_11
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamSourceId:I

    goto :goto_10
.end method

.method public declared-synchronized read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;)I
    .registers 12
    .param p1, "formatHolder"    # Lcom/google/android/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .param p3, "formatRequired"    # Z
    .param p4, "loadingFinished"    # Z
    .param p5, "downstreamFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p6, "extrasHolder"    # Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    .prologue
    const/4 v3, -0x3

    const/4 v1, -0x4

    const/4 v2, -0x5

    .line 214
    monitor-enter p0

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->hasNextSample()Z

    move-result v4

    if-nez v4, :cond_24

    .line 215
    if-eqz p4, :cond_12

    .line 216
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_68

    .line 244
    :goto_10
    monitor-exit p0

    return v1

    .line 218
    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v1, :cond_22

    if-nez p3, :cond_1c

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eq v1, p5, :cond_22

    .line 220
    :cond_1c
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    iput-object v1, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    move v1, v2

    .line 221
    goto :goto_10

    :cond_22
    move v1, v3

    .line 223
    goto :goto_10

    .line 227
    :cond_24
    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v0

    .line 228
    .local v0, "relativeReadIndex":I
    if-nez p3, :cond_32

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v4, v4, v0

    if-eq v4, p5, :cond_3a

    .line 229
    :cond_32
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v1, v1, v0

    iput-object v1, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    move v1, v2

    .line 230
    goto :goto_10

    .line 233
    :cond_3a
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isFlagsOnly()Z

    move-result v2

    if-eqz v2, :cond_42

    move v1, v3

    .line 234
    goto :goto_10

    .line 237
    :cond_42
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    aget-wide v2, v2, v0

    iput-wide v2, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 238
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->flags:[I

    aget v2, v2, v0

    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 239
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sizes:[I

    aget v2, v2, v0

    iput v2, p6, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    .line 240
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    aget-wide v2, v2, v0

    iput-wide v2, p6, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    .line 241
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    aget-object v2, v2, v0

    iput-object v2, p6, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 243
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I
    :try_end_67
    .catchall {:try_start_12 .. :try_end_67} :catchall_68

    goto :goto_10

    .line 214
    .end local v0    # "relativeReadIndex":I
    :catchall_68
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public reset(Z)V
    .registers 6
    .param p1, "resetUpstreamFormat"    # Z

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    .line 90
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->absoluteStartIndex:I

    .line 91
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeStartIndex:I

    .line 92
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    .line 93
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamKeyframeRequired:Z

    .line 94
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    .line 95
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    .line 96
    if-eqz p1, :cond_19

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 98
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormatRequired:Z

    .line 100
    :cond_19
    return-void
.end method

.method public declared-synchronized rewind()V
    .registers 2

    .prologue
    .line 186
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 187
    monitor-exit p0

    return-void

    .line 186
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sourceId(I)V
    .registers 2
    .param p1, "sourceId"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamSourceId:I

    .line 131
    return-void
.end method
