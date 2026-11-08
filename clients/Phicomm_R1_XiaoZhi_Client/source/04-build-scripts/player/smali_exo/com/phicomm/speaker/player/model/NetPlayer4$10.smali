.class Lcom/phicomm/speaker/player/model/NetPlayer4$10;
.super Ljava/lang/Object;
.source "NetPlayer4.java"

# interfaces
.implements Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/NetPlayer4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/NetPlayer4;)V
    .registers 2

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$10;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)V
    .registers 4
    .param p1, "mediaPlayer"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .prologue
    .line 1082
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$10;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    # getter for: Lcom/phicomm/speaker/player/model/NetPlayer4;->playCompletedTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->access$1100(Lcom/phicomm/speaker/player/model/NetPlayer4;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1083
    return-void
.end method
