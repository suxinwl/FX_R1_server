.class public Lcom/phicomm/speaker/player/model/BluetoothPlayer;
.super Lcom/phicomm/speaker/player/model/AbsPlayer;
.source "BluetoothPlayer.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# static fields
.field private static final DEVICE_CONNECTED:I = 0x2

.field private static final DEVICE_CONNECTING:I = 0x1

.field private static final DEVICE_DISCONNECTED:I = 0x0

.field private static final DEVICE_DISCONNECTING:I = 0x3

.field private static final MEDIA_NO_PLAYING:I = 0x0

.field private static final MEDIA_PAUSING_PLAY:I = 0x3

.field private static final MEDIA_PLAYING:I = 0x2

.field private static final MEDIA_STARTING_PLAY:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

.field private mAvrcpController:Landroid/bluetooth/BluetoothAvrcpController;

.field private mBlueToothReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private volatile mConnectState:I

.field private mConnectedDevice:Landroid/bluetooth/BluetoothDevice;

.field private mContext:Landroid/content/Context;

.field private volatile mPlayingState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AbsPlayer;-><init>()V

    .line 30
    const-string v0, "BluetoothPlayer"

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->TAG:Ljava/lang/String;

    .line 47
    iput v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectState:I

    .line 48
    iput v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mPlayingState:I

    .line 256
    new-instance v0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/BluetoothPlayer$1;-><init>(Lcom/phicomm/speaker/player/model/BluetoothPlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mBlueToothReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 54
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0xb

    invoke-virtual {v0, p1, p0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 55
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0xa

    invoke-virtual {v0, p1, p0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 56
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->registerA2dpReceiver()V

    .line 57
    return-void
.end method

.method private ConnectStateToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "connectState"    # I

    .prologue
    .line 482
    if-nez p1, :cond_5

    .line 483
    const-string v0, "DEVICE_DISCONNECTED"

    .line 491
    :goto_4
    return-object v0

    .line 484
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 485
    const-string v0, "DEVICE_CONNECTING"

    goto :goto_4

    .line 486
    :cond_b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    .line 487
    const-string v0, "DEVICE_CONNECTED"

    goto :goto_4

    .line 488
    :cond_11
    const/4 v0, 0x3

    if-ne p1, v0, :cond_17

    .line 489
    const-string v0, "DEVICE_DISCONNECTING"

    goto :goto_4

    .line 491
    :cond_17
    const-string v0, "ERROR_CONNECTSTATE"

    goto :goto_4
.end method

.method private PlayingStateToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "playingState"    # I

    .prologue
    .line 469
    if-nez p1, :cond_5

    .line 470
    const-string v0, "MEDIA_NO_PLAYING"

    .line 478
    :goto_4
    return-object v0

    .line 471
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 472
    const-string v0, "MEDIA_STARTING_PLAY"

    goto :goto_4

    .line 473
    :cond_b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    .line 474
    const-string v0, "MEDIA_PLAYING"

    goto :goto_4

    .line 475
    :cond_11
    const/4 v0, 0x3

    if-ne p1, v0, :cond_17

    .line 476
    const-string v0, "MEDIA_PAUSING_PLAY"

    goto :goto_4

    .line 478
    :cond_17
    const-string v0, "ERROR_PLAYINGSTATE"

    goto :goto_4
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/player/model/BluetoothPlayer;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/BluetoothPlayer;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->processBluetoothA2dpConnectChanged(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/player/model/BluetoothPlayer;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/BluetoothPlayer;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->processBluetoothA2dpPlayChanged(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/phicomm/speaker/player/model/BluetoothPlayer;)I
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    .prologue
    .line 28
    iget v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectState:I

    return v0
.end method

.method static synthetic access$202(Lcom/phicomm/speaker/player/model/BluetoothPlayer;I)I
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/BluetoothPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectState:I

    return p1
.end method

.method static synthetic access$300(Lcom/phicomm/speaker/player/model/BluetoothPlayer;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/BluetoothPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->ConnectStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/phicomm/speaker/player/model/BluetoothPlayer;)I
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    .prologue
    .line 28
    iget v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mPlayingState:I

    return v0
.end method

.method static synthetic access$402(Lcom/phicomm/speaker/player/model/BluetoothPlayer;I)I
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/BluetoothPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mPlayingState:I

    return p1
.end method

.method static synthetic access$500(Lcom/phicomm/speaker/player/model/BluetoothPlayer;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/BluetoothPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->PlayingStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/phicomm/speaker/player/model/BluetoothPlayer;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/phicomm/speaker/player/model/BluetoothPlayer;)Landroid/bluetooth/BluetoothA2dpSink;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    return-object v0
.end method

.method static synthetic access$800(Lcom/phicomm/speaker/player/model/BluetoothPlayer;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$802(Lcom/phicomm/speaker/player/model/BluetoothPlayer;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/BluetoothPlayer;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$900(Lcom/phicomm/speaker/player/model/BluetoothPlayer;)Landroid/bluetooth/BluetoothAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method private bootInit()V
    .registers 5

    .prologue
    .line 430
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    if-eqz v3, :cond_22

    .line 431
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 432
    .local v1, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v1, :cond_22

    .line 433
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 434
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothA2dpSink;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_10

    .line 438
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_22
    return-void
.end method

.method private disconnectDevice()V
    .registers 5

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 205
    const-string v0, "BluetoothPlayer disconnectDevice."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    const/16 v0, 0x44

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->sendCommand(I)V

    .line 209
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1a

    .line 210
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dpSink;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 213
    :cond_1a
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/player/util/Utils;->isSystemInNormalMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 214
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    if-eq v3, v0, :cond_36

    .line 215
    const-string v0, "BluetoothPlayerInNormalMode set SCAN_MODE_NONE"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 219
    :cond_36
    return-void
.end method

.method private processBluetoothA2dpConnectChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 290
    const-string v1, "android.bluetooth.profile.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 291
    .local v0, "connectionState":I
    packed-switch v0, :pswitch_data_34

    .line 366
    :goto_b
    :pswitch_b
    return-void

    .line 293
    :pswitch_c
    const-string v1, "BluetoothPlayerBluetoothA2dp.STATE_CONNECTED."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v1

    new-instance v2, Lcom/phicomm/speaker/player/model/BluetoothPlayer$2;

    invoke-direct {v2, p0, p2}, Lcom/phicomm/speaker/player/model/BluetoothPlayer$2;-><init>(Lcom/phicomm/speaker/player/model/BluetoothPlayer;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_b

    .line 334
    :pswitch_20
    const-string v1, "BluetoothPlayerBluetoothA2dp.STATE_DISCONNECTED."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v1

    new-instance v2, Lcom/phicomm/speaker/player/model/BluetoothPlayer$3;

    invoke-direct {v2, p0, p2}, Lcom/phicomm/speaker/player/model/BluetoothPlayer$3;-><init>(Lcom/phicomm/speaker/player/model/BluetoothPlayer;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_b

    .line 291
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_20
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private processBluetoothA2dpPlayChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 369
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 370
    .local v1, "playState":I
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 371
    .local v0, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    packed-switch v1, :pswitch_data_2e

    .line 427
    :goto_12
    return-void

    .line 373
    :pswitch_13
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v2

    new-instance v3, Lcom/phicomm/speaker/player/model/BluetoothPlayer$4;

    invoke-direct {v3, p0, v0}, Lcom/phicomm/speaker/player/model/BluetoothPlayer$4;-><init>(Lcom/phicomm/speaker/player/model/BluetoothPlayer;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_12

    .line 400
    :pswitch_20
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v2

    new-instance v3, Lcom/phicomm/speaker/player/model/BluetoothPlayer$5;

    invoke-direct {v3, p0, v0}, Lcom/phicomm/speaker/player/model/BluetoothPlayer$5;-><init>(Lcom/phicomm/speaker/player/model/BluetoothPlayer;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_12

    .line 371
    nop

    :pswitch_data_2e
    .packed-switch 0xa
        :pswitch_13
        :pswitch_20
    .end packed-switch
.end method

.method private registerA2dpReceiver()V
    .registers 4

    .prologue
    .line 248
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 249
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.a2dp.sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v1, "android.bluetooth.a2dp.sink.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mBlueToothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 254
    return-void
.end method

.method private declared-synchronized sendCommand(I)V
    .registers 7
    .param p1, "keyCode"    # I

    .prologue
    .line 230
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mAvrcpController:Landroid/bluetooth/BluetoothAvrcpController;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_71

    if-nez v3, :cond_7

    .line 245
    :cond_5
    monitor-exit p0

    return-void

    .line 233
    :cond_7
    :try_start_7
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mAvrcpController:Landroid/bluetooth/BluetoothAvrcpController;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAvrcpController;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 235
    .local v1, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v1, :cond_15

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1f

    .line 236
    :cond_15
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    if-eqz v3, :cond_1f

    .line 237
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 240
    :cond_1f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 241
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BluetoothPlayer send command to device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mAvrcpController:Landroid/bluetooth/BluetoothAvrcpController;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, p1, v4}, Landroid/bluetooth/BluetoothAvrcpController;->sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V

    .line 243
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mAvrcpController:Landroid/bluetooth/BluetoothAvrcpController;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, p1, v4}, Landroid/bluetooth/BluetoothAvrcpController;->sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_70
    .catchall {:try_start_7 .. :try_end_70} :catchall_71

    goto :goto_23

    .line 230
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_71
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .registers 4

    .prologue
    .line 222
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothPlayer destroy. "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->disconnectDevice()V

    .line 224
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mAvrcpController:Landroid/bluetooth/BluetoothAvrcpController;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 225
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 226
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mBlueToothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 227
    monitor-exit p0

    return-void

    .line 222
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPlaying()Z
    .registers 3

    .prologue
    .line 170
    iget v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mPlayingState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 4
    .param p1, "i"    # I
    .param p2, "bluetoothProfile"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 442
    monitor-enter p0

    .line 443
    const/16 v0, 0xb

    if-ne p1, v0, :cond_b

    .line 444
    :try_start_5
    check-cast p2, Landroid/bluetooth/BluetoothAvrcpController;

    .end local p2    # "bluetoothProfile":Landroid/bluetooth/BluetoothProfile;
    iput-object p2, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mAvrcpController:Landroid/bluetooth/BluetoothAvrcpController;

    .line 449
    :cond_9
    :goto_9
    monitor-exit p0

    .line 450
    return-void

    .line 445
    .restart local p2    # "bluetoothProfile":Landroid/bluetooth/BluetoothProfile;
    :cond_b
    const/16 v0, 0xa

    if-ne p1, v0, :cond_9

    .line 446
    check-cast p2, Landroid/bluetooth/BluetoothA2dpSink;

    .end local p2    # "bluetoothProfile":Landroid/bluetooth/BluetoothProfile;
    iput-object p2, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    .line 447
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->bootInit()V

    goto :goto_9

    .line 449
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public onServiceDisconnected(I)V
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 454
    monitor-enter p0

    .line 455
    const/16 v0, 0xb

    if-ne p1, v0, :cond_a

    .line 456
    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mAvrcpController:Landroid/bluetooth/BluetoothAvrcpController;

    .line 460
    :cond_8
    :goto_8
    monitor-exit p0

    .line 461
    return-void

    .line 457
    :cond_a
    const/16 v0, 0xa

    if-ne p1, v0, :cond_8

    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    goto :goto_8

    .line 460
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public pause()Z
    .registers 4

    .prologue
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothPlayer pause ConnectState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectState:I

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->ConnectStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PlayingState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mPlayingState:I

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->PlayingStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "result":Z
    iget v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectState:I

    packed-switch v1, :pswitch_data_4c

    .line 102
    :goto_35
    return v0

    .line 88
    :pswitch_36
    iget v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mPlayingState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_40

    iget v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mPlayingState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_48

    .line 89
    :cond_40
    const/4 v1, 0x3

    iput v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mPlayingState:I

    .line 90
    const/16 v1, 0x46

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->sendCommand(I)V

    .line 92
    :cond_48
    const/4 v0, 0x1

    .line 93
    goto :goto_35

    .line 98
    :pswitch_4a
    const/4 v0, 0x0

    goto :goto_35

    .line 86
    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_4a
        :pswitch_36
        :pswitch_4a
    .end packed-switch
.end method

.method public playNext(Z)Z
    .registers 5
    .param p1, "startSelf"    # Z

    .prologue
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothPlayer playNext ConnectState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectState:I

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->ConnectStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PlayingState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mPlayingState:I

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->PlayingStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "result":Z
    iget v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectState:I

    packed-switch v1, :pswitch_data_42

    .line 165
    :goto_35
    return v0

    .line 153
    :pswitch_36
    const/4 v1, 0x2

    iput v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mPlayingState:I

    .line 154
    const/16 v1, 0x4b

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->sendCommand(I)V

    .line 155
    const/4 v0, 0x1

    .line 156
    goto :goto_35

    .line 161
    :pswitch_40
    const/4 v0, 0x0

    goto :goto_35

    .line 151
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_40
        :pswitch_40
        :pswitch_36
        :pswitch_40
    .end packed-switch
.end method

.method public playPre(Z)Z
    .registers 5
    .param p1, "startSelf"    # Z

    .prologue
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothPlayer playPre ConnectState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectState:I

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->ConnectStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PlayingState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mPlayingState:I

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->PlayingStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "result":Z
    iget v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectState:I

    packed-switch v1, :pswitch_data_42

    .line 144
    :goto_35
    return v0

    .line 132
    :pswitch_36
    const/4 v1, 0x2

    iput v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mPlayingState:I

    .line 133
    const/16 v1, 0x4c

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->sendCommand(I)V

    .line 134
    const/4 v0, 0x1

    .line 135
    goto :goto_35

    .line 140
    :pswitch_40
    const/4 v0, 0x0

    goto :goto_35

    .line 130
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_40
        :pswitch_40
        :pswitch_36
        :pswitch_40
    .end packed-switch
.end method

.method public start()Z
    .registers 4

    .prologue
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothPlayer start ConnectState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectState:I

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->ConnectStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PlayingState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mPlayingState:I

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->PlayingStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "result":Z
    iget v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectState:I

    packed-switch v1, :pswitch_data_4c

    .line 79
    :goto_35
    return v0

    .line 65
    :pswitch_36
    iget v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mPlayingState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3f

    iget v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mPlayingState:I

    if-nez v1, :cond_47

    .line 66
    :cond_3f
    const/4 v1, 0x1

    iput v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mPlayingState:I

    .line 67
    const/16 v1, 0x44

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->sendCommand(I)V

    .line 69
    :cond_47
    const/4 v0, 0x1

    .line 70
    goto :goto_35

    .line 75
    :pswitch_49
    const/4 v0, 0x0

    goto :goto_35

    .line 63
    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_49
        :pswitch_49
        :pswitch_36
        :pswitch_49
    .end packed-switch
.end method

.method public startServer()V
    .registers 3

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothPlayer startServer ConnectState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectState:I

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->ConnectStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PlayingState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mPlayingState:I

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->PlayingStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectState:I

    packed-switch v0, :pswitch_data_40

    .line 196
    :goto_34
    :pswitch_34
    return-void

    .line 180
    :pswitch_35
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 181
    const/4 v0, 0x1

    iput v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectState:I

    goto :goto_34

    .line 177
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_34
        :pswitch_35
    .end packed-switch
.end method

.method public stop()Z
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothPlayer stop ConnectState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectState:I

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->ConnectStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PlayingState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mPlayingState:I

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->PlayingStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "result":Z
    iget v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectState:I

    packed-switch v1, :pswitch_data_42

    .line 123
    :goto_36
    return v0

    .line 112
    :pswitch_37
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->disconnectDevice()V

    .line 113
    iput v3, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectState:I

    .line 114
    iput v3, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mPlayingState:I

    goto :goto_36

    .line 119
    :pswitch_3f
    const/4 v0, 0x0

    goto :goto_36

    .line 109
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_37
        :pswitch_37
        :pswitch_3f
    .end packed-switch
.end method

.method public declared-synchronized stopServer()V
    .registers 3

    .prologue
    .line 200
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothPlayer stopServer ConnectState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mConnectState:I

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->ConnectStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PlayingState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mPlayingState:I

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->PlayingStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->stop()Z
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 202
    monitor-exit p0

    return-void

    .line 200
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 465
    const-string v0, "BluetoothPlayer{}"

    return-object v0
.end method
