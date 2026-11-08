.class final Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$PlayState;,
        Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;
    }
.end annotation


# static fields
.field private static final FORCE_RESET_WORKAROUND_TIMEOUT_MS:J = 0xc8L

.field private static final MAX_AUDIO_TIMESTAMP_OFFSET_US:J = 0x4c4b40L

.field private static final MAX_LATENCY_US:J = 0x4c4b40L

.field private static final MAX_PLAYHEAD_OFFSET_COUNT:I = 0xa

.field private static final MIN_LATENCY_SAMPLE_INTERVAL_US:I = 0x7a120

.field private static final MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US:I = 0x7530

.field private static final MODE_SWITCH_SMOOTHING_DURATION_US:J = 0xf4240L

.field private static final PLAYSTATE_PAUSED:I = 0x2

.field private static final PLAYSTATE_PLAYING:I = 0x3

.field private static final PLAYSTATE_STOPPED:I = 0x1


# instance fields
.field private audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

.field private audioTrack:Landroid/media/AudioTrack;

.field private audioTrackPlaybackSpeed:F

.field private bufferSize:I

.field private bufferSizeUs:J

.field private endPlaybackHeadPosition:J

.field private forceResetWorkaroundTimeMs:J

.field private getLatencyMethod:Ljava/lang/reflect/Method;

.field private hasData:Z

.field private isOutputPcm:Z

.field private lastLatencySampleTimeUs:J

.field private lastPlayheadSampleTimeUs:J

.field private lastPositionUs:J

.field private lastRawPlaybackHeadPosition:J

.field private lastSampleUsedGetTimestampMode:Z

.field private lastSystemTimeUs:J

.field private latencyUs:J

.field private final listener:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

.field private needsPassthroughWorkarounds:Z

.field private nextPlayheadOffsetIndex:I

.field private notifiedPositionIncreasing:Z

.field private outputPcmFrameSize:I

.field private outputSampleRate:I

.field private passthroughWorkaroundPauseOffset:J

.field private playheadOffsetCount:I

