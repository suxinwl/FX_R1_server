.class public Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;,
        Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;
    }
.end annotation


# static fields
.field static final RendererType_list:[I

.field private static final TAG:Ljava/lang/String; = "ExoMediaPlayer_ExoPlayer"

.field private static final UPDATE_PLAYINFO_DELAY_MS:I = 0x64

.field private static final WAKE_LOCK_TIMEOUT:I = 0x3e8


# instance fields
.field private audioSessionId:I

.field private bufferUpdateListener:Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;

.field private bufferedPercentage:I

.field private captionListener:Lcom/phicomm/speaker/player/exomedia/core/listener/CaptionListener;

.field private final context:Landroid/content/Context;

.field private currentFormat:Lcom/google/android/exoplayer2/Format;

.field private currentMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

.field private duration:J

.field private internalErrorListener:Lcom/phicomm/speaker/player/exomedia/core/listener/InternalErrorListener;

.field private isPlaying:Z

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;",
            ">;"
        }
    .end annotation
.end field

.field private metadataListener:Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;

.field private final player:Lcom/google/android/exoplayer2/ExoPlayer;

.field private final playerHandler:Landroid/os/Handler;

.field private final playerStateLock:Ljava/lang/Object;

.field private position:J

.field private prepared:Z

.field private renderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private stateStore:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

.field private final stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private surface:Landroid/view/Surface;

