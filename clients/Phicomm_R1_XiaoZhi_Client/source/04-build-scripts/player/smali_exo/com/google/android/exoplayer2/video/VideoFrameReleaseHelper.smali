.class public final Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;,
        Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;,
        Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV16;,
        Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;,
        Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$Api30;
    }
.end annotation


# static fields
.field private static final MAX_ALLOWED_ADJUSTMENT_NS:J = 0x1312d00L

.field private static final MINIMUM_FRAMES_WITHOUT_SYNC_TO_CLEAR_SURFACE_FRAME_RATE:I = 0x1e

.field private static final MINIMUM_MATCHING_FRAME_DURATION_FOR_HIGH_CONFIDENCE_NS:J = 0x12a05f200L

.field private static final MINIMUM_MEDIA_FRAME_RATE_CHANGE_FOR_UPDATE_HIGH_CONFIDENCE:F = 0.02f

.field private static final MINIMUM_MEDIA_FRAME_RATE_CHANGE_FOR_UPDATE_LOW_CONFIDENCE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "VideoFrameReleaseHelper"

.field private static final VSYNC_OFFSET_PERCENTAGE:J = 0x50L

.field private static final VSYNC_SAMPLE_UPDATE_PERIOD_MS:J = 0x1f4L


# instance fields
.field private changeFrameRateStrategy:I

.field private final displayHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;

.field private formatFrameRate:F

.field private frameIndex:J

.field private final frameRateEstimator:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

.field private lastAdjustedFrameIndex:J

.field private lastAdjustedReleaseTimeNs:J

.field private pendingLastAdjustedFrameIndex:J

.field private pendingLastAdjustedReleaseTimeNs:J

.field private playbackSpeed:F

.field private started:Z

.field private surface:Landroid/view/Surface;

.field private surfaceMediaFrameRate:F

.field private surfacePlaybackFrameRate:F

.field private vsyncDurationNs:J

.field private vsyncOffsetNs:J

