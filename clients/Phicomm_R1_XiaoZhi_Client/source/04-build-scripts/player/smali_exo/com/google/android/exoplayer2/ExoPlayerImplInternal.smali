.class final Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
.implements Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;
.implements Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceListInfoRefreshListener;
.implements Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParametersListener;
.implements Lcom/google/android/exoplayer2/PlayerMessage$Sender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;
    }
.end annotation


# static fields
.field private static final ACTIVE_INTERVAL_MS:I = 0xa

.field private static final IDLE_INTERVAL_MS:I = 0x3e8

.field private static final MSG_ADD_MEDIA_SOURCES:I = 0x12

.field private static final MSG_ATTEMPT_RENDERER_ERROR_RECOVERY:I = 0x19

.field private static final MSG_DO_SOME_WORK:I = 0x2

.field private static final MSG_MOVE_MEDIA_SOURCES:I = 0x13

.field private static final MSG_PERIOD_PREPARED:I = 0x8

.field private static final MSG_PLAYBACK_PARAMETERS_CHANGED_INTERNAL:I = 0x10

.field private static final MSG_PLAYLIST_UPDATE_REQUESTED:I = 0x16

.field private static final MSG_PREPARE:I = 0x0

.field private static final MSG_RELEASE:I = 0x7

.field private static final MSG_REMOVE_MEDIA_SOURCES:I = 0x14

.field private static final MSG_SEEK_TO:I = 0x3

.field private static final MSG_SEND_MESSAGE:I = 0xe

.field private static final MSG_SEND_MESSAGE_TO_TARGET_THREAD:I = 0xf

.field private static final MSG_SET_FOREGROUND_MODE:I = 0xd

.field private static final MSG_SET_MEDIA_SOURCES:I = 0x11

.field private static final MSG_SET_OFFLOAD_SCHEDULING_ENABLED:I = 0x18

.field private static final MSG_SET_PAUSE_AT_END_OF_WINDOW:I = 0x17

.field private static final MSG_SET_PLAYBACK_PARAMETERS:I = 0x4

.field private static final MSG_SET_PLAY_WHEN_READY:I = 0x1

.field private static final MSG_SET_REPEAT_MODE:I = 0xb

.field private static final MSG_SET_SEEK_PARAMETERS:I = 0x5

.field private static final MSG_SET_SHUFFLE_ENABLED:I = 0xc

.field private static final MSG_SET_SHUFFLE_ORDER:I = 0x15

.field private static final MSG_SOURCE_CONTINUE_LOADING_REQUESTED:I = 0x9

.field private static final MSG_STOP:I = 0x6

.field private static final MSG_TRACK_SELECTION_INVALIDATED:I = 0xa

.field private static final PLAYBACK_STUCK_AFTER_MS:J = 0xfa0L

.field private static final TAG:Ljava/lang/String; = "ExoPlayerImplInternal"


# instance fields
.field private final backBufferDurationUs:J

.field private final bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private deliverPendingMessageAtStartPositionRequired:Z

.field private final emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

.field private enabledRendererCount:I

.field private foregroundMode:Z

.field private final handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

.field private final internalPlaybackThread:Landroid/os/HandlerThread;

.field private isRebuffering:Z

.field private final livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

.field private final loadControl:Lcom/google/android/exoplayer2/LoadControl;

.field private final mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

.field private final mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

.field private nextPendingMessageIndexHint:I

.field private offloadSchedulingEnabled:Z

.field private pauseAtEndOfWindow:Z

.field private pendingInitialSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

.field private final pendingMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pendingPauseAtEndOfPeriod:Z

.field private pendingRecoverableRendererError:Lcom/google/android/exoplayer2/ExoPlaybackException;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

.field private playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

.field private final playbackInfoUpdateListener:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

.field private final playbackLooper:Landroid/os/Looper;

.field private playbackMaybeBecameStuckAtMs:J

.field private final queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

.field private final releaseTimeoutMs:J

.field private released:Z

.field private final rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

.field private rendererPositionUs:J

