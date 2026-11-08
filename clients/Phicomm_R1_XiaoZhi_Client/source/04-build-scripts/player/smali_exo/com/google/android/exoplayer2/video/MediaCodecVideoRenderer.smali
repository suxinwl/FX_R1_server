.class public Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
.super Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;,
        Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;
    }
.end annotation


# static fields
.field private static final INITIAL_FORMAT_MAX_INPUT_SIZE_SCALE_FACTOR:F = 1.5f

.field private static final KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field private static final STANDARD_LONG_EDGE_VIDEO_PX:[I

.field private static final TAG:Ljava/lang/String; = "MediaCodecVideoRenderer"

.field private static final TUNNELING_EOS_PRESENTATION_TIME_US:J = 0x7fffffffffffffffL

.field private static deviceNeedsSetOutputSurfaceWorkaround:Z

.field private static evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z


# instance fields
.field private final allowedJoiningTimeMs:J

.field private buffersInCodecCount:I

.field private codecHandlesHdr10PlusOutOfBandMetadata:Z

.field private codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

.field private codecNeedsSetOutputSurfaceWorkaround:Z

.field private consecutiveDroppedFrameCount:I

.field private final context:Landroid/content/Context;

.field private currentHeight:I

.field private currentPixelWidthHeightRatio:F

.field private currentUnappliedRotationDegrees:I

.field private currentWidth:I

.field private final deviceNeedsNoPostProcessWorkaround:Z

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrames:I

.field private final eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field private frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

.field private final frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

.field private haveReportedFirstFrameRenderedForCurrentSurface:Z

.field private initialPositionUs:J

.field private joiningDeadlineMs:J

.field private lastBufferPresentationTimeUs:J

.field private lastRenderRealtimeUs:J

.field private final maxDroppedFramesToNotify:I

.field private mayRenderFirstFrameAfterEnableIfNotStarted:Z

.field private placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

.field private renderedFirstFrameAfterEnable:Z

.field private renderedFirstFrameAfterReset:Z

.field private reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

.field private scalingMode:I

.field private surface:Landroid/view/Surface;

.field private totalVideoFrameProcessingOffsetUs:J

.field private tunneling:Z

.field private tunnelingAudioSessionId:I

.field tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

.field private videoFrameProcessingOffsetCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 102
    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    return-void

    :array_a
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .registers 21

    const/high16 v10, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    .line 272
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;IF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;IF)V
    .registers 18

    move-object v6, p0

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    move/from16 v5, p10

    .line 315
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZF)V

    move-wide v0, p4

    .line 321
    iput-wide v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    move/from16 v0, p9

    .line 322
    iput v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    .line 323
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 324
    new-instance v1, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    .line 325
    new-instance v0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    move-object v1, p7

    move-object v2, p8

    invoke-direct {v0, p7, p8}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V

    iput-object v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .line 326
    invoke-static {}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround()Z

    move-result v0

    iput-boolean v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 327
    iput-wide v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const/4 v0, -0x1

    .line 328
    iput v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 329
    iput v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 330
    iput v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    const/4 v0, 0x1

    .line 331
    iput v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    const/4 v0, 0x0

    .line 332
    iput v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    .line 333
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;)V
    .registers 5

    const-wide/16 v0, 0x0

    .line 162
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;J)V
    .registers 13

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 173
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .registers 19

    .line 200
    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;

    const/4 v6, 0x0

    const/high16 v10, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;IF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .registers 20

    .line 234
    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;

    const/high16 v10, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;IF)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;)V
    .registers 1

    .line 93
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->onProcessedTunneledEndOfStream()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .registers 2

    .line 93
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setPendingPlaybackException(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method private clearRenderedFirstFrame()V
    .registers 3

    const/4 v0, 0x0

    .line 1357
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    .line 1362
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1a

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_1a

    .line 1363
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1366
    new-instance v1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    :cond_1a
    return-void
.end method

.method private clearReportedVideoSize()V
    .registers 2

    const/4 v0, 0x0

    .line 1387
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    return-void
.end method

.method private static configureTunnelingV21(Landroid/media/MediaFormat;I)V
    .registers 4

    const-string v0, "tunneled-playback"

    const/4 v1, 0x1

    .line 1456
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v0, "audio-session-id"

    .line 1457
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method private static deviceNeedsNoPostProcessWorkaround()Z
    .registers 2

    .line 1678
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "NVIDIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static evaluateDeviceNeedsSetOutputSurfaceWorkaround()Z
    .registers 14

    .line 1735
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x7

    const/4 v5, 0x3

    const/16 v6, 0x1c

    const/4 v7, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-gt v0, v6, :cond_6f

    .line 1742
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_752

    goto :goto_69

    :sswitch_19
    const-string v11, "machuca"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x5

    goto :goto_6a

    :sswitch_23
    const-string v11, "once"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x6

    goto :goto_6a

    :sswitch_2d
    const-string v11, "magnolia"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x4

    goto :goto_6a

    :sswitch_37
    const-string v11, "aquaman"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x0

    goto :goto_6a

    :sswitch_41
    const-string v11, "oneday"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x7

    goto :goto_6a

    :sswitch_4b
    const-string v11, "dangalUHD"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x2

    goto :goto_6a

    :sswitch_55
    const-string v11, "dangalFHD"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x3

    goto :goto_6a

    :sswitch_5f
    const-string v11, "dangal"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x1

    goto :goto_6a

    :cond_69
    :goto_69
    const/4 v0, -0x1

    :goto_6a
    packed-switch v0, :pswitch_data_774

    goto :goto_6f

    :pswitch_6e
    return v10

    .line 1756
    :cond_6f
    :goto_6f
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v11, 0x1b

    if-gt v0, v11, :cond_80

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v12, "HWEML"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    return v10

    .line 1761
    :cond_80
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v12, 0x1a

    if-gt v0, v12, :cond_750

    .line 1781
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_788

    goto/16 :goto_70f

    :sswitch_91
    const-string v1, "HWWAS-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x42

    goto/16 :goto_710

    :sswitch_9d
    const-string v1, "HWVNS-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x41

    goto/16 :goto_710

    :sswitch_a9
    const-string v1, "ELUGA_Prim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x21

    goto/16 :goto_710

    :sswitch_b5
    const-string v1, "ELUGA_Note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x20

    goto/16 :goto_710

    :sswitch_c1
    const-string v1, "ASUS_X00AD_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0xe

    goto/16 :goto_710

    :sswitch_cd
    const-string v1, "HWCAM-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x40

    goto/16 :goto_710

    :sswitch_d9
    const-string v1, "HWBLN-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x3f

    goto/16 :goto_710

    :sswitch_e5
    const-string v1, "DM-01K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x1d

    goto/16 :goto_710

    :sswitch_f1
    const-string v1, "BRAVIA_ATV3_4K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x13

    goto/16 :goto_710

    :sswitch_fd
    const-string v1, "Infinix-X572"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x45

    goto/16 :goto_710

    :sswitch_109
    const-string v1, "PB2-670M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x64

    goto/16 :goto_710

    :sswitch_115
    const-string v1, "santoni"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x75

    goto/16 :goto_710

    :sswitch_121
    const-string v1, "iball8735_9806"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x44

    goto/16 :goto_710

    :sswitch_12d
    const-string v1, "CPH1715"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x18

    goto/16 :goto_710

    :sswitch_139
    const-string v1, "CPH1609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x17

    goto/16 :goto_710

    :sswitch_145
    const-string v1, "woods_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x85

    goto/16 :goto_710

    :sswitch_151
    const-string v1, "htc_e56ml_dtul"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x3d

    goto/16 :goto_710

    :sswitch_15d
    const-string v1, "EverStar_S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x23

    goto/16 :goto_710

    :sswitch_169
    const-string v1, "hwALE-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x3e

    goto/16 :goto_710

    :sswitch_175
    const-string v1, "itel_S41"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x47

    goto/16 :goto_710

    :sswitch_181
    const-string v1, "LS-5017"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x4e

    goto/16 :goto_710

    :sswitch_18d
    const-string v1, "panell_d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x60

    goto/16 :goto_710

    :sswitch_199
    const-string v1, "j2xlteins"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x48

    goto/16 :goto_710

    :sswitch_1a5
    const-string v1, "A7000plus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0xa

    goto/16 :goto_710

    :sswitch_1b1
    const-string v1, "manning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x51

    goto/16 :goto_710

    :sswitch_1bd
    const-string v1, "GIONEE_WBL7519"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x3b

    goto/16 :goto_710

    :sswitch_1c9
    const-string v1, "GIONEE_WBL7365"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x3a

    goto/16 :goto_710

    :sswitch_1d5
    const-string v1, "GIONEE_WBL5708"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x39

    goto/16 :goto_710

    :sswitch_1e1
    const-string v1, "QM16XE_U"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x72

    goto/16 :goto_710

    :sswitch_1ed
    const-string v1, "Pixi5-10_4G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x6a

    goto/16 :goto_710

    :sswitch_1f9
    const-string v1, "TB3-850M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x7d

    goto/16 :goto_710

    :sswitch_205
    const-string v1, "TB3-850F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x7c

    goto/16 :goto_710

    :sswitch_211
    const-string v1, "TB3-730X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x7b

    goto/16 :goto_710

    :sswitch_21d
    const-string v1, "TB3-730F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x7a

    goto/16 :goto_710

    :sswitch_229
    const-string v1, "A7020a48"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0xc

    goto/16 :goto_710

    :sswitch_235
    const-string v1, "A7010a48"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0xb

    goto/16 :goto_710

    :sswitch_241
    const-string v1, "griffin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x3c

    goto/16 :goto_710

    :sswitch_24d
    const-string v1, "marino_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x52

    goto/16 :goto_710

    :sswitch_259
    const-string v1, "CPY83_I00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x19

    goto/16 :goto_710

    :sswitch_265
    const-string v1, "A2016a40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x8

    goto/16 :goto_710

    :sswitch_271
    const-string v1, "le_x6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x4d

    goto/16 :goto_710

    :sswitch_27d
    const-string v1, "l5460"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x4c

    goto/16 :goto_710

    :sswitch_289
    const-string v1, "i9031"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x43

    goto/16 :goto_710

    :sswitch_295
    const-string v1, "X3_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x87

    goto/16 :goto_710

    :sswitch_2a1
    const-string v1, "V23GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x80

    goto/16 :goto_710

    :sswitch_2ad
    const-string v1, "Q4310"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x70

    goto/16 :goto_710

    :sswitch_2b9
    const-string v1, "Q4260"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x6e

    goto/16 :goto_710

    :sswitch_2c5
    const-string v1, "PRO7S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x6c

    goto/16 :goto_710

    :sswitch_2d1
    const-string v1, "F3311"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x30

    goto/16 :goto_710

    :sswitch_2dd
    const-string v1, "F3215"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x2f

    goto/16 :goto_710

    :sswitch_2e9
    const-string v1, "F3213"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x2e

    goto/16 :goto_710

    :sswitch_2f5
    const-string v1, "F3211"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x2d

    goto/16 :goto_710

    :sswitch_301
    const-string v1, "F3116"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x2c

    goto/16 :goto_710

    :sswitch_30d
    const-string v1, "F3113"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x2b

    goto/16 :goto_710

    :sswitch_319
    const-string v1, "F3111"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x2a

    goto/16 :goto_710

    :sswitch_325
    const-string v1, "E5643"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x1e

    goto/16 :goto_710

    :sswitch_331
    const-string v1, "A1601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/4 v1, 0x7

    goto/16 :goto_710

    :sswitch_33c
    const-string v1, "Aura_Note_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0xf

    goto/16 :goto_710

    :sswitch_348
    const-string v1, "602LV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/4 v1, 0x4

    goto/16 :goto_710

    :sswitch_353
    const-string v1, "601LV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/4 v1, 0x3

    goto/16 :goto_710

    :sswitch_35e
    const-string v1, "MEIZU_M5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x53

    goto/16 :goto_710

    :sswitch_36a
    const-string v1, "p212"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x5c

    goto/16 :goto_710

    :sswitch_376
    const-string v1, "mido"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x55

    goto/16 :goto_710

    :sswitch_382
    const-string v1, "kate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x4b

    goto/16 :goto_710

    :sswitch_38e
    const-string v1, "fugu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x32

    goto/16 :goto_710

    :sswitch_39a
    const-string v1, "XE2X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x88

    goto/16 :goto_710

    :sswitch_3a6
    const-string v1, "Q427"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x6f

    goto/16 :goto_710

    :sswitch_3b2
    const-string v1, "Q350"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x6d

    goto/16 :goto_710

    :sswitch_3be
    const-string v1, "P681"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x5d

    goto/16 :goto_710

    :sswitch_3ca
    const-string v1, "F04J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x29

    goto/16 :goto_710

    :sswitch_3d6
    const-string v1, "F04H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x28

    goto/16 :goto_710

    :sswitch_3e2
    const-string v1, "F03H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x27

    goto/16 :goto_710

    :sswitch_3ee
    const-string v1, "F02H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x26

    goto/16 :goto_710

    :sswitch_3fa
    const-string v1, "F01J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x25

    goto/16 :goto_710

    :sswitch_406
    const-string v1, "F01H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x24

    goto/16 :goto_710

    :sswitch_412
    const-string v1, "1714"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/4 v1, 0x2

    goto/16 :goto_710

    :sswitch_41d
    const-string v1, "1713"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/4 v1, 0x1

    goto/16 :goto_710

    :sswitch_428
    const-string v1, "1601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/4 v1, 0x0

    goto/16 :goto_710

    :sswitch_433
    const-string v1, "flo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x31

    goto/16 :goto_710

    :sswitch_43f
    const-string v1, "deb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x1c

    goto/16 :goto_710

    :sswitch_44b
    const-string v1, "cv3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x1b

    goto/16 :goto_710

    :sswitch_457
    const-string v1, "cv1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x1a

    goto/16 :goto_710

    :sswitch_463
    const-string v1, "Z80"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x8b

    goto/16 :goto_710

    :sswitch_46f
    const-string v1, "QX1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x73

    goto/16 :goto_710

    :sswitch_47b
    const-string v1, "PLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x6b

    goto/16 :goto_710

    :sswitch_487
    const-string v1, "P85"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x5e

    goto/16 :goto_710

    :sswitch_493
    const-string v1, "MX6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x56

    goto/16 :goto_710

    :sswitch_49f
    const-string v1, "M5c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x50

    goto/16 :goto_710

    :sswitch_4ab
    const-string v1, "M04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x4f

    goto/16 :goto_710

    :sswitch_4b7
    const-string v1, "JGZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x49

    goto/16 :goto_710

    :sswitch_4c3
    const-string v1, "mh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x54

    goto/16 :goto_710

    :sswitch_4cf
    const-string v1, "b5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x10

    goto/16 :goto_710

    :sswitch_4db
    const-string v1, "V5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x81

    goto/16 :goto_710

    :sswitch_4e7
    const-string v1, "V1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x7f

    goto/16 :goto_710

    :sswitch_4f3
    const-string v1, "Q5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x71

    goto/16 :goto_710

    :sswitch_4ff
    const-string v1, "C1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x14

    goto/16 :goto_710

    :sswitch_50b
    const-string v1, "woods_fn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x86

    goto/16 :goto_710

    :sswitch_517
    const-string v1, "ELUGA_A3_Pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x1f

    goto/16 :goto_710

    :sswitch_523
    const-string v1, "Z12_PRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x8a

    goto/16 :goto_710

    :sswitch_52f
    const-string v1, "BLACK-1X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x11

    goto/16 :goto_710

    :sswitch_53b
    const-string v1, "taido_row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x79

    goto/16 :goto_710

    :sswitch_547
    const-string v1, "Pixi4-7_3G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x69

    goto/16 :goto_710

    :sswitch_553
    const-string v1, "GIONEE_GBL7360"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x35

    goto/16 :goto_710

    :sswitch_55f
    const-string v1, "GiONEE_CBL7513"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x33

    goto/16 :goto_710

    :sswitch_56b
    const-string v1, "OnePlus5T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x5b

    goto/16 :goto_710

    :sswitch_577
    const-string v1, "whyred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x84

    goto/16 :goto_710

    :sswitch_583
    const-string v1, "watson"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x83

    goto/16 :goto_710

    :sswitch_58f
    const-string v1, "SVP-DTV15"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x77

    goto/16 :goto_710

    :sswitch_59b
    const-string v1, "A7000-a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x9

    goto/16 :goto_710

    :sswitch_5a7
    const-string v1, "nicklaus_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x58

    goto/16 :goto_710

    :sswitch_5b3
    const-string v1, "tcl_eu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x7e

    goto/16 :goto_710

    :sswitch_5bf
    const-string v1, "ELUGA_Ray_X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x22

    goto/16 :goto_710

    :sswitch_5cb
    const-string v1, "s905x018"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x78

    goto/16 :goto_710

    :sswitch_5d7
    const-string v1, "A10-70L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/4 v1, 0x6

    goto/16 :goto_710

    :sswitch_5e2
    const-string v2, "A10-70F"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    goto/16 :goto_710

    :sswitch_5ec
    const-string v1, "namath"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x57

    goto/16 :goto_710

    :sswitch_5f8
    const-string v1, "Slate_Pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x76

    goto/16 :goto_710

    :sswitch_604
    const-string v1, "iris60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x46

    goto/16 :goto_710

    :sswitch_610
    const-string v1, "BRAVIA_ATV2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x12

    goto/16 :goto_710

    :sswitch_61c
    const-string v1, "GiONEE_GBL7319"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x34

    goto/16 :goto_710

    :sswitch_628
    const-string v1, "panell_dt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x63

    goto/16 :goto_710

    :sswitch_634
    const-string v1, "panell_ds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x62

    goto/16 :goto_710

    :sswitch_640
    const-string v1, "panell_dl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x61

    goto/16 :goto_710

    :sswitch_64c
    const-string v1, "vernee_M5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x82

    goto/16 :goto_710

    :sswitch_658
    const-string v1, "pacificrim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x5f

    goto/16 :goto_710

    :sswitch_664
    const-string v1, "Phantom6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x68

    goto/16 :goto_710

    :sswitch_670
    const-string v1, "ComioS1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x15

    goto/16 :goto_710

    :sswitch_67c
    const-string v1, "XT1663"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x89

    goto/16 :goto_710

    :sswitch_688
    const-string v1, "RAIJIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x74

    goto/16 :goto_710

    :sswitch_694
    const-string v1, "AquaPowerM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0xd

    goto/16 :goto_710

    :sswitch_6a0
    const-string v1, "PGN611"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x67

    goto/16 :goto_710

    :sswitch_6ac
    const-string v1, "PGN610"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x66

    goto :goto_710

    :sswitch_6b7
    const-string v1, "PGN528"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x65

    goto :goto_710

    :sswitch_6c2
    const-string v1, "NX573J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x5a

    goto :goto_710

    :sswitch_6cd
    const-string v1, "NX541J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x59

    goto :goto_710

    :sswitch_6d8
    const-string v1, "CP8676_I02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x16

    goto :goto_710

    :sswitch_6e3
    const-string v1, "K50a40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x4a

    goto :goto_710

    :sswitch_6ee
    const-string v1, "GIONEE_SWW1631"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x38

    goto :goto_710

    :sswitch_6f9
    const-string v1, "GIONEE_SWW1627"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x37

    goto :goto_710

    :sswitch_704
    const-string v1, "GIONEE_SWW1609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70f

    const/16 v1, 0x36

    goto :goto_710

    :cond_70f
    :goto_70f
    const/4 v1, -0x1

    :goto_710
    packed-switch v1, :pswitch_data_9ba

    .line 1926
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_71b

    :pswitch_71a
    return v10

    :goto_71b
    const v2, -0x236fe21d

    if-eq v1, v2, :cond_73f

    const v2, 0x1e9d52

    if-eq v1, v2, :cond_735

    const v2, 0x1e9d5f

    if-eq v1, v2, :cond_72b

    goto :goto_748

    :cond_72b
    const-string v1, "AFTN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_748

    const/4 v7, 0x1

    goto :goto_748

    :cond_735
    const-string v1, "AFTA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_748

    const/4 v7, 0x0

    goto :goto_748

    :cond_73f
    const-string v1, "JSN-L21"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_748

    const/4 v7, 0x2

    :cond_748
    :goto_748
    if-eqz v7, :cond_74f

    if-eq v7, v10, :cond_74f

    if-eq v7, v8, :cond_74f

    goto :goto_750

    :cond_74f
    return v10

    :cond_750
    :goto_750
    return v9

    nop

    :sswitch_data_752
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_5f
        -0x48b8f57f -> :sswitch_55
        -0x48b8bd30 -> :sswitch_4b
        -0x3c588c8a -> :sswitch_41
        -0x2d5172e2 -> :sswitch_37
        -0x3de1850 -> :sswitch_2d
        0x341e81 -> :sswitch_23
        0x31316ffa -> :sswitch_19
    .end sparse-switch

    :pswitch_data_774
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
    .end packed-switch

    :sswitch_data_788
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_704
        -0x7fd6c381 -> :sswitch_6f9
        -0x7fd6c368 -> :sswitch_6ee
        -0x7d026749 -> :sswitch_6e3
        -0x78929d6a -> :sswitch_6d8
        -0x75f50a1e -> :sswitch_6cd
        -0x75f4fe9d -> :sswitch_6c2
        -0x736f875c -> :sswitch_6b7
        -0x736f83c2 -> :sswitch_6ac
        -0x736f83c1 -> :sswitch_6a0
        -0x7327ce1c -> :sswitch_694
        -0x705c574b -> :sswitch_688
        -0x651ebb62 -> :sswitch_67c
        -0x6423293b -> :sswitch_670
        -0x604f5117 -> :sswitch_664
        -0x5f691e13 -> :sswitch_658
        -0x5ca40cc4 -> :sswitch_64c
        -0x58520ec1 -> :sswitch_640
        -0x58520eba -> :sswitch_634
        -0x58520eb9 -> :sswitch_628
        -0x4eaed329 -> :sswitch_61c
        -0x4892fb4f -> :sswitch_610
        -0x465b3df3 -> :sswitch_604
        -0x43e6c939 -> :sswitch_5f8
        -0x3ec0fcc5 -> :sswitch_5ec
        -0x3b33cca0 -> :sswitch_5e2
        -0x3b33cc9a -> :sswitch_5d7
        -0x398ae3f6 -> :sswitch_5cb
        -0x391f0fb4 -> :sswitch_5bf
        -0x346837ae -> :sswitch_5b3
        -0x323788e3 -> :sswitch_5a7
        -0x30f57652 -> :sswitch_59b
        -0x2f88a116 -> :sswitch_58f
        -0x2f61ed98 -> :sswitch_583
        -0x2efd0837 -> :sswitch_577
        -0x2e9e9441 -> :sswitch_56b
        -0x2247b8b1 -> :sswitch_55f
        -0x1f0fa2b7 -> :sswitch_553
        -0x19af3b41 -> :sswitch_547
        -0x114fad3e -> :sswitch_53b
        -0x10dae90b -> :sswitch_52f
        -0x1084b7b7 -> :sswitch_523
        -0xa5988e9 -> :sswitch_517
        -0x35f9fbf -> :sswitch_50b
        0x84e -> :sswitch_4ff
        0xa04 -> :sswitch_4f3
        0xa9b -> :sswitch_4e7
        0xa9f -> :sswitch_4db
        0xc13 -> :sswitch_4cf
        0xd9b -> :sswitch_4c3
        0x11ebd -> :sswitch_4b7
        0x12711 -> :sswitch_4ab
        0x127db -> :sswitch_49f
        0x12beb -> :sswitch_493
        0x1334d -> :sswitch_487
        0x135c9 -> :sswitch_47b
        0x13aea -> :sswitch_46f
        0x158d2 -> :sswitch_463
        0x1821e -> :sswitch_457
        0x18220 -> :sswitch_44b
        0x18401 -> :sswitch_43f
        0x18c69 -> :sswitch_433
        0x1716e6 -> :sswitch_428
        0x171ac8 -> :sswitch_41d
        0x171ac9 -> :sswitch_412
        0x208c61 -> :sswitch_406
        0x208c63 -> :sswitch_3fa
        0x208c80 -> :sswitch_3ee
        0x208c9f -> :sswitch_3e2
        0x208cbe -> :sswitch_3d6
        0x208cc0 -> :sswitch_3ca
        0x252f5f -> :sswitch_3be
        0x25981d -> :sswitch_3b2
        0x259b88 -> :sswitch_3a6
        0x290a13 -> :sswitch_39a
        0x3021fd -> :sswitch_38e
        0x321e47 -> :sswitch_382
        0x332327 -> :sswitch_376
        0x33ab63 -> :sswitch_36a
        0x27691fb -> :sswitch_35e
        0x30f8881 -> :sswitch_353
        0x30f8c42 -> :sswitch_348
        0x349f581 -> :sswitch_33c
        0x3ab0ea7 -> :sswitch_331
        0x3e53ea5 -> :sswitch_325
        0x3f25a44 -> :sswitch_319
        0x3f25a46 -> :sswitch_30d
        0x3f25a49 -> :sswitch_301
        0x3f25e05 -> :sswitch_2f5
        0x3f25e07 -> :sswitch_2e9
        0x3f25e09 -> :sswitch_2dd
        0x3f261c6 -> :sswitch_2d1
        0x48dce49 -> :sswitch_2c5
        0x48dd589 -> :sswitch_2b9
        0x48dd8af -> :sswitch_2ad
        0x4d36832 -> :sswitch_2a1
        0x4f0b0e7 -> :sswitch_295
        0x5e2479e -> :sswitch_289
        0x60acc05 -> :sswitch_27d
        0x6214744 -> :sswitch_271
        0x9d91379 -> :sswitch_265
        0xadc0551 -> :sswitch_259
        0xea056b3 -> :sswitch_24d
        0x1121dbc3 -> :sswitch_241
        0x1255818c -> :sswitch_235
        0x1263990d -> :sswitch_229
        0x12d90f3a -> :sswitch_21d
        0x12d90f4c -> :sswitch_211
        0x12d98b1b -> :sswitch_205
        0x12d98b22 -> :sswitch_1f9
        0x1844c711 -> :sswitch_1ed
        0x1e3e8044 -> :sswitch_1e1
        0x2f5336ed -> :sswitch_1d5
        0x2f54115e -> :sswitch_1c9
        0x2f541849 -> :sswitch_1bd
        0x31cf010e -> :sswitch_1b1
        0x36ad82f4 -> :sswitch_1a5
        0x391a0b61 -> :sswitch_199
        0x3f3728cd -> :sswitch_18d
        0x448ec687 -> :sswitch_181
        0x46260f63 -> :sswitch_175
        0x4c505106 -> :sswitch_169
        0x4de67084 -> :sswitch_15d
        0x506ac5a9 -> :sswitch_151
        0x5abad9cd -> :sswitch_145
        0x64d2e6e9 -> :sswitch_139
        0x64d2eac5 -> :sswitch_12d
        0x65e4085b -> :sswitch_121
        0x6f373556 -> :sswitch_115
        0x719f1dcb -> :sswitch_109
        0x75d9a0f0 -> :sswitch_fd
        0x7796d144 -> :sswitch_f1
        0x785bcb26 -> :sswitch_e5
        0x78fc0e50 -> :sswitch_d9
        0x790521fb -> :sswitch_cd
        0x7933207f -> :sswitch_c1
        0x7a05a409 -> :sswitch_b5
        0x7a0696bd -> :sswitch_a9
        0x7a16dfe7 -> :sswitch_9d
        0x7a1f0e95 -> :sswitch_91
    .end sparse-switch

    :pswitch_data_9ba
    .packed-switch 0x0
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
        :pswitch_71a
    .end packed-switch
.end method

.method public static getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I
    .registers 12

    .line 762
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->width:I

    .line 763
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->height:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_cf

    if-ne v1, v2, :cond_b

    goto/16 :goto_cf

    .line 769
    :cond_b
    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v4, "video/dolby-vision"

    .line 770
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const-string v6, "video/avc"

    const-string v7, "video/hevc"

    const/4 v8, 0x2

    if-eqz v4, :cond_34

    .line 778
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 780
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v3, 0x200

    if-eq p1, v3, :cond_31

    if-eq p1, v5, :cond_31

    if-ne p1, v8, :cond_33

    :cond_31
    move-object v3, v6

    goto :goto_34

    :cond_33
    move-object v3, v7

    .line 792
    :cond_34
    :goto_34
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v4, 0x3

    const/4 v9, 0x4

    sparse-switch p1, :sswitch_data_d0

    goto :goto_7f

    :sswitch_3e
    const-string p1, "video/x-vnd.on2.vp9"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7f

    const/4 v5, 0x6

    goto :goto_80

    :sswitch_48
    const-string p1, "video/x-vnd.on2.vp8"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7f

    const/4 v5, 0x4

    goto :goto_80

    :sswitch_52
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7f

    const/4 v5, 0x2

    goto :goto_80

    :sswitch_5a
    const-string p1, "video/mp4v-es"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7f

    goto :goto_80

    :sswitch_63
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7f

    const/4 v5, 0x5

    goto :goto_80

    :sswitch_6b
    const-string p1, "video/av01"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7f

    const/4 v5, 0x3

    goto :goto_80

    :sswitch_75
    const-string p1, "video/3gpp"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7f

    const/4 v5, 0x0

    goto :goto_80

    :cond_7f
    :goto_7f
    const/4 v5, -0x1

    :goto_80
    packed-switch v5, :pswitch_data_ee

    return v2

    :pswitch_84
    mul-int v0, v0, v1

    goto :goto_c9

    .line 799
    :pswitch_87
    sget-object p1, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v3, "BRAVIA 4K 2015"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c5

    sget-object p1, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Amazon"

    .line 800
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b4

    sget-object p1, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v3, "KFSOWI"

    .line 801
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c5

    sget-object p1, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v3, "AFTS"

    .line 802
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b4

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p0, :cond_b4

    goto :goto_c5

    :cond_b4
    const/16 p0, 0x10

    .line 808
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result p1

    invoke-static {v1, p0}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v0

    mul-int p1, p1, v0

    mul-int/lit8 p1, p1, 0x10

    mul-int/lit8 v0, p1, 0x10

    goto :goto_c8

    :cond_c5
    :goto_c5
    return v2

    :pswitch_c6
    mul-int v0, v0, v1

    :goto_c8
    const/4 v9, 0x2

    :goto_c9
    mul-int/lit8 v0, v0, 0x3

    mul-int/lit8 v9, v9, 0x2

    .line 828
    div-int/2addr v0, v9

    return v0

    :cond_cf
    :goto_cf
    return v2

    :sswitch_data_d0
    .sparse-switch
        -0x63306f58 -> :sswitch_75
        -0x631b55f6 -> :sswitch_6b
        -0x63185e82 -> :sswitch_63
        0x46cdc642 -> :sswitch_5a
        0x4f62373a -> :sswitch_52
        0x5f50bed8 -> :sswitch_48
        0x5f50bed9 -> :sswitch_3e
    .end sparse-switch

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_c6
        :pswitch_c6
        :pswitch_87
        :pswitch_c6
        :pswitch_c6
        :pswitch_84
        :pswitch_84
    .end packed-switch
.end method

.method private static getCodecMaxSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)Landroid/graphics/Point;
    .registers 15

    .line 1603
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->height:I

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->width:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_f

    .line 1604
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->height:I

    goto :goto_11

    :cond_f
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->width:I

    :goto_11
    if-eqz v0, :cond_16

    .line 1605
    iget v3, p1, Lcom/google/android/exoplayer2/Format;->width:I

    goto :goto_18

    :cond_16
    iget v3, p1, Lcom/google/android/exoplayer2/Format;->height:I

    :goto_18
    int-to-float v4, v3

    int-to-float v5, v1

    div-float/2addr v4, v5

    .line 1607
    sget-object v5, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    array-length v6, v5

    :goto_1e
    const/4 v7, 0x0

    if-ge v2, v6, :cond_75

    aget v8, v5, v2

    int-to-float v9, v8

    mul-float v9, v9, v4

    float-to-int v9, v9

    if-le v8, v1, :cond_75

    if-gt v9, v3, :cond_2c

    goto :goto_75

    .line 1612
    :cond_2c
    sget v10, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_4d

    if-eqz v0, :cond_36

    move v7, v9

    goto :goto_37

    :cond_36
    move v7, v8

    :goto_37
    if-eqz v0, :cond_3a

    goto :goto_3b

    :cond_3a
    move v8, v9

    .line 1614
    :goto_3b
    invoke-virtual {p0, v7, v8}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->alignVideoSizeV21(II)Landroid/graphics/Point;

    move-result-object v7

    .line 1617
    iget v8, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 1618
    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v10, v7, Landroid/graphics/Point;->y:I

    float-to-double v11, v8

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result v8

    if-eqz v8, :cond_72

    return-object v7

    :cond_4d
    const/16 v10, 0x10

    .line 1624
    :try_start_4f
    invoke-static {v8, v10}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    .line 1625
    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v9

    mul-int/lit8 v9, v9, 0x10

    mul-int v10, v8, v9

    .line 1626
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v11

    if-gt v10, v11, :cond_72

    .line 1627
    new-instance p0, Landroid/graphics/Point;

    if-eqz v0, :cond_69

    move p1, v9

    goto :goto_6a

    :cond_69
    move p1, v8

    :goto_6a
    if-eqz v0, :cond_6d

    goto :goto_6e

    :cond_6d
    move v8, v9

    :goto_6e
    invoke-direct {p0, p1, v8}, Landroid/graphics/Point;-><init>(II)V
    :try_end_71
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_4f .. :try_end_71} :catch_75

    return-object p0

    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :catch_75
    :cond_75
    :goto_75
    return-object v7
