.class public Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;
.super Ljava/lang/Object;
.source "NativeVideoDelegate.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalListeners"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;)V
    .registers 2

    .prologue
    .line 358
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 362
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    iput p2, v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->currentBufferPercent:I

    .line 363
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->onBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    if-eqz v0, :cond_11

    .line 364
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->onBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    .line 366
    :cond_11
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    sget-object v1, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->COMPLETED:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object v1, v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 371
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_17

    .line 372
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v1, v1, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 374
    :cond_17
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 385
    const-string v0, "ContentValues"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    sget-object v1, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->ERROR:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object v1, v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 388
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v1, v1, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_3c
    const/4 v0, 0x1

    :goto_3d
    return v0

    :cond_3e
    const/4 v0, 0x0

    goto :goto_3d
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 412
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    sget-object v1, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;->PREPARED:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object v1, v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 395
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_17

    .line 396
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v1, v1, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 399
    :cond_17
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->callback:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$Callback;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$Callback;->videoSizeChanged(II)V

    .line 401
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    iget-wide v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->requestedSeek:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_39

    .line 402
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    iget-wide v2, v1, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->requestedSeek:J

    invoke-virtual {v0, v2, v3}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->seekTo(J)V

    .line 405
    :cond_39
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    iget-boolean v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->playRequested:Z

    if-eqz v0, :cond_44

    .line 406
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->start()V

    .line 408
    :cond_44
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->onSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    if-eqz v0, :cond_d

    .line 379
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->onSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 381
    :cond_d
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 417
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->this$0:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate;->callback:Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$Callback;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/phicomm/speaker/player/exomedia/core/video/mp/NativeVideoDelegate$Callback;->videoSizeChanged(II)V

    .line 418
    return-void
.end method
