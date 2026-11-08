.class Lcom/phicomm/speaker/player/exomedia/AudioPlayer$MuxNotifier;
.super Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/exomedia/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MuxNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/exomedia/AudioPlayer;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/player/exomedia/AudioPlayer;)V
    .registers 2

    .prologue
    .line 381
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer$MuxNotifier;->this$0:Lcom/phicomm/speaker/player/exomedia/AudioPlayer;

    invoke-direct {p0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/player/exomedia/AudioPlayer;Lcom/phicomm/speaker/player/exomedia/AudioPlayer$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/phicomm/speaker/player/exomedia/AudioPlayer;
    .param p2, "x1"    # Lcom/phicomm/speaker/player/exomedia/AudioPlayer$1;

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/exomedia/AudioPlayer$MuxNotifier;-><init>(Lcom/phicomm/speaker/player/exomedia/AudioPlayer;)V

    return-void
.end method


# virtual methods
.method public onExoPlayerError(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Ljava/lang/Exception;)V
    .registers 4
    .param p1, "exoMediaPlayer"    # Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer$MuxNotifier;->this$0:Lcom/phicomm/speaker/player/exomedia/AudioPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->stopPlayback()V

    .line 393
    if-eqz p1, :cond_a

    .line 394
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->forcePrepare()V

    .line 396
    :cond_a
    return-void
.end method

.method public onMediaPlaybackEnded()V
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer$MuxNotifier;->this$0:Lcom/phicomm/speaker/player/exomedia/AudioPlayer;

    # invokes: Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->onPlaybackEnded()V
    invoke-static {v0}, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->access$100(Lcom/phicomm/speaker/player/exomedia/AudioPlayer;)V

    .line 401
    return-void
.end method

.method public onPrepared()V
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer$MuxNotifier;->this$0:Lcom/phicomm/speaker/player/exomedia/AudioPlayer;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;->onMediaPrepared()V

    .line 406
    return-void
.end method

.method public shouldNotifyCompletion(J)Z
    .registers 12
    .param p1, "endLeeway"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 384
    iget-object v4, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer$MuxNotifier;->this$0:Lcom/phicomm/speaker/player/exomedia/AudioPlayer;

    invoke-virtual {v4}, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->getCurrentPosition()J

    move-result-wide v2

    .line 385
    .local v2, "position":J
    iget-object v4, p0, Lcom/phicomm/speaker/player/exomedia/AudioPlayer$MuxNotifier;->this$0:Lcom/phicomm/speaker/player/exomedia/AudioPlayer;

    invoke-virtual {v4}, Lcom/phicomm/speaker/player/exomedia/AudioPlayer;->getDuration()J

    move-result-wide v0

    .line 386
    .local v0, "duration":J
    cmp-long v4, v2, v6

    if-lez v4, :cond_1e

    cmp-long v4, v0, v6

    if-lez v4, :cond_1e

    add-long v4, v2, p1

    cmp-long v4, v4, v0

    if-ltz v4, :cond_1e

    const/4 v4, 0x1

    :goto_1d
    return v4

    :cond_1e
    const/4 v4, 0x0

    goto :goto_1d
.end method
