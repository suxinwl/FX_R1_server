.class public Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;
.implements Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;
    }
.end annotation


# static fields
.field private static final COMPLETED_DURATION_LEEWAY:J = 0x3e8L


# instance fields
.field private bufferUpdateListener:Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;

.field private clearRequested:Z

.field private clearableSurfaceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;",
            ">;"
        }
    .end annotation
.end field

.field private completionListener:Lcom/phicomm/speaker/player/exomedia/listener/OnCompletionListener;

.field private delayedHandler:Landroid/os/Handler;

.field private errorListener:Lcom/phicomm/speaker/player/exomedia/listener/OnErrorListener;

.field private metadataListener:Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;

.field private muxNotifier:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;

.field private notifiedCompleted:Z

.field private notifiedPrepared:Z

.field private preparedListener:Lcom/phicomm/speaker/player/exomedia/listener/OnPreparedListener;

.field private seekCompletionListener:Lcom/phicomm/speaker/player/exomedia/listener/OnSeekCompletionListener;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->delayedHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->clearableSurfaceRef:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifiedPrepared:Z

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifiedCompleted:Z

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->clearRequested:Z

    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->muxNotifier:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;

    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;)V
    .registers 1

    invoke-direct {p0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->performPreparedHandlerNotification()V

    return-void
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;)Lcom/phicomm/speaker/player/exomedia/listener/OnCompletionListener;
    .registers 1

    iget-object p0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->completionListener:Lcom/phicomm/speaker/player/exomedia/listener/OnCompletionListener;

    return-object p0
.end method

.method private notifyCompletionListener()V
    .registers 4

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->muxNotifier:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;->shouldNotifyCompletion(J)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_18

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifiedCompleted:Z

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->delayedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$2;-><init>(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_18
    return-void
.end method

.method private notifyErrorListener(Ljava/lang/Exception;)Z
    .registers 3

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->errorListener:Lcom/phicomm/speaker/player/exomedia/listener/OnErrorListener;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/player/exomedia/listener/OnErrorListener;->onError(Ljava/lang/Exception;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private notifyPreparedListener()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifiedPrepared:Z

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->delayedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$1;-><init>(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private performPreparedHandlerNotification()V
    .registers 2

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->muxNotifier:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;->onPrepared()V

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->preparedListener:Lcom/phicomm/speaker/player/exomedia/listener/OnPreparedListener;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/phicomm/speaker/player/exomedia/listener/OnPreparedListener;->onPrepared()V

    :cond_c
    return-void
.end method


# virtual methods
.method public clearSurfaceWhenReady(Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->clearRequested:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->clearableSurfaceRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public isPrepared()Z
    .registers 2

    iget-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifiedPrepared:Z

    return v0
.end method

.method public onBufferingUpdate(I)V
    .registers 3

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->muxNotifier:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;->onBufferUpdated(I)V

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->bufferUpdateListener:Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;->onBufferingUpdate(I)V

    :cond_c
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 3

    invoke-virtual {p0, p2}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->onBufferingUpdate(I)V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 2

    iget-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->completionListener:Lcom/phicomm/speaker/player/exomedia/listener/OnCompletionListener;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/phicomm/speaker/player/exomedia/listener/OnCompletionListener;->onCompletion()V

    :cond_7
    return-void
.end method

.method public onError(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Ljava/lang/Exception;)V
    .registers 4

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->muxNotifier:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;->onMediaPlaybackEnded()V

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->muxNotifier:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;->onExoPlayerError(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Ljava/lang/Exception;)V

    invoke-direct {p0, p2}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifyErrorListener(Ljava/lang/Exception;)Z

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    new-instance p1, Lcom/phicomm/speaker/player/exomedia/core/exception/NativeMediaPlaybackException;

    invoke-direct {p1, p2, p3}, Lcom/phicomm/speaker/player/exomedia/core/exception/NativeMediaPlaybackException;-><init>(II)V

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifyErrorListener(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .registers 3

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->metadataListener:Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    :cond_7
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 2

    invoke-direct {p0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifyPreparedListener()V

    return-void
.end method

.method public onSeekComplete()V
    .registers 2

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->muxNotifier:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;->onSeekComplete()V

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->seekCompletionListener:Lcom/phicomm/speaker/player/exomedia/listener/OnSeekCompletionListener;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/phicomm/speaker/player/exomedia/listener/OnSeekCompletionListener;->onSeekComplete()V

    :cond_c
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 2

    iget-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->seekCompletionListener:Lcom/phicomm/speaker/player/exomedia/listener/OnSeekCompletionListener;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/phicomm/speaker/player/exomedia/listener/OnSeekCompletionListener;->onSeekComplete()V

    :cond_7
    return-void
.end method

.method public onStateChanged(ZI)V
    .registers 5

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-ne p2, v1, :cond_11

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->muxNotifier:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;->onMediaPlaybackEnded()V

    iget-boolean v1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifiedCompleted:Z

    if-nez v1, :cond_1a

    invoke-direct {p0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifyCompletionListener()V

    goto :goto_1a

    :cond_11
    if-ne p2, v0, :cond_1a

    iget-boolean v1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifiedPrepared:Z

    if-nez v1, :cond_1a

    invoke-direct {p0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifyPreparedListener()V

    :cond_1a
    :goto_1a
    const/4 v1, 0x0

    if-ne p2, v0, :cond_24

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->muxNotifier:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;->onPreviewImageStateChanged(Z)V

    :cond_24
    const/4 p1, 0x1

    if-ne p2, p1, :cond_42

    iget-boolean p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->clearRequested:Z

    if-eqz p1, :cond_42

    iput-boolean v1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->clearRequested:Z

    iget-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->clearableSurfaceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;

    if-eqz p1, :cond_42

    invoke-interface {p1}, Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;->clearSurface()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->clearableSurfaceRef:Ljava/lang/ref/WeakReference;

    :cond_42
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .registers 6

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->muxNotifier:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;->onVideoSizeChanged(IIIF)V

    return-void
.end method

.method public setMetadataListener(Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;)V
    .registers 2

    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->metadataListener:Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;

    return-void
.end method

.method public setNotifiedCompleted(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifiedCompleted:Z

    return-void
.end method

.method public setNotifiedPrepared(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifiedPrepared:Z

    iget-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->muxNotifier:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;->onPreviewImageStateChanged(Z)V

    return-void
.end method

.method public setOnBufferUpdateListener(Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;)V
    .registers 2

    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->bufferUpdateListener:Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Lcom/phicomm/speaker/player/exomedia/listener/OnCompletionListener;)V
    .registers 2

    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->completionListener:Lcom/phicomm/speaker/player/exomedia/listener/OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/phicomm/speaker/player/exomedia/listener/OnErrorListener;)V
    .registers 2

    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->errorListener:Lcom/phicomm/speaker/player/exomedia/listener/OnErrorListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/phicomm/speaker/player/exomedia/listener/OnPreparedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->preparedListener:Lcom/phicomm/speaker/player/exomedia/listener/OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompletionListener(Lcom/phicomm/speaker/player/exomedia/listener/OnSeekCompletionListener;)V
    .registers 2

    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->seekCompletionListener:Lcom/phicomm/speaker/player/exomedia/listener/OnSeekCompletionListener;

    return-void
.end method
