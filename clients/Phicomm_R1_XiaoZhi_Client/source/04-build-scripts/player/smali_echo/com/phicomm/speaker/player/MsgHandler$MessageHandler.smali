.class Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;
.super Landroid/os/Handler;
.source "MsgHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/MsgHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/MsgHandler;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/player/MsgHandler;)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/player/MsgHandler;Lcom/phicomm/speaker/player/MsgHandler$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/phicomm/speaker/player/MsgHandler;
    .param p2, "x1"    # Lcom/phicomm/speaker/player/MsgHandler$1;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;-><init>(Lcom/phicomm/speaker/player/MsgHandler;)V

    return-void
.end method

.method static synthetic access$400(Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;Lcom/phicomm/speaker/player/model/RequestMessage;)V
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;
    .param p1, "x1"    # Lcom/phicomm/speaker/player/model/RequestMessage;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->handlePlayMessage(Lcom/phicomm/speaker/player/model/RequestMessage;)V

    return-void
.end method

.method static synthetic access$500(Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;Lcom/phicomm/speaker/player/model/RequestMessage;)V
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;
    .param p1, "x1"    # Lcom/phicomm/speaker/player/model/RequestMessage;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->handleBtMessage(Lcom/phicomm/speaker/player/model/RequestMessage;)V

    return-void
.end method

.method private handleBtMessage(Lcom/phicomm/speaker/player/model/RequestMessage;)V
    .registers 8
    .param p1, "msg"    # Lcom/phicomm/speaker/player/model/RequestMessage;

    .prologue
    const/4 v4, 0x0

    .line 188
    const/4 v1, 0x0

    .line 189
    .local v1, "resultBoolean":Z
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestMethod()I

    move-result v2

    packed-switch v2, :pswitch_data_86

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/MsgHandler;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " BT receive cann\'t process msg what: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    :goto_2d
    invoke-static {v1}, Landroid/os/ParcelableUtil;->obtain(Z)Landroid/os/ParcelableUtil;

    move-result-object v0

    .line 206
    .local v0, "result":Landroid/os/ParcelableUtil;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/MsgHandler;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "response BT result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    iget-object v2, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    # getter for: Lcom/phicomm/speaker/player/MsgHandler;->mDispatchManager:Landroid/os/MessageDispatchManager;
    invoke-static {v2}, Lcom/phicomm/speaker/player/MsgHandler;->access$1400(Lcom/phicomm/speaker/player/MsgHandler;)Landroid/os/MessageDispatchManager;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestMethod()I

    move-result v4

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestCseq()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 209
    return-void

    .line 191
    .end local v0    # "result":Landroid/os/ParcelableUtil;
    :pswitch_65
    iget-object v2, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    # getter for: Lcom/phicomm/speaker/player/MsgHandler;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;
    invoke-static {v2}, Lcom/phicomm/speaker/player/MsgHandler;->access$800(Lcom/phicomm/speaker/player/MsgHandler;)Lcom/phicomm/speaker/player/model/EasyPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->startWaitingExternalConnect()Z

    move-result v1

    .line 192
    goto :goto_2d

    .line 194
    :pswitch_70
    iget-object v2, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    # getter for: Lcom/phicomm/speaker/player/MsgHandler;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;
    invoke-static {v2}, Lcom/phicomm/speaker/player/MsgHandler;->access$800(Lcom/phicomm/speaker/player/MsgHandler;)Lcom/phicomm/speaker/player/model/EasyPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->stopWaitingExternalConnect()Z

    move-result v1

    .line 195
    goto :goto_2d

    .line 197
    :pswitch_7b
    iget-object v2, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    # getter for: Lcom/phicomm/speaker/player/MsgHandler;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;
    invoke-static {v2}, Lcom/phicomm/speaker/player/MsgHandler;->access$800(Lcom/phicomm/speaker/player/MsgHandler;)Lcom/phicomm/speaker/player/model/EasyPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->restartWaitingExternalConnect()Z

    move-result v1

    .line 198
    goto :goto_2d

    .line 189
    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_65
        :pswitch_70
        :pswitch_7b
    .end packed-switch
.end method

