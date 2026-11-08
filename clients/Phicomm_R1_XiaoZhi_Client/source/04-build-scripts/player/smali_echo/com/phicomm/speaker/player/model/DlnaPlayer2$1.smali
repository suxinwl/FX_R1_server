.class Lcom/phicomm/speaker/player/model/DlnaPlayer2$1;
.super Landroid/os/Handler;
.source "DlnaPlayer2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/model/DlnaPlayer2;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/DlnaPlayer2;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$1;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_28

    .line 85
    :goto_5
    return-void

    .line 72
    :pswitch_6
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$1;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->refreshCurPos()V

    goto :goto_5

    .line 75
    :pswitch_c
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$1;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->startEngine()Z

    goto :goto_5

    .line 78
    :pswitch_12
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$1;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->restartEngine()Z

    goto :goto_5

    .line 81
    :pswitch_18
    # getter for: Lcom/phicomm/speaker/player/model/DlnaPlayer2;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;
    invoke-static {}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->access$000()Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    move-result-object v0

    const-string v1, "do EXIT."

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$1;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    # invokes: Lcom/phicomm/speaker/player/model/DlnaPlayer2;->exitNow()V
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->access$100(Lcom/phicomm/speaker/player/model/DlnaPlayer2;)V

    goto :goto_5

    .line 70
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_18
    .end packed-switch
.end method
