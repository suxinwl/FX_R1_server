.class public Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;
.super Ljava/lang/Thread;
.source "DMRWorkThread.java"

# interfaces
.implements Lcom/phicomm/speaker/player/dlna/center/IBaseEngine;


# static fields
.field private static final CHECK_INTERVAL:I = 0x7530

.field private static final log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExitFlag:Z

.field private mFriendName:Ljava/lang/String;

.field private mStartSuccess:Z

.field private mUUID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/util/LogFactory;->createLog()Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mContext:Landroid/content/Context;

    .line 19
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mStartSuccess:Z

    .line 20
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mExitFlag:Z

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mFriendName:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mUUID:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public awakeThread()V
    .registers 2

    .prologue
    .line 39
    monitor-enter p0

    .line 40
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 41
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public exit()V
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mExitFlag:Z

    .line 46
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->awakeThread()V

    .line 47
    return-void
.end method

.method public refreshNotify()V
    .registers 5

    .prologue
    .line 84
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->checkNetworkState(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 100
    :cond_8
    :goto_8
    return-void

    .line 88
    :cond_9
    iget-boolean v2, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mStartSuccess:Z

    if-nez v2, :cond_8

    .line 89
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->stopEngine()Z

    .line 91
    const-wide/16 v2, 0xc8

    :try_start_12
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_15} :catch_1f

    .line 95
    :goto_15
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->startEngine()Z

    move-result v1

    .line 96
    .local v1, "ret":Z
    if-eqz v1, :cond_8

    .line 97
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mStartSuccess:Z

    goto :goto_8

    .line 92
    .end local v1    # "ret":Z
    :catch_1f
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_15
.end method

.method public restartEngine()Z
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->setFlag(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->awakeThread()V

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .registers 5

    .prologue
    .line 52
    sget-object v1, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    const-string v2, "DMRWorkThread run..."

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 56
    :cond_7
    iget-boolean v1, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mExitFlag:Z

    if-eqz v1, :cond_16

    .line 57
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->stopEngine()Z

    .line 79
    :goto_e
    sget-object v1, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    const-string v2, "DMRWorkThread over..."

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 81
    return-void

    .line 61
    :cond_16
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->refreshNotify()V

    .line 62
    monitor-enter p0

    .line 66
    const-wide/16 v2, 0x7530

    :try_start_1c
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_28
    .catchall {:try_start_1c .. :try_end_1f} :catchall_2d

    .line 72
    :goto_1f
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_2d

    .line 73
    iget-boolean v1, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mExitFlag:Z

    if-eqz v1, :cond_7

    .line 74
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->stopEngine()Z

    goto :goto_e

    .line 68
    :catch_28
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    :try_start_29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_2d
    move-exception v1

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public setFlag(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mStartSuccess:Z

    .line 31
    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "friendName"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mFriendName:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mUUID:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public startEngine()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 104
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mFriendName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 110
    :goto_9
    return v0

    .line 108
    :cond_a
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mFriendName:Ljava/lang/String;

    iget-object v3, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mUUID:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/dlna/jni/PlatinumJniProxy;->startMediaRender(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 109
    .local v1, "ret":I
    if-nez v1, :cond_15

    const/4 v0, 0x1

    .line 110
    .local v0, "result":Z
    :cond_15
    goto :goto_9
.end method

.method public stopEngine()Z
    .registers 2

    .prologue
    .line 115
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/jni/PlatinumJniProxy;->stopDlnaMediaRender()V

    .line 116
    const/4 v0, 0x1

    return v0
.end method