.field private final renderers:[Lcom/google/android/exoplayer2/Renderer;

.field private final renderersToReset:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private repeatMode:I

.field private requestForRendererSleep:Z

.field private final retainBackBufferFromKeyframe:Z

.field private seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

.field private setForegroundModeTimeoutMs:J

.field private shouldContinueLoading:Z

.field private shuffleModeEnabled:Z

.field private final trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;IZLcom/google/android/exoplayer2/analytics/AnalyticsCollector;Lcom/google/android/exoplayer2/SeekParameters;Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;JZLandroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;Lcom/google/android/exoplayer2/analytics/PlayerId;)V
    .registers 30

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-wide/from16 v5, p11

    move-object/from16 v7, p15

    move-object/from16 v8, p17

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v9, p16

    .line 235
    iput-object v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdateListener:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    .line 236
    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 237
    iput-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    move-object v9, p3

    .line 238
    iput-object v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-object/from16 v10, p4

    .line 239
    iput-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    .line 240
    iput-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    move/from16 v11, p6

    .line 241
    iput v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    move/from16 v11, p7

    .line 242
    iput-boolean v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    move-object/from16 v11, p9

    .line 243
    iput-object v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    move-object/from16 v11, p10

    .line 244
    iput-object v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    .line 245
    iput-wide v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releaseTimeoutMs:J

    .line 246
    iput-wide v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setForegroundModeTimeoutMs:J

    move/from16 v5, p13

    .line 247
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

    .line 248
    iput-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplayer2/util/Clock;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 250
    iput-wide v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    .line 251
    invoke-interface/range {p4 .. p4}, Lcom/google/android/exoplayer2/LoadControl;->getBackBufferDurationUs()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->backBufferDurationUs:J

    .line 252
    invoke-interface/range {p4 .. p4}, Lcom/google/android/exoplayer2/LoadControl;->retainBackBufferFromKeyframe()Z

    move-result v5

    iput-boolean v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    .line 254
    invoke-static {p3}, Lcom/google/android/exoplayer2/PlaybackInfo;->createDummy(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 255
    new-instance v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-direct {v6, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    iput-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 256
    array-length v5, v1

    new-array v5, v5, [Lcom/google/android/exoplayer2/RendererCapabilities;

    iput-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    const/4 v5, 0x0

    .line 257
    :goto_61
    array-length v6, v1

    if-ge v5, v6, :cond_76

    .line 258
    aget-object v6, v1, v5

    invoke-interface {v6, v5, v8}, Lcom/google/android/exoplayer2/Renderer;->init(ILcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 259
    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object v9, v1, v5

    invoke-interface {v9}, Lcom/google/android/exoplayer2/Renderer;->getCapabilities()Lcom/google/android/exoplayer2/RendererCapabilities;

    move-result-object v9

    aput-object v9, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    .line 261
    :cond_76
    new-instance v1, Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-direct {v1, p0, v7}, Lcom/google/android/exoplayer2/DefaultMediaClock;-><init>(Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParametersListener;Lcom/google/android/exoplayer2/util/Clock;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    .line 262
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 263
    invoke-static {}, Lcom/google/common/collect/Sets;->newIdentityHashSet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    .line 264
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 265
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 266
    invoke-virtual {p2, p0, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->init(Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    const/4 v1, 0x1

    .line 268
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    .line 270
    new-instance v1, Landroid/os/Handler;

    move-object/from16 v2, p14

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 271
    new-instance v2, Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-direct {v2, v4, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 272
    new-instance v2, Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-direct {v2, p0, v4, v1, v8}, Lcom/google/android/exoplayer2/MediaSourceList;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceListInfoRefreshListener;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;Landroid/os/Handler;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 277
    new-instance v1, Landroid/os/HandlerThread;

    const/16 v2, -0x10

    const-string v3, "ExoPlayer:Playback"

    invoke-direct {v1, v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 278
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 279
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    .line 280
    invoke-interface {v7, v1, p0}, Lcom/google/android/exoplayer2/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    return-void
.end method

.method static synthetic access$602(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;Z)Z
    .registers 2

    .line 73
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->requestForRendererSleep:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;)Lcom/google/android/exoplayer2/util/HandlerWrapper;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    return-object p0
.end method

.method private addMediaItemsInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 720
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 721
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_f

    .line 723
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->getSize()I

    move-result p2

    .line 724
    :cond_f
    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->mediaSourceHolders:Ljava/util/List;
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$300(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Ljava/util/List;

    move-result-object v1

    .line 725
    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object p1

    .line 722
    invoke-virtual {v0, p2, v1, p1}, Lcom/google/android/exoplayer2/MediaSourceList;->addMediaSources(ILjava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object p1

    const/4 p2, 0x0

    .line 726
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Z)V

    return-void
.end method

.method private attemptRendererErrorRecovery()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 880
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    return-void
.end method

.method private deliverMessage(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1553
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 1557
    :try_start_8
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getTarget()Lcom/google/android/exoplayer2/PlayerMessage$Target;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getType()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getPayload()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1b

    .line 1559
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V

    return-void

    :catchall_1b
    move-exception v1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V

    throw v1
.end method

.method private disableRenderer(Lcom/google/android/exoplayer2/Renderer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1657
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1660
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->onRendererDisabled(Lcom/google/android/exoplayer2/Renderer;)V

    .line 1661
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V

    .line 1662
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->disable()V

    .line 1663
    iget p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRendererCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRendererCount:I

    return-void
.end method

.method private doSomeWork()V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 954
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/Clock;->uptimeMillis()J

    move-result-wide v1

    .line 955
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePeriods()V

    .line 957
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_202

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_1b

    goto/16 :goto_202

    .line 964
    :cond_1b
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v3

    const-wide/16 v7, 0xa

    if-nez v3, :cond_29

    .line 967
    invoke-direct {v0, v1, v2, v7, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    return-void

    :cond_29
    const-string v9, "doSomeWork"

    .line 971
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 973
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 977
    iget-boolean v9, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    const-wide/16 v10, 0x3e8

    const/4 v12, 0x0

    if-eqz v9, :cond_a9

    .line 978
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    mul-long v13, v13, v10

    .line 979
    iget-object v9, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v10, v15, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    iget-wide v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->backBufferDurationUs:J

    sub-long/2addr v10, v7

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    invoke-interface {v9, v10, v11, v7}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(JZ)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 981
    :goto_4f
    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v11, v10

    if-ge v7, v11, :cond_b0

    .line 982
    aget-object v10, v10, v7

    .line 983
    invoke-static {v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v11

    if-nez v11, :cond_5d

    goto :goto_a5

    .line 989
    :cond_5d
    iget-wide v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v10, v4, v5, v13, v14}, Lcom/google/android/exoplayer2/Renderer;->render(JJ)V

    if-eqz v8, :cond_6c

    .line 990
    invoke-interface {v10}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v4

    if-eqz v4, :cond_6c

    const/4 v8, 0x1

    goto :goto_6d

    :cond_6c
    const/4 v8, 0x0

    .line 996
    :goto_6d
    iget-object v4, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v4, v4, v7

    invoke-interface {v10}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v5

    if-eq v4, v5, :cond_79

    const/4 v4, 0x1

    goto :goto_7a

    :cond_79
    const/4 v4, 0x0

    :goto_7a
    if-nez v4, :cond_84

    .line 997
    invoke-interface {v10}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v5

    if-eqz v5, :cond_84

    const/4 v5, 0x1

    goto :goto_85

    :cond_84
    const/4 v5, 0x0

    :goto_85
    if-nez v4, :cond_98

    if-nez v5, :cond_98

    .line 999
    invoke-interface {v10}, Lcom/google/android/exoplayer2/Renderer;->isReady()Z

    move-result v4

    if-nez v4, :cond_98

    invoke-interface {v10}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v4

    if-eqz v4, :cond_96

    goto :goto_98

    :cond_96
    const/4 v4, 0x0

    goto :goto_99

    :cond_98
    :goto_98
    const/4 v4, 0x1

    :goto_99
    if-eqz v9, :cond_9f

    if-eqz v4, :cond_9f

    const/4 v9, 0x1

    goto :goto_a0

    :cond_9f
    const/4 v9, 0x0

    :goto_a0
    if-nez v4, :cond_a5

    .line 1002
    invoke-interface {v10}, Lcom/google/android/exoplayer2/Renderer;->maybeThrowStreamError()V

    :cond_a5
    :goto_a5
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x1

    goto :goto_4f

    .line 1006
    :cond_a9
    iget-object v4, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 1009
    :cond_b0
    iget-object v4, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v8, :cond_cd

    .line 1010
    iget-boolean v7, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz v7, :cond_cd

    cmp-long v7, v4, v13

    if-eqz v7, :cond_cb

    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v7, v7, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v10, v4, v7

    if-gtz v10, :cond_cd

    :cond_cb
    const/4 v4, 0x1

    goto :goto_ce

    :cond_cd
    const/4 v4, 0x0

    :goto_ce
    if-eqz v4, :cond_de

    .line 1015
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v5, :cond_de

    .line 1016
    iput-boolean v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    .line 1017
    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v5, v5, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    const/4 v7, 0x5

    invoke-direct {v0, v12, v5, v12, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayWhenReadyInternal(ZIZI)V

    :cond_de
    const/4 v5, 0x3

    if-eqz v4, :cond_ee

    .line 1023
    iget-object v4, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    if-eqz v4, :cond_ee

    .line 1024
    invoke-direct {v0, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 1025
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    goto :goto_137

    .line 1026
    :cond_ee
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_10b

    .line 1027
    invoke-direct {v0, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldTransitionToReadyState(Z)Z

    move-result v4

    if-eqz v4, :cond_10b

    .line 1028
    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    const/4 v4, 0x0

    .line 1029
    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingRecoverableRendererError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 1030
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v4

    if-eqz v4, :cond_137

    .line 1031
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->startRenderers()V

    goto :goto_137

    .line 1033
    :cond_10b
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-ne v4, v5, :cond_137

    iget v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRendererCount:I

    if-nez v4, :cond_11c

    .line 1034
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isTimelineReady()Z

    move-result v4

    if-eqz v4, :cond_11e

    goto :goto_137

    :cond_11c
    if-nez v9, :cond_137

    .line 1035
    :cond_11e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRebuffering:Z

    const/4 v4, 0x2

    .line 1036
    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 1037
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRebuffering:Z

    if-eqz v4, :cond_134

    .line 1038
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifyTrackSelectionRebuffer()V

    .line 1039
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;->notifyRebuffer()V

    .line 1041
    :cond_134
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 1045
    :cond_137
    :goto_137
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_17d

    const/4 v4, 0x0

    .line 1046
    :goto_13f
    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v8, v7

    if-ge v4, v8, :cond_164

    .line 1047
    aget-object v7, v7, v4

    invoke-static {v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v7

    if-eqz v7, :cond_161

    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v7, v7, v4

    .line 1048
    invoke-interface {v7}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v8, v8, v4

    if-ne v7, v8, :cond_161

    .line 1049
    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v7, v7, v4

    invoke-interface {v7}, Lcom/google/android/exoplayer2/Renderer;->maybeThrowStreamError()V

    :cond_161
    add-int/lit8 v4, v4, 0x1

    goto :goto_13f

    .line 1052
    :cond_164
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    if-nez v3, :cond_17d

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    const-wide/32 v7, 0x7a120

    cmp-long v9, v3, v7

    if-gez v9, :cond_17d

    .line 1054
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isLoadingPossible()Z

    move-result v3

    if-eqz v3, :cond_17d

    const/4 v3, 0x1

    goto :goto_17e

    :cond_17d
    const/4 v3, 0x0

    :goto_17e
    if-nez v3, :cond_183

    .line 1066
    iput-wide v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    goto :goto_1a1

    .line 1067
    :cond_183
    iget-wide v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    cmp-long v7, v3, v13

    if-nez v7, :cond_192

    .line 1068
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    goto :goto_1a1

    .line 1069
    :cond_192
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    sub-long/2addr v3, v7

    const-wide/16 v7, 0xfa0

    cmp-long v9, v3, v7

    if-gez v9, :cond_1fa

    .line 1073
    :goto_1a1
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->offloadSchedulingEnabled:Z

    if-eq v3, v4, :cond_1b3

    .line 1074
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithOffloadSchedulingEnabled(Z)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1078
    :cond_1b3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v3

    if-eqz v3, :cond_1bf

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v3, v5, :cond_1c6

    :cond_1bf
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1cf

    :cond_1c6
    const-wide/16 v3, 0xa

    .line 1080
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeScheduleWakeup(JJ)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    goto :goto_1e6

    .line 1081
    :cond_1cf
    iget v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRendererCount:I

    if-eqz v3, :cond_1df

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v3, v6, :cond_1df

    const-wide/16 v3, 0x3e8

    .line 1082
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    goto :goto_1e5

    .line 1084
    :cond_1df
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeMessages(I)V

    :goto_1e5
    const/4 v1, 0x0

    .line 1086
    :goto_1e6
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    if-eq v2, v1, :cond_1f4

    .line 1087
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithSleepingForOffload(Z)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1089
    :cond_1f4
    iput-boolean v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->requestForRendererSleep:Z

    .line 1091
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    return-void

    .line 1070
    :cond_1fa
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Playback stuck buffering and not loading"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 960
    :cond_202
    :goto_202
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeMessages(I)V

    return-void
.end method

.method private enableRenderer(IZ)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2441
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v1, v1, p1

    .line 2442
    invoke-static {v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v2

    if-eqz v2, :cond_d

    return-void

    .line 2445
    :cond_d
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    .line 2446
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1f

    const/4 v9, 0x1

    goto :goto_20

    :cond_1f
    const/4 v9, 0x0

    .line 2447
    :goto_20
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v3

    .line 2448
    iget-object v6, v3, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v6, v6, p1

    .line 2450
    iget-object v3, v3, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    aget-object v3, v3, p1

    .line 2451
    invoke-static {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getFormats(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    .line 2453
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_3f

    const/4 v14, 0x1

    goto :goto_40

    :cond_3f
    const/4 v14, 0x0

    :goto_40
    if-nez p2, :cond_46

    if-eqz v14, :cond_46

    const/4 v8, 0x1

    goto :goto_47

    :cond_46
    const/4 v8, 0x0

    .line 2457
    :goto_47
    iget v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRendererCount:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRendererCount:I

    .line 2458
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2459
    iget-object v3, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v5, v3, p1

    iget-wide v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2466
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v12

    .line 2467
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v15

    move-object v2, v1

    move-object v3, v6

    move-object v4, v7

    move-wide v6, v10

    move-wide v10, v12

    move-wide v12, v15

    .line 2459
    invoke-interface/range {v2 .. v13}, Lcom/google/android/exoplayer2/Renderer;->enable(Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JZZJJ)V

    const/16 v2, 0xb

    .line 2468
    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$1;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$1;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/Renderer;->handleMessage(ILjava/lang/Object;)V

    .line 2482
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->onRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)V

    if-eqz v14, :cond_7c

    .line 2485
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->start()V

    :cond_7c
    return-void
.end method

.method private enableRenderers()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2417
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers([Z)V

    return-void
.end method

.method private enableRenderers([Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2421
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2422
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2425
    :goto_c
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v4, v4

    if-ge v3, v4, :cond_2d

    .line 2426
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v4

    if-nez v4, :cond_2a

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v5, v5, v3

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 2427
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->reset()V

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2431
    :cond_2d
    :goto_2d
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v3

    if-ge v2, v3, :cond_40

    .line 2432
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 2433
    aget-boolean v3, p1, v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderer(IZ)V

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_40
    const/4 p1, 0x1

    .line 2436
    iput-boolean p1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->allRenderersInCorrectState:Z

    return-void
.end method

.method private ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1651
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 1652
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->stop()V

    :cond_a
    return-void
.end method

.method private extractMetadataFromTrackSelectionArray([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Lcom/google/common/collect/ImmutableList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;"
        }
    .end annotation

    .line 2400
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 2402
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v3, v1, :cond_2b

    aget-object v5, p1, v3

    if-eqz v5, :cond_28

    .line 2404
    invoke-interface {v5, v2}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 2405
    iget-object v6, v5, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v6, :cond_22

    .line 2406
    new-instance v5, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v6, v2, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_28

    .line 2408
    :cond_22
    iget-object v4, v5, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    const/4 v4, 0x1

    :cond_28
    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_2b
    if-eqz v4, :cond_32

    .line 2413
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_36

    :cond_32
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    :goto_36
    return-object p1
.end method

.method private getCurrentLiveOffsetUs()J
    .registers 5

    .line 1095
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getLiveOffsetUs(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getFormats(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)[Lcom/google/android/exoplayer2/Format;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 2963
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->length()I

    move-result v1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 2964
    :goto_9
    new-array v2, v1, [Lcom/google/android/exoplayer2/Format;

    :goto_b
    if-ge v0, v1, :cond_16

    .line 2966
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_16
    return-object v2
.end method

.method private getLiveOffsetUs(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)J
    .registers 8

    .line 1100
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 1101
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1102
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_41

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline$Window;->isLive()Z

    move-result p1

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez p1, :cond_29

    goto :goto_41

    .line 1105
    :cond_29
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline$Window;->getCurrentUnixTimeMs()J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1106
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    add-long/2addr p3, v0

    sub-long/2addr p1, p3

    return-wide p1

    :cond_41
    :goto_41
    return-wide v0
.end method

.method private getMaxRendererReadPositionUs()J
    .registers 10

    .line 1939
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1943
    :cond_b
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v1

    .line 1944
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-nez v3, :cond_14

    return-wide v1

    :cond_14
    const/4 v3, 0x0

    .line 1947
    :goto_15
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v4

    if-ge v3, v5, :cond_47

    .line 1948
    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v4

    if-eqz v4, :cond_44

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v4, v4, v3

    .line 1949
    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v5, v5, v3

    if-eq v4, v5, :cond_31

    goto :goto_44

    .line 1953
    :cond_31
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->getReadingPositionUs()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_40

    return-wide v6

    .line 1957
    :cond_40
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_44
    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_47
    return-wide v1
.end method

.method private getPlaceholderFirstMediaPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline;)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1471
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_15

    .line 1472
    invoke-static {}, Lcom/google/android/exoplayer2/PlaybackInfo;->getDummyPeriodForEmptyTimeline()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 1474
    :cond_15
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v6

    .line 1475
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p1

    .line 1476
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 1479
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1480
    invoke-virtual {v3, p1, v4, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v3

    .line 1482
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1483
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1484
    iget-object v0, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1485
    iget p1, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v4, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 1486
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v0

    if-ne p1, v0, :cond_58

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1487
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v1

    :cond_58
    move-wide v4, v1

    .line 1490
    :cond_59
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private getTotalBufferedDurationUs()J
    .registers 3

    .line 2513
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getTotalBufferedDurationUs(J)J
    .registers 8

    .line 2517
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_b

    return-wide v1

    .line 2521
    :cond_b
    iget-wide v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2522
    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v3

    sub-long/2addr p1, v3

    .line 2523
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private handleContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 4

    .line 2261
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLoading(Lcom/google/android/exoplayer2/source/MediaPeriod;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 2265
    :cond_9
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reevaluateBuffer(J)V

    .line 2266
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    return-void
.end method

.method private handleIoException(Ljava/io/IOException;I)V
    .registers 4

    .line 628
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForSource(Ljava/io/IOException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    .line 629
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object p2

    if-eqz p2, :cond_14

    .line 632
    iget-object p2, p2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object p2, p2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->copyWithMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaPeriodId;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    :cond_14
    const-string p2, "ExoPlayerImplInternal"

    const-string v0, "Playback error"

    .line 634
    invoke-static {p2, v0, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    .line 635
    invoke-direct {p0, p2, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal(ZZ)V

    .line 636
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackError(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    return-void
.end method

.method private handleLoadingMediaPeriodChanged(Z)V
    .registers 7

    .line 2490
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_d

    .line 2491
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    goto :goto_11

    :cond_d
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 2493
    :goto_11
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 2494
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_25

    .line 2496
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 2498
    :cond_25
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    if-nez v0, :cond_2c

    iget-wide v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    goto :goto_30

    .line 2501
    :cond_2c
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v3

    :goto_30
    iput-wide v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 2502
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    if-nez v2, :cond_3e

    if-eqz p1, :cond_4f

    :cond_3e
    if-eqz v0, :cond_4f

    .line 2503
    iget-boolean p1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz p1, :cond_4f

    .line 2507
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p1

    .line 2508
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v0

    .line 2506
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updateLoadControlTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    :cond_4f
    return-void
.end method

.method private handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Z)V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 1815
    iget-object v2, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    iget-object v4, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget v5, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v6, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v7, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v8, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v1, p1

    .line 1816
    invoke-static/range {v1 .. v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolvePositionForPlaylistChange(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;Lcom/google/android/exoplayer2/MediaPeriodQueue;IZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    move-result-object v7

    .line 1825
    iget-object v8, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1826
    iget-wide v9, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->requestedContentPositionUs:J

    .line 1827
    iget-boolean v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->forceBufferingState:Z

    .line 1828
    iget-wide v13, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->periodPositionUs:J

    .line 1829
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1830
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v15, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_38

    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v3, v13, v1

    if-eqz v3, :cond_35

    goto :goto_38

    :cond_35
    const/16 v16, 0x0

    goto :goto_3a

    :cond_38
    :goto_38
    const/16 v16, 0x1

    :goto_3a
    const/16 v17, 0x3

    const/4 v6, 0x0

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x4

    .line 1832
    :try_start_43
    iget-boolean v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->endPlayback:Z

    if-eqz v1, :cond_53

    .line 1833
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v1, v15, :cond_50

    .line 1834
    invoke-direct {v11, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 1836
    :cond_50
    invoke-direct {v11, v5, v5, v5, v15}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    :cond_53
    if-nez v16, :cond_6f

    .line 1844
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-wide v3, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1845
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getMaxRendererReadPositionUs()J

    move-result-wide v21
    :try_end_5d
    .catchall {:try_start_43 .. :try_end_5d} :catchall_125

    move-object/from16 v2, p1

    const/4 v15, -0x1

    const/16 v20, 0x4

    const/4 v15, 0x0

    move-wide/from16 v5, v21

    .line 1844
    :try_start_65
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->updateQueuedPeriods(Lcom/google/android/exoplayer2/Timeline;JJ)Z

    move-result v0

    if-nez v0, :cond_a1

    .line 1846
    invoke-direct {v11, v15}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    goto :goto_a1

    :cond_6f
    const/4 v15, 0x0

    const/16 v20, 0x4

    .line 1848
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a1

    .line 1850
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    :goto_7e
    if-eqz v1, :cond_9c

    .line 1853
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 1854
    iget-object v2, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-object v3, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    invoke-virtual {v2, v12, v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/MediaPeriodInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 1855
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->updateClipping()V

    .line 1857
    :cond_97
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    goto :goto_7e

    .line 1859
    :cond_9c
    invoke-direct {v11, v8, v13, v14, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZ)J

    move-result-wide v0
    :try_end_a0
    .catchall {:try_start_65 .. :try_end_a0} :catchall_122

    move-wide v13, v0

    .line 1862
    :cond_a1
    :goto_a1
    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v5, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-boolean v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->setTargetLiveOffset:Z

    if-eqz v0, :cond_af

    move-wide v6, v13

    goto :goto_b1

    :cond_af
    move-wide/from16 v6, v18

    :goto_b1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)V

    if-nez v16, :cond_c3

    .line 1870
    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    cmp-long v2, v9, v0

    if-eqz v2, :cond_103

    .line 1872
    :cond_c3
    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 1873
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-eqz v16, :cond_e4

    if-eqz p2, :cond_e4

    .line 1877
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e4

    iget-object v2, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1878
    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    if-nez v1, :cond_e4

    const/16 v23, 0x1

    goto :goto_e6

    :cond_e4
    const/16 v23, 0x0

    .line 1879
    :goto_e6
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 1886
    invoke-virtual {v12, v0}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f3

    const/16 v17, 0x4

    :cond_f3
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v13

    move-wide v7, v5

    move-wide v5, v9

    move/from16 v9, v23

    move/from16 v10, v17

    .line 1880
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1890
    :cond_103
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 1891
    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-direct {v11, v12, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolvePendingMessagePositions(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)V

    .line 1893
    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithTimeline(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1894
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11e

    const/4 v6, 0x0

    .line 1896
    iput-object v6, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    .line 1898
    :cond_11e
    invoke-direct {v11, v15}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    return-void

    :catchall_122
    move-exception v0

    const/4 v6, 0x0

    goto :goto_129

    :catchall_125
    move-exception v0

    const/4 v15, 0x0

    const/16 v20, 0x4

    .line 1862
    :goto_129
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v5, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-boolean v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->setTargetLiveOffset:Z

    if-eqz v1, :cond_137

    move-wide/from16 v18, v13

    :cond_137
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    move-object v15, v6

    move-wide/from16 v6, v18

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)V

    if-nez v16, :cond_14c

    .line 1870
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    cmp-long v3, v9, v1

    if-eqz v3, :cond_18c

    .line 1872
    :cond_14c
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 1873
    iget-object v2, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-eqz v16, :cond_16d

    if-eqz p2, :cond_16d

    .line 1877
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16d

    iget-object v3, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1878
    invoke-virtual {v2, v1, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    if-nez v2, :cond_16d

    const/16 v23, 0x1

    goto :goto_16f

    :cond_16d
    const/16 v23, 0x0

    .line 1879
    :goto_16f
    iget-object v2, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v5, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 1886
    invoke-virtual {v12, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_17c

    const/16 v17, 0x4

    :cond_17c
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v13

    move-wide v7, v5

    move-wide v5, v9

    move/from16 v9, v23

    move/from16 v10, v17

    .line 1880
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1890
    :cond_18c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 1891
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-direct {v11, v12, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolvePendingMessagePositions(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)V

    .line 1893
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v1, v12}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithTimeline(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1894
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a6

    .line 1896
    iput-object v15, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    :cond_1a6
    const/4 v1, 0x0

    .line 1898
    invoke-direct {v11, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    goto :goto_1ac

    :goto_1ab
    throw v0

    :goto_1ac
    goto :goto_1ab
.end method

.method private handlePeriodPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2235
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLoading(Lcom/google/android/exoplayer2/source/MediaPeriod;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 2239
    :cond_9
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object p1

    .line 2240
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    .line 2241
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 2240
    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->handlePrepared(FLcom/google/android/exoplayer2/Timeline;)V

    .line 2243
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v1

    .line 2242
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updateLoadControlTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 2244
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-ne p1, v0, :cond_54

    .line 2246
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 2247
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers()V

    .line 2248
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v5, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v7, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    const/4 v9, 0x0

    const/4 v10, 0x5

    move-object v1, p0

    .line 2249
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 2257
    :cond_54
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    return-void
.end method

.method private handlePlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;FZZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    if-eqz p3, :cond_12

    if-eqz p4, :cond_a

    .line 2287
    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 2289
    :cond_a
    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 2291
    :cond_12
    iget p3, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updateTrackSelectionPlaybackSpeed(F)V

    .line 2292
    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length p4, p3

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, p4, :cond_29

    aget-object v1, p3, v0

    if-eqz v1, :cond_26

    .line 2294
    iget v2, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-interface {v1, p2, v2}, Lcom/google/android/exoplayer2/Renderer;->setPlaybackSpeed(FF)V

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_29
    return-void
.end method

.method private handlePlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2272
    iget v0, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;FZZ)V

    return-void
.end method

.method private handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplayer2/PlaybackInfo;
    .registers 24

    move-object v0, p0

    move-object v2, p1

    move-wide/from16 v5, p4

    .line 2353
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    if-nez v1, :cond_1d

    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v1, p2, v3

    if-nez v1, :cond_1d

    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 2356
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v1, 0x1

    :goto_1e
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    .line 2357
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 2358
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 2359
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 2360
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 2361
    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/MediaSourceList;->isPrepared()Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 2362
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    if-nez v1, :cond_42

    .line 2363
    sget-object v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    goto :goto_46

    .line 2366
    :cond_42
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    :goto_46
    if-nez v1, :cond_4b

    .line 2367
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    goto :goto_4f

    .line 2370
    :cond_4b
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v4

    .line 2371
    :goto_4f
    iget-object v7, v4, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-direct {p0, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->extractMetadataFromTrackSelectionArray([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    if-eqz v1, :cond_67

    .line 2373
    iget-object v8, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v8, v8, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    cmp-long v10, v8, v5

    if-eqz v10, :cond_67

    .line 2375
    iget-object v8, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 2376
    invoke-virtual {v8, v5, v6}, Lcom/google/android/exoplayer2/MediaPeriodInfo;->copyWithRequestedContentPositionUs(J)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    :cond_67
    move-object v11, v3

    move-object v12, v4

    move-object v13, v7

    goto :goto_80

    .line 2378
    :cond_6b
    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v7, v7, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7d

    .line 2380
    sget-object v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 2381
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 2382
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    :cond_7d
    move-object v11, v1

    move-object v12, v3

    move-object v13, v4

    :goto_80
    if-eqz p8, :cond_89

    .line 2385
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    move/from16 v3, p9

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    .line 2387
    :cond_89
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 2392
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v9

    move-object v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    .line 2387
    invoke-virtual/range {v1 .. v13}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    return-object v1
.end method

.method private hasReachedServerSideInsertedAdsTransition(Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z
    .registers 6

    .line 2206
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2212
    iget-object p2, p2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean p2, p2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    if-eqz p2, :cond_24

    iget-boolean p2, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz p2, :cond_24

    instance-of p2, p1, Lcom/google/android/exoplayer2/text/TextRenderer;

    if-nez p2, :cond_22

    instance-of p2, p1, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;

    if-nez p2, :cond_22

    .line 2216
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->getReadingPositionUs()J

    move-result-wide p1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_24

    :cond_22
    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    return p1
.end method

.method private hasReadingPeriodFinishedReading()Z
    .registers 7

    .line 2186
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2187
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    :cond_c
    const/4 v1, 0x0

    .line 2190
    :goto_d
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v4, v3

    if-ge v1, v4, :cond_31

    .line 2191
    aget-object v3, v3, v1

    .line 2192
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v4, v4, v1

    .line 2193
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v5

    if-ne v5, v4, :cond_30

    if-eqz v4, :cond_2d

    .line 2195
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 2196
    invoke-direct {p0, v3, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->hasReachedServerSideInsertedAdsTransition(Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_30

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_30
    :goto_30
    return v2

    :cond_31
    const/4 v0, 0x1

    return v0
.end method

.method private static isIgnorableServerSideAdInsertionPeriodChange(ZLcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JLcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline$Period;J)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_48

    cmp-long p0, p2, p6

    if-nez p0, :cond_48

    .line 2717
    iget-object p0, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object p2, p4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2719
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_48

    .line 2723
    :cond_12
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_39

    iget p0, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {p5, p0}, Lcom/google/android/exoplayer2/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result p0

    if-eqz p0, :cond_39

    .line 2725
    iget p0, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget p3, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {p5, p0, p3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdState(II)I

    move-result p0

    const/4 p3, 0x4

    if-eq p0, p3, :cond_38

    iget p0, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget p1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 2727
    invoke-virtual {p5, p0, p1}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdState(II)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_38

    const/4 v0, 0x1

    :cond_38
    return v0

    .line 2731
    :cond_39
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p0

    if-eqz p0, :cond_48

    iget p0, p4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {p5, p0}, Lcom/google/android/exoplayer2/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result p0

    if-eqz p0, :cond_48

    const/4 v0, 0x1

    :cond_48
    :goto_48
    return v0
.end method

.method private isLoadingPossible()Z
    .registers 7

    .line 2325
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 2329
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNextLoadPositionUs()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_15

    return v1

    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method private static isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z
    .registers 1

    .line 2972
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private isTimelineReady()Z
    .registers 6

    .line 1805
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 1806
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    .line 1807
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_27

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_25

    .line 1810
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_27

    :cond_25
    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0
.end method

.method private static isUsingPlaceholderPeriod(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline$Period;)Z
    .registers 4

    .line 2736
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 2737
    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 2738
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method private maybeContinueLoading()V
    .registers 4

    .line 2301
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldContinueLoading()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldContinueLoading:Z

    if-eqz v0, :cond_13

    .line 2303
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->continueLoading(J)V

    .line 2305
    :cond_13
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updateIsLoading()V

    return-void
.end method

.method private maybeNotifyPlaybackInfoChanged()V
    .registers 3

    .line 679
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    .line 680
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingChange:Z
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->access$100(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 681
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdateListener:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;->onPlaybackInfoUpdate(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    .line 682
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    :cond_1f
    return-void
.end method

.method private maybeScheduleWakeup(JJ)Z
    .registers 6

    .line 1125
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->requestForRendererSleep:Z

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 1129
    :cond_a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    const/4 p1, 0x1

    return p1
.end method

.method private maybeTriggerPendingMessages(JJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1588
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ff

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_ff

    .line 1593
    :cond_14
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    if-eqz v0, :cond_1e

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    const/4 v0, 0x0

    .line 1595
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    .line 1599
    :cond_1e
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 1600
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 1601
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->nextPendingMessageIndexHint:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_46

    .line 1602
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    .line 1603
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_47

    :cond_46
    move-object v3, v2

    :goto_47
    if-eqz v3, :cond_66

    .line 1604
    iget v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-gt v4, v0, :cond_57

    iget v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v4, v0, :cond_66

    iget-wide v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v5, v3, p1

    if-lez v5, :cond_66

    :cond_57
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_46

    .line 1609
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    .line 1610
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_47

    .line 1612
    :cond_66
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 1613
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_77

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 1614
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_78

    :cond_77
    move-object v3, v2

    :goto_78
    if-eqz v3, :cond_9f

    .line 1616
    iget-object v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-eqz v4, :cond_9f

    iget v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-lt v4, v0, :cond_8c

    iget v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v4, v0, :cond_9f

    iget-wide v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v6, v4, p1

    if-gtz v6, :cond_9f

    :cond_8c
    add-int/lit8 v1, v1, 0x1

    .line 1622
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 1623
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_77

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 1624
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_78

    :cond_9f
    :goto_9f
    if-eqz v3, :cond_fd

    .line 1628
    iget-object v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-eqz v4, :cond_fd

    iget v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v4, v0, :cond_fd

    iget-wide v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v6, v4, p1

    if-lez v6, :cond_fd

    iget-wide v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v6, v4, p3

    if-gtz v6, :cond_fd

    .line 1634
    :try_start_b5
    iget-object v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->sendMessageToTarget(Lcom/google/android/exoplayer2/PlayerMessage;)V
    :try_end_ba
    .catchall {:try_start_b5 .. :try_end_ba} :catchall_e6

    .line 1636
    iget-object v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/PlayerMessage;->getDeleteAfterDelivery()Z

    move-result v4

    if-nez v4, :cond_ce

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/PlayerMessage;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_cb

    goto :goto_ce

    :cond_cb
    add-int/lit8 v1, v1, 0x1

    goto :goto_d3

    .line 1637
    :cond_ce
    :goto_ce
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1642
    :goto_d3
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 1643
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_e4

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 1644
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_9f

    :cond_e4
    move-object v3, v2

    goto :goto_9f

    :catchall_e6
    move-exception p1

    .line 1636
    iget-object p2, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/PlayerMessage;->getDeleteAfterDelivery()Z

    move-result p2

    if-nez p2, :cond_f7

    iget-object p2, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/PlayerMessage;->isCanceled()Z

    move-result p2

    if-eqz p2, :cond_fc

    .line 1637
    :cond_f7
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1639
    :cond_fc
    throw p1

    .line 1647
    :cond_fd
    iput v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->nextPendingMessageIndexHint:I

    :cond_ff
    :goto_ff
    return-void
.end method

.method private maybeUpdateLoadingPeriod()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1975
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reevaluateBuffer(J)V

    .line 1976
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->shouldLoadNextMediaPeriod()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1978
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getNextMediaPeriodInfo(JLcom/google/android/exoplayer2/PlaybackInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 1980
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    .line 1984
    invoke-interface {v1}, Lcom/google/android/exoplayer2/LoadControl;->getAllocator()Lcom/google/android/exoplayer2/upstream/Allocator;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    iget-object v10, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-object v9, v0

    .line 1981
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->enqueueNextMediaPeriodHolder([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/MediaSourceList;Lcom/google/android/exoplayer2/MediaPeriodInfo;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    .line 1988
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    invoke-interface {v2, p0, v3, v4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    .line 1989
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    if-ne v2, v1, :cond_44

    .line 1990
    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    :cond_44
    const/4 v0, 0x0

    .line 1992
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 1995
    :cond_48
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldContinueLoading:Z

    if-eqz v0, :cond_56

    .line 1998
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isLoadingPossible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldContinueLoading:Z

    .line 1999
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updateIsLoading()V

    goto :goto_59

    .line 2001
    :cond_56
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    :goto_59
    return-void
.end method

.method private maybeUpdatePlayingPeriod()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2136
    :goto_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldAdvancePlayingPeriod()Z

    move-result v3

    if-eqz v3, :cond_70

    if-eqz v2, :cond_e

    .line 2139
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    .line 2141
    :cond_e
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->advancePlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 2142
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2143
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4d

    iget-object v3, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v3, v4, :cond_4d

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v4, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v3, v4, :cond_4d

    const/4 v3, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v3, 0x0

    .line 2148
    :goto_4e
    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v6, v4, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v7, v4, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v9, v4, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v11, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    xor-int/lit8 v13, v3, 0x1

    const/4 v14, 0x0

    move-object v5, p0

    .line 2149
    invoke-direct/range {v5 .. v14}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 2156
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 2157
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    const/4 v2, 0x1

    goto :goto_3

    :cond_70
    return-void
.end method

.method private maybeUpdateReadingPeriod()V
    .registers 16

    .line 2006
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 2011
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    if-eqz v1, :cond_bf

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v1, :cond_1b

    goto/16 :goto_bf

    .line 2035
    :cond_1b
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->hasReadingPeriodFinishedReading()Z

    move-result v1

    if-nez v1, :cond_22

    return-void

    .line 2039
    :cond_22
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-nez v1, :cond_39

    iget-wide v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2040
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-gez v1, :cond_39

    return-void

    .line 2046
    :cond_39
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v1

    .line 2047
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->advanceReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v5

    .line 2048
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v6

    .line 2050
    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v9, v7, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v7, v5, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v10, v7, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v11, v7, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v12, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    move-object v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)V

    .line 2057
    iget-boolean v0, v5, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_76

    iget-object v0, v5, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 2058
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v7

    cmp-long v0, v7, v2

    if-eqz v0, :cond_76

    .line 2062
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v0

    .line 2061
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setAllRendererStreamsFinal(J)V

    return-void

    :cond_76
    const/4 v0, 0x0

    .line 2065
    :goto_77
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v2

    if-ge v0, v2, :cond_be

    .line 2066
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v2

    .line 2067
    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v3

    if-eqz v2, :cond_bb

    .line 2068
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->isCurrentStreamFinal()Z

    move-result v2

    if-nez v2, :cond_bb

    .line 2069
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v2

    const/4 v7, -0x2

    if-ne v2, v7, :cond_9d

    const/4 v2, 0x1

    goto :goto_9e

    :cond_9d
    const/4 v2, 0x0

    .line 2070
    :goto_9e
    iget-object v7, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v7, v7, v0

    .line 2071
    iget-object v8, v6, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v8, v8, v0

    if-eqz v3, :cond_b0

    .line 2072
    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/RendererConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    if-eqz v2, :cond_bb

    .line 2078
    :cond_b0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v2, v2, v0

    .line 2080
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v7

    .line 2078
    invoke-direct {p0, v2, v7, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setCurrentStreamFinal(Lcom/google/android/exoplayer2/Renderer;J)V

    :cond_bb
    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    :cond_be
    return-void

    .line 2014
    :cond_bf
    :goto_bf
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    if-nez v1, :cond_c9

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v1, :cond_105

    .line 2015
    :cond_c9
    :goto_c9
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v1

    if-ge v4, v5, :cond_105

    .line 2016
    aget-object v1, v1, v4

    .line 2017
    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v5, v5, v4

    if-eqz v5, :cond_102

    .line 2021
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v6

    if-ne v6, v5, :cond_102

    .line 2022
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v5

    if-eqz v5, :cond_102

    .line 2023
    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    cmp-long v7, v5, v2

    if-eqz v7, :cond_fe

    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v9, v5, v7

    if-eqz v9, :cond_fe

    .line 2026
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v5

    iget-object v7, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v7, v7, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    add-long/2addr v5, v7

    goto :goto_ff

    :cond_fe
    move-wide v5, v2

    .line 2028
    :goto_ff
    invoke-direct {p0, v1, v5, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setCurrentStreamFinal(Lcom/google/android/exoplayer2/Renderer;J)V

    :cond_102
    add-int/lit8 v4, v4, 0x1

    goto :goto_c9

    :cond_105
    return-void
.end method

.method private maybeUpdateReadingRenderers()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2087
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 2088
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 2089
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    if-eq v1, v0, :cond_1e

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->allRenderersInCorrectState:Z

    if-eqz v0, :cond_15

    goto :goto_1e

    .line 2094
    :cond_15
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->replaceStreamsOrDisableRendererForTransition()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2095
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers()V

    :cond_1e
    :goto_1e
    return-void
.end method

.method private mediaSourceListUpdateRequestedInternal()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 749
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 750
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->createTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    const/4 v1, 0x1

    .line 749
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Z)V

    return-void
.end method

.method private moveMediaItemsInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 731
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 732
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    iget v1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;->fromIndex:I

    iget v2, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;->toIndex:I

    iget v3, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;->newFromIndex:I

    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 733
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/exoplayer2/MediaSourceList;->moveMediaSourceRange(IIILcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object p1

    const/4 v0, 0x0

    .line 738
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Z)V

    return-void
.end method

.method private notifyTrackSelectionDiscontinuity()V
    .registers 6

    .line 1760
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_21

    .line 1762
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    if-eqz v4, :cond_19

    .line 1764
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->onDiscontinuity()V

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1767
    :cond_1c
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    goto :goto_6

    :cond_21
    return-void
.end method

.method private notifyTrackSelectionPlayWhenReadyChanged(Z)V
    .registers 7

    .line 760
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_21

    .line 762
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    if-eqz v4, :cond_19

    .line 764
    invoke-interface {v4, p1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->onPlayWhenReadyChanged(Z)V

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 767
    :cond_1c
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    goto :goto_6

    :cond_21
    return-void
.end method

.method private notifyTrackSelectionRebuffer()V
    .registers 6

    .line 942
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_21

    .line 944
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    if-eqz v4, :cond_19

    .line 946
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->onRebuffer()V

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 949
    :cond_1c
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    goto :goto_6

    :cond_21
    return-void
.end method

.method private prepareInternal()V
    .registers 4

    .line 687
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    const/4 v0, 0x0

    .line 688
    invoke-direct {p0, v0, v0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 693
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/LoadControl;->onPrepared()V

    .line 694
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1c

    const/4 v0, 0x4

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x2

    :goto_1d
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 695
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->getTransferListener()Lcom/google/android/exoplayer2/upstream/TransferListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/MediaSourceList;->prepare(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 696
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

.method private releaseInternal()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1376
    invoke-direct {p0, v0, v1, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 1381
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/LoadControl;->onReleased()V

    .line 1382
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 1383
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 1384
    monitor-enter p0

    .line 1385
    :try_start_13
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    .line 1386
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1387
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private removeMediaItemsInternal(IILcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 743
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 744
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/MediaSourceList;->removeMediaSourceRange(IILcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object p1

    const/4 p2, 0x0

    .line 745
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Z)V

    return-void
.end method

.method private replaceStreamsOrDisableRendererForTransition()Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2100
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2101
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2103
    :goto_d
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v6, v5

    const/4 v7, 0x1

    if-ge v3, v6, :cond_5e

    .line 2104
    aget-object v8, v5, v3

    .line 2105
    invoke-static {v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v5

    if-nez v5, :cond_1c

    goto :goto_5b

    .line 2109
    :cond_1c
    invoke-interface {v8}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v6, v6, v3

    if-eq v5, v6, :cond_28

    const/4 v5, 0x1

    goto :goto_29

    :cond_28
    const/4 v5, 0x0

    .line 2110
    :goto_29
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_32

    if-nez v5, :cond_32

    goto :goto_5b

    .line 2115
    :cond_32
    invoke-interface {v8}, Lcom/google/android/exoplayer2/Renderer;->isCurrentStreamFinal()Z

    move-result v5

    if-nez v5, :cond_50

    .line 2117
    iget-object v5, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getFormats(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    .line 2118
    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v10, v5, v3

    .line 2121
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v11

    .line 2122
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v13

    .line 2118
    invoke-interface/range {v8 .. v14}, Lcom/google/android/exoplayer2/Renderer;->replaceStream([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JJ)V

    goto :goto_5b

    .line 2123
    :cond_50
    invoke-interface {v8}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 2125
    invoke-direct {p0, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->disableRenderer(Lcom/google/android/exoplayer2/Renderer;)V

    goto :goto_5b

    :cond_5a
    const/4 v4, 0x1

    :goto_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_5e
    xor-int/lit8 v0, v4, 0x1

    return v0
.end method

.method private reselectTracksInternal()V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v10, p0

    .line 1667
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 1669
    iget-object v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    .line 1670
    iget-object v2, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    const/4 v3, 0x1

    :goto_17
    if-eqz v1, :cond_f9

    .line 1674
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-nez v4, :cond_1f

    goto/16 :goto_f9

    .line 1678
    :cond_1f
    iget-object v4, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v1, v0, v4}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->selectTracks(FLcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v13

    .line 1679
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isEquivalent(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Z

    move-result v4

    const/4 v9, 0x0

    if-nez v4, :cond_ee

    const/4 v8, 0x4

    if-eqz v3, :cond_bb

    .line 1692
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v6

    .line 1693
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    move-result v16

    .line 1695
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v0

    new-array v7, v0, [Z

    .line 1696
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v14, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-object v12, v6

    move-object/from16 v17, v7

    .line 1697
    invoke-virtual/range {v12 .. v17}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->applyTrackSelection(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;JZ[Z)J

    move-result-wide v12

    .line 1699
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v0, v8, :cond_61

    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v2, v12, v0

    if-eqz v2, :cond_61

    const/4 v14, 0x1

    goto :goto_62

    :cond_61
    const/4 v14, 0x0

    .line 1702
    :goto_62
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    const/4 v15, 0x5

    move-object/from16 v0, p0

    move-wide/from16 v16, v2

    move-wide v2, v12

    move-object v11, v6

    move-object/from16 v18, v7

    move-wide/from16 v6, v16

    move v8, v14

    move v9, v15

    .line 1703
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    if-eqz v14, :cond_86

    .line 1711
    invoke-direct {v10, v12, v13}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1714
    :cond_86
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v9, 0x0

    .line 1715
    :goto_8c
    iget-object v1, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v1

    if-ge v9, v2, :cond_b7

    .line 1716
    aget-object v1, v1, v9

    .line 1717
    invoke-static {v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v2

    aput-boolean v2, v0, v9

    .line 1718
    iget-object v2, v11, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v2, v2, v9

    .line 1719
    aget-boolean v3, v0, v9

    if-eqz v3, :cond_b4

    .line 1720
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v3

    if-eq v2, v3, :cond_ab

    .line 1722
    invoke-direct {v10, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->disableRenderer(Lcom/google/android/exoplayer2/Renderer;)V

    goto :goto_b4

    .line 1723
    :cond_ab
    aget-boolean v2, v18, v9

    if-eqz v2, :cond_b4

    .line 1725
    iget-wide v2, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/Renderer;->resetPosition(J)V

    :cond_b4
    :goto_b4
    add-int/lit8 v9, v9, 0x1

    goto :goto_8c

    .line 1729
    :cond_b7
    invoke-direct {v10, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers([Z)V

    goto :goto_d6

    .line 1732
    :cond_bb
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    .line 1733
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_d6

    .line 1734
    iget-object v0, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-wide v4, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1735
    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const/4 v4, 0x0

    .line 1736
    invoke-virtual {v1, v13, v2, v3, v4}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->applyTrackSelection(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;JZ)J

    :cond_d6
    :goto_d6
    const/4 v5, 0x1

    .line 1739
    invoke-direct {v10, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 1740
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_ed

    .line 1741
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 1742
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 1743
    iget-object v0, v10, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    :cond_ed
    return-void

    :cond_ee
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v2, :cond_f3

    const/4 v3, 0x0

    .line 1687
    :cond_f3
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    goto/16 :goto_17

    :cond_f9
    :goto_f9
    return-void
.end method

.method private resetInternal(ZZZZ)V
    .registers 39

    move-object/from16 v1, p0

    .line 1395
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeMessages(I)V

    const/4 v2, 0x0

    .line 1396
    iput-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingRecoverableRendererError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    const/4 v3, 0x0

    .line 1397
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRebuffering:Z

    .line 1398
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->stop()V

    const-wide v4, 0xe8d4a51000L

    .line 1399
    iput-wide v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1400
    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1e
    const-string v7, "ExoPlayerImplInternal"

    if-ge v6, v5, :cond_33

    aget-object v0, v4, v6

    .line 1402
    :try_start_24
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->disableRenderer(Lcom/google/android/exoplayer2/Renderer;)V
    :try_end_27
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_24 .. :try_end_27} :catch_2a
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_30

    :catch_28
    move-exception v0

    goto :goto_2b

    :catch_2a
    move-exception v0

    :goto_2b
    const-string v8, "Disable failed."

    .line 1405
    invoke-static {v7, v8, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_30
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    :cond_33
    if-eqz p1, :cond_53

    .line 1409
    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_39
    if-ge v6, v5, :cond_53

    aget-object v0, v4, v6

    .line 1410
    iget-object v8, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 1412
    :try_start_45
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->reset()V
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_50

    :catch_49
    move-exception v0

    move-object v8, v0

    const-string v0, "Reset failed."

    .line 1415
    invoke-static {v7, v0, v8}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_50
    :goto_50
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 1420
    :cond_53
    iput v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRendererCount:I

    .line 1422
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1423
    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 1424
    iget-object v6, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v6, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1425
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v6

    if-nez v6, :cond_77

    iget-object v6, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v7, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isUsingPlaceholderPeriod(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline$Period;)Z

    move-result v6

    if-eqz v6, :cond_72

    goto :goto_77

    :cond_72
    iget-object v6, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    goto :goto_7b

    :cond_77
    :goto_77
    iget-object v6, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    :goto_7b
    if-eqz p2, :cond_af

    .line 1430
    iput-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    .line 1431
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1432
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPlaceholderFirstMediaPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline;)Landroid/util/Pair;

    move-result-object v0

    .line 1433
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1434
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 1436
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9

    const/4 v0, 0x1

    move-object/from16 v22, v4

    move-wide/from16 v30, v5

    move-wide v12, v7

    goto :goto_b5

    :cond_a9
    move-object/from16 v22, v4

    move-wide/from16 v30, v5

    move-wide v12, v7

    goto :goto_b4

    :cond_af
    move-object/from16 v22, v0

    move-wide/from16 v30, v4

    move-wide v12, v6

    :goto_b4
    const/4 v0, 0x0

    .line 1441
    :goto_b5
    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->clear()V

    .line 1442
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldContinueLoading:Z

    .line 1444
    new-instance v3, Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v10, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eqz p4, :cond_c9

    goto :goto_cd

    :cond_c9
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    :goto_cd
    move-object/from16 v17, v2

    const/16 v18, 0x0

    if-eqz v0, :cond_d6

    sget-object v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    goto :goto_da

    :cond_d6
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    :goto_da
    move-object/from16 v19, v2

    if-eqz v0, :cond_e1

    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    goto :goto_e5

    :cond_e1
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    :goto_e5
    move-object/from16 v20, v2

    if-eqz v0, :cond_ee

    .line 1455
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_f2

    :cond_ee
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    :goto_f2
    move-object/from16 v21, v0

    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    move/from16 v23, v0

    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v24, v0

    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    move-object/from16 v25, v0

    const-wide/16 v28, 0x0

    iget-boolean v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    move/from16 v32, v0

    const/16 v33, 0x0

    move-object v9, v3

    move-object/from16 v11, v22

    move-wide/from16 v14, v30

    move/from16 v16, v4

    move-wide/from16 v26, v30

    invoke-direct/range {v9 .. v33}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJZZ)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    if-eqz p3, :cond_123

    .line 1466
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->release()V

    :cond_123
    return-void
.end method

.method private resetPendingPauseAtEndOfPeriod()V
    .registers 2

    .line 2163
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2164
    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelineWindow:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    return-void
.end method

.method private resetRendererPosition(J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1320
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_f

    const-wide v0, 0xe8d4a51000L

    add-long/2addr p1, v0

    goto :goto_13

    .line 1324
    :cond_f
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide p1

    :goto_13
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1325
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/DefaultMediaClock;->resetPosition(J)V

    .line 1326
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1e
    if-ge v0, p2, :cond_30

    aget-object v1, p1, v0

    .line 1327
    invoke-static {v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1328
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/Renderer;->resetPosition(J)V

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1331
    :cond_30
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifyTrackSelectionDiscontinuity()V

    return-void
.end method

.method private static resolvePendingMessageEndOfStreamPosition(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)V
    .registers 9

    .line 2829
    iget-object v0, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {p0, v0, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 2830
    invoke-virtual {p0, v0, p2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    const/4 v0, 0x1

    .line 2831
    invoke-virtual {p0, p2, p3, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 2832
    iget-wide v0, p3, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_26

    iget-wide v0, p3, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_2b

    :cond_26
    const-wide v0, 0x7fffffffffffffffL

    .line 2833
    :goto_2b
    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->setResolvedPosition(IJLjava/lang/Object;)V

    return-void
.end method

.method private static resolvePendingMessagePosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;IZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Z
    .registers 22

    move-object v0, p0

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 2761
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/high16 v13, -0x8000000000000000L

    if-nez v2, :cond_71

    .line 2763
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    .line 2764
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/PlayerMessage;->getPositionMs()J

    move-result-wide v1

    cmp-long v3, v1, v13

    if-nez v3, :cond_21

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2b

    :cond_21
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    .line 2766
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/PlayerMessage;->getPositionMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v1

    .line 2768
    :goto_2b
    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    .line 2772
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/PlayerMessage;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    .line 2773
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/PlayerMessage;->getMediaItemIndex()I

    move-result v5

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v4

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 2769
    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSeekPositionUs(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;ZIZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_50

    return v11

    .line 2783
    :cond_50
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2784
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 2785
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2783
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->setResolvedPosition(IJLjava/lang/Object;)V

    .line 2787
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/PlayerMessage;->getPositionMs()J

    move-result-wide v1

    cmp-long v3, v1, v13

    if-nez v3, :cond_70

    .line 2788
    invoke-static {v8, p0, v9, v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolvePendingMessageEndOfStreamPosition(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)V

    :cond_70
    return v12

    .line 2793
    :cond_71
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7b

    return v11

    .line 2797
    :cond_7b
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/PlayerMessage;->getPositionMs()J

    move-result-wide v3

    cmp-long v5, v3, v13

    if-nez v5, :cond_89

    .line 2799
    invoke-static {v8, p0, v9, v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolvePendingMessageEndOfStreamPosition(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)V

    return v12

    .line 2802
    :cond_89
    iput v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    .line 2803
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {v1, v2, v10}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2804
    iget-boolean v2, v10, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    if-eqz v2, :cond_d1

    iget v2, v10, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 2805
    invoke-virtual {v1, v2, v9}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    .line 2806
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    if-ne v2, v1, :cond_d1

    .line 2810
    iget-wide v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    .line 2811
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v3

    add-long v5, v1, v3

    .line 2812
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    .line 2813
    invoke-virtual {v8, v1, v10}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v4, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 2815
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 2816
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2817
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 2818
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2816
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->setResolvedPosition(IJLjava/lang/Object;)V

    :cond_d1
    return v12
.end method

.method private resolvePendingMessagePositions(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)V
    .registers 12

    .line 1564
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 1568
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_15
    if-ltz v0, :cond_46

    .line 1569
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 1570
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    iget v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object v3, p1

    move-object v4, p2

    .line 1569
    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolvePendingMessagePosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;IZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 1578
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V

    .line 1579
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_43
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 1583
    :cond_46
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private static resolvePositionForPlaylistChange(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;Lcom/google/android/exoplayer2/MediaPeriodQueue;IZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;
    .registers 38

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v11, p7

    .line 2545
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2546
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    .line 2547
    invoke-static {}, Lcom/google/android/exoplayer2/PlaybackInfo;->getDummyPeriodForEmptyTimeline()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJZZZ)V

    return-object v0

    .line 2554
    :cond_25
    iget-object v14, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 2555
    iget-object v12, v14, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2556
    invoke-static {v8, v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isUsingPlaceholderPeriod(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline$Period;)Z

    move-result v13

    .line 2557
    iget-object v0, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 2558
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-nez v0, :cond_3b

    if-eqz v13, :cond_38

    goto :goto_3b

    :cond_38
    iget-wide v0, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    goto :goto_3d

    :cond_3b
    :goto_3b
    iget-wide v0, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    :goto_3d
    move-wide v15, v0

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    if-eqz v9, :cond_9d

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v21, v14

    const/4 v14, -0x1

    move-object/from16 v6, p7

    .line 2570
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSeekPositionUs(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;ZIZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_6a

    .line 2581
    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    move v6, v0

    move-wide v0, v15

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_90

    .line 2584
    :cond_6a
    iget-wide v1, v9, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long v3, v1, v17

    if-nez v3, :cond_7b

    .line 2585
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2586
    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v6, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move-wide v0, v15

    const/4 v2, 0x0

    goto :goto_87

    .line 2588
    :cond_7b
    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2589
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v6, -0x1

    .line 2593
    :goto_87
    iget v3, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_8e

    const/4 v3, 0x1

    goto :goto_8f

    :cond_8e
    const/4 v3, 0x0

    :goto_8f
    const/4 v4, 0x0

    :goto_90
    move-object/from16 v9, p6

    move/from16 v29, v2

    move/from16 v27, v3

    move/from16 v28, v4

    move v3, v6

    move-object/from16 v6, v21

    goto/16 :goto_14b

    :cond_9d
    move-object/from16 v21, v14

    const/4 v14, -0x1

    .line 2595
    iget-object v0, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 2597
    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    :goto_ac
    move-object/from16 v9, p6

    move v3, v0

    move-wide v0, v15

    move-object/from16 v6, v21

    :goto_b2
    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_b6
    const/16 v29, 0x0

    goto/16 :goto_14b

    .line 2598
    :cond_ba
    invoke-virtual {v7, v12}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v14, :cond_eb

    .line 2602
    iget-object v5, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move/from16 v2, p4

    move/from16 v3, p5

    move-object v4, v12

    move-object/from16 v6, p0

    .line 2603
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSubsequentPeriod(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IZLjava/lang/Object;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d9

    .line 2614
    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    const/4 v4, 0x1

    goto :goto_e0

    .line 2619
    :cond_d9
    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    const/4 v4, 0x0

    :goto_e0
    move-object/from16 v9, p6

    move v3, v0

    move/from16 v28, v4

    move-wide v0, v15

    move-object/from16 v6, v21

    const/16 v27, 0x0

    goto :goto_b6

    :cond_eb
    cmp-long v0, v15, v17

    if-nez v0, :cond_f6

    .line 2624
    invoke-virtual {v7, v12, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    goto :goto_ac

    :cond_f6
    if-eqz v13, :cond_143

    .line 2628
    iget-object v0, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v6, v21

    iget-object v1, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v1, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2629
    iget-object v0, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v1, v11, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move-object/from16 v9, p6

    invoke-virtual {v0, v1, v9}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    iget-object v1, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2630
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_13a

    .line 2633
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    add-long v4, v15, v0

    .line 2634
    invoke-virtual {v7, v12, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v3, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    .line 2636
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 2637
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2638
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v12, v1

    move-wide v0, v2

    goto :goto_13b

    :cond_13a
    move-wide v0, v15

    :goto_13b
    const/4 v3, -0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    goto :goto_14b

    :cond_143
    move-object/from16 v9, p6

    move-object/from16 v6, v21

    move-wide v0, v15

    const/4 v3, -0x1

    goto/16 :goto_b2

    :goto_14b
    if-eq v3, v14, :cond_16b

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    .line 2648
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 2653
    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2654
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-object/from16 v2, p3

    move-wide/from16 v25, v17

    goto :goto_16f

    :cond_16b
    move-object/from16 v2, p3

    move-wide/from16 v25, v0

    .line 2660
    :goto_16f
    invoke-virtual {v2, v7, v12, v0, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v2

    .line 2662
    iget v3, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v3, v14, :cond_184

    iget v3, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v3, v14, :cond_182

    iget v3, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    iget v4, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-lt v3, v4, :cond_182

    goto :goto_184

    :cond_182
    const/4 v3, 0x0

    goto :goto_185

    :cond_184
    :goto_184
    const/4 v3, 0x1

    .line 2669
    :goto_185
    iget-object v4, v6, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v4, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19c

    .line 2672
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v4

    if-nez v4, :cond_19c

    .line 2673
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v4

    if-nez v4, :cond_19c

    if-eqz v3, :cond_19c

    goto :goto_19e

    :cond_19c
    const/16 v20, 0x0

    .line 2683
    :goto_19e
    invoke-virtual {v7, v12, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v17

    move v12, v13

    move-object v13, v6

    move-object v3, v6

    move-wide v14, v15

    move-object/from16 v16, v2

    move-wide/from16 v18, v25

    .line 2678
    invoke-static/range {v12 .. v19}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isIgnorableServerSideAdInsertionPeriodChange(ZLcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JLcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline$Period;J)Z

    move-result v4

    if-nez v20, :cond_1b2

    if-eqz v4, :cond_1b3

    :cond_1b2
    move-object v2, v3

    .line 2689
    :cond_1b3
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v4

    if-eqz v4, :cond_1d8

    .line 2690
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c2

    .line 2691
    iget-wide v0, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    goto :goto_1d8

    .line 2693
    :cond_1c2
    iget-object v0, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2694
    iget v0, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget v1, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 2695
    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v1

    if-ne v0, v1, :cond_1d6

    .line 2696
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v0

    goto :goto_1d8

    :cond_1d6
    const-wide/16 v0, 0x0

    :cond_1d8
    :goto_1d8
    move-wide/from16 v23, v0

    .line 2701
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-direct/range {v21 .. v29}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJZZZ)V

    return-object v0
.end method

.method private static resolveSeekPositionUs(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;ZIZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Landroid/util/Pair;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;",
            "ZIZ",
            "Lcom/google/android/exoplayer2/Timeline$Window;",
            "Lcom/google/android/exoplayer2/Timeline$Period;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object v7, p0

    move-object v0, p1

    move-object/from16 v8, p6

    .line 2856
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 2857
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_e

    return-object v9

    .line 2861
    :cond_e
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    move-object v10, v7

    goto :goto_17

    :cond_16
    move-object v10, v1

    .line 2869
    :goto_17
    :try_start_17
    iget v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    iget-wide v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    move-object v1, v10

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 2870
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1
    :try_end_24
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_17 .. :try_end_24} :catch_8e

    .line 2876
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    return-object v1

    .line 2881
    :cond_2b
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_64

    .line 2884
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v2, v8}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    if-eqz v2, :cond_63

    iget v2, v8, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move-object/from16 v11, p5

    .line 2885
    invoke-virtual {v10, v2, v11}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2886
    invoke-virtual {v10, v3}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_63

    .line 2890
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v1, v8}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v3, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 2891
    iget-wide v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 2892
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1

    :cond_63
    return-object v1

    :cond_64
    move-object/from16 v11, p5

    if-eqz p2, :cond_8e

    .line 2900
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move v2, p3

    move/from16 v3, p4

    move-object v5, v10

    move-object v6, p0

    .line 2901
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSubsequentPeriod(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IZLjava/lang/Object;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8e

    .line 2914
    invoke-virtual {p0, v0, v8}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v3, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 2911
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_8e
    :cond_8e
    return-object v9
.end method

.method static resolveSubsequentPeriod(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IZLjava/lang/Object;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Ljava/lang/Object;
    .registers 16

    .line 2945
    invoke-virtual {p5, p4}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p4

    .line 2947
    invoke-virtual {p5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p4

    const/4 p4, -0x1

    :goto_c
    if-ge v2, v0, :cond_27

    if-ne p4, v1, :cond_27

    move-object v3, p5

    move-object v5, p1

    move-object v6, p0

    move v7, p2

    move v8, p3

    .line 2950
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)I

    move-result v4

    if-ne v4, v1, :cond_1c

    goto :goto_27

    .line 2956
    :cond_1c
    invoke-virtual {p5, v4}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p6, p4}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p4

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_27
    :goto_27
    if-ne p4, v1, :cond_2b

    const/4 p0, 0x0

    goto :goto_2f

    .line 2958
    :cond_2b
    invoke-virtual {p6, p4}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p0

    :goto_2f
    return-object p0
.end method

.method private scheduleNextWork(JJ)V
    .registers 7

    .line 1120
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeMessages(I)V

    .line 1121
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    add-long/2addr p1, p3

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method private seekToCurrentPosition(Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 841
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 842
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    .line 843
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZZ)J

    move-result-wide v3

    .line 848
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v5, v3, v1

    if-eqz v5, :cond_30

    .line 849
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v7, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    const/4 v10, 0x5

    move-object v1, p0

    move-object v2, v0

    move v9, p1

    .line 850
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    :cond_30
    return-void
.end method

.method private seekToInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    .line 1134
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 1141
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v4, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v5, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v6, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v7, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v3, 0x1

    move-object/from16 v2, p1

    .line 1142
    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSeekPositionUs(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;ZIZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Landroid/util/Pair;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    if-nez v1, :cond_4b

    .line 1153
    iget-object v7, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v7, v7, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1154
    invoke-direct {v11, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPlaceholderFirstMediaPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline;)Landroid/util/Pair;

    move-result-object v7

    .line 1155
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1156
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 1158
    iget-object v7, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v7, v7, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v8

    move v10, v7

    move-wide/from16 v17, v4

    :goto_47
    move-wide v4, v12

    move-wide/from16 v12, v17

    goto :goto_a1

    .line 1161
    :cond_4b
    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1162
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 1163
    iget-wide v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long v14, v9, v4

    if-nez v14, :cond_5d

    move-wide v9, v4

    goto :goto_5e

    :cond_5d
    move-wide v9, v12

    .line 1165
    :goto_5e
    iget-object v14, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-object v15, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v15, v15, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1166
    invoke-virtual {v14, v15, v7, v12, v13}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v7

    .line 1168
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v14

    if-eqz v14, :cond_93

    .line 1169
    iget-object v4, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, v7, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v12, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4, v5, v12}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1170
    iget-object v4, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v5, v7, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 1171
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v4

    iget v5, v7, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-ne v4, v5, :cond_8d

    iget-object v4, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1172
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v4

    move-wide v12, v4

    goto :goto_8e

    :cond_8d
    move-wide v12, v2

    :goto_8e
    move-wide v4, v12

    move-wide v12, v9

    const/4 v10, 0x1

    move-object v9, v7

    goto :goto_a1

    .line 1177
    :cond_93
    iget-wide v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long v16, v14, v4

    if-nez v16, :cond_9b

    const/4 v4, 0x1

    goto :goto_9c

    :cond_9b
    const/4 v4, 0x0

    :goto_9c
    move-wide/from16 v17, v9

    move v10, v4

    move-object v9, v7

    goto :goto_47

    .line 1182
    :goto_a1
    :try_start_a1
    iget-object v7, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v7, v7, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_ae

    .line 1184
    iput-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    goto :goto_bd

    :cond_ae
    const/4 v0, 0x4

    if-nez v1, :cond_c0

    .line 1187
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v1, v8, :cond_ba

    .line 1188
    invoke-direct {v11, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 1190
    :cond_ba
    invoke-direct {v11, v6, v8, v6, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    :goto_bd
    move-wide v7, v4

    goto/16 :goto_13f

    .line 1198
    :cond_c0
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v9, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_115

    .line 1199
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    if-eqz v1, :cond_e3

    .line 1200
    iget-boolean v7, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz v7, :cond_e3

    cmp-long v7, v4, v2

    if-eqz v7, :cond_e3

    .line 1203
    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-object v2, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    .line 1204
    invoke-interface {v1, v4, v5, v2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide v1

    goto :goto_e4

    :cond_e3
    move-wide v1, v4

    .line 1207
    :goto_e4
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v14

    iget-object v3, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v6, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v6

    cmp-long v3, v14, v6

    if-nez v3, :cond_116

    iget-object v3, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v6, 0x2

    if-eq v3, v6, :cond_102

    iget-object v3, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_116

    .line 1211
    :cond_102
    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J
    :try_end_106
    .catchall {:try_start_a1 .. :try_end_106} :catchall_152

    const/4 v0, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v0

    .line 1231
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    return-void

    :cond_115
    move-wide v1, v4

    .line 1215
    :cond_116
    :try_start_116
    iget-object v3, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-ne v3, v0, :cond_11e

    const/4 v0, 0x1

    goto :goto_11f

    :cond_11e
    const/4 v0, 0x0

    .line 1216
    :goto_11f
    invoke-direct {v11, v9, v1, v2, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZ)J

    move-result-wide v14
    :try_end_123
    .catchall {:try_start_116 .. :try_end_123} :catchall_152

    cmp-long v0, v4, v14

    if-eqz v0, :cond_128

    goto :goto_129

    :cond_128
    const/4 v8, 0x0

    :goto_129
    or-int/2addr v8, v10

    .line 1222
    :try_start_12a
    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v5, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object/from16 v1, p0

    move-object v3, v9

    move-wide v6, v12

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)V
    :try_end_13d
    .catchall {:try_start_12a .. :try_end_13d} :catchall_14e

    move v10, v8

    move-wide v7, v14

    :goto_13f
    const/4 v0, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v0

    .line 1231
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    return-void

    :catchall_14e
    move-exception v0

    move v10, v8

    move-wide v7, v14

    goto :goto_154

    :catchall_152
    move-exception v0

    move-wide v7, v4

    :goto_154
    const/4 v14, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v14

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    goto :goto_164

    :goto_163
    throw v0

    :goto_164
    goto :goto_163
.end method

.method private seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZ)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1245
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 1248
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_13
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v6, p4

    .line 1245
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZZ)J

    move-result-wide p1

    return-wide p1
.end method

.method private seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZZ)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1258
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    const/4 v0, 0x0

    .line 1259
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRebuffering:Z

    const/4 v1, 0x2

    if-nez p5, :cond_10

    .line 1260
    iget-object p5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget p5, p5, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v2, 0x3

    if-ne p5, v2, :cond_13

    .line 1261
    :cond_10
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 1265
    :cond_13
    iget-object p5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p5}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object p5

    move-object v2, p5

    :goto_1a
    if-eqz v2, :cond_2c

    .line 1268
    iget-object v3, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    goto :goto_2c

    .line 1271
    :cond_27
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    goto :goto_1a

    :cond_2c
    :goto_2c
    if-nez p4, :cond_3c

    if-ne p5, v2, :cond_3c

    if-eqz v2, :cond_6a

    .line 1279
    invoke-virtual {v2, p2, p3}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide p4

    const-wide/16 v3, 0x0

    cmp-long p1, p4, v3

    if-gez p1, :cond_6a

    .line 1280
    :cond_3c
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length p4, p1

    const/4 p5, 0x0

    :goto_40
    if-ge p5, p4, :cond_4a

    aget-object v3, p1, p5

    .line 1281
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->disableRenderer(Lcom/google/android/exoplayer2/Renderer;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_40

    :cond_4a
    if-eqz v2, :cond_6a

    .line 1285
    :goto_4c
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object p1

    if-eq p1, v2, :cond_5a

    .line 1286
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->advancePlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    goto :goto_4c

    .line 1288
    :cond_5a
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    const-wide p4, 0xe8d4a51000L

    .line 1289
    invoke-virtual {v2, p4, p5}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->setRendererOffset(J)V

    .line 1291
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers()V

    :cond_6a
    if-eqz v2, :cond_9b

    .line 1297
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    .line 1298
    iget-boolean p1, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-nez p1, :cond_7e

    .line 1299
    iget-object p1, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 1300
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/MediaPeriodInfo;->copyWithStartPositionUs(J)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object p1

    iput-object p1, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    goto :goto_94

    .line 1301
    :cond_7e
    iget-boolean p1, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz p1, :cond_94

    .line 1302
    iget-object p1, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p1

    .line 1303
    iget-object p3, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->backBufferDurationUs:J

    sub-long p4, p1, p4

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    invoke-interface {p3, p4, p5, v2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(JZ)V

    move-wide p2, p1

    .line 1306
    :cond_94
    :goto_94
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1307
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_a3

    .line 1310
    :cond_9b
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->clear()V

    .line 1311
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1314
    :goto_a3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 1315
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-wide p2
.end method

.method private sendMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1494
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getPositionMs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    .line 1496
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->sendMessageToTarget(Lcom/google/android/exoplayer2/PlayerMessage;)V

    goto :goto_51

    .line 1497
    :cond_11
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1499
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;-><init>(Lcom/google/android/exoplayer2/PlayerMessage;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 1501
    :cond_26
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;-><init>(Lcom/google/android/exoplayer2/PlayerMessage;)V

    .line 1502
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object v2, v0

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolvePendingMessagePosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;IZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1510
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1512
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_51

    :cond_4d
    const/4 v0, 0x0

    .line 1514
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V

    :goto_51
    return-void
.end method

.method private sendMessageToTarget(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1520
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_1f

    .line 1521
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->deliverMessage(Lcom/google/android/exoplayer2/PlayerMessage;)V

    .line 1522
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_19

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-ne p1, v1, :cond_2a

    .line 1525
    :cond_19
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    goto :goto_2a

    .line 1528
    :cond_1f
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0xf

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    :cond_2a
    :goto_2a
    return-void
.end method

.method private sendMessageToTargetThread(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .registers 5

    .line 1533
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1534
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v0, "TAG"

    const-string v1, "Trying to send message on a dead thread."

    .line 1535
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1536
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V

    return-void

    .line 1539
    :cond_1a
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplayer2/util/Clock;

    const/4 v2, 0x0

    .line 1540
    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer2/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImplInternal$g6dv66qY5BQbNAG_Gwu0Lamb0zs;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImplInternal$g6dv66qY5BQbNAG_Gwu0Lamb0zs;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;Lcom/google/android/exoplayer2/PlayerMessage;)V

    .line 1541
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setAllRendererStreamsFinal(J)V
    .registers 8

    .line 2220
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 2221
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 2222
    invoke-direct {p0, v3, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setCurrentStreamFinal(Lcom/google/android/exoplayer2/Renderer;J)V

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_14
    return-void
.end method

.method private setCurrentStreamFinal(Lcom/google/android/exoplayer2/Renderer;J)V
    .registers 5

    .line 2228
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->setCurrentStreamFinal()V

    .line 2229
    instance-of v0, p1, Lcom/google/android/exoplayer2/text/TextRenderer;

    if-eqz v0, :cond_c

    .line 2230
    check-cast p1, Lcom/google/android/exoplayer2/text/TextRenderer;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/text/TextRenderer;->setFinalStreamEndPositionUs(J)V

    :cond_c
    return-void
.end method

.method private setForegroundModeInternal(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 7

    .line 1346
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->foregroundMode:Z

    if-eq v0, p1, :cond_24

    .line 1347
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->foregroundMode:Z

    if-nez p1, :cond_24

    .line 1349
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_24

    aget-object v2, p1, v1

    .line 1350
    invoke-static {v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v3

    if-nez v3, :cond_21

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1351
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->reset()V

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_24
    if-eqz p2, :cond_33

    .line 1357
    monitor-enter p0

    const/4 p1, 0x1

    .line 1358
    :try_start_28
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1359
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1360
    monitor-exit p0

    goto :goto_33

    :catchall_30
    move-exception p1

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_30

    throw p1

    :cond_33
    :goto_33
    return-void
.end method

.method private setMediaItemsInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 701
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 702
    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->windowIndex:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$200(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_29

    .line 703
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    new-instance v1, Lcom/google/android/exoplayer2/PlaylistTimeline;

    .line 706
    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->mediaSourceHolders:Ljava/util/List;
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$300(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Ljava/util/List;

    move-result-object v2

    .line 707
    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/PlaylistTimeline;-><init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 708
    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->windowIndex:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$200(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)I

    move-result v2

    .line 709
    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->positionUs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$500(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    .line 711
    :cond_29
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 713
    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->mediaSourceHolders:Ljava/util/List;
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$300(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Ljava/util/List;

    move-result-object v1

    .line 714
    # getter for: Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object p1

    .line 712
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/MediaSourceList;->setMediaSources(Ljava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object p1

    const/4 v0, 0x0

    .line 715
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Z)V

    return-void
.end method

.method private setOffloadSchedulingEnabledInternal(Z)V
    .registers 4

    .line 808
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 811
    :cond_5
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    .line 812
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-nez p1, :cond_1b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    goto :goto_1b

    .line 816
    :cond_14
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    goto :goto_23

    .line 814
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithOffloadSchedulingEnabled(Z)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    :goto_23
    return-void
.end method

.method private setPauseAtEndOfWindowInternal(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 797
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

    .line 798
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 799
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-eq p1, v0, :cond_1f

    const/4 p1, 0x1

    .line 802
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    const/4 p1, 0x0

    .line 803
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    :cond_1f
    return-void
.end method

.method private setPlayWhenReadyInternal(ZIZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 778
    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPlayWhenReadyChangeReason(I)V

    .line 779
    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlayWhenReady(ZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    const/4 p2, 0x0

    .line 780
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRebuffering:Z

    .line 781
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifyTrackSelectionPlayWhenReadyChanged(Z)V

    .line 782
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result p1

    if-nez p1, :cond_25

    .line 783
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 784
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    goto :goto_41

    .line 786
    :cond_25
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 p2, 0x3

    const/4 p3, 0x2

    if-ne p1, p2, :cond_36

    .line 787
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->startRenderers()V

    .line 788
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {p1, p3}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    goto :goto_41

    .line 789
    :cond_36
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-ne p1, p3, :cond_41

    .line 790
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {p1, p3}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    :cond_41
    :goto_41
    return-void
.end method

.method private setPlaybackParametersInternal(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1336
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 1337
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;Z)V

    return-void
.end method

.method private setRepeatModeInternal(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 822
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    .line 823
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->updateRepeatMode(Lcom/google/android/exoplayer2/Timeline;I)Z

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    .line 824
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    :cond_12
    const/4 p1, 0x0

    .line 826
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    return-void
.end method

.method private setSeekParametersInternal(Lcom/google/android/exoplayer2/SeekParameters;)V
    .registers 2

    .line 1341
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    return-void
.end method

.method private setShuffleModeEnabledInternal(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 831
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 832
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->updateShuffleModeEnabled(Lcom/google/android/exoplayer2/Timeline;Z)Z

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    .line 833
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    :cond_12
    const/4 p1, 0x0

    .line 835
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    return-void
.end method

.method private setShuffleOrderInternal(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 754
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 755
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaSourceList;->setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object p1

    const/4 v0, 0x0

    .line 756
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Z)V

    return-void
.end method

.method private setState(I)V
    .registers 4

    .line 670
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v0, p1, :cond_18

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 672
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    .line 674
    :cond_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    :cond_18
    return-void
.end method

.method private shouldAdvancePlayingPeriod()Z
    .registers 8

    .line 2169
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2172
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v0, :cond_d

    return v1

    .line 2175
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_16

    return v1

    .line 2179
    :cond_16
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 2180
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2181
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2b

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->allRenderersInCorrectState:Z

    if-eqz v0, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    return v1
.end method

.method private shouldContinueLoading()Z
    .registers 10

    .line 2309
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isLoadingPossible()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 2312
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2314
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNextLoadPositionUs()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v6

    .line 2315
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 2316
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    if-ne v0, v1, :cond_26

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2317
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v0

    move-wide v4, v0

    goto :goto_32

    :cond_26
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2318
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v1

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v1, v3

    move-wide v4, v1

    .line 2320
    :goto_32
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    .line 2321
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget v8, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 2320
    invoke-interface/range {v3 .. v8}, Lcom/google/android/exoplayer2/LoadControl;->shouldContinueLoading(JJF)Z

    move-result v0

    return v0
.end method

.method private shouldPlayWhenReady()Z
    .registers 2

    .line 2532
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private shouldTransitionToReadyState(Z)Z
    .registers 13

    .line 1772
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRendererCount:I

    if-nez v0, :cond_9

    .line 1774
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isTimelineReady()Z

    move-result p1

    return p1

    :cond_9
    const/4 v0, 0x0

    if-nez p1, :cond_d

    return v0

    .line 1779
    :cond_d
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    const/4 v1, 0x1

    if-nez p1, :cond_15

    return v1

    .line 1785
    :cond_15
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 1786
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    .line 1787
    invoke-interface {p1}, Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;->getTargetLiveOffsetUs()J

    move-result-wide v2

    goto :goto_35

    :cond_30
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_35
    move-wide v9, v2

    .line 1789
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object p1

    .line 1790
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, p1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    if-eqz v2, :cond_4a

    const/4 v2, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v2, 0x0

    .line 1794
    :goto_4b
    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_5b

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-nez p1, :cond_5b

    const/4 p1, 0x1

    goto :goto_5c

    :cond_5b
    const/4 p1, 0x0

    :goto_5c
    if-nez v2, :cond_76

    if-nez p1, :cond_76

    .line 1795
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    .line 1798
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v5

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    .line 1799
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    iget v7, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    iget-boolean v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRebuffering:Z

    .line 1797
    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/LoadControl;->shouldStartPlayback(JFZJ)Z

    move-result p1

    if-eqz p1, :cond_77

    :cond_76
    const/4 v0, 0x1

    :cond_77
    return v0
.end method

.method private shouldUseLivePlaybackSpeedControl(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z
    .registers 7

    .line 1111
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_39

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_39

    .line 1114
    :cond_e
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 1115
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1116
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline$Window;->isLive()Z

    move-result p1

    if-eqz p1, :cond_39

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz p1, :cond_39

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v2

    if-eqz v0, :cond_39

    const/4 v1, 0x1

    :cond_39
    :goto_39
    return v1
.end method

.method private startRenderers()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 861
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRebuffering:Z

    .line 862
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->start()V

    .line 863
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v1

    :goto_b
    if-ge v0, v2, :cond_1b

    aget-object v3, v1, v0

    .line 864
    invoke-static {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 865
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->start()V

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1b
    return-void
.end method

.method private stopInternal(ZZ)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_b

    .line 1365
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->foregroundMode:Z

    if-nez p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 1370
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 1371
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/LoadControl;->onStopped()V

    .line 1372
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    return-void
.end method

.method private stopRenderers()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 871
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->stop()V

    .line 872
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    .line 873
    invoke-static {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 874
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method private updateIsLoading()V
    .registers 3

    .line 2337
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2338
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldContinueLoading:Z

    if-nez v1, :cond_17

    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 2339
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 2340
    :goto_18
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    if-eq v0, v1, :cond_26

    .line 2341
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithIsLoading(Z)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    :cond_26
    return-void
.end method

.method private updateLoadControlTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V
    .registers 5

    .line 2528
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    iget-object p2, p2, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/LoadControl;->onTracksSelected([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V

    return-void
.end method

.method private updatePeriods()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1964
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1f

    .line 1968
    :cond_13
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeUpdateLoadingPeriod()V

    .line 1969
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeUpdateReadingPeriod()V

    .line 1970
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeUpdateReadingRenderers()V

    .line 1971
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeUpdatePlayingPeriod()V

    :cond_1f
    :goto_1f
    return-void
.end method

.method private updatePlaybackPositions()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 884
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 890
    :cond_9
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 892
    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v4

    move-wide v6, v4

    goto :goto_1b

    :cond_1a
    move-wide v6, v2

    :goto_1b
    const/4 v10, 0x0

    cmp-long v1, v6, v2

    if-eqz v1, :cond_3e

    .line 895
    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 898
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v2, v6, v0

    if-eqz v2, :cond_60

    .line 899
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    const/4 v8, 0x1

    const/4 v9, 0x5

    move-object v0, p0

    move-wide v2, v6

    .line 900
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    goto :goto_60

    .line 909
    :cond_3e
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 911
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    if-eq v0, v2, :cond_4a

    const/4 v2, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v2, 0x0

    .line 910
    :goto_4b
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/DefaultMediaClock;->syncAndGetPositionUs(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 912
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v0

    .line 913
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeTriggerPendingMessages(JJ)V

    .line 914
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iput-wide v0, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 918
    :cond_60
    :goto_60
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 919
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 920
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    .line 923
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 925
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_d3

    .line 927
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    .line 929
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getCurrentLiveOffsetUs()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v3

    .line 928
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;->getAdjustedPlaybackSpeed(JJ)F

    move-result v0

    .line 930
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_d3

    .line 931
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/PlaybackParameters;->withSpeed(F)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 932
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    .line 934
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 932
    invoke-direct {p0, v0, v1, v10, v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;FZZ)V

    :cond_d3
    return-void
.end method

.method private updatePlaybackSpeedSettingsForNewPeriod(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)V
    .registers 10

    .line 1908
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1912
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object p1, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    goto :goto_13

    :cond_f
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 1913
    :goto_13
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_24

    .line 1914
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_24
    return-void

    .line 1918
    :cond_25
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 1919
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1920
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;->setLiveConfiguration(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p5, v0

    if-eqz v2, :cond_58

    .line 1922
    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 1923
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getLiveOffsetUs(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)J

    move-result-wide p1

    .line 1922
    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;->setTargetLiveOffsetOverrideUs(J)V

    goto :goto_80

    .line 1925
    :cond_58
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 1927
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_75

    .line 1928
    iget-object p2, p4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p3, p2, p4}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 1929
    iget-object p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p3, p2, p4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 1931
    :cond_75
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_80

    .line 1933
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;->setTargetLiveOffsetOverrideUs(J)V

    :cond_80
    :goto_80
    return-void
.end method

.method private updateTrackSelectionPlaybackSpeed(F)V
    .registers 7

    .line 1748
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_21

    .line 1750
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    if-eqz v4, :cond_19

    .line 1752
    invoke-interface {v4, p1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->onPlaybackSpeed(F)V

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1755
    :cond_1c
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    goto :goto_6

    :cond_21
    return-void
.end method

.method private declared-synchronized waitUninterruptibly(Lcom/google/common/base/Supplier;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/Boolean;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    .line 651
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    const/4 v2, 0x0

    .line 654
    :goto_9
    invoke-interface {p1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3a

    if-nez v3, :cond_2f

    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-lez v5, :cond_2f

    .line 656
    :try_start_1b
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/util/Clock;->onThreadBlocked()V

    .line 657
    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_23} :catch_24
    .catchall {:try_start_1b .. :try_end_23} :catchall_3a

    goto :goto_26

    :catch_24
    const/4 p2, 0x1

    const/4 v2, 0x1

    .line 661
    :goto_26
    :try_start_26
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide p2

    sub-long p2, v0, p2

    goto :goto_9

    :cond_2f
    if-eqz v2, :cond_38

    .line 665
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_3a

    .line 667
    :cond_38
    monitor-exit p0

    return-void

    :catchall_3a
    move-exception p1

    monitor-exit p0

    goto :goto_3e

    :goto_3d
    throw p1

    :goto_3e
    goto :goto_3d
.end method


# virtual methods
.method public addMediaSources(ILjava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;",
            ">;",
            "Lcom/google/android/exoplayer2/source/ShuffleOrder;",
            ")V"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;-><init>(Ljava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;IJLcom/google/android/exoplayer2/ExoPlayerImplInternal$1;)V

    const/16 p2, 0x12

    const/4 p3, 0x0

    .line 352
    invoke-interface {v0, p2, p1, p3, v8}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p1

    .line 361
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public experimentalSetForegroundModeTimeoutMs(J)V
    .registers 3

    .line 284
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setForegroundModeTimeoutMs:J

    return-void
.end method

.method public experimentalSetOffloadSchedulingEnabled(Z)V
    .registers 5

    .line 288
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x0

    const/16 v2, 0x18

    .line 289
    invoke-interface {v0, v2, p1, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p1

    .line 291
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .registers 2

    .line 429
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 9

    const-string v0, "Playback error"

    const-string v1, "ExoPlayerImplInternal"

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 472
    :try_start_8
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_1a4

    return v3

    .line 551
    :pswitch_e
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->attemptRendererErrorRecovery()V

    goto/16 :goto_19f

    .line 548
    :pswitch_13
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setOffloadSchedulingEnabledInternal(Z)V

    goto/16 :goto_19f

    .line 545
    :pswitch_1f
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPauseAtEndOfWindowInternal(Z)V

    goto/16 :goto_19f

    .line 542
    :pswitch_2b
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceListUpdateRequestedInternal()V

    goto/16 :goto_19f

    .line 539
    :pswitch_30
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setShuffleOrderInternal(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    goto/16 :goto_19f

    .line 536
    :pswitch_39
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-direct {p0, v5, v6, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->removeMediaItemsInternal(IILcom/google/android/exoplayer2/source/ShuffleOrder;)V

    goto/16 :goto_19f

    .line 533
    :pswitch_46
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->moveMediaItemsInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;)V

    goto/16 :goto_19f

    .line 530
    :pswitch_4f
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v5, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->addMediaItemsInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;I)V

    goto/16 :goto_19f

    .line 527
    :pswitch_5a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setMediaItemsInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)V

    goto/16 :goto_19f

    .line 518
    :pswitch_63
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {p0, p1, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;Z)V

    goto/16 :goto_19f

    .line 524
    :pswitch_6c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->sendMessageToTargetThread(Lcom/google/android/exoplayer2/PlayerMessage;)V

    goto/16 :goto_19f

    .line 521
    :pswitch_75
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->sendMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage;)V

    goto/16 :goto_19f

    .line 502
    :pswitch_7e
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_84

    const/4 v5, 0x1

    goto :goto_85

    :cond_84
    const/4 v5, 0x0

    :goto_85
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, v5, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setForegroundModeInternal(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_19f

    .line 487
    :pswitch_8e
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_94

    const/4 p1, 0x1

    goto :goto_95

    :cond_94
    const/4 p1, 0x0

    :goto_95
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setShuffleModeEnabledInternal(Z)V

    goto/16 :goto_19f

    .line 484
    :pswitch_9a
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setRepeatModeInternal(I)V

    goto/16 :goto_19f

    .line 515
    :pswitch_a1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->reselectTracksInternal()V

    goto/16 :goto_19f

    .line 512
    :pswitch_a6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    goto/16 :goto_19f

    .line 509
    :pswitch_af
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePeriodPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    goto/16 :goto_19f

    .line 554
    :pswitch_b8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releaseInternal()V

    return v4

    .line 506
    :pswitch_bc
    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal(ZZ)V

    goto/16 :goto_19f

    .line 499
    :pswitch_c1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/SeekParameters;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setSeekParametersInternal(Lcom/google/android/exoplayer2/SeekParameters;)V

    goto/16 :goto_19f

    .line 496
    :pswitch_ca
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlaybackParametersInternal(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    goto/16 :goto_19f

    .line 493
    :pswitch_d3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)V

    goto/16 :goto_19f

    .line 490
    :pswitch_dc
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->doSomeWork()V

    goto/16 :goto_19f

    .line 477
    :pswitch_e1
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_e7

    const/4 v5, 0x1

    goto :goto_e8

    :cond_e7
    const/4 v5, 0x0

    :goto_e8
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v5, p1, v4, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayWhenReadyInternal(ZIZI)V

    goto/16 :goto_19f

    .line 474
    :pswitch_ef
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->prepareInternal()V
    :try_end_f2
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_8 .. :try_end_f2} :catch_15b
    .catch Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException; {:try_start_8 .. :try_end_f2} :catch_154
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_8 .. :try_end_f2} :catch_12b
    .catch Lcom/google/android/exoplayer2/upstream/DataSourceException; {:try_start_8 .. :try_end_f2} :catch_123
    .catch Lcom/google/android/exoplayer2/source/BehindLiveWindowException; {:try_start_8 .. :try_end_f2} :catch_11b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f2} :catch_113
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_f2} :catch_f4

    goto/16 :goto_19f

    :catch_f4
    move-exception p1

    .line 611
    instance-of v5, p1, Ljava/lang/IllegalStateException;

    if-nez v5, :cond_fd

    instance-of v5, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v5, :cond_ff

    :cond_fd
    const/16 v2, 0x3ec

    .line 616
    :cond_ff
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    .line 617
    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 618
    invoke-direct {p0, v4, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal(ZZ)V

    .line 619
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackError(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    goto/16 :goto_19f

    :catch_113
    move-exception p1

    const/16 v0, 0x7d0

    .line 608
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    goto/16 :goto_19f

    :catch_11b
    move-exception p1

    const/16 v0, 0x3ea

    .line 606
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    goto/16 :goto_19f

    :catch_123
    move-exception p1

    .line 604
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    goto/16 :goto_19f

    :catch_12b
    move-exception p1

    .line 589
    iget v0, p1, Lcom/google/android/exoplayer2/ParserException;->dataType:I

    if-ne v0, v4, :cond_13e

    .line 590
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/ParserException;->contentIsMalformed:Z

    if-eqz v0, :cond_139

    const/16 v0, 0xbb9

    const/16 v2, 0xbb9

    goto :goto_150

    :cond_139
    const/16 v0, 0xbbb

    const/16 v2, 0xbbb

    goto :goto_150

    .line 594
    :cond_13e
    iget v0, p1, Lcom/google/android/exoplayer2/ParserException;->dataType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_150

    .line 595
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/ParserException;->contentIsMalformed:Z

    if-eqz v0, :cond_14c

    const/16 v0, 0xbba

    const/16 v2, 0xbba

    goto :goto_150

    :cond_14c
    const/16 v0, 0xbbc

    const/16 v2, 0xbbc

    .line 602
    :cond_150
    :goto_150
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    goto :goto_19f

    :catch_154
    move-exception p1

    .line 586
    iget v0, p1, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;->errorCode:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    goto :goto_19f

    :catch_15b
    move-exception p1

    .line 561
    iget v2, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-ne v2, v4, :cond_170

    .line 562
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    if-eqz v2, :cond_170

    .line 566
    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->copyWithMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaPeriodId;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    .line 569
    :cond_170
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->isRecoverable:Z

    if-eqz v2, :cond_18b

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingRecoverableRendererError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-nez v2, :cond_18b

    const-string v0, "Recoverable renderer error"

    .line 570
    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 571
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingRecoverableRendererError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 574
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0x19

    .line 575
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p1

    .line 574
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendMessageAtFrontOfQueue(Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;)Z

    goto :goto_19f

    .line 577
    :cond_18b
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingRecoverableRendererError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eqz v2, :cond_191

    .line 579
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingRecoverableRendererError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 581
    :cond_191
    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 582
    invoke-direct {p0, v4, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal(ZZ)V

    .line 583
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackError(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 621
    :goto_19f
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    return v4

    nop

    :pswitch_data_1a4
    .packed-switch 0x0
        :pswitch_ef
        :pswitch_e1
        :pswitch_dc
        :pswitch_d3
        :pswitch_ca
        :pswitch_c1
        :pswitch_bc
        :pswitch_b8
        :pswitch_af
        :pswitch_a6
        :pswitch_a1
        :pswitch_9a
        :pswitch_8e
        :pswitch_7e
        :pswitch_75
        :pswitch_6c
        :pswitch_63
        :pswitch_5a
        :pswitch_4f
        :pswitch_46
        :pswitch_39
        :pswitch_30
        :pswitch_2b
        :pswitch_1f
        :pswitch_13
        :pswitch_e
    .end packed-switch
.end method

.method public synthetic lambda$release$0$ExoPlayerImplInternal()Ljava/lang/Boolean;
    .registers 2

    .line 424
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$sendMessageToTargetThread$1$ExoPlayerImplInternal(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .registers 4

    .line 1544
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->deliverMessage(Lcom/google/android/exoplayer2/PlayerMessage;)V
    :try_end_3
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Unexpected error delivering message on external thread."

    .line 1546
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1547
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public moveMediaSources(IIILcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 6

    .line 372
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;-><init>(IIILcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 374
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 p2, 0x13

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 4

    .line 448
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .registers 2

    .line 73
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 4

    .line 462
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0x10

    .line 463
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p1

    .line 464
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public onPlaylistUpdateRequested()V
    .registers 3

    .line 436
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 4

    .line 443
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public onTrackSelectionsInvalidated()V
    .registers 3

    .line 455
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

.method public prepare()V
    .registers 3

    .line 295
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(I)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public declared-synchronized release()Z
    .registers 4

    monitor-enter p0

    .line 420
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_22

    .line 423
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 424
    new-instance v0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImplInternal$aFDQAhe8WjwID2XRaXNBFAVaeIk;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImplInternal$aFDQAhe8WjwID2XRaXNBFAVaeIk;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;)V

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releaseTimeoutMs:J

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->waitUninterruptibly(Lcom/google/common/base/Supplier;J)V

    .line 425
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_25

    monitor-exit p0

    return v0

    :cond_22
    :goto_22
    const/4 v0, 0x1

    .line 421
    monitor-exit p0

    return v0

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeMediaSources(IILcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 6

    .line 365
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0x14

    .line 366
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p1

    .line 367
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public seekTo(Lcom/google/android/exoplayer2/Timeline;IJ)V
    .registers 7

    .line 320
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    const/4 p1, 0x3

    .line 321
    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p1

    .line 322
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public declared-synchronized sendMessage(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .registers 4

    monitor-enter p0

    .line 383
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_1b

    .line 388
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0xe

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_28

    .line 389
    monitor-exit p0

    return-void

    :cond_1b
    :goto_1b
    :try_start_1b
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    .line 384
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 385
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_28

    .line 386
    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setForegroundMode(Z)Z
    .registers 5

    monitor-enter p0

    .line 398
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    const/4 v1, 0x1

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_40

    :cond_f
    const/16 v0, 0xd

    const/4 v2, 0x0

    if-eqz p1, :cond_1f

    .line 402
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_42

    .line 403
    monitor-exit p0

    return v1

    .line 405
    :cond_1f
    :try_start_1f
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 406
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 407
    invoke-interface {v1, v0, v2, v2, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    .line 408
    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    .line 409
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/exoplayer2/-$$Lambda$WCNOc30RWlKfWWqwDTxwdaoGH-w;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/-$$Lambda$WCNOc30RWlKfWWqwDTxwdaoGH-w;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setForegroundModeTimeoutMs:J

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->waitUninterruptibly(Lcom/google/common/base/Supplier;J)V

    .line 410
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1
    :try_end_3e
    .catchall {:try_start_1f .. :try_end_3e} :catchall_42

    monitor-exit p0

    return p1

    .line 399
    :cond_40
    :goto_40
    monitor-exit p0

    return v1

    :catchall_42
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMediaSources(Ljava/util/List;IJLcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;",
            ">;IJ",
            "Lcom/google/android/exoplayer2/source/ShuffleOrder;",
            ")V"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;-><init>(Ljava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;IJLcom/google/android/exoplayer2/ExoPlayerImplInternal$1;)V

    const/16 p1, 0x11

    .line 343
    invoke-interface {v0, p1, v8}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p1

    .line 346
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public setPauseAtEndOfWindow(Z)V
    .registers 5

    .line 306
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x0

    const/16 v2, 0x17

    .line 307
    invoke-interface {v0, v2, p1, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p1

    .line 308
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public setPlayWhenReady(ZI)V
    .registers 5

    .line 300
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x1

    .line 301
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p1

    .line 302
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 4

    .line 326
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public setRepeatMode(I)V
    .registers 5

    .line 312
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V
    .registers 4

    .line 330
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .registers 5

    .line 316
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-interface {v0, v2, p1, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 4

    .line 378
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0x15

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public stop()V
    .registers 3

    .line 334
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(I)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method
