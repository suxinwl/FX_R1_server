.class Lcom/phicomm/speaker/player/model/MultiMediaPlayer$4;
.super Ljava/lang/Object;
.source "MultiMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/MultiMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)V
    .registers 2

    .prologue
    .line 933
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 937
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    monitor-enter v1

    .line 938
    :try_start_3
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    sget-object v2, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PLAYBACK_COMPLETED:Lcom/phicomm/speaker/player/model/PlayState;

    # setter for: Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;
    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$302(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;Lcom/phicomm/speaker/player/model/PlayState;)Lcom/phicomm/speaker/player/model/PlayState;

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " onNextMediaPlayerCompleted MediaPlayerState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;
    invoke-static {v2}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$100(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/PlayState;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", NextMediaPlayerState:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;
    invoke-static {v2}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$300(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/PlayState;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 941
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentMediaPlayerIndex:I
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$700(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_64

    .line 942
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    # invokes: Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopPlayUrlAddressValidMonitor()V
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$1600(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)V

    .line 943
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mOnCompletionListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$1700(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 944
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mOnCompletionListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$1700(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-interface {v0, v2}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnCompletionListener;->onCompletion(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)V

    .line 949
    :cond_62
    :goto_62
    monitor-exit v1

    .line 950
    return-void

    .line 947
    :cond_64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " CurrentMediaPlayer is not Completed nextPlayer."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_62

    .line 949
    :catchall_82
    move-exception v0

    monitor-exit v1
    :try_end_84
    .catchall {:try_start_3 .. :try_end_84} :catchall_82

    throw v0
.end method
