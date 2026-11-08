.class Lcom/phicomm/speaker/player/model/AudioPlayer$1;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/AudioPlayer;)V
    .registers 2

    .prologue
    .line 605
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 7
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 610
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    # setter for: Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerPrepared:Z
    invoke-static {v0, v4}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$002(Lcom/phicomm/speaker/player/model/AudioPlayer;Z)Z

    .line 611
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    sget-object v1, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PREPARED:Lcom/phicomm/speaker/player/model/PlayState;

    # setter for: Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$102(Lcom/phicomm/speaker/player/model/AudioPlayer;Lcom/phicomm/speaker/player/model/PlayState;)Lcom/phicomm/speaker/player/model/PlayState;

    .line 612
    # getter for: Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mediaPlayerPrepared MediaPlayerState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;
    invoke-static {v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$100(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/model/PlayState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", NextMediaPlayerState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;
    invoke-static {v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$300(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/model/PlayState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$500(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/AudioPlayer;->onMediaPlayerCompleted:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$400(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 617
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerPausedWhenPreparing:Z
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$600(Lcom/phicomm/speaker/player/model/AudioPlayer;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 618
    # getter for: Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediaPlayerPrepared paused when preparing unable to init."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    # setter for: Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerPausedWhenPreparing:Z
    invoke-static {v0, v3}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$602(Lcom/phicomm/speaker/player/model/AudioPlayer;Z)Z

    .line 620
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    sget-object v1, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PAUSED:Lcom/phicomm/speaker/player/model/PlayState;

    # setter for: Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$102(Lcom/phicomm/speaker/player/model/AudioPlayer;Lcom/phicomm/speaker/player/model/PlayState;)Lcom/phicomm/speaker/player/model/PlayState;

    .line 632
    :cond_6a
    :goto_6a
    return-void

    .line 625
    :cond_6b
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    # invokes: Lcom/phicomm/speaker/player/model/AudioPlayer;->checkAndRequestAudioFocus()Z
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$700(Lcom/phicomm/speaker/player/model/AudioPlayer;)Z

    move-result v0

    if-ne v0, v4, :cond_6a

    .line 627
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/AudioPlayer;->mFirstRun:Z
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$800(Lcom/phicomm/speaker/player/model/AudioPlayer;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 628
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    # invokes: Lcom/phicomm/speaker/player/model/AudioPlayer;->startMediaPlayer()V
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$900(Lcom/phicomm/speaker/player/model/AudioPlayer;)V

    .line 629
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    # setter for: Lcom/phicomm/speaker/player/model/AudioPlayer;->mFirstRun:Z
    invoke-static {v0, v3}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$802(Lcom/phicomm/speaker/player/model/AudioPlayer;Z)Z

    goto :goto_6a
.end method
