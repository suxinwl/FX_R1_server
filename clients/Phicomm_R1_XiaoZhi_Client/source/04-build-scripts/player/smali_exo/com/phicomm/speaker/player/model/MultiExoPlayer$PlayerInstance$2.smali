.class Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)V
    .registers 2

    .line 448
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Ljava/lang/Exception;)V
    .registers 8

    .line 451
    move-object p1, p2

    check-cast p1, Lcom/google/android/exoplayer2/PlaybackException;

    .line 452
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->isBuffering:Z
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$500(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # setter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->isBuffering:Z
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$502(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;Z)Z

    .line 454
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",onError SongPos:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->songPos:I
    invoke-static {v2}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$600(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " PlaybackException:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlaybackException;->getErrorCodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # setter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->urlLoaded:Z
    invoke-static {p1, v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$702(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;Z)Z

    .line 457
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    iget-object v0, p1, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget v0, v0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->STATE_ERROR:I

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setPlayerState(I)V

    .line 458
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getBufferProgress()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9b

    const/16 v0, 0x63

    if-ge p1, v0, :cond_9b

    .line 461
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->errorCount:I
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$800(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)I

    move-result p1

    if-lez p1, :cond_87

    .line 462
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->noFlac:Z
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$900(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Z

    move-result p1

    if-nez p1, :cond_81

    .line 463
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # setter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->errorCount:I
    invoke-static {p1, v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$802(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;I)I

    .line 464
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    const/4 v0, 0x1

    # setter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->noFlac:Z
    invoke-static {p1, v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$902(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;Z)Z

    goto :goto_8c

    .line 466
    :cond_81
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # operator++ for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->errorCount:I
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$808(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)I

    goto :goto_8c

    .line 469
    :cond_87
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # operator++ for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->errorCount:I
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$808(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)I

    .line 471
    :goto_8c
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->errorCount:I
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$800(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_9b

    .line 472
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # invokes: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->reloadUrl()V
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$1000(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)V

    return-void

    .line 477
    :cond_9b
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->multiLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$1100(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 478
    :try_start_a2
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$300(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_108

    .line 479
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    iget-object v0, v0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object v0, v0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->listenerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_b1
    .catchall {:try_start_a2 .. :try_end_b1} :catchall_10a

    .line 480
    :try_start_b1
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "Unexpected decode error"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const-wide/16 v2, 0x3e8

    if-eqz p2, :cond_d4

    .line 481
    iget-object p2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;
    invoke-static {p2}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$300(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    move-result-object p2

    iget-object p2, p2, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnCompletionListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnCompletionListener;

    if-eqz p2, :cond_103

    .line 482
    iget-object p2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->uiHandler:Landroid/os/Handler;
    invoke-static {p2}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$1200(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Landroid/os/Handler;

    move-result-object p2

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_103

    .line 485
    :cond_d4
    iget-object p2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;
    invoke-static {p2}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$300(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    move-result-object p2

    iget-object p2, p2, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnErrorListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnErrorListener;

    if-eqz p2, :cond_103

    .line 486
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",onError OnErrorListener:sendEmptyMessageDelayed"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v1}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    iget-object p2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    iget-object p2, p2, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object p2, p2, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mHandler:Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;

    const/16 v1, 0xc

    invoke-virtual {p2, v1, v2, v3}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 490
    :cond_103
    :goto_103
    monitor-exit v0

    goto :goto_108

    :catchall_105
    move-exception p2

    monitor-exit v0
    :try_end_107
    .catchall {:try_start_b1 .. :try_end_107} :catchall_105

    :try_start_107
    throw p2

    .line 492
    :cond_108
    :goto_108
    monitor-exit p1

    return-void

    :catchall_10a
    move-exception p2

    monitor-exit p1
    :try_end_10c
    .catchall {:try_start_107 .. :try_end_10c} :catchall_10a

    throw p2
.end method

.method public onSeekComplete()V
    .registers 4

    .line 579
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    const/4 v1, 0x0

    # setter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->seeking:Z
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$1502(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;Z)Z

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",onSeekComplete, SongPos:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->songPos:I
    invoke-static {v2}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$600(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStateChanged(ZI)V
    .registers 11

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",onStateChanged:PlayWhenReady:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",PlaybackState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",SongPos:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->songPos:I
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$600(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x64

    if-eq p2, p1, :cond_3d

    .line 498
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    invoke-virtual {v1, p2}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setPlayerState(I)V

    .line 503
    :cond_3d
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->multiLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$1100(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 504
    :try_start_44
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;
    invoke-static {v2}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$300(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_71

    .line 505
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    iget-object v2, v2, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object v2, v2, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->listenerLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_54
    .catchall {:try_start_44 .. :try_end_54} :catchall_1b2

    .line 506
    :try_start_54
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;
    invoke-static {v3}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$300(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    move-result-object v3

    iget-object v3, v3, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnInfoListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnInfoListener;

    .line 507
    iget-object v4, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;
    invoke-static {v4}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$300(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    move-result-object v4

    iget-object v4, v4, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnPreparedListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPreparedListener;

    .line 508
    iget-object v5, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;
    invoke-static {v5}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$300(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    move-result-object v5

    iget-object v5, v5, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnCompletionListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnCompletionListener;

    .line 509
    monitor-exit v2

    goto :goto_73

    :catchall_6e
    move-exception p1

    monitor-exit v2
    :try_end_70
    .catchall {:try_start_54 .. :try_end_70} :catchall_6e

    :try_start_70
    throw p1

    :cond_71
    move-object v4, v3

    move-object v5, v4

    .line 511
    :goto_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_1b2

    const/16 v1, 0x2be

    const/4 v2, -0x1

    const/4 v6, 0x1

    if-eq p2, v6, :cond_199

    const/4 v7, 0x2

    if-eq p2, v7, :cond_17c

    const/4 v7, 0x3

    if-eq p2, v7, :cond_c3

    const/4 v4, 0x4

    if-eq p2, v4, :cond_8e

    if-eq p2, p1, :cond_87

    goto/16 :goto_1b1

    .line 568
    :cond_87
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->sendApiData()V

    goto/16 :goto_1b1

    .line 556
    :cond_8e
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->resetFlag:Z
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$1300(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Z

    move-result p1

    if-eqz p1, :cond_97

    return-void

    .line 557
    :cond_97
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->isBuffering:Z
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$500(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Z

    move-result p1

    if-eqz p1, :cond_af

    .line 558
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # setter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->isBuffering:Z
    invoke-static {p1, v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$502(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;Z)Z

    if-eqz v3, :cond_af

    .line 559
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$300(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    move-result-object p1

    invoke-interface {v3, p1, v1, v2}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnInfoListener;->onInfo(Lcom/phicomm/speaker/player/model/MultiExoPlayer;II)Z

    :cond_af
    const-wide/16 p1, 0xc8

    .line 562
    :try_start_b1
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b4
    .catch Ljava/lang/InterruptedException; {:try_start_b1 .. :try_end_b4} :catch_b5

    goto :goto_b6

    :catch_b5
    nop

    :goto_b6
    if-eqz v5, :cond_1b1

    .line 565
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$300(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    move-result-object p1

    invoke-interface {v5, p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnCompletionListener;->onCompletion(Lcom/phicomm/speaker/player/model/MultiExoPlayer;)V

    goto/16 :goto_1b1

    .line 527
    :cond_c3
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # setter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->resetFlag:Z
    invoke-static {p1, v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$1302(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;Z)Z

    .line 530
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->isBuffering:Z
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$500(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Z

    move-result p1

    if-eqz p1, :cond_e0

    .line 531
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # setter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->isBuffering:Z
    invoke-static {p1, v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$502(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;Z)Z

    if-eqz v3, :cond_e0

    .line 532
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$300(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    move-result-object p1

    invoke-interface {v3, p1, v1, v2}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnInfoListener;->onInfo(Lcom/phicomm/speaker/player/model/MultiExoPlayer;II)Z

    :cond_e0
    if-eqz v4, :cond_eb

    .line 534
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$300(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPreparedListener;->onPrepared(Lcom/phicomm/speaker/player/model/MultiExoPlayer;)Z

    .line 535
    :cond_eb
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getBufferProgress()I

    move-result p1

    if-ne p1, v2, :cond_f8

    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setBufferProgress(I)V

    .line 537
    :cond_f8
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # setter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->seeking:Z
    invoke-static {p1, v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$1502(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;Z)Z

    .line 538
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$300(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    move-result-object p1

    if-nez p1, :cond_115

    .line 539
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setPlayFlag(Z)V

    .line 540
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$000(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setPlayWhenReady(Z)V

    goto/16 :goto_1b1

    .line 541
    :cond_115
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->shouldPlay:Z
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$1600(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Z

    move-result p1

    const-wide/16 v1, -0x1

    if-nez p1, :cond_129

    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->startPosition:J
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$1700(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)J

    move-result-wide p1

    cmp-long v3, p1, v1

    if-eqz v3, :cond_1b1

    .line 542
    :cond_129
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->startPosition:J
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$1700(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)J

    move-result-wide p1

    .line 543
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",onStateChanged: is Play StartPosition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v0}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    cmp-long v0, p1, v1

    if-eqz v0, :cond_16d

    .line 545
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # setter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->startPosition:J
    invoke-static {v0, v1, v2}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$1702(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;J)J

    .line 546
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    invoke-virtual {v0, v6}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setPlayFlag(Z)V

    .line 547
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$000(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setPlayWhenReady(Z)V

    .line 548
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$000(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->seekTo(J)V

    goto :goto_1b1

    .line 550
    :cond_16d
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    invoke-virtual {p1, v6}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setPlayFlag(Z)V

    .line 551
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$000(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setPlayWhenReady(Z)V

    goto :goto_1b1

    .line 521
    :cond_17c
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # setter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->resetFlag:Z
    invoke-static {p1, v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$1302(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;Z)Z

    .line 522
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # setter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->playerBuffering:Z
    invoke-static {p1, v6}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$1402(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;Z)Z

    .line 523
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # setter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->isBuffering:Z
    invoke-static {p1, v6}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$502(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;Z)Z

    if-eqz v3, :cond_1b1

    .line 524
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$300(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    move-result-object p1

    const/16 p2, 0x2bd

    invoke-interface {v3, p1, p2, v2}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnInfoListener;->onInfo(Lcom/phicomm/speaker/player/model/MultiExoPlayer;II)Z

    goto :goto_1b1

    .line 515
    :cond_199
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->isBuffering:Z
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$500(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Z

    move-result p1

    if-eqz p1, :cond_1b1

    .line 516
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # setter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->isBuffering:Z
    invoke-static {p1, v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$502(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;Z)Z

    if-eqz v3, :cond_1b1

    .line 517
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$300(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    move-result-object p1

    invoke-interface {v3, p1, v1, v2}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnInfoListener;->onInfo(Lcom/phicomm/speaker/player/model/MultiExoPlayer;II)Z

    :cond_1b1
    :goto_1b1
    return-void

    :catchall_1b2
    move-exception p1

    .line 511
    :try_start_1b3
    monitor-exit v1
    :try_end_1b4
    .catchall {:try_start_1b3 .. :try_end_1b4} :catchall_1b2

    throw p1
.end method

.method public onVideoSizeChanged(IIIF)V
    .registers 5

    return-void
.end method
