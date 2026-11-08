.class public Lcom/google/android/exoplayer2/DefaultLoadControl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/LoadControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_AUDIO_BUFFER_SIZE:I = 0xc80000

.field public static final DEFAULT_BACK_BUFFER_DURATION_MS:I = 0x0

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS:I = 0x1388

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_MS:I = 0x9c4

.field public static final DEFAULT_CAMERA_MOTION_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_IMAGE_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_MAX_BUFFER_MS:I = 0xc350

.field public static final DEFAULT_METADATA_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_MIN_BUFFER_MS:I = 0xc350

.field public static final DEFAULT_MIN_BUFFER_SIZE:I = 0xc80000

.field public static final DEFAULT_MUXED_BUFFER_SIZE:I = 0x89a0000

.field public static final DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS:Z = false

.field public static final DEFAULT_RETAIN_BACK_BUFFER_FROM_KEYFRAME:Z = false

.field public static final DEFAULT_TARGET_BUFFER_BYTES:I = -0x1

.field public static final DEFAULT_TEXT_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_VIDEO_BUFFER_SIZE:I = 0x7d00000


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

.field private final backBufferDurationUs:J

.field private final bufferForPlaybackAfterRebufferUs:J

.field private final bufferForPlaybackUs:J

.field private isLoading:Z

.field private final maxBufferUs:J

.field private final minBufferUs:J

.field private final prioritizeTimeOverSizeThresholds:Z

.field private final retainBackBufferFromKeyframe:Z

.field private targetBufferBytes:I

.field private final targetBufferBytesOverwrite:I


# direct methods
.method public constructor <init>()V
    .registers 11

    .line 268
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    const/4 v0, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    const v2, 0xc350

    const v3, 0xc350

    const/16 v4, 0x9c4

    const/16 v5, 0x1388

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIZIZ)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIZIZ)V
    .registers 15

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const-string v1, "bufferForPlaybackMs"

    const-string v2, "0"

    .line 290
    invoke-static {p4, v0, v1, v2}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "bufferForPlaybackAfterRebufferMs"

    .line 291
    invoke-static {p5, v0, v3, v2}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    const-string v4, "minBufferMs"

    .line 293
    invoke-static {p2, p4, v4, v1}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {p2, p5, v4, v3}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "maxBufferMs"

    .line 299
    invoke-static {p3, p2, v1, v4}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "backBufferDurationMs"

    .line 300
    invoke-static {p8, v0, v1, v2}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 302
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    int-to-long p1, p2

    .line 303
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->minBufferUs:J

    int-to-long p1, p3

    .line 304
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->maxBufferUs:J

    int-to-long p1, p4

    .line 305
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->bufferForPlaybackUs:J

    int-to-long p1, p5

    .line 306
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    .line 307
    iput p6, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytesOverwrite:I

    const/4 p1, -0x1

    if-eq p6, p1, :cond_46

    goto :goto_48

    :cond_46
    const/high16 p6, 0xc80000

    .line 308
    :goto_48
    iput p6, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytes:I

    .line 312
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    int-to-long p1, p8

    .line 313
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->backBufferDurationUs:J

    .line 314
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->retainBackBufferFromKeyframe:Z

    return-void
.end method

