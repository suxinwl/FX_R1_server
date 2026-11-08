.class Lcom/phicomm/speaker/player/model/new_NetPlayer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPlayTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/new_NetPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/model/new_NetPlayer;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/new_NetPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingPauseTimeOut(Lcom/phicomm/speaker/player/model/MultiExoPlayer;)V
    .registers 3

    .line 140
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/new_NetPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/new_NetPlayer;->multiExoPlayerErrorTask:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->access$000(Lcom/phicomm/speaker/player/model/new_NetPlayer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPreParingTimeOut(Lcom/phicomm/speaker/player/model/MultiExoPlayer;)V
    .registers 3

    .line 145
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/new_NetPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/new_NetPlayer;->multiExoPlayerErrorTask:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->access$000(Lcom/phicomm/speaker/player/model/new_NetPlayer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUrlValidTimeOut(Lcom/phicomm/speaker/player/model/MultiExoPlayer;)V
    .registers 3

    .line 150
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/new_NetPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/new_NetPlayer;->urlValidTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->access$100(Lcom/phicomm/speaker/player/model/new_NetPlayer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