.method private handleHivoiceMessage(Lcom/phicomm/speaker/player/model/RequestMessage;)V
    .registers 8
    .param p1, "msg"    # Lcom/phicomm/speaker/player/model/RequestMessage;

    .prologue
    const/4 v4, 0x0

    .line 173
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestMethod()I

    move-result v2

    packed-switch v2, :pswitch_data_70

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/MsgHandler;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hivoice receive cann\'t process msg what: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    :goto_2c
    return-void

    .line 175
    :pswitch_2d
    iget-object v2, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    # getter for: Lcom/phicomm/speaker/player/MsgHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/phicomm/speaker/player/MsgHandler;->access$1500(Lcom/phicomm/speaker/player/MsgHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/phicomm/speaker/player/helpers/SettingHelper;->getDeviceState(Landroid/content/Context;)I

    move-result v1

    .line 176
    .local v1, "resultInt":I
    invoke-static {v1}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v0

    .line 177
    .local v0, "result":Landroid/os/ParcelableUtil;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/MsgHandler;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Hivoice response result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object v2, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    # getter for: Lcom/phicomm/speaker/player/MsgHandler;->mDispatchManager:Landroid/os/MessageDispatchManager;
    invoke-static {v2}, Lcom/phicomm/speaker/player/MsgHandler;->access$1400(Lcom/phicomm/speaker/player/MsgHandler;)Landroid/os/MessageDispatchManager;

    move-result-object v2

    const v3, 0x8000

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestMethod()I

    move-result v4

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestCseq()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    goto :goto_2c

    .line 173
    :pswitch_data_70
    .packed-switch 0x4
        :pswitch_2d
    .end packed-switch
.end method