.field private final vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameRateEstimator:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

    .line 130
    invoke-static {p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->maybeBuildDisplayHelper(Landroid/content/Context;)Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->displayHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;

    if-eqz p1, :cond_17

    .line 131
    invoke-static {}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->getInstance()Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;

    move-result-object p1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 132
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    .line 133
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    const/high16 p1, -0x40800000    # -1.0f

    .line 134
    iput p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->formatFrameRate:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 135
    iput p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->playbackSpeed:F

    const/4 p1, 0x0

    .line 136
    iput p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    return-void
.end method

.method private static adjustmentAllowed(JJ)Z
    .registers 5

    sub-long/2addr p0, p2

    .line 288
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    const-wide/32 p2, 0x1312d00

    cmp-long v0, p0, p2

    if-gtz v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private clearSurfaceFrameRate()V
    .registers 4

    .line 373
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1d

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1d

    iget v1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1d

    iget v1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    goto :goto_1d

    .line 379
    :cond_18
    iput v2, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    .line 380
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$Api30;->setSurfaceFrameRate(Landroid/view/Surface;F)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method private static closestVsync(JJJ)J
    .registers 11

    sub-long v0, p0, p2

    .line 398
    div-long/2addr v0, p4

    mul-long v0, v0, p4

    add-long/2addr p2, v0

    cmp-long v0, p0, p2

    if-gtz v0, :cond_d

    sub-long p4, p2, p4

    goto :goto_11

    :cond_d
    add-long/2addr p4, p2

    move-wide v3, p2

    move-wide p2, p4

    move-wide p4, v3

    :goto_11
    sub-long v0, p2, p0

    sub-long/2addr p0, p4

    cmp-long v2, v0, p0

    if-gez v2, :cond_19

    goto :goto_1a

    :cond_19
    move-wide p2, p4

    :goto_1a
    return-wide p2
.end method

.method public static synthetic lambda$7UDZAGgEzIE5a77vKICa4y-TkDc(Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;Landroid/view/Display;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->updateDefaultDisplayRefreshRateParams(Landroid/view/Display;)V

    return-void
.end method

.method private static maybeBuildDisplayHelper(Landroid/content/Context;)Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    .line 418
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 419
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_11

    .line 420
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV17;->maybeBuildNewInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;

    move-result-object v0

    :cond_11
    if-nez v0, :cond_17

    .line 423
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV16;->maybeBuildNewInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;

    move-result-object v0

    :cond_17
    return-object v0
.end method

.method private resetAdjustment()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 281
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameIndex:J

    const-wide/16 v0, -0x1

    .line 282
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    .line 283
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    return-void
.end method

.method private updateDefaultDisplayRefreshRateParams(Landroid/view/Display;)V
    .registers 6

    if-eqz p1, :cond_1d

    .line 387
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    .line 388
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    double-to-long v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    const-wide/16 v2, 0x50

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    .line 389
    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    goto :goto_2d

    :cond_1d
    const-string p1, "VideoFrameReleaseHelper"

    const-string v0, "Unable to query display refresh rate"

    .line 391
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 392
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    .line 393
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    :goto_2d
    return-void
.end method

.method private updateSurfaceMediaFrameRate()V
    .registers 9

    .line 299
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_75

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-nez v0, :cond_c

    goto/16 :goto_75

    .line 303
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameRateEstimator:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

    .line 304
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameRateEstimator:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->getFrameRate()F

    move-result v0

    goto :goto_1d

    :cond_1b
    iget v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->formatFrameRate:F

    .line 305
    :goto_1d
    iget v2, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    cmpl-float v3, v0, v2

    if-nez v3, :cond_24

    return-void

    :cond_24
    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmpl-float v6, v0, v3

    if-eqz v6, :cond_61

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_61

    .line 313
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameRateEstimator:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

    .line 314
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameRateEstimator:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

    .line 315
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->getMatchingFrameDurationSumNs()J

    move-result-wide v1

    const-wide v6, 0x12a05f200L

    cmp-long v3, v1, v6

    if-ltz v3, :cond_49

    const/4 v1, 0x1

    goto :goto_4a

    :cond_49
    const/4 v1, 0x0

    :goto_4a
    if-eqz v1, :cond_50

    const v1, 0x3ca3d70a    # 0.02f

    goto :goto_52

    :cond_50
    const/high16 v1, 0x3f800000    # 1.0f

    .line 321
    :goto_52
    iget v2, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_5f

    goto :goto_6e

    :cond_5f
    const/4 v5, 0x0

    goto :goto_6e

    :cond_61
    cmpl-float v2, v0, v3

    if-eqz v2, :cond_66

    goto :goto_6e

    .line 325
    :cond_66
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameRateEstimator:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

    .line 326
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->getFramesWithoutSyncCount()I

    move-result v2

    if-lt v2, v1, :cond_5f

    :goto_6e
    if-eqz v5, :cond_75

    .line 331
    iput v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    .line 332
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    :cond_75
    :goto_75
    return-void
.end method

.method private updateSurfacePlaybackFrameRate(Z)V
    .registers 5

    .line 347
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_32

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_32

    iget v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_11

    goto :goto_32

    :cond_11
    const/4 v0, 0x0

    .line 354
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->started:Z

    if-eqz v1, :cond_22

    iget v1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_22

    .line 355
    iget v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->playbackSpeed:F

    mul-float v0, v0, v1

    :cond_22
    if-nez p1, :cond_2b

    .line 359
    iget p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2b

    return-void

    .line 362
    :cond_2b
    iput v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    .line 363
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$Api30;->setSurfaceFrameRate(Landroid/view/Surface;F)V

    :cond_32
    :goto_32
    return-void
.end method


# virtual methods
.method public adjustReleaseTime(J)J
    .registers 13

    .line 253
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_30

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameRateEstimator:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 254
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameRateEstimator:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->getFrameDurationNs()J

    move-result-wide v0

    .line 255
    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->lastAdjustedReleaseTimeNs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameIndex:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    sub-long/2addr v4, v6

    mul-long v0, v0, v4

    long-to-float v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->playbackSpeed:F

    div-float/2addr v0, v1

    float-to-long v0, v0

    add-long/2addr v2, v0

    .line 258
    invoke-static {p1, p2, v2, v3}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->adjustmentAllowed(JJ)Z

    move-result v0

    if-eqz v0, :cond_2d

    move-wide v4, v2

    goto :goto_31

    .line 261
    :cond_2d
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->resetAdjustment()V

    :cond_30
    move-wide v4, p1

    .line 264
    :goto_31
    iget-wide p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameIndex:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    .line 265
    iput-wide v4, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->pendingLastAdjustedReleaseTimeNs:J

    .line 267
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;

    if-eqz p1, :cond_58

    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-nez p2, :cond_47

    goto :goto_58

    .line 270
    :cond_47
    iget-wide v6, p1, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->sampledVsyncTimeNs:J

    cmp-long p1, v6, v2

    if-nez p1, :cond_4e

    return-wide v4

    .line 275
    :cond_4e
    iget-wide v8, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->closestVsync(JJJ)J

    move-result-wide p1

    .line 277
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    sub-long/2addr p1, v0

    return-wide p1

    :cond_58
    :goto_58
    return-wide v4
.end method

.method public onFormatChanged(F)V
    .registers 2

    .line 203
    iput p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->formatFrameRate:F

    .line 204
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameRateEstimator:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->reset()V

    .line 205
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->updateSurfaceMediaFrameRate()V

    return-void
.end method

.method public onNextFrame(J)V
    .registers 8

    .line 214
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_e

    .line 215
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    .line 216
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->pendingLastAdjustedReleaseTimeNs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->lastAdjustedReleaseTimeNs:J

    .line 218
    :cond_e
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameIndex:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameIndex:J

    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->frameRateEstimator:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;

    const-wide/16 v1, 0x3e8

    mul-long p1, p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->onNextFrame(J)V

    .line 220
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->updateSurfaceMediaFrameRate()V

    return-void
.end method

.method public onPlaybackSpeed(F)V
    .registers 2

    .line 192
    iput p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->playbackSpeed:F

    .line 193
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->resetAdjustment()V

    const/4 p1, 0x0

    .line 194
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    return-void
.end method

.method public onPositionReset()V
    .registers 1

    .line 183
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->resetAdjustment()V

    return-void
.end method

.method public onStarted()V
    .registers 3

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->started:Z

    .line 155
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->resetAdjustment()V

    .line 156
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->displayHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;

    if-eqz v0, :cond_1f

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->addObserver()V

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->displayHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;

    new-instance v1, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoFrameReleaseHelper$7UDZAGgEzIE5a77vKICa4y-TkDc;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoFrameReleaseHelper$7UDZAGgEzIE5a77vKICa4y-TkDc;-><init>(Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;->register(Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper$Listener;)V

    :cond_1f
    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    return-void
.end method

.method public onStopped()V
    .registers 2

    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->started:Z

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->displayHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;

    if-eqz v0, :cond_15

    .line 227
    invoke-interface {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;->unregister()V

    .line 228
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->vsyncSampler:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->removeObserver()V

    .line 230
    :cond_15
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->clearSurfaceFrameRate()V

    return-void
.end method

.method public onSurfaceChanged(Landroid/view/Surface;)V
    .registers 3

    .line 169
    instance-of v0, p1, Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    .line 173
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-ne v0, p1, :cond_a

    return-void

    .line 176
    :cond_a
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->clearSurfaceFrameRate()V

    .line 177
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    const/4 p1, 0x1

    .line 178
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    return-void
.end method

.method public setChangeFrameRateStrategy(I)V
    .registers 3

    .line 145
    iget v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    if-ne v0, p1, :cond_5

    return-void

    .line 148
    :cond_5
    iput p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    const/4 p1, 0x1

    .line 149
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    return-void
.end method
