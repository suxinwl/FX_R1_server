.class Lcom/phicomm/speaker/player/MsgHandler$MessageHandler$1;
.super Ljava/lang/Object;
.source "MsgHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;

.field final synthetic val$requestMessage:Lcom/phicomm/speaker/player/model/RequestMessage;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;Lcom/phicomm/speaker/player/model/RequestMessage;)V
    .registers 3

    .prologue
    .line 80
    iput-object p1, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler$1;->this$1:Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;

    iput-object p2, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler$1;->val$requestMessage:Lcom/phicomm/speaker/player/model/RequestMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler$1;->val$requestMessage:Lcom/phicomm/speaker/player/model/RequestMessage;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler$1;->this$1:Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;

    iget-object v1, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler$1;->val$requestMessage:Lcom/phicomm/speaker/player/model/RequestMessage;

    # invokes: Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->handlePlayMessage(Lcom/phicomm/speaker/player/model/RequestMessage;)V
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->access$400(Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;Lcom/phicomm/speaker/player/model/RequestMessage;)V

    .line 90
    :cond_10
    :goto_10
    return-void

    .line 85
    :cond_11
    iget-object v0, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler$1;->val$requestMessage:Lcom/phicomm/speaker/player/model/RequestMessage;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestType()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_23

    .line 86
    iget-object v0, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler$1;->this$1:Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;

    iget-object v1, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler$1;->val$requestMessage:Lcom/phicomm/speaker/player/model/RequestMessage;

    # invokes: Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->handleBtMessage(Lcom/phicomm/speaker/player/model/RequestMessage;)V
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->access$500(Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;Lcom/phicomm/speaker/player/model/RequestMessage;)V

    goto :goto_10

    .line 87
    :cond_23
    iget-object v0, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler$1;->val$requestMessage:Lcom/phicomm/speaker/player/model/RequestMessage;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestType()I

    move-result v0

    const/high16 v1, 0x200000

    if-ne v0, v1, :cond_10

    .line 88
    iget-object v0, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler$1;->this$1:Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;

    iget-object v0, v0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    iget-object v1, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler$1;->val$requestMessage:Lcom/phicomm/speaker/player/model/RequestMessage;

    # invokes: Lcom/phicomm/speaker/player/MsgHandler;->handleMqttMessage(Lcom/phicomm/speaker/player/model/RequestMessage;)V
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/MsgHandler;->access$600(Lcom/phicomm/speaker/player/MsgHandler;Lcom/phicomm/speaker/player/model/RequestMessage;)V

    goto :goto_10
.end method