.field private final playheadOffsets:[J

.field private previousModePositionUs:J

.field private previousModeSystemTimeUs:J

.field private rawPlaybackHeadWrapCount:J

.field private smoothedPlayheadOffsetUs:J

.field private stopPlaybackHeadPosition:J

.field private stopTimestampUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;)V
    .registers 4

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->listener:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    .line 203
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x12

    if-lt p1, v0, :cond_1e

    .line 205
    :try_start_11
    const-class p1, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_1e} :catch_1e

    :catch_1e
    :cond_1e
    const/16 p1, 0xa

    new-array p1, p1, [J

    .line 210
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsets:[J

    return-void
.end method

.method private forceHasPendingData()Z
    .registers 6

    .line 552
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 553
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    .line 554
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method private framesToDurationUs(J)J
    .registers 5

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 533
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->outputSampleRate:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private getPlaybackHeadPosition()J
    .registers 12

    .line 579
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    .line 580
    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_31

    .line 582
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    sub-long/2addr v0, v2

    .line 583
    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->outputSampleRate:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 584
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->endPlaybackHeadPosition:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->stopPlaybackHeadPosition:J

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 587
    :cond_31
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v5, 0x0

    if-ne v1, v2, :cond_3b

    return-wide v5

    :cond_3b
    const-wide v7, 0xffffffffL

    .line 593
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    int-to-long v9, v0

    and-long/2addr v7, v9

    .line 594
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    if-eqz v0, :cond_58

    const/4 v0, 0x2

    if-ne v1, v0, :cond_55

    cmp-long v0, v7, v5

    if-nez v0, :cond_55

    .line 599
    iget-wide v9, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPosition:J

    iput-wide v9, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    .line 601
    :cond_55
    iget-wide v9, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    add-long/2addr v7, v9

    .line 604
    :cond_58
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x1d

    if-gt v0, v2, :cond_7c

    cmp-long v0, v7, v5

    if-nez v0, :cond_7a

    .line 605
    iget-wide v9, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPosition:J

    cmp-long v0, v9, v5

    if-lez v0, :cond_7a

    const/4 v0, 0x3

    if-ne v1, v0, :cond_7a

    .line 613
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_77

    .line 614
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    .line 616
    :cond_77
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPosition:J

    return-wide v0

    .line 618
    :cond_7a
    iput-wide v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    .line 622
    :cond_7c
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPosition:J

    cmp-long v2, v0, v7

    if-lez v2, :cond_89

    .line 624
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    .line 626
    :cond_89
    iput-wide v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPosition:J

    .line 627
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr v7, v0

    return-wide v7
.end method

.method private getPlaybackHeadPositionUs()J
    .registers 3

    .line 567
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->framesToDurationUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private maybePollAndCheckTimestamp(JJ)V
    .registers 16

    .line 478
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    .line 479
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->maybePollTimestamp(J)Z

    move-result v1

    if-nez v1, :cond_f

    return-void

    .line 484
    :cond_f
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->getTimestampSystemTimeUs()J

    move-result-wide v5

    .line 485
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->getTimestampPositionFrames()J

    move-result-wide v3

    sub-long v1, v5, p1

    .line 486
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v7, 0x4c4b40

    cmp-long v9, v1, v7

    if-lez v9, :cond_2f

    .line 487
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->listener:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    move-wide v7, p1

    move-wide v9, p3

    invoke-interface/range {v2 .. v10}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;->onSystemTimeUsMismatch(JJJJ)V

    .line 492
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->rejectTimestamp()V

    goto :goto_4a

    .line 493
    :cond_2f
    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->framesToDurationUs(J)J

    move-result-wide v1

    sub-long/2addr v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v9, v1, v7

    if-lez v9, :cond_47

    .line 495
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->listener:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    move-wide v7, p1

    move-wide v9, p3

    invoke-interface/range {v2 .. v10}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;->onPositionFramesMismatch(JJJJ)V

    .line 500
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->rejectTimestamp()V

    goto :goto_4a

    .line 502
    :cond_47
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->acceptTimestamp()V

    :goto_4a
    return-void
.end method

.method private maybeSampleSyncParams()V
    .registers 14

    .line 447
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPositionUs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    return-void

    .line 452
    :cond_b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 453
    iget-wide v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x7530

    cmp-long v10, v6, v8

    if-ltz v10, :cond_4a

    .line 455
    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsets:[J

    iget v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    sub-long v8, v0, v4

    aput-wide v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v6, 0xa

    .line 456
    rem-int/2addr v7, v6

    iput v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    .line 457
    iget v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    if-ge v7, v6, :cond_33

    add-int/lit8 v7, v7, 0x1

    .line 458
    iput v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    .line 460
    :cond_33
    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    .line 461
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    const/4 v2, 0x0

    .line 462
    :goto_38
    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    if-ge v2, v3, :cond_4a

    .line 463
    iget-wide v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    iget-object v8, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsets:[J

    aget-wide v9, v8, v2

    int-to-long v11, v3

    div-long/2addr v9, v11

    add-long/2addr v6, v9

    iput-wide v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 467
    :cond_4a
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    if-eqz v2, :cond_4f

    return-void

    .line 473
    :cond_4f
    invoke-direct {p0, v4, v5, v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->maybePollAndCheckTimestamp(JJ)V

    .line 474
    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->maybeUpdateLatency(J)V

    return-void
.end method

.method private maybeUpdateLatency(J)V
    .registers 10

    .line 507
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->isOutputPcm:Z

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_52

    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    sub-long v1, p1, v1

    const-wide/32 v3, 0x7a120

    cmp-long v5, v1, v3

    if-ltz v5, :cond_52

    .line 513
    :try_start_13
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 514
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->bufferSizeUs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->latencyUs:J

    const-wide/16 v2, 0x0

    .line 518
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->latencyUs:J

    const-wide/32 v4, 0x4c4b40

    cmp-long v6, v0, v4

    if-lez v6, :cond_50

    .line 521
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->listener:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    invoke-interface {v4, v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;->onInvalidLatency(J)V

    .line 522
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->latencyUs:J
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_4c} :catch_4d

    goto :goto_50

    :catch_4d
    const/4 v0, 0x0

    .line 526
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;

    .line 528
    :cond_50
    :goto_50
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    :cond_52
    return-void
.end method

.method private static needsPassthroughWorkarounds(I)Z
    .registers 3

    .line 562
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_e

    const/4 v0, 0x5

    if-eq p0, v0, :cond_c

    const/4 v0, 0x6

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private resetSyncParams()V
    .registers 4

    const-wide/16 v0, 0x0

    .line 537
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    const/4 v2, 0x0

    .line 538
    iput v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    .line 539
    iput v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    .line 540
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    .line 541
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastSystemTimeUs:J

    .line 542
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->previousModeSystemTimeUs:J

    .line 543
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->notifiedPositionIncreasing:Z

    return-void
.end method


# virtual methods
.method public getAvailableBufferSize(J)I
    .registers 7

    .line 385
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->outputPcmFrameSize:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    sub-long/2addr p1, v0

    long-to-int p2, p1

    .line 386
    iget p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->bufferSize:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public getCurrentPositionUs(Z)J
    .registers 19

    move-object/from16 v0, p0

    .line 259
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 260
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->maybeSampleSyncParams()V

    .line 265
    :cond_14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 267
    iget-object v5, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    .line 268
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->hasAdvancingTimestamp()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 271
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->getTimestampPositionFrames()J

    move-result-wide v7

    .line 272
    invoke-direct {v0, v7, v8}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->framesToDurationUs(J)J

    move-result-wide v7

    .line 273
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->getTimestampSystemTimeUs()J

    move-result-wide v9

    sub-long v9, v1, v9

    .line 274
    iget v5, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 275
    invoke-static {v9, v10, v5}, Lcom/google/android/exoplayer2/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v9

    add-long/2addr v7, v9

    goto :goto_56

    .line 278
    :cond_3f
    iget v5, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    if-nez v5, :cond_48

    .line 280
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPositionUs()J

    move-result-wide v7

    goto :goto_4b

    .line 285
    :cond_48
    iget-wide v7, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    add-long/2addr v7, v1

    :goto_4b
    if-nez p1, :cond_56

    const-wide/16 v9, 0x0

    .line 288
    iget-wide v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->latencyUs:J

    sub-long/2addr v7, v11

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 292
    :cond_56
    :goto_56
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastSampleUsedGetTimestampMode:Z

    if-eq v5, v6, :cond_62

    .line 294
    iget-wide v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastSystemTimeUs:J

    iput-wide v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->previousModeSystemTimeUs:J

    .line 295
    iget-wide v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastPositionUs:J

    iput-wide v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->previousModePositionUs:J

    .line 297
    :cond_62
    iget-wide v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->previousModeSystemTimeUs:J

    sub-long v9, v1, v9

    const-wide/32 v11, 0xf4240

    cmp-long v5, v9, v11

    if-gez v5, :cond_81

    .line 301
    iget-wide v13, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->previousModePositionUs:J

    iget v5, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 303
    invoke-static {v9, v10, v5}, Lcom/google/android/exoplayer2/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v15

    add-long/2addr v13, v15

    mul-long v9, v9, v3

    .line 306
    div-long/2addr v9, v11

    mul-long v7, v7, v9

    sub-long v9, v3, v9

    mul-long v9, v9, v13

    add-long/2addr v7, v9

    .line 309
    div-long/2addr v7, v3

    .line 312
    :cond_81
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->notifiedPositionIncreasing:Z

    if-nez v3, :cond_a8

    iget-wide v3, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastPositionUs:J

    cmp-long v5, v7, v3

    if-lez v5, :cond_a8

    const/4 v5, 0x1

    .line 313
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->notifiedPositionIncreasing:Z

    sub-long v3, v7, v3

    .line 314
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v3

    .line 315
    iget v5, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 316
    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v3

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v3

    sub-long/2addr v9, v3

    .line 320
    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->listener:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    invoke-interface {v3, v9, v10}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;->onPositionAdvancing(J)V

    .line 323
    :cond_a8
    iput-wide v1, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastSystemTimeUs:J

    .line 324
    iput-wide v7, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastPositionUs:J

    .line 325
    iput-boolean v6, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastSampleUsedGetTimestampMode:Z

    return-wide v7
.end method

.method public handleEndOfStream(J)V
    .registers 7

    .line 404
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->stopPlaybackHeadPosition:J

    .line 405
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    .line 406
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->endPlaybackHeadPosition:J

    return-void
.end method

.method public hasPendingData(J)Z
    .registers 6

    .line 416
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_11

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->forceHasPendingData()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method

.method public isPlaying()Z
    .registers 3

    .line 337
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public isStalled(J)Z
    .registers 8

    .line 391
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_20

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_20

    .line 393
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    cmp-long v2, p1, v0

    if-ltz v2, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    return p1
.end method

.method public mayHandleBuffer(J)Z
    .registers 11

    .line 348
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    .line 349
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_18

    .line 354
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->hasData:Z

    return v3

    :cond_18
    if-ne v0, v2, :cond_25

    .line 361
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_25

    return v3

    .line 366
    :cond_25
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->hasData:Z

    .line 367
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->hasPendingData(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->hasData:Z

    if-eqz v1, :cond_40

    if-nez p1, :cond_40

    if-eq v0, v2, :cond_40

    .line 369
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->listener:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    iget p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->bufferSize:I

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->bufferSizeUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;->onUnderrun(IJ)V

    :cond_40
    return v2
.end method

.method public pause()Z
    .registers 6

    .line 425
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->resetSyncParams()V

    .line 426
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_1b

    .line 429
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    const/4 v0, 0x1

    return v0

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .registers 2

    .line 441
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->resetSyncParams()V

    const/4 v0, 0x0

    .line 442
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 443
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    return-void
.end method

.method public setAudioTrack(Landroid/media/AudioTrack;ZIII)V
    .registers 8

    .line 230
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 231
    iput p4, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->outputPcmFrameSize:I

    .line 232
    iput p5, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->bufferSize:I

    .line 233
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    .line 234
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->outputSampleRate:I

    const/4 p1, 0x0

    if-eqz p2, :cond_1e

    .line 235
    invoke-static {p3}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds(I)Z

    move-result p2

    if-eqz p2, :cond_1e

    const/4 p2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p2, 0x0

    :goto_1f
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    .line 236
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Util;->isEncodingLinearPcm(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->isOutputPcm:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_35

    .line 237
    div-int/2addr p5, p4

    int-to-long p2, p5

    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->framesToDurationUs(J)J

    move-result-wide p2

    goto :goto_36

    :cond_35
    move-wide p2, v0

    :goto_36
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->bufferSizeUs:J

    const-wide/16 p2, 0x0

    .line 238
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPosition:J

    .line 239
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    .line 240
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    .line 241
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->hasData:Z

    .line 242
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    .line 243
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    .line 244
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    .line 245
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->latencyUs:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 246
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    return-void
.end method

.method public setAudioTrackPlaybackSpeed(F)V
    .registers 2

    .line 250
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 253
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    if-eqz p1, :cond_9

    .line 254
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    :cond_9
    return-void
.end method

.method public start()V
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    return-void
.end method