.end method

.method private static getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/Format;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 461
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 463
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 466
    :cond_9
    invoke-interface {p0, v0, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 468
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getAlternativeCodecMimeType(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_18

    .line 470
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 473
    :cond_18
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 475
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    .line 476
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    .line 477
    invoke-virtual {p1, p0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p0

    .line 478
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method protected static getMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I
    .registers 5

    .line 1649
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 1653
    iget-object p0, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_d
    if-ge v0, p0, :cond_1c

    .line 1655
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1657
    :cond_1c
    iget p0, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    add-int/2addr p0, v1

    return p0

    .line 1659
    :cond_20
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result p0

    return p0
.end method

.method private static isBufferLate(J)Z
    .registers 5

    const-wide/16 v0, -0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static isBufferVeryLate(J)Z
    .registers 5

    const-wide/32 v0, -0x7a120

    cmp-long v2, p0, v0

    if-gez v2, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method private maybeNotifyDroppedFrames()V
    .registers 7

    .line 1414
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lez v0, :cond_18

    .line 1415
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1416
    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v2, v0, v2

    .line 1417
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v5, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->droppedFrames(IJ)V

    const/4 v2, 0x0

    .line 1418
    iput v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 1419
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    :cond_18
    return-void
.end method

.method private maybeNotifyVideoFrameProcessingOffset()V
    .registers 5

    .line 1424
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    if-eqz v0, :cond_12

    .line 1425
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->reportVideoFrameProcessingOffset(JI)V

    const-wide/16 v0, 0x0

    .line 1427
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    const/4 v0, 0x0

    .line 1428
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    :cond_12
    return-void
.end method

.method private maybeNotifyVideoSizeChanged()V
    .registers 6

    .line 1391
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    if-eq v0, v1, :cond_41

    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    if-eqz v0, :cond_2d

    iget v0, v0, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    if-ne v0, v1, :cond_2d

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    iget v0, v0, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    if-ne v0, v1, :cond_2d

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    iget v0, v0, Lcom/google/android/exoplayer2/video/VideoSize;->unappliedRotationDegrees:I

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    if-ne v0, v1, :cond_2d

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    iget v0, v0, Lcom/google/android/exoplayer2/video/VideoSize;->pixelWidthHeightRatio:F

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_41

    .line 1397
    :cond_2d
    new-instance v0, Lcom/google/android/exoplayer2/video/VideoSize;

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    iget v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    iget v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/video/VideoSize;-><init>(IIIF)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 1403
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    :cond_41
    return-void
.end method

.method private maybeRenotifyRenderedFirstFrame()V
    .registers 3

    .line 1381
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    if-eqz v0, :cond_b

    .line 1382
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method private maybeRenotifyVideoSizeChanged()V
    .registers 3

    .line 1408
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    if-eqz v0, :cond_9

    .line 1409
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    :cond_9
    return-void
.end method

.method private notifyFrameMetadataListener(JJLcom/google/android/exoplayer2/Format;)V
    .registers 13

    .line 1121
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    if-eqz v0, :cond_e

    .line 1123
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecOutputMediaFormat()Landroid/media/MediaFormat;

    move-result-object v6

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 1122
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    :cond_e
    return-void
.end method

.method private onProcessedTunneledEndOfStream()V
    .registers 1

    .line 1138
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setPendingOutputEndOfStream()V

    return-void
.end method

.method private releasePlaceholderSurface()V
    .registers 4

    .line 1342
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    .line 1343
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 1345
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->release()V

    .line 1346
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    return-void
.end method

.method private static setHdr10PlusInfoV29(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;[B)V
    .registers 4

    .line 1444
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "hdr10-plus-info"

    .line 1445
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1446
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method private setJoiningDeadlineMs()V
    .registers 6

    .line 1350
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    .line 1352
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    goto :goto_15

    :cond_10
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_15
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return-void
.end method

.method private setOutput(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 621
    instance-of v0, p1, Landroid/view/Surface;

    if-eqz v0, :cond_7

    check-cast p1, Landroid/view/Surface;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    if-nez p1, :cond_26

    .line 625
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    if-eqz v0, :cond_10

    move-object p1, v0

    goto :goto_26

    .line 628
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 629
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldUseDummySurface(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 630
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    .line 637
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-eq v0, p1, :cond_6e

    .line 638
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 639
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->onSurfaceChanged(Landroid/view/Surface;)V

    const/4 v0, 0x0

    .line 640
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    .line 642
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getState()I

    move-result v0

    .line 643
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 645
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_4e

    if-eqz p1, :cond_4e

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    if-nez v2, :cond_4e

    .line 646
    invoke-virtual {p0, v1, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setOutputSurfaceV23(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Landroid/view/Surface;)V

    goto :goto_54

    .line 648
    :cond_4e
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->releaseCodec()V

    .line 649
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeInitCodecOrBypass()V

    :cond_54
    :goto_54
    if-eqz p1, :cond_67

    .line 652
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    if-eq p1, v1, :cond_67

    .line 654
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 656
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    const/4 p1, 0x2

    if-ne v0, p1, :cond_7a

    .line 658
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_7a

    .line 662
    :cond_67
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    .line 663
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    goto :goto_7a

    :cond_6e
    if-eqz p1, :cond_7a

    .line 665
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    if-eq p1, v0, :cond_7a

    .line 668
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 669
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeRenotifyRenderedFirstFrame()V

    :cond_7a
    :goto_7a
    return-void
.end method

.method private shouldUseDummySurface(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z
    .registers 4

    .line 1334
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_20

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez v0, :cond_20

    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 1336
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 1337
    invoke-static {p1}, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->isSecureSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_20

    :cond_1e
    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    return p1
.end method


# virtual methods
.method protected canReuseCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    .registers 12

    .line 721
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->canReuseCodec(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v0

    .line 723
    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->discardReasons:I

    .line 724
    iget v2, p3, Lcom/google/android/exoplayer2/Format;->width:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v3, v3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    if-gt v2, v3, :cond_16

    iget v2, p3, Lcom/google/android/exoplayer2/Format;->height:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v3, v3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    if-le v2, v3, :cond_18

    :cond_16
    or-int/lit16 v1, v1, 0x100

    .line 727
    :cond_18
    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v3, v3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    if-le v2, v3, :cond_24

    or-int/lit8 v1, v1, 0x40

    :cond_24
    move v7, v1

    .line 731
    new-instance v1, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    iget-object v3, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    if-eqz v7, :cond_2e

    const/4 p1, 0x0

    const/4 v6, 0x0

    goto :goto_31

    :cond_2e
    iget p1, v0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    move v6, p1

    :goto_31
    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object v1
.end method

.method protected codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "OMX.google"

    .line 1704
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    return p1

    .line 1708
    :cond_a
    const-class p1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    monitor-enter p1

    .line 1709
    :try_start_d
    sget-boolean v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    if-nez v0, :cond_1a

    .line 1710
    invoke-static {}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->evaluateDeviceNeedsSetOutputSurfaceWorkaround()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    const/4 v0, 0x1

    .line 1711
    sput-boolean v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    .line 1713
    :cond_1a
    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_1e

    .line 1714
    sget-boolean p1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    return p1

    :catchall_1e
    move-exception v0

    .line 1713
    :try_start_1f
    monitor-exit p1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method protected createDecoderException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;
    .registers 5

    .line 1590
    new-instance v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoDecoderException;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoDecoderException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/view/Surface;)V

    return-object v0
.end method

.method protected dropOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V
    .registers 5

    const-string p3, "dropVideoBuffer"

    .line 1221
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1222
    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 1223
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    const/4 p1, 0x1

    .line 1224
    invoke-virtual {p0, p3, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(II)V

    return-void
.end method

.method protected getCodecMaxValues(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;
    .registers 15

    .line 1535
    iget v0, p2, Lcom/google/android/exoplayer2/Format;->width:I

    .line 1536
    iget v1, p2, Lcom/google/android/exoplayer2/Format;->height:I

    .line 1537
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    .line 1538
    array-length v3, p3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v3, v4, :cond_25

    if-eq v2, v5, :cond_1f

    .line 1542
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    if-eq p1, v5, :cond_1f

    int-to-float p2, v2

    const/high16 p3, 0x3fc00000    # 1.5f

    mul-float p2, p2, p3

    float-to-int p2, p2

    .line 1550
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1553
    :cond_1f
    new-instance p1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object p1

    .line 1556
    :cond_25
    array-length v3, p3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_29
    if-ge v7, v3, :cond_6f

    aget-object v9, p3, v7

    .line 1557
    iget-object v10, p2, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-eqz v10, :cond_43

    iget-object v10, v9, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-nez v10, :cond_43

    .line 1560
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v9

    iget-object v10, p2, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/Format$Builder;->setColorInfo(Lcom/google/android/exoplayer2/video/ColorInfo;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    .line 1562
    :cond_43
    invoke-virtual {p1, p2, v9}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->canReuseCodec(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v10

    iget v10, v10, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    if-eqz v10, :cond_6c

    .line 1563
    iget v10, v9, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v10, v5, :cond_56

    iget v10, v9, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v10, v5, :cond_54

    goto :goto_56

    :cond_54
    const/4 v10, 0x0

    goto :goto_57

    :cond_56
    :goto_56
    const/4 v10, 0x1

    :goto_57
    or-int/2addr v8, v10

    .line 1565
    iget v10, v9, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1566
    iget v10, v9, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1567
    invoke-static {p1, v9}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_6c
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    :cond_6f
    if-eqz v8, :cond_d3

    .line 1571
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v4, "MediaCodecVideoRenderer"

    invoke-static {v4, p3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)Landroid/graphics/Point;

    move-result-object p3

    if-eqz p3, :cond_d3

    .line 1574
    iget v5, p3, Landroid/graphics/Point;->x:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1575
    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1580
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 1579
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    .line 1577
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1581
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Codec max resolution adjusted to: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    :cond_d3
    new-instance p1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object p1
.end method

.method protected getCodecNeedsEosPropagation()Z
    .registers 3

    .line 681
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_c

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected getCodecOperatingRateV23(FLcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)F
    .registers 9

    .line 837
    array-length p2, p3

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    :goto_6
    if-ge v1, p2, :cond_17

    aget-object v3, p3, v1

    .line 838
    iget v3, v3, Lcom/google/android/exoplayer2/Format;->frameRate:F

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_14

    .line 840
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_17
    cmpl-float p2, v2, v0

    if-nez p2, :cond_1c

    goto :goto_1e

    :cond_1c
    mul-float v0, v2, p1

    :goto_1e
    return v0
.end method

.method protected getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/Format;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 435
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 436
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object p1

    .line 435
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfosSortedByFormatSupport(Ljava/util/List;Lcom/google/android/exoplayer2/Format;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getMediaCodecConfiguration(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;F)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;
    .registers 14

    .line 691
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    if-eqz v0, :cond_d

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->secure:Z

    iget-boolean v1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    if-eq v0, v1, :cond_d

    .line 693
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->releasePlaceholderSurface()V

    .line 695
    :cond_d
    iget-object v4, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->codecMimeType:Ljava/lang/String;

    .line 696
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getStreamFormats()[Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxValues(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 697
    iget-boolean v7, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    move v8, v0

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_25
    move-object v2, p0

    move-object v3, p2

    move v6, p4

    .line 698
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMediaFormat(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;

    move-result-object p4

    .line 705
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-nez v0, :cond_4f

    .line 706
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldUseDummySurface(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 709
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    if-nez v0, :cond_44

    .line 710
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean v1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    .line 712
    :cond_44
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    goto :goto_4f

    .line 707
    :cond_49
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 714
    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-static {p1, p4, p2, v0, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->createForVideoDecoding(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;

    move-result-object p1

    return-object p1
.end method

.method protected getMediaFormat(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;
    .registers 9

    .line 1483
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    .line 1485
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->width:I

    const-string v1, "width"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1487
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->height:I

    const-string v1, "height"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1488
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 1490
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const-string v1, "frame-rate"

    invoke-static {v0, v1, p2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetFloat(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 1491
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    const-string v1, "rotation-degrees"

    invoke-static {v0, v1, p2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1492
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetColorInfo(Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/video/ColorInfo;)V

    .line 1493
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "video/dolby-vision"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4d

    .line 1496
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 1498
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 1499
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "profile"

    .line 1498
    invoke-static {v0, p2, p1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1503
    :cond_4d
    iget p1, p3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    const-string p2, "max-width"

    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1504
    iget p1, p3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    const-string p2, "max-height"

    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1505
    iget p1, p3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    const-string p2, "max-input-size"

    invoke-static {v0, p2, p1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1508
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p2, 0x17

    const/4 p3, 0x0

    if-lt p1, p2, :cond_79

    const-string p1, "priority"

    .line 1509
    invoke-virtual {v0, p1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, p4, p1

    if-eqz p1, :cond_79

    const-string p1, "operating-rate"

    .line 1511
    invoke-virtual {v0, p1, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_79
    if-eqz p5, :cond_86

    const/4 p1, 0x1

    const-string p2, "no-post-process"

    .line 1515
    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "auto-frc"

    .line 1516
    invoke-virtual {v0, p1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_86
    if-eqz p6, :cond_8b

    .line 1519
    invoke-static {v0, p6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->configureTunnelingV21(Landroid/media/MediaFormat;I)V

    :cond_8b
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "MediaCodecVideoRenderer"

    return-object v0
.end method

.method protected getSurface()Landroid/view/Surface;
    .registers 2

    .line 1718
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method protected handleInputBufferSupplementalData(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 953
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecHandlesHdr10PlusOutOfBandMetadata:Z

    if-nez v0, :cond_5

    return-void

    .line 956
    :cond_5
    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 957
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_4f

    .line 959
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 960
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 961
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 962
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 963
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x0

    .line 964
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, -0x4b

    if-ne v0, v6, :cond_4f

    const/16 v0, 0x3c

    if-ne v1, v0, :cond_4f

    const/4 v0, 0x1

    if-ne v2, v0, :cond_4f

    const/4 v0, 0x4

    if-ne v3, v0, :cond_4f

    if-nez v4, :cond_4f

    .line 972
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 973
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 974
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 975
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setHdr10PlusInfoV29(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;[B)V

    :cond_4f
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4d

    const/4 v0, 0x7

    if-eq p1, v0, :cond_48

    const/16 v0, 0xa

    if-eq p1, v0, :cond_34

    const/4 v0, 0x4

    if-eq p1, v0, :cond_20

    const/4 v0, 0x5

    if-eq p1, v0, :cond_14

    .line 615
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_50

    .line 594
    :cond_14
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->setChangeFrameRateStrategy(I)V

    goto :goto_50

    .line 587
    :cond_20
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 588
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object p1

    if-eqz p1, :cond_50

    .line 590
    iget p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->setVideoScalingMode(I)V

    goto :goto_50

    .line 600
    :cond_34
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 601
    iget p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    if-eq p2, p1, :cond_50

    .line 602
    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    .line 603
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz p1, :cond_50

    .line 604
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->releaseCodec()V

    goto :goto_50

    .line 597
    :cond_48
    check-cast p2, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    goto :goto_50

    .line 584
    :cond_4d
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setOutput(Ljava/lang/Object;)V

    :cond_50
    :goto_50
    return-void
.end method

.method public isReady()Z
    .registers 10

    .line 513
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    if-eqz v0, :cond_18

    iget-object v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-eq v4, v0, :cond_22

    .line 516
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_25

    .line 519
    :cond_22
    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return v1

    .line 521
    :cond_25
    iget-wide v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_2d

    return v0

    .line 524
    :cond_2d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_38

    return v1

    .line 529
    :cond_38
    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return v0
.end method

.method protected maybeDropBuffersToKeyframe(JZ)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1241
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->skipSource(J)I

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    const/4 p2, 0x1

    if-eqz p3, :cond_1c

    .line 1248
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v0, p3, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedInputBufferCount:I

    add-int/2addr v0, p1

    iput v0, p3, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedInputBufferCount:I

    .line 1249
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p3, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/2addr p3, v0

    iput p3, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    goto :goto_28

    .line 1251
    :cond_1c
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v0, p3, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    add-int/2addr v0, p2

    iput v0, p3, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    .line 1252
    iget p3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    invoke-virtual {p0, p1, p3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(II)V

    .line 1255
    :goto_28
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->flushOrReinitializeCodec()Z

    return p2
.end method

.method maybeNotifyRenderedFirstFrame()V
    .registers 4

    const/4 v0, 0x1

    .line 1372
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterEnable:Z

    .line 1373
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v1, :cond_12

    .line 1374
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    .line 1375
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Ljava/lang/Object;)V

    .line 1376
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    :cond_12
    return-void
.end method

.method protected onCodecError(Ljava/lang/Exception;)V
    .registers 4

    const-string v0, "MediaCodecVideoRenderer"

    const-string v1, "Video codec error"

    .line 869
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 870
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;JJ)V
    .registers 13

    .line 852
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 853
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    .line 855
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isHdr10PlusOutOfBandMetadataSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecHandlesHdr10PlusOutOfBandMetadata:Z

    .line 856
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_39

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz p1, :cond_39

    .line 857
    new-instance p1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 858
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    :cond_39
    return-void
.end method

.method protected onCodecReleased(Ljava/lang/String;)V
    .registers 3

    .line 864
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->decoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method protected onDisabled()V
    .registers 4

    .line 556
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    .line 557
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    const/4 v0, 0x0

    .line 558
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    const/4 v0, 0x0

    .line 559
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 561
    :try_start_c
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_17

    .line 563
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void

    :catchall_17
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v0
.end method

.method protected onEnabled(ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 484
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onEnabled(ZZ)V

    .line 485
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getConfiguration()Lcom/google/android/exoplayer2/RendererConfiguration;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/RendererConfiguration;->tunneling:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 486
    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    if-eqz v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    :goto_14
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 487
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eq v1, p1, :cond_20

    .line 488
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 489
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->releaseCodec()V

    .line 491
    :cond_20
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->enabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 492
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->mayRenderFirstFrameAfterEnableIfNotStarted:Z

    .line 493
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterEnable:Z

    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 877
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v0

    .line 878
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p1, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-object v0
.end method

.method protected onOutputFormatChanged(Lcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V
    .registers 9

    .line 907
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 910
    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->setVideoScalingMode(I)V

    .line 912
    :cond_b
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_18

    .line 913
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->width:I

    iput p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 914
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->height:I

    iput p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    goto :goto_69

    .line 916
    :cond_18
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "crop-right"

    .line 918
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "crop-top"

    const-string v3, "crop-bottom"

    const-string v4, "crop-left"

    const/4 v5, 0x1

    if-eqz v1, :cond_3e

    .line 919
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 920
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 921
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const/4 v1, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    if-eqz v1, :cond_4c

    .line 924
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    goto :goto_52

    :cond_4c
    const-string v0, "width"

    .line 925
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_52
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    if-eqz v1, :cond_61

    .line 928
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v0, p2

    add-int/2addr v0, v5

    goto :goto_67

    :cond_61
    const-string v0, "height"

    .line 929
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_67
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    .line 931
    :goto_69
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    iput p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    .line 932
    sget p2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_8f

    .line 936
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_7f

    iget p2, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    const/16 v0, 0x10e

    if-ne p2, v0, :cond_93

    .line 937
    :cond_7f
    iget p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 938
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 939
    iput p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 940
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    div-float/2addr p2, v0

    iput p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    goto :goto_93

    .line 944
    :cond_8f
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    iput p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    .line 946
    :cond_93
    :goto_93
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->onFormatChanged(F)V

    return-void
.end method

.method protected onPositionReset(JZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 498
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    .line 499
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    .line 500
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->onPositionReset()V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 501
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastBufferPresentationTimeUs:J

    .line 502
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->initialPositionUs:J

    const/4 v0, 0x0

    .line 503
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    if-eqz p3, :cond_1d

    .line 505
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_1f

    .line 507
    :cond_1d
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    :goto_1f
    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .registers 3

    .line 1144
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer(J)V

    .line 1145
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez p1, :cond_d

    .line 1146
    iget p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    :cond_d
    return-void
.end method

.method protected onProcessedStreamChange()V
    .registers 1

    .line 1152
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onProcessedStreamChange()V

    .line 1153
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    return-void
.end method

.method protected onProcessedTunneledBuffer(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1129
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateOutputFormatForTime(J)V

    .line 1130
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    .line 1131
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 1132
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    .line 1133
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->onProcessedOutputBuffer(J)V

    return-void
.end method

.method protected onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 895
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez v0, :cond_a

    .line 896
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 898
    :cond_a
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_19

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_19

    .line 901
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->onProcessedTunneledBuffer(J)V

    :cond_19
    return-void
.end method

.method protected onReset()V
    .registers 3

    .line 571
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onReset()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_b

    .line 573
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    if-eqz v0, :cond_a

    .line 574
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->releasePlaceholderSurface()V

    :cond_a
    return-void

    :catchall_b
    move-exception v0

    .line 573
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    if-eqz v1, :cond_13

    .line 574
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->releasePlaceholderSurface()V

    :cond_13
    throw v0
.end method

.method protected onStarted()V
    .registers 6

    .line 536
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onStarted()V

    const/4 v0, 0x0

    .line 537
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 538
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 539
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    const-wide/16 v1, 0x0

    .line 540
    iput-wide v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    .line 541
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    .line 542
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->onStarted()V

    return-void
.end method

.method protected onStopped()V
    .registers 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 547
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 548
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    .line 549
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoFrameProcessingOffset()V

    .line 550
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->onStopped()V

    .line 551
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onStopped()V

    return-void
.end method

.method protected processOutputBuffer(JJLcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/Format;)Z
    .registers 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    move-object/from16 v9, p5

    move/from16 v10, p7

    move-wide/from16 v0, p10

    .line 994
    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    iget-wide v2, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->initialPositionUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v2, v4

    if-nez v11, :cond_1a

    .line 997
    iput-wide v7, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->initialPositionUs:J

    .line 1000
    :cond_1a
    iget-wide v2, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastBufferPresentationTimeUs:J

    cmp-long v11, v0, v2

    if-eqz v11, :cond_27

    .line 1001
    iget-object v2, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->onNextFrame(J)V

    .line 1002
    iput-wide v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastBufferPresentationTimeUs:J

    .line 1005
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getOutputStreamOffsetUs()J

    move-result-wide v2

    sub-long v11, v0, v2

    const/4 v13, 0x1

    if-eqz p12, :cond_36

    if-nez p13, :cond_36

    .line 1009
    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->skipOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V

    return v13

    .line 1014
    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getPlaybackSpeed()F

    move-result v14

    float-to-double v14, v14

    .line 1015
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getState()I

    move-result v4

    const/4 v5, 0x2

    const/16 v16, 0x0

    if-ne v4, v5, :cond_46

    const/4 v4, 0x1

    goto :goto_47

    :cond_46
    const/4 v4, 0x0

    .line 1016
    :goto_47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    mul-long v17, v17, v19

    sub-long/2addr v0, v7

    long-to-double v0, v0

    .line 1021
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v14

    double-to-long v0, v0

    if-eqz v4, :cond_5e

    sub-long v14, v17, p3

    sub-long/2addr v0, v14

    .line 1027
    :cond_5e
    iget-object v5, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    iget-object v14, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    if-ne v5, v14, :cond_72

    .line 1029
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 1030
    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->skipOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V

    .line 1031
    invoke-virtual {v6, v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    return v13

    :cond_71
    return v16

    .line 1037
    :cond_72
    iget-wide v14, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    sub-long v14, v17, v14

    .line 1038
    iget-boolean v5, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterEnable:Z

    if-nez v5, :cond_81

    if-nez v4, :cond_85

    iget-boolean v5, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->mayRenderFirstFrameAfterEnableIfNotStarted:Z

    if-eqz v5, :cond_89

    goto :goto_85

    :cond_81
    iget-boolean v5, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v5, :cond_89

    :cond_85
    :goto_85
    move-wide/from16 p10, v14

    const/4 v5, 0x1

    goto :goto_8c

    :cond_89
    move-wide/from16 p10, v14

    const/4 v5, 0x0

    .line 1043
    :goto_8c
    iget-wide v13, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v15, v13, v17

    if-nez v15, :cond_a9

    cmp-long v13, v7, v2

    if-ltz v13, :cond_a9

    if-nez v5, :cond_a7

    if-eqz v4, :cond_a9

    move-wide/from16 v2, p10

    .line 1047
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldForceRenderOutputBuffer(JJ)Z

    move-result v2

    if-eqz v2, :cond_a9

    :cond_a7
    const/4 v2, 0x1

    goto :goto_aa

    :cond_a9
    const/4 v2, 0x0

    :goto_aa
    const/16 v13, 0x15

    if-eqz v2, :cond_d7

    .line 1049
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-object/from16 p8, p0

    move-wide/from16 p9, v11

    move-wide/from16 p11, v2

    move-object/from16 p13, p14

    .line 1050
    invoke-direct/range {p8 .. p13}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLcom/google/android/exoplayer2/Format;)V

    .line 1051
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v4, v13, :cond_cf

    move-object/from16 p8, p0

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v11

    move-wide/from16 p13, v2

    .line 1052
    invoke-virtual/range {p8 .. p14}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJJ)V

    goto :goto_d2

    .line 1054
    :cond_cf
    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V

    .line 1056
    :goto_d2
    invoke-virtual {v6, v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    :goto_d5
    const/4 v0, 0x1

    return v0

    :cond_d7
    if-eqz v4, :cond_18f

    .line 1060
    iget-wide v2, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->initialPositionUs:J

    cmp-long v4, v7, v2

    if-nez v4, :cond_e1

    goto/16 :goto_18f

    .line 1065
    :cond_e1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    mul-long v0, v0, v19

    add-long/2addr v0, v2

    .line 1069
    iget-object v4, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-virtual {v4, v0, v1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->adjustReleaseTime(J)J

    move-result-wide v14

    sub-long v0, v14, v2

    .line 1070
    div-long v3, v0, v19

    .line 1072
    iget-wide v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v17

    if-eqz v2, :cond_ff

    const/4 v5, 0x1

    goto :goto_100

    :cond_ff
    const/4 v5, 0x0

    :goto_100
    move-object/from16 v0, p0

    move-wide v1, v3

    move-wide/from16 v17, v3

    move-wide/from16 v3, p3

    move v13, v5

    move/from16 v5, p13

    .line 1073
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldDropBuffersToKeyframe(JJZ)Z

    move-result v0

    if-eqz v0, :cond_117

    .line 1074
    invoke-virtual {v6, v7, v8, v13}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeDropBuffersToKeyframe(JZ)Z

    move-result v0

    if-eqz v0, :cond_117

    return v16

    :cond_117
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move-wide/from16 v3, p3

    move/from16 v5, p13

    .line 1076
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldDropOutputBuffer(JJZ)Z

    move-result v0

    if-eqz v0, :cond_134

    if-eqz v13, :cond_12b

    .line 1078
    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->skipOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V

    goto :goto_12e

    .line 1080
    :cond_12b
    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dropOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V

    :goto_12e
    move-wide/from16 v0, v17

    .line 1082
    invoke-virtual {v6, v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    goto :goto_d5

    :cond_134
    move-wide/from16 v0, v17

    .line 1086
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_15e

    const-wide/32 v2, 0xc350

    cmp-long v4, v0, v2

    if-gez v4, :cond_18f

    move-object/from16 p8, p0

    move-wide/from16 p9, v11

    move-wide/from16 p11, v14

    move-object/from16 p13, p14

    .line 1089
    invoke-direct/range {p8 .. p13}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLcom/google/android/exoplayer2/Format;)V

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v11

    move-wide/from16 p13, v14

    .line 1090
    invoke-virtual/range {p8 .. p14}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJJ)V

    .line 1091
    invoke-virtual {v6, v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    goto/16 :goto_d5

    :cond_15e
    const-wide/16 v2, 0x7530

    cmp-long v4, v0, v2

    if-gez v4, :cond_18f

    const-wide/16 v2, 0x2af8

    cmp-long v4, v0, v2

    if-lez v4, :cond_17c

    const-wide/16 v2, 0x2710

    sub-long v2, v0, v2

    .line 1102
    :try_start_16e
    div-long v2, v2, v19

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_173
    .catch Ljava/lang/InterruptedException; {:try_start_16e .. :try_end_173} :catch_174

    goto :goto_17c

    .line 1104
    :catch_174
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return v16

    :cond_17c
    :goto_17c
    move-object/from16 p8, p0

    move-wide/from16 p9, v11

    move-wide/from16 p11, v14

    move-object/from16 p13, p14

    .line 1108
    invoke-direct/range {p8 .. p13}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLcom/google/android/exoplayer2/Format;)V

    .line 1109
    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V

    .line 1110
    invoke-virtual {v6, v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    goto/16 :goto_d5

    :cond_18f
    :goto_18f
    return v16
.end method

.method protected renderOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V
    .registers 7

    .line 1301
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    const-string p3, "releaseOutputBuffer"

    .line 1302
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 1303
    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 1304
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 1305
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    .line 1306
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    const/4 p1, 0x0

    .line 1307
    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1308
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    return-void
.end method

.method protected renderOutputBufferV21(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJJ)V
    .registers 7

    .line 1323
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    const-string p3, "releaseOutputBuffer"

    .line 1324
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 1325
    invoke-interface {p1, p2, p5, p6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IJ)V

    .line 1326
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 1327
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long p1, p1, p3

    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    .line 1328
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    const/4 p1, 0x0

    .line 1329
    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1330
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    return-void
.end method

.method protected resetCodecStateForFlush()V
    .registers 2

    .line 742
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    const/4 v0, 0x0

    .line 743
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    return-void
.end method

.method protected setOutputSurfaceV23(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Landroid/view/Surface;)V
    .registers 3

    .line 1451
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setPlaybackSpeed(FF)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 749
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setPlaybackSpeed(FF)V

    .line 750
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->onPlaybackSpeed(F)V

    return-void
.end method

.method protected shouldDropBuffersToKeyframe(JJZ)Z
    .registers 6

    .line 1182
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->isBufferVeryLate(J)Z

    move-result p1

    if-eqz p1, :cond_a

    if-nez p5, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method protected shouldDropOutputBuffer(JJZ)Z
    .registers 6

    .line 1167
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result p1

    if-eqz p1, :cond_a

    if-nez p5, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method protected shouldForceRenderOutputBuffer(JJ)Z
    .registers 6

    .line 1196
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result p1

    if-eqz p1, :cond_f

    const-wide/32 p1, 0x186a0

    cmp-long v0, p3, p1

    if-lez v0, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method protected shouldInitCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z
    .registers 3

    .line 675
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-nez v0, :cond_d

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldUseDummySurface(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method

.method protected skipOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V
    .registers 5

    const-string p3, "skipVideoBuffer"

    .line 1207
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1208
    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 1209
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 1210
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    return-void
.end method

.method protected supportsFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 344
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 345
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 346
    invoke-static {v1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 348
    :cond_e
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 352
    :goto_16
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object v3

    if-eqz v0, :cond_26

    .line 357
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 360
    invoke-static {p1, p2, v1, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object v3

    .line 366
    :cond_26
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 367
    invoke-static {v2}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 369
    :cond_31
    invoke-static {p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->supportsFormatDrm(Lcom/google/android/exoplayer2/Format;)Z

    move-result v4

    if-nez v4, :cond_3d

    const/4 p1, 0x2

    .line 370
    invoke-static {p1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 374
    :cond_3d
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 375
    invoke-virtual {v4, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isFormatSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v5

    if-nez v5, :cond_63

    const/4 v6, 0x1

    .line 379
    :goto_4a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_63

    .line 380
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 381
    invoke-virtual {v7, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isFormatSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v8

    if-eqz v8, :cond_60

    move-object v4, v7

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto :goto_64

    :cond_60
    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    :cond_63
    const/4 v3, 0x1

    :goto_64
    if-eqz v5, :cond_68

    const/4 v6, 0x4

    goto :goto_69

    :cond_68
    const/4 v6, 0x3

    .line 393
    :goto_69
    invoke-virtual {v4, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v7

    if-eqz v7, :cond_72

    const/16 v7, 0x10

    goto :goto_74

    :cond_72
    const/16 v7, 0x8

    .line 397
    :goto_74
    iget-boolean v4, v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->hardwareAccelerated:Z

    if-eqz v4, :cond_7b

    const/16 v4, 0x40

    goto :goto_7c

    :cond_7b
    const/4 v4, 0x0

    :goto_7c
    if-eqz v3, :cond_81

    const/16 v3, 0x80

    goto :goto_82

    :cond_81
    const/4 v3, 0x0

    :goto_82
    if-eqz v5, :cond_a6

    .line 407
    invoke-static {p1, p2, v0, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object p1

    .line 412
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a6

    .line 414
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfosSortedByFormatSupport(Ljava/util/List;Lcom/google/android/exoplayer2/Format;)Ljava/util/List;

    move-result-object p1

    .line 415
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 416
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isFormatSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 417
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    if-eqz p1, :cond_a6

    const/16 v1, 0x20

    .line 423
    :cond_a6
    invoke-static {v6, v7, v1, v4, v3}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(IIIII)I

    move-result p1

    return p1
.end method

.method protected updateDroppedBufferCounters(II)V
    .registers 5

    .line 1269
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedInputBufferCount:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedInputBufferCount:I

    add-int/2addr p1, p2

    .line 1271
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v0, p1

    iput v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    .line 1272
    iget p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 1273
    iget p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1274
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 1275
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 1276
    iget p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    if-lez p1, :cond_32

    iget p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lt p2, p1, :cond_32

    .line 1277
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    :cond_32
    return-void
.end method

.method protected updateVideoFrameProcessingOffsetCounters(J)V
    .registers 5

    .line 1287
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->addVideoFrameProcessingOffset(J)V

    .line 1288
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    .line 1289
    iget p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    return-void
.end method
