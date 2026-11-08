.class public Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;
.super Ljava/lang/Object;
.source "PlayerVisualizerHelper.java"

# interfaces
.implements Landroid/os/MessageDispatchManager$MessageReceiver;


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayerVisualizer"

.field private static mPVHelper:Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMsgManager:Landroid/os/MessageDispatchManager;

.field private mPlayerVisualizer:Lcom/phicomm/speaker/player/PlayerVisualizer;

.field private mPlayingMusic:Z

.field private mUserEnable:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/phicomm/speaker/player/PlayerVisualizer;

    invoke-direct {v0, v1, p1}, Lcom/phicomm/speaker/player/PlayerVisualizer;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayerVisualizer:Lcom/phicomm/speaker/player/PlayerVisualizer;

    .line 27
    iget-object v0, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayerVisualizer:Lcom/phicomm/speaker/player/PlayerVisualizer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/PlayerVisualizer;->getUserLightEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mUserEnable:Z

    .line 28
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayingMusic:Z

    .line 29
    const-string v0, "msgcenter"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageDispatchManager;

    iput-object v0, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mMsgManager:Landroid/os/MessageDispatchManager;

    .line 30
    iget-object v0, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mMsgManager:Landroid/os/MessageDispatchManager;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Landroid/os/MessageDispatchManager;->registerMessageReceiver(Landroid/os/MessageDispatchManager$MessageReceiver;I)V

    .line 31
    iput-object p1, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public static obtain(Landroid/content/Context;)Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget-object v0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPVHelper:Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;

    if-nez v0, :cond_b

    .line 36
    new-instance v0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPVHelper:Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;

    .line 37
    :cond_b
    sget-object v0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPVHelper:Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized disable()V
    .registers 2

    .prologue
    .line 84
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayingMusic:Z

    .line 85
    iget-object v0, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayerVisualizer:Lcom/phicomm/speaker/player/PlayerVisualizer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/PlayerVisualizer;->disable()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 86
    monitor-exit p0

    return-void

    .line 84
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enable()V
    .registers 2

    .prologue
    .line 77
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayingMusic:Z

    .line 78
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mUserEnable:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayingMusic:Z

    if-eqz v0, :cond_11

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayerVisualizer:Lcom/phicomm/speaker/player/PlayerVisualizer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/PlayerVisualizer;->enable()V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_13

    .line 81
    :cond_11
    monitor-exit p0

    return-void

    .line 77
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUserEnable()Z
    .registers 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mUserEnable:Z

    return v0
.end method

.method public notifyMsg(IIILjava/lang/Object;)V
    .registers 9
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 41
    const/4 v1, 0x4

    if-eq p1, v1, :cond_5

    .line 74
    :goto_4
    return-void

    .line 44
    :cond_5
    packed-switch p2, :pswitch_data_7a

    goto :goto_4

    .line 46
    :pswitch_9
    monitor-enter p0

    .line 47
    if-eqz p3, :cond_d

    const/4 v0, 0x1

    .line 48
    .local v0, "userEnable":Z
    :cond_d
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerVisualizer userEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerVisualizer mUserEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mUserEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 50
    iget-boolean v1, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mUserEnable:Z

    if-eq v1, v0, :cond_5d

    .line 51
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mUserEnable:Z

    .line 52
    iget-object v1, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayerVisualizer:Lcom/phicomm/speaker/player/PlayerVisualizer;

    iget-boolean v2, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mUserEnable:Z

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/PlayerVisualizer;->setUserLightEnable(Z)I

    .line 53
    iget-boolean v1, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mUserEnable:Z

    if-eqz v1, :cond_62

    iget-boolean v1, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayingMusic:Z

    if-eqz v1, :cond_62

    .line 54
    iget-object v1, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayerVisualizer:Lcom/phicomm/speaker/player/PlayerVisualizer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/PlayerVisualizer;->enable()V

    .line 58
    :goto_55
    iget-object v1, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mUserEnable:Z

    invoke-static {v1, v2, v3}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->reportAmbientLightStatus(Landroid/content/Context;IZ)V

    .line 60
    :cond_5d
    monitor-exit p0

    goto :goto_4

    :catchall_5f
    move-exception v1

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_d .. :try_end_61} :catchall_5f

    throw v1

    .line 56
    :cond_62
    :try_start_62
    iget-object v1, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayerVisualizer:Lcom/phicomm/speaker/player/PlayerVisualizer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/PlayerVisualizer;->disable()V
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_5f

    goto :goto_55

    .line 63
    .end local v0    # "userEnable":Z
    :pswitch_68
    iget-object v1, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayerVisualizer:Lcom/phicomm/speaker/player/PlayerVisualizer;

    invoke-virtual {v1, p3}, Lcom/phicomm/speaker/player/PlayerVisualizer;->setLumaGain(I)I

    goto :goto_4

    .line 66
    :pswitch_6e
    iget-object v1, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayerVisualizer:Lcom/phicomm/speaker/player/PlayerVisualizer;

    invoke-virtual {v1, p3}, Lcom/phicomm/speaker/player/PlayerVisualizer;->setChromaGain(I)I

    goto :goto_4

    .line 69
    :pswitch_74
    iget-object v1, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayerVisualizer:Lcom/phicomm/speaker/player/PlayerVisualizer;

    invoke-virtual {v1, p3}, Lcom/phicomm/speaker/player/PlayerVisualizer;->setScalingMode(I)I

    goto :goto_4

    .line 44
    :pswitch_data_7a
    .packed-switch 0x40
        :pswitch_9
        :pswitch_68
        :pswitch_6e
        :pswitch_74
    .end packed-switch
.end method