.method private handlePlayMessage(Lcom/phicomm/speaker/player/model/RequestMessage;)V
    .registers 11
    .param p1, "msg"    # Lcom/phicomm/speaker/player/model/RequestMessage;

    .prologue
    const/4 v8, 0x0

    .line 95
    const/4 v3, 0x0

    .line 97
    .local v3, "resultBoolean":Z
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestMethod()I

    move-result v4

    sparse-switch v4, :sswitch_data_16e

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/MsgHandler;->access$300()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " PLAY receive cann\'t process msg what: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :goto_2d
    invoke-static {v3}, Landroid/os/ParcelableUtil;->obtain(Z)Landroid/os/ParcelableUtil;

    move-result-object v2

    .line 167
    .local v2, "result":Landroid/os/ParcelableUtil;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/MsgHandler;->access$300()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Player response result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-object v4, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    # getter for: Lcom/phicomm/speaker/player/MsgHandler;->mDispatchManager:Landroid/os/MessageDispatchManager;
    invoke-static {v4}, Lcom/phicomm/speaker/player/MsgHandler;->access$1400(Lcom/phicomm/speaker/player/MsgHandler;)Landroid/os/MessageDispatchManager;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestMethod()I

    move-result v6

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestCseq()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 170
    .end local v2    # "result":Landroid/os/ParcelableUtil;
    :goto_64
    return-void

    .line 99
    :sswitch_65
    iget-object v4, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    # invokes: Lcom/phicomm/speaker/player/MsgHandler;->handlePlayRequest(Lcom/phicomm/speaker/player/model/RequestMessage;)Z
    invoke-static {v4, p1}, Lcom/phicomm/speaker/player/MsgHandler;->access$700(Lcom/phicomm/speaker/player/MsgHandler;Lcom/phicomm/speaker/player/model/RequestMessage;)Z

    move-result v3

    .line 100
    goto :goto_2d

    .line 102
    :sswitch_6c
    iget-object v4, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    # getter for: Lcom/phicomm/speaker/player/MsgHandler;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;
    invoke-static {v4}, Lcom/phicomm/speaker/player/MsgHandler;->access$800(Lcom/phicomm/speaker/player/MsgHandler;)Lcom/phicomm/speaker/player/model/EasyPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/phicomm/speaker/player/model/EasyPlayer;->pause()Z

    move-result v3

    .line 103
    goto :goto_2d

    .line 105
    :sswitch_77
    iget-object v4, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    # getter for: Lcom/phicomm/speaker/player/MsgHandler;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;
    invoke-static {v4}, Lcom/phicomm/speaker/player/MsgHandler;->access$800(Lcom/phicomm/speaker/player/MsgHandler;)Lcom/phicomm/speaker/player/model/EasyPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/phicomm/speaker/player/model/EasyPlayer;->start()Z

    move-result v3

    .line 106
    goto :goto_2d

    .line 108
    :sswitch_82
    iget-object v4, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    # getter for: Lcom/phicomm/speaker/player/MsgHandler;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;
    invoke-static {v4}, Lcom/phicomm/speaker/player/MsgHandler;->access$800(Lcom/phicomm/speaker/player/MsgHandler;)Lcom/phicomm/speaker/player/model/EasyPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/phicomm/speaker/player/model/EasyPlayer;->stop()Z

    move-result v3

    .line 109
    goto :goto_2d

    .line 111
    :sswitch_8d
    iget-object v4, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    # getter for: Lcom/phicomm/speaker/player/MsgHandler;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;
    invoke-static {v4}, Lcom/phicomm/speaker/player/MsgHandler;->access$800(Lcom/phicomm/speaker/player/MsgHandler;)Lcom/phicomm/speaker/player/model/EasyPlayer;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/phicomm/speaker/player/model/EasyPlayer;->playPre(Z)Z

    move-result v3

    .line 112
    goto :goto_2d

    .line 114
    :sswitch_98
    iget-object v4, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    # getter for: Lcom/phicomm/speaker/player/MsgHandler;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;
    invoke-static {v4}, Lcom/phicomm/speaker/player/MsgHandler;->access$800(Lcom/phicomm/speaker/player/MsgHandler;)Lcom/phicomm/speaker/player/model/EasyPlayer;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/phicomm/speaker/player/model/EasyPlayer;->playNext(Z)Z

    move-result v3

    .line 115
    goto :goto_2d

    .line 117
    :sswitch_a3
    iget-object v4, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    # getter for: Lcom/phicomm/speaker/player/MsgHandler;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;
    invoke-static {v4}, Lcom/phicomm/speaker/player/MsgHandler;->access$800(Lcom/phicomm/speaker/player/MsgHandler;)Lcom/phicomm/speaker/player/model/EasyPlayer;

    move-result-object v4

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v6, v7}, Lcom/phicomm/speaker/player/model/EasyPlayer;->stopFadeOut(J)Z

    move-result v3

    .line 118
    goto/16 :goto_2d

    .line 120
    :sswitch_b1
    iget-object v4, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    # getter for: Lcom/phicomm/speaker/player/MsgHandler;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;
    invoke-static {v4}, Lcom/phicomm/speaker/player/MsgHandler;->access$800(Lcom/phicomm/speaker/player/MsgHandler;)Lcom/phicomm/speaker/player/model/EasyPlayer;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v6, v7}, Lcom/phicomm/speaker/player/model/EasyPlayer;->startFadeIn(J)Z

    move-result v3

    .line 121
    goto/16 :goto_2d

    .line 123
    :sswitch_bf
    iget-object v4, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    # invokes: Lcom/phicomm/speaker/player/MsgHandler;->handlePlayRequest(Lcom/phicomm/speaker/player/model/RequestMessage;)Z
    invoke-static {v4, p1}, Lcom/phicomm/speaker/player/MsgHandler;->access$700(Lcom/phicomm/speaker/player/MsgHandler;Lcom/phicomm/speaker/player/model/RequestMessage;)Z

    move-result v3

    .line 124
    goto/16 :goto_2d

    .line 126
    :sswitch_c7
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestContent()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_eb

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/MsgHandler;->access$300()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CMD_PLAY_MODE msg.obj is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/phicomm/speaker/player/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2d

    .line 130
    :cond_eb
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelableUtil;

    .line 131
    .local v1, "param":Landroid/os/ParcelableUtil;
    invoke-virtual {v1}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 132
    .local v0, "mode":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    # getter for: Lcom/phicomm/speaker/player/MsgHandler;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;
    invoke-static {v4}, Lcom/phicomm/speaker/player/MsgHandler;->access$800(Lcom/phicomm/speaker/player/MsgHandler;)Lcom/phicomm/speaker/player/model/EasyPlayer;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/phicomm/speaker/player/model/EasyPlayer;->setPlayMode(I)Z

    move-result v3

    .line 133
    goto/16 :goto_2d

    .line 135
    .end local v0    # "mode":Ljava/lang/Integer;
    .end local v1    # "param":Landroid/os/ParcelableUtil;
    :sswitch_107
    iget-object v4, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    # invokes: Lcom/phicomm/speaker/player/MsgHandler;->handleGetSongName(Lcom/phicomm/speaker/player/model/RequestMessage;)V
    invoke-static {v4, p1}, Lcom/phicomm/speaker/player/MsgHandler;->access$900(Lcom/phicomm/speaker/player/MsgHandler;Lcom/phicomm/speaker/player/model/RequestMessage;)V

    goto/16 :goto_64

    .line 138
    :sswitch_10e
    iget-object v4, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    # invokes: Lcom/phicomm/speaker/player/MsgHandler;->handleGetPlayMode(Lcom/phicomm/speaker/player/model/RequestMessage;)V
    invoke-static {v4, p1}, Lcom/phicomm/speaker/player/MsgHandler;->access$1000(Lcom/phicomm/speaker/player/MsgHandler;Lcom/phicomm/speaker/player/model/RequestMessage;)V

    goto/16 :goto_64

    .line 141
    :sswitch_115
    iget-object v4, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    # invokes: Lcom/phicomm/speaker/player/MsgHandler;->handlePlayRequest(Lcom/phicomm/speaker/player/model/RequestMessage;)Z
    invoke-static {v4, p1}, Lcom/phicomm/speaker/player/MsgHandler;->access$700(Lcom/phicomm/speaker/player/MsgHandler;Lcom/phicomm/speaker/player/model/RequestMessage;)Z

    move-result v3

    .line 142
    goto/16 :goto_2d

    .line 144
    :sswitch_11d
    iget-object v4, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    # invokes: Lcom/phicomm/speaker/player/MsgHandler;->handleGetPlayAllStates(Lcom/phicomm/speaker/player/model/RequestMessage;)V
    invoke-static {v4, p1}, Lcom/phicomm/speaker/player/MsgHandler;->access$1100(Lcom/phicomm/speaker/player/MsgHandler;Lcom/phicomm/speaker/player/model/RequestMessage;)V

    goto/16 :goto_64

    .line 147
    :sswitch_124
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestContent()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_148

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/MsgHandler;->access$300()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CMD_BAIDU_PLAY_UDID msg.obj is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/phicomm/speaker/player/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2d

    .line 151
    :cond_148
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelableUtil;

    .line 152
    .restart local v1    # "param":Landroid/os/ParcelableUtil;
    iget-object v4, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    # getter for: Lcom/phicomm/speaker/player/MsgHandler;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;
    invoke-static {v4}, Lcom/phicomm/speaker/player/MsgHandler;->access$800(Lcom/phicomm/speaker/player/MsgHandler;)Lcom/phicomm/speaker/player/model/EasyPlayer;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/phicomm/speaker/player/model/EasyPlayer;->setBaiduPlayUDID(Ljava/lang/String;)Z

    move-result v3

    .line 153
    goto/16 :goto_2d

    .line 155
    .end local v1    # "param":Landroid/os/ParcelableUtil;
    :sswitch_160
    iget-object v4, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    # invokes: Lcom/phicomm/speaker/player/MsgHandler;->handleNewPageRequest(Lcom/phicomm/speaker/player/model/RequestMessage;)V
    invoke-static {v4, p1}, Lcom/phicomm/speaker/player/MsgHandler;->access$1200(Lcom/phicomm/speaker/player/MsgHandler;Lcom/phicomm/speaker/player/model/RequestMessage;)V

    goto/16 :goto_64

    .line 158
    :sswitch_167
    iget-object v4, p0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    # invokes: Lcom/phicomm/speaker/player/MsgHandler;->handleAudioBandGetStatus(Lcom/phicomm/speaker/player/model/RequestMessage;)V
    invoke-static {v4, p1}, Lcom/phicomm/speaker/player/MsgHandler;->access$1300(Lcom/phicomm/speaker/player/MsgHandler;Lcom/phicomm/speaker/player/model/RequestMessage;)V

    goto/16 :goto_64

    .line 97
    :sswitch_data_16e
    .sparse-switch
        0x1 -> :sswitch_65
        0x2 -> :sswitch_6c
        0x3 -> :sswitch_77
        0x4 -> :sswitch_82
        0x5 -> :sswitch_8d
        0x6 -> :sswitch_98
        0x7 -> :sswitch_c7
        0x8 -> :sswitch_107
        0xa -> :sswitch_a3
        0xb -> :sswitch_bf
        0xc -> :sswitch_b1
        0xd -> :sswitch_10e
        0xf -> :sswitch_115
        0x10 -> :sswitch_11d
        0x11 -> :sswitch_124
        0x13 -> :sswitch_160
        0x1000 -> :sswitch_167
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/MsgHandler;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " receive msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_51

    .line 75
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/ParcelableUtil;

    .line 76
    .local v0, "obj":Landroid/os/ParcelableUtil;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/MsgHandler;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " receive msg obj: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .end local v0    # "obj":Landroid/os/ParcelableUtil;
    :cond_51
    new-instance v1, Lcom/phicomm/speaker/player/model/RequestMessage;

    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/phicomm/speaker/player/model/RequestMessage;-><init>(IIILjava/lang/Object;)V

    .line 80
    .local v1, "requestMessage":Lcom/phicomm/speaker/player/model/RequestMessage;
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v2

    new-instance v3, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler$1;

    invoke-direct {v3, p0, v1}, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler$1;-><init>(Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;Lcom/phicomm/speaker/player/model/RequestMessage;)V

    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method