.method static synthetic access$000(IILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 32
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-lt p0, p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    .line 453
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be less than "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method private static getDefaultBufferSize(I)I
    .registers 2

    const/high16 v0, 0x20000

    packed-switch p0, :pswitch_data_18

    .line 448
    :pswitch_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_b
    return v0

    :pswitch_c
    const/high16 p0, 0x7d00000

    return p0

    :pswitch_f
    const/high16 p0, 0xc80000

    return p0

    :pswitch_12
    const/high16 p0, 0x89a0000

    return p0

    :pswitch_15
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_18
    .packed-switch -0x2
        :pswitch_15
        :pswitch_5
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method private reset(Z)V
    .registers 4

    .line 418
    iget v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytesOverwrite:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/high16 v0, 0xc80000

    :cond_7
    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytes:I

    const/4 v0, 0x0

    .line 422
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isLoading:Z

    if-eqz p1, :cond_13

    .line 424
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->reset()V

    :cond_13
    return-void
.end method


# virtual methods
.method protected calculateTargetBufferBytes([Lcom/google/android/exoplayer2/Renderer;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 409
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_17

    .line 410
    aget-object v2, p2, v0

    if-eqz v2, :cond_14

    .line 411
    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/DefaultLoadControl;->getDefaultBufferSize(I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_17
    const/high16 p1, 0xc80000

    .line 414
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public getAllocator()Lcom/google/android/exoplayer2/upstream/Allocator;
    .registers 2

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    return-object v0
.end method

.method public getBackBufferDurationUs()J
    .registers 3

    .line 349
    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->backBufferDurationUs:J

    return-wide v0
.end method

.method public onPrepared()V
    .registers 2

    const/4 v0, 0x0

    .line 319
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->reset(Z)V

    return-void
.end method

.method public onReleased()V
    .registers 2

    const/4 v0, 0x1

    .line 339
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->reset(Z)V

    return-void
.end method

.method public onStopped()V
    .registers 2

    const/4 v0, 0x1

    .line 334
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->reset(Z)V

    return-void
.end method

.method public onTracksSelected([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V
    .registers 5

    .line 325
    iget p2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytesOverwrite:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    .line 327
    invoke-virtual {p0, p1, p3}, Lcom/google/android/exoplayer2/DefaultLoadControl;->calculateTargetBufferBytes([Lcom/google/android/exoplayer2/Renderer;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)I

    move-result p2

    :cond_9
    iput p2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytes:I

    .line 329
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->setTargetBufferSize(I)V

    return-void
.end method

.method public retainBackBufferFromKeyframe()Z
    .registers 2

    .line 354
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->retainBackBufferFromKeyframe:Z

    return v0
.end method

.method public shouldContinueLoading(JJF)Z
    .registers 12

    .line 360
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result p1

    iget p2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytes:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p1, p2, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    .line 361
    :goto_f
    iget-wide v2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->minBufferUs:J

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p5, p2

    if-lez p2, :cond_21

    .line 366
    invoke-static {v2, v3, p5}, Lcom/google/android/exoplayer2/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v2

    .line 367
    iget-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->maxBufferUs:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_21
    const-wide/32 v4, 0x7a120

    .line 370
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    cmp-long p2, p3, v2

    if-gez p2, :cond_44

    .line 372
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    if-nez p2, :cond_34

    if-nez p1, :cond_33

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :cond_34
    :goto_34
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isLoading:Z

    if-nez v0, :cond_4e

    cmp-long p1, p3, v4

    if-gez p1, :cond_4e

    const-string p1, "DefaultLoadControl"

    const-string p2, "Target buffer size reached with less than 500ms of buffered media data."

    .line 374
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    .line 378
    :cond_44
    iget-wide v2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->maxBufferUs:J

    cmp-long p2, p3, v2

    if-gez p2, :cond_4c

    if-eqz p1, :cond_4e

    .line 379
    :cond_4c
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isLoading:Z

    .line 381
    :cond_4e
    :goto_4e
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isLoading:Z

    return p1
.end method

.method public shouldStartPlayback(JFZJ)Z
    .registers 10

    .line 387
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide p1

    if-eqz p4, :cond_9

    .line 388
    iget-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    goto :goto_b

    :cond_9
    iget-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->bufferForPlaybackUs:J

    :goto_b
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p5, v0

    if-eqz v2, :cond_1b

    const-wide/16 v0, 0x2

    .line 390
    div-long/2addr p5, v0

    invoke-static {p5, p6, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :cond_1b
    const-wide/16 p5, 0x0

    cmp-long v0, p3, p5

    if-lez v0, :cond_36

    cmp-long p5, p1, p3

    if-gez p5, :cond_36

    .line 392
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    if-nez p1, :cond_34

    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    .line 395
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result p1

    iget p2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytes:I

    if-lt p1, p2, :cond_34

    goto :goto_36

    :cond_34
    const/4 p1, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 p1, 0x1

    :goto_37
    return p1
.end method
