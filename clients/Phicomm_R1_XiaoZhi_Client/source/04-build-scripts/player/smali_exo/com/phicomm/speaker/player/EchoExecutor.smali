.class public Lcom/phicomm/speaker/player/EchoExecutor;
.super Ljava/lang/Object;
.source "EchoExecutor.java"


# static fields
.field private static mEchoExecutor:Lcom/phicomm/speaker/player/EchoExecutor;


# instance fields
.field private mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/EchoExecutor;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 21
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/phicomm/speaker/player/EchoExecutor;
    .registers 2

    .prologue
    .line 51
    const-class v1, Lcom/phicomm/speaker/player/EchoExecutor;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/phicomm/speaker/player/EchoExecutor;->mEchoExecutor:Lcom/phicomm/speaker/player/EchoExecutor;

    if-nez v0, :cond_e

    .line 52
    new-instance v0, Lcom/phicomm/speaker/player/EchoExecutor;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/EchoExecutor;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/player/EchoExecutor;->mEchoExecutor:Lcom/phicomm/speaker/player/EchoExecutor;

    .line 54
    :cond_e
    sget-object v0, Lcom/phicomm/speaker/player/EchoExecutor;->mEchoExecutor:Lcom/phicomm/speaker/player/EchoExecutor;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 24
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoExecutor;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_12

    .line 25
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/EchoExecutor;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 26
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoExecutor;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_18

    .line 30
    :goto_10
    monitor-exit p0

    return-void

    .line 28
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoExecutor;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_18

    goto :goto_10

    .line 24
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 7
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 33
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoExecutor;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_13

    .line 34
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/EchoExecutor;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 35
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoExecutor;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_1a

    move-result-object v0

    .line 37
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoExecutor;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1a

    move-result-object v0

    goto :goto_11

    .line 33
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 15
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 42
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoExecutor;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_17

    .line 43
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/EchoExecutor;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 44
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoExecutor;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_22

    move-result-object v0

    .line 46
    :goto_15
    monitor-exit p0

    return-object v0

    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoExecutor;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_22

    move-result-object v0

    goto :goto_15

    .line 42
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shutdown()V
    .registers 2

    .prologue
    .line 67
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoExecutor;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_d

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoExecutor;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/EchoExecutor;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 71
    :cond_d
    monitor-exit p0

    return-void

    .line 67
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 3
    .param p1, "callable"    # Ljava/util/concurrent/Callable;

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoExecutor;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_13

    .line 59
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/EchoExecutor;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoExecutor;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_1a

    move-result-object v0

    .line 62
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoExecutor;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1a

    move-result-object v0

    goto :goto_11

    .line 58
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
