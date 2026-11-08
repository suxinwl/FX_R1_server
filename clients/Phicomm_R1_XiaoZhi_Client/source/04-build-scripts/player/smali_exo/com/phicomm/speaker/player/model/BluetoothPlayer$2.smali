.class Lcom/phicomm/speaker/player/model/BluetoothPlayer$2;
.super Ljava/lang/Object;
.source "BluetoothPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/model/BluetoothPlayer;->processBluetoothA2dpConnectChanged(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/BluetoothPlayer;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 294
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    iput-object p2, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 297
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$2;->val$intent:Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 298
    .local v0, "connectedDevice":Landroid/bluetooth/BluetoothDevice;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothPlayer device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothPlayer ConnectState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectState:I
    invoke-static {v3}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->access$200(Lcom/phicomm/speaker/player/model/BluetoothPlayer;)I

    move-result v3

    # invokes: Lcom/phicomm/speaker/player/model/BluetoothPlayer;->ConnectStateToString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->access$300(Lcom/phicomm/speaker/player/model/BluetoothPlayer;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PlayingState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mPlayingState:I
    invoke-static {v3}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->access$400(Lcom/phicomm/speaker/player/model/BluetoothPlayer;)I

    move-result v3

    # invokes: Lcom/phicomm/speaker/player/model/BluetoothPlayer;->PlayingStateToString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->access$500(Lcom/phicomm/speaker/player/model/BluetoothPlayer;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectState:I
    invoke-static {v1}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->access$200(Lcom/phicomm/speaker/player/model/BluetoothPlayer;)I

    move-result v1

    packed-switch v1, :pswitch_data_d8

    .line 330
    :cond_70
    :goto_70
    return-void

    .line 305
    :pswitch_71
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->access$600(Lcom/phicomm/speaker/player/model/BluetoothPlayer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/util/Utils;->isSystemInNormalMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 306
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;
    invoke-static {v1}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->access$700(Lcom/phicomm/speaker/player/model/BluetoothPlayer;)Landroid/bluetooth/BluetoothA2dpSink;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothA2dpSink;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_70

    .line 311
    :pswitch_87
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->access$800(Lcom/phicomm/speaker/player/model/BluetoothPlayer;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    .line 312
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;
    invoke-static {v1}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->access$700(Lcom/phicomm/speaker/player/model/BluetoothPlayer;)Landroid/bluetooth/BluetoothA2dpSink;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothA2dpSink;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_70

    .line 317
    :pswitch_9d
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    # setter for: Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, v0}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->access$802(Lcom/phicomm/speaker/player/model/BluetoothPlayer;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 319
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->access$600(Lcom/phicomm/speaker/player/model/BluetoothPlayer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/util/Utils;->isSystemInNormalMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 320
    const-string v1, "BluetoothPlayerInNormalMode set SCAN_MODE_NONE"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->access$900(Lcom/phicomm/speaker/player/model/BluetoothPlayer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 323
    :cond_c0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    iget-object v1, v1, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    if-eqz v1, :cond_d1

    .line 324
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    iget-object v1, v1, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/phicomm/speaker/player/interfaces/PlayerListener;->onMediaState(Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 326
    :cond_d1
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    const/4 v2, 0x2

    # setter for: Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectState:I
    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->access$202(Lcom/phicomm/speaker/player/model/BluetoothPlayer;I)I

    goto :goto_70

    .line 300
    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_71
        :pswitch_9d
        :pswitch_87
        :pswitch_71
    .end packed-switch
.end method
