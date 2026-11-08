.class Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/phicomm/speaker/player/exomedia/util/Repeater$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferRepeatListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;)V
    .registers 2

    .line 570
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepeat()V
    .registers 3

    .line 575
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    # getter for: Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->bufferUpdateListener:Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;
    invoke-static {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->access$100(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 576
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    # getter for: Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->bufferUpdateListener:Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;
    invoke-static {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->access$100(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getBufferedPercentage()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;->onBufferingUpdate(I)V

    :cond_17
    return-void
.end method