.field private updatePlayinfoRepeater:Lcom/phicomm/speaker/player/exomedia/util/Repeater;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 65
    invoke-static {}, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->values()[Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->RendererType_list:[I

    .line 68
    sget-object v0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->AUDIO:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->mapRendererType(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;I)V

    .line 69
    sget-object v0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->VIDEO:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->mapRendererType(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;I)V

    .line 70
    sget-object v0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->CLOSED_CAPTION:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->mapRendererType(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;I)V

    .line 71
    sget-object v0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->METADATA:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->mapRendererType(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/os/Handler;)V
    .registers 7

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->prepared:Z

    .line 51
    new-instance v1, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;-><init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$1;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    .line 53
    iput-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 54
    iput-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->currentFormat:Lcom/google/android/exoplayer2/Format;

    .line 55
    iput-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->currentMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 57
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->isPlaying:Z

    .line 58
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->playerStateLock:Ljava/lang/Object;

    .line 59
    iput v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->bufferedPercentage:I

    const-wide/16 v1, 0x0

    .line 60
    iput-wide v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->duration:J

    .line 61
    iput-wide v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->position:J

    .line 62
    iput v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->audioSessionId:I

    .line 83
    iput-object p3, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->playerHandler:Landroid/os/Handler;

    .line 84
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->renderers:Ljava/util/List;

    .line 85
    new-instance v1, Lcom/phicomm/speaker/player/exomedia/util/Repeater;

    invoke-direct {v1, p3}, Lcom/phicomm/speaker/player/exomedia/util/Repeater;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->updatePlayinfoRepeater:Lcom/phicomm/speaker/player/exomedia/util/Repeater;

    const/16 p3, 0x64

    .line 86
    invoke-virtual {v1, p3}, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->setRepeaterDelay(I)V

    .line 87
    iget-object p3, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->updatePlayinfoRepeater:Lcom/phicomm/speaker/player/exomedia/util/Repeater;

    new-instance v1, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$Lzm8MnSnZtuhaICoGHQlBkJGHH0;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$Lzm8MnSnZtuhaICoGHQlBkJGHH0;-><init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;)V

    invoke-virtual {p3, v1}, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->setRepeatListener(Lcom/phicomm/speaker/player/exomedia/util/Repeater$RepeatListener;)V

    .line 88
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->context:Landroid/content/Context;

    .line 92
    new-instance p3, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-direct {p3, p1}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    if-eqz p2, :cond_5f

    const/4 v0, 0x2

    .line 93
    :cond_5f
    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->setExtensionRendererMode(I)Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    move-result-object p2

    const/4 p3, 0x1

    .line 98
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->setEnableDecoderFallback(Z)Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    move-result-object p2

    .line 100
    new-instance p3, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-direct {p3, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-virtual {p3, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setWakeMode(I)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object p1

    .line 102
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setRenderersFactory(Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object p1

    new-instance p2, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;-><init>()V

    const/16 p3, 0x2710

    const/16 v0, 0x3a98

    const/16 v1, 0x7d0

    .line 104
    invoke-virtual {p2, p3, v0, v1, v1}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->setBufferDurationsMs(IIII)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    move-result-object p2

    .line 110
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->build()Lcom/google/android/exoplayer2/DefaultLoadControl;

    move-result-object p2

    .line 103
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setLoadControl(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 112
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/ExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->bufferUpdateListener:Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;

    return-object p0
.end method

.method public static synthetic lambda$Lzm8MnSnZtuhaICoGHQlBkJGHH0(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->updatePlayInfo()V

    return-void
.end method

.method private static mapRendererType(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;I)V
    .registers 3

    .line 76
    :try_start_0
    sget-object v0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->RendererType_list:[I

    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->ordinal()I

    move-result p0

    aput p1, v0, p0
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method

.method private reportPlayerState()V
    .registers 7

    .line 495
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    .line 496
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getPlaybackState()I

    move-result v1

    .line 497
    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    invoke-virtual {v2, v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->getState(ZI)I

    move-result v2

    .line 498
    iget-object v3, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    invoke-virtual {v3}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->getMostRecentState()I

    move-result v3

    if-eq v2, v3, :cond_64

    .line 499
    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    invoke-virtual {v2, v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->setMostRecentState(ZI)V

    .line 500
    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    const/4 v3, 0x3

    new-array v4, v3, [I

    fill-array-data v4, :array_66

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->matchesHistory([IZ)Z

    move-result v2

    if-nez v2, :cond_49

    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    new-array v3, v3, [I

    fill-array-data v3, :array_70

    .line 501
    invoke-virtual {v2, v3, v5}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->matchesHistory([IZ)Z

    move-result v2

    if-nez v2, :cond_49

    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_7a

    .line 502
    invoke-virtual {v2, v3, v5}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->matchesHistory([IZ)Z

    move-result v2

    if-eqz v2, :cond_48

    goto :goto_49

    :cond_48
    const/4 v5, 0x0

    .line 503
    :cond_49
    :goto_49
    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4f
    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;

    .line 504
    invoke-interface {v3, v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;->onStateChanged(ZI)V

    if-eqz v5, :cond_4f

    .line 506
    invoke-interface {v3}, Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;->onSeekComplete()V

    goto :goto_4f

    :cond_64
    return-void

    nop

    :array_66
    .array-data 4
        0x64
        0x2
        0x3
    .end array-data

    :array_70
    .array-data 4
        0x2
        0x64
        0x3
    .end array-data

    :array_7a
    .array-data 4
        0x64
        0x3
        0x2
        0x3
    .end array-data
.end method

.method private resetAndPrepare(Ljava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->currentFormat:Lcom/google/android/exoplayer2/Format;

    .line 215
    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->currentMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 216
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->playerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$nidRO8beXcfsps9G81i1uf4KfJ0;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$nidRO8beXcfsps9G81i1uf4KfJ0;-><init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private resetPlayInfo()V
    .registers 3

    const/4 v0, 0x0

    .line 408
    iput v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->bufferedPercentage:I

    const-wide/16 v0, 0x0

    .line 409
    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->duration:J

    .line 410
    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->position:J

    return-void
.end method

.method private setUpdatePlayinfoRepeaterStarted(Z)V
    .registers 2

    if-eqz p1, :cond_8

    .line 514
    iget-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->updatePlayinfoRepeater:Lcom/phicomm/speaker/player/exomedia/util/Repeater;

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->start()V

    goto :goto_d

    .line 516
    :cond_8
    iget-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->updatePlayinfoRepeater:Lcom/phicomm/speaker/player/exomedia/util/Repeater;

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->stop()V

    :goto_d
    return-void
.end method

.method private updatePlayInfo()V
    .registers 3

    .line 402
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getBufferedPercentage()I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->bufferedPercentage:I

    .line 403
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->duration:J

    .line 404
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->position:J

    return-void
.end method


# virtual methods
.method public Format()Lcom/alibaba/fastjson/JSONObject;
    .registers 4

    .line 183
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->currentFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 187
    :cond_6
    :try_start_6
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_13

    const-string v2, "initializationData"

    .line 189
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_6 .. :try_end_13} :catch_14

    :cond_13
    return-object v0

    :catch_14
    return-object v1
.end method

.method public MediaMetadata()Ljava/lang/Object;
    .registers 4

    .line 198
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->currentMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 202
    :cond_6
    :try_start_6
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_13

    const-string v2, "artworkData"

    .line 204
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_6 .. :try_end_13} :catch_14

    :cond_13
    return-object v0

    :catch_14
    return-object v1
.end method

.method public addListener(Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 250
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public blockingClearSurface()V
    .registers 4

    .line 282
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_7

    .line 283
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_7
    const/4 v0, 0x0

    .line 285
    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->surface:Landroid/view/Surface;

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 286
    invoke-virtual {p0, v1, v2, v0, v2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->sendMessage(IILjava/lang/Object;Z)V

    return-void
.end method

.method public forcePrepare()V
    .registers 2

    const/4 v0, 0x0

    .line 304
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->prepared:Z

    return-void
.end method

.method public getAudioSessionId()I
    .registers 2

    .line 376
    iget v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->audioSessionId:I

    return v0
.end method

.method public getBufferedPercentage()I
    .registers 2

    .line 393
    iget v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->bufferedPercentage:I

    return v0
.end method

.method public getCurrentPosition()J
    .registers 3

    .line 385
    iget-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->position:J

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    .line 389
    iget-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->duration:J

    return-wide v0
.end method

.method protected getExoPlayerTrackType(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;)I
    .registers 3

    .line 438
    sget-object v0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->RendererType_list:[I

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    const/4 v0, 0x2

    if-eq p1, v0, :cond_18

    const/4 v0, 0x3

    if-eq p1, v0, :cond_18

    const/4 v0, 0x4

    if-eq p1, v0, :cond_16

    const/4 p1, -0x1

    return p1

    :cond_16
    const/4 p1, 0x5

    return p1

    :cond_18
    return v0
.end method

.method public getPlayWhenReady()Z
    .registers 2

    .line 397
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->isPlaying:Z

    return v0
.end method

.method public getPlaybackState()I
    .registers 2

    .line 372
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public synthetic lambda$resetAndPrepare$0$ExoMediaPlayer(Ljava/lang/Runnable;)V
    .registers 4

    .line 217
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 218
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->prepared:Z

    const-wide/16 v0, 0x64

    .line 220
    :try_start_8
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_13

    .line 222
    :catch_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 224
    :goto_13
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->prepare()V

    return-void
.end method

.method public synthetic lambda$seekTo$8$ExoMediaPlayer(J)V
    .registers 4

    .line 342
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(J)V

    .line 343
    iget-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->isLastReportedPlayWhenReady()Z

    move-result p2

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->setMostRecentState(ZI)V

    return-void
.end method

.method public synthetic lambda$setMediaItem$1$ExoMediaPlayer(Lcom/google/android/exoplayer2/MediaItem;)V
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    return-void
.end method

.method public synthetic lambda$setMediaItem$2$ExoMediaPlayer(Lcom/google/android/exoplayer2/MediaItem;J)V
    .registers 5

    .line 233
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;J)V

    return-void
.end method

.method public synthetic lambda$setMediaItem$3$ExoMediaPlayer(Lcom/google/android/exoplayer2/MediaItem;Z)V
    .registers 4

    .line 237
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;Z)V

    return-void
.end method

.method public synthetic lambda$setMediaSource$4$ExoMediaPlayer(Lcom/google/android/exoplayer2/source/MediaSource;J)V
    .registers 5

    .line 241
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;J)V

    return-void
.end method

.method public synthetic lambda$setMediaSource$5$ExoMediaPlayer(Lcom/google/android/exoplayer2/source/MediaSource;Z)V
    .registers 4

    .line 245
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    return-void
.end method

.method public synthetic lambda$setPlayWhenReady$7$ExoMediaPlayer(Z)V
    .registers 3

    .line 335
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 336
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method public synthetic lambda$stop$6$ExoMediaPlayer()V
    .registers 3

    .line 321
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_f

    .line 322
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 324
    :cond_f
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->stop()V

    return-void
.end method

.method public synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public synthetic onAudioSessionIdChanged(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAudioSessionIdChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public synthetic onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/text/CueGroup;)V

    return-void
.end method

.method public synthetic onCues(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/Player$Listener;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceInfoChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(IZ)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;IZ)V

    return-void
.end method

.method public synthetic onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onEvents(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V

    return-void
.end method

.method public onFormat(Lcom/google/android/exoplayer2/Format;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->currentFormat:Lcom/google/android/exoplayer2/Format;

    return-void
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onMaxSeekToPreviousPositionChanged(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public onMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 5

    .line 124
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->currentMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 125
    iget-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;

    const/4 v1, 0x1

    const/16 v2, 0x64

    .line 126
    invoke-interface {v0, v1, v2}, Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;->onStateChanged(ZI)V

    goto :goto_8

    :cond_1b
    return-void
.end method

.method public onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 2

    return-void
.end method

.method public synthetic onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMetadata(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .registers 3

    .line 147
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->isPlaying:Z

    .line 148
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setUpdatePlayinfoRepeaterStarted(Z)V

    .line 149
    iget-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->getAudioFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->onFormat(Lcom/google/android/exoplayer2/Format;)V

    .line 150
    iget-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->getMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->onMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 2

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .registers 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 138
    invoke-direct {p0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->updatePlayInfo()V

    .line 140
    :cond_6
    invoke-direct {p0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->reportPlayerState()V

    .line 141
    iget-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->getAudioFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->onFormat(Lcom/google/android/exoplayer2/Format;)V

    .line 142
    iget-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->getMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->onMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 4

    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->isPlaying:Z

    .line 171
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setUpdatePlayinfoRepeaterStarted(Z)V

    .line 172
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;

    .line 173
    invoke-interface {v1, p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;->onError(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Ljava/lang/Exception;)V

    goto :goto_c

    :cond_1c
    return-void
.end method

.method public synthetic onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayerErrorChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .registers 3

    return-void
.end method

.method public synthetic onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame()V
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onRenderedFirstFrame(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .registers 2

    return-void
.end method

.method public synthetic onSeekBackIncrementChanged(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekBackIncrementChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public synthetic onSeekForwardIncrementChanged(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekForwardIncrementChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public synthetic onSeekProcessed()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .registers 2

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/Player$Listener;II)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Tracks;)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method

.method public synthetic onVolumeChanged(F)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;F)V

    return-void
.end method

.method public prepare()V
    .registers 3

    .line 308
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->prepared:Z

    if-nez v0, :cond_1c

    .line 309
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->renderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 312
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->reset()V

    .line 313
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare()V

    const/4 v0, 0x1

    .line 314
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->prepared:Z

    .line 315
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1c
    return-void
.end method

.method public release()V
    .registers 6

    const/4 v0, 0x0

    .line 360
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setUpdatePlayinfoRepeaterStarted(Z)V

    .line 361
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v1, 0x0

    .line 362
    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->surface:Landroid/view/Surface;

    .line 363
    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->playerHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$wXDyyXMPnyx32McCtXOArl_W5zc;

    invoke-direct {v4, v3}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$wXDyyXMPnyx32McCtXOArl_W5zc;-><init>(Lcom/google/android/exoplayer2/ExoPlayer;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 364
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stayAwake(Z)V

    .line 365
    invoke-direct {p0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->resetPlayInfo()V

    .line 366
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->isPlaying:Z

    .line 367
    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->currentFormat:Lcom/google/android/exoplayer2/Format;

    .line 368
    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->currentMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    return-void
.end method

.method public removeListener(Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 256
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public restart()Z
    .registers 5

    .line 348
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/4 v2, 0x4

    if-eq v0, v2, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    const-wide/16 v2, 0x0

    .line 352
    invoke-virtual {p0, v2, v3}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->seekTo(J)V

    .line 353
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setPlayWhenReady(Z)V

    .line 354
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->forcePrepare()V

    .line 355
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->prepare()V

    return v1
.end method

.method public seekTo(J)V
    .registers 5

    .line 341
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->playerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$OTgAjulbQfT1Y1vHxU2M2wGX9GA;

    invoke-direct {v1, p0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$OTgAjulbQfT1Y1vHxU2M2wGX9GA;-><init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected sendMessage(IILjava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    .line 453
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->sendMessage(IILjava/lang/Object;Z)V

    return-void
.end method

.method protected sendMessage(IILjava/lang/Object;Z)V
    .registers 9

    .line 457
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->renderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 460
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 461
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->renderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Renderer;

    .line 462
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v3

    if-ne v3, p1, :cond_14

    .line 463
    iget-object v3, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v2

    .line 464
    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v2

    .line 465
    invoke-virtual {v2, p3}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v2

    .line 466
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v2

    .line 463
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_3c
    if-eqz p4, :cond_5e

    const/4 p1, 0x0

    .line 471
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_43
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_55

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/PlayerMessage;

    .line 473
    :try_start_4f
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/PlayerMessage;->blockUntilDelivered()Z
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_43

    :catch_53
    const/4 p1, 0x1

    goto :goto_43

    :cond_55
    if-eqz p1, :cond_5e

    .line 479
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_5e
    return-void
.end method

.method public setAudioStreamType(IZ)V
    .registers 5

    .line 294
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->getAudioUsageForStreamType(I)I

    move-result v0

    .line 295
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->getAudioContentTypeForStreamType(I)I

    move-result p1

    .line 296
    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;-><init>()V

    .line 297
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->setUsage(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    move-result-object v0

    .line 298
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->setContentType(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    move-result-object p1

    .line 299
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->build()Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object p1

    .line 300
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V

    return-void
.end method

.method public setCaptionListener(Lcom/phicomm/speaker/player/exomedia/core/listener/CaptionListener;)V
    .registers 2

    .line 265
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->captionListener:Lcom/phicomm/speaker/player/exomedia/core/listener/CaptionListener;

    return-void
.end method

.method public setInternalErrorListener(Lcom/phicomm/speaker/player/exomedia/core/listener/InternalErrorListener;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->internalErrorListener:Lcom/phicomm/speaker/player/exomedia/core/listener/InternalErrorListener;

    return-void
.end method

.method public setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V
    .registers 3

    .line 229
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$_CMvxbAjCS8IRcsILKyZooUMzHU;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$_CMvxbAjCS8IRcsILKyZooUMzHU;-><init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Lcom/google/android/exoplayer2/MediaItem;)V

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->resetAndPrepare(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMediaItem(Lcom/google/android/exoplayer2/MediaItem;J)V
    .registers 5

    .line 233
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$gUTdTmBKEIqlt5DyamOp1jWO9sw;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$gUTdTmBKEIqlt5DyamOp1jWO9sw;-><init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Lcom/google/android/exoplayer2/MediaItem;J)V

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->resetAndPrepare(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMediaItem(Lcom/google/android/exoplayer2/MediaItem;Z)V
    .registers 4

    .line 237
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$_ce_q99EBNtK1PARsv1sviX6Ai0;

    invoke-direct {v0, p0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$_ce_q99EBNtK1PARsv1sviX6Ai0;-><init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Lcom/google/android/exoplayer2/MediaItem;Z)V

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->resetAndPrepare(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;J)V
    .registers 5

    .line 241
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$UfOeFrXt_Cif1w42mz-sRSGntGo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$UfOeFrXt_Cif1w42mz-sRSGntGo;-><init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Lcom/google/android/exoplayer2/source/MediaSource;J)V

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->resetAndPrepare(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V
    .registers 4

    .line 245
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$__Q2KiZM_n5OqdG0wUAbODeyY-U;

    invoke-direct {v0, p0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$__Q2KiZM_n5OqdG0wUAbODeyY-U;-><init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->resetAndPrepare(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMetadataListener(Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;)V
    .registers 2

    .line 269
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->metadataListener:Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .registers 4

    .line 334
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->playerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$dZSZXT3smrx9pgZrzF_ZyYCR0Ak;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$dZSZXT3smrx9pgZrzF_ZyYCR0Ak;-><init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPlaybackSpeed(F)Z
    .registers 5

    .line 380
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v1, Lcom/google/android/exoplayer2/PlaybackParameters;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, p1, v2}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setSurface(Landroid/view/Surface;)V
    .registers 5

    .line 273
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->surface:Landroid/view/Surface;

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 274
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->sendMessage(IILjava/lang/Object;Z)V

    return-void
.end method

.method public setVolume(F)V
    .registers 4

    .line 290
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .registers 8

    .line 415
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 416
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 418
    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    const/4 v2, 0x0

    .line 420
    iput-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 423
    :goto_18
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.permission.WAKE_LOCK"

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v3, "ExoMediaPlayer_ExoPlayer"

    if-nez v2, :cond_4d

    const-string v2, "power"

    .line 424
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    if-eqz p1, :cond_47

    const/high16 v2, 0x20000000

    or-int/2addr p2, v2

    .line 426
    const-class v2, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 427
    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    goto :goto_52

    :cond_47
    const-string p1, "Unable to acquire WAKE_LOCK due to a null power manager"

    .line 429
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    :cond_4d
    const-string p1, "Unable to acquire WAKE_LOCK due to missing manifest permission"

    .line 432
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :goto_52
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method protected stayAwake(Z)V
    .registers 4

    .line 485
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_23

    if-eqz p1, :cond_14

    .line 486
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_14

    .line 487
    iget-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_23

    :cond_14
    if-nez p1, :cond_23

    .line 488
    iget-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 489
    iget-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_23
    :goto_23
    return-void
.end method

.method public stop()V
    .registers 3

    .line 320
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->playerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$bFMH55rLKLk_MpqP4yrlT0bmCCw;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$bFMH55rLKLk_MpqP4yrlT0bmCCw;-><init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 326
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->isPlaying:Z

    const/4 v1, 0x0

    .line 327
    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->currentFormat:Lcom/google/android/exoplayer2/Format;

    .line 328
    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->currentMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 329
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setUpdatePlayinfoRepeaterStarted(Z)V

    .line 330
    invoke-direct {p0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->resetPlayInfo()V

    return-void
.end method
