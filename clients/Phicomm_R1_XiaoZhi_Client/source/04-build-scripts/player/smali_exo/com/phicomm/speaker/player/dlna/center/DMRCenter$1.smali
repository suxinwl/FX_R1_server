.class Lcom/phicomm/speaker/player/dlna/center/DMRCenter$1;
.super Landroid/os/Handler;
.source "DMRCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/dlna/center/DMRCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/dlna/center/DMRCenter;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/dlna/center/DMRCenter;)V
    .registers 2

    .prologue
    .line 270
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter$1;->this$0:Lcom/phicomm/speaker/player/dlna/center/DMRCenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 276
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_3c

    .line 290
    :goto_5
    :pswitch_5
    return-void

    .line 278
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .line 279
    .local v1, "mediaInfo1":Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter$1;->this$0:Lcom/phicomm/speaker/player/dlna/center/DMRCenter;

    # invokes: Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->startPlayMusic(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V
    invoke-static {v2, v1}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->access$000(Lcom/phicomm/speaker/player/dlna/center/DMRCenter;Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_5

    .line 285
    .end local v1    # "mediaInfo1":Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;
    :catch_10
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
    # getter for: Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->access$200()Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMRCenter transdel msg catch Exception!!! msgID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->e(Ljava/lang/Object;)V

    goto :goto_5

    .line 282
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_31
    :try_start_31
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter$1;->this$0:Lcom/phicomm/speaker/player/dlna/center/DMRCenter;

    # getter for: Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->access$100(Lcom/phicomm/speaker/player/dlna/center/DMRCenter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;->sendStopBorocast(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3a} :catch_10

    goto :goto_5

    .line 276
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_31
    .end packed-switch
.end method
