.class public final Lorg/xutils/common/task/TaskControllerImpl;
.super Ljava/lang/Object;
.source "TaskControllerImpl.java"

# interfaces
.implements Lorg/xutils/common/TaskController;


# static fields
.field private static volatile instance:Lorg/xutils/common/TaskController;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static registerInstance()V
    .registers 2

    .prologue
    .line 24
    sget-object v0, Lorg/xutils/common/task/TaskControllerImpl;->instance:Lorg/xutils/common/TaskController;

    if-nez v0, :cond_13

    .line 25
    const-class v1, Lorg/xutils/common/TaskController;

    monitor-enter v1

    .line 26
    :try_start_7
    sget-object v0, Lorg/xutils/common/task/TaskControllerImpl;->instance:Lorg/xutils/common/TaskController;

    if-nez v0, :cond_12

    .line 27
    new-instance v0, Lorg/xutils/common/task/TaskControllerImpl;

    invoke-direct {v0}, Lorg/xutils/common/task/TaskControllerImpl;-><init>()V

    sput-object v0, Lorg/xutils/common/task/TaskControllerImpl;->instance:Lorg/xutils/common/TaskController;

    .line 29
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_19

    .line 31
    :cond_13
    sget-object v0, Lorg/xutils/common/task/TaskControllerImpl;->instance:Lorg/xutils/common/TaskController;

    invoke-static {v0}, Lorg/xutils/x$Ext;->setTaskController(Lorg/xutils/common/TaskController;)V

    .line 32
    return-void

    .line 29
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method


# virtual methods
.method public autoPost(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 180
    if-nez p1, :cond_3

    .line 186
    :goto_2
    return-void

    .line 181
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_15

    .line 182
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 184
    :cond_15
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;

    invoke-virtual {v0, p1}, Lorg/xutils/common/task/TaskProxy$InternalHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public post(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 195
    if-nez p1, :cond_3

    .line 197
    :goto_2
    return-void

    .line 196
    :cond_3
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;

    invoke-virtual {v0, p1}, Lorg/xutils/common/task/TaskProxy$InternalHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .registers 6
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 207
    if-nez p1, :cond_3

    .line 209
    :goto_2
    return-void

    .line 208
    :cond_3
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xutils/common/task/TaskProxy$InternalHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 232
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;

    invoke-virtual {v0, p1}, Lorg/xutils/common/task/TaskProxy$InternalHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method

.method public run(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 218
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sDefaultExecutor:Lorg/xutils/common/task/PriorityExecutor;

    invoke-virtual {v0}, Lorg/xutils/common/task/PriorityExecutor;->isBusy()Z

    move-result v0

    if-nez v0, :cond_e

    .line 219
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sDefaultExecutor:Lorg/xutils/common/task/PriorityExecutor;

    invoke-virtual {v0, p1}, Lorg/xutils/common/task/PriorityExecutor;->execute(Ljava/lang/Runnable;)V

    .line 223
    :goto_d
    return-void

    .line 221
    :cond_e
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_d
.end method

.method public start(Lorg/xutils/common/task/AbsTask;)Lorg/xutils/common/task/AbsTask;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/common/task/AbsTask",
            "<TT;>;)",
            "Lorg/xutils/common/task/AbsTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "task":Lorg/xutils/common/task/AbsTask;, "Lorg/xutils/common/task/AbsTask<TT;>;"
    const/4 v1, 0x0

    .line 44
    .local v1, "proxy":Lorg/xutils/common/task/TaskProxy;, "Lorg/xutils/common/task/TaskProxy<TT;>;"
    instance-of v2, p1, Lorg/xutils/common/task/TaskProxy;

    if-eqz v2, :cond_c

    move-object v1, p1

    .line 45
    check-cast v1, Lorg/xutils/common/task/TaskProxy;

    .line 50
    :goto_8
    :try_start_8
    invoke-virtual {v1}, Lorg/xutils/common/task/TaskProxy;->doBackground()Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_b} :catch_12

    .line 54
    :goto_b
    return-object v1

    .line 47
    :cond_c
    new-instance v1, Lorg/xutils/common/task/TaskProxy;

    .end local v1    # "proxy":Lorg/xutils/common/task/TaskProxy;, "Lorg/xutils/common/task/TaskProxy<TT;>;"
    invoke-direct {v1, p1}, Lorg/xutils/common/task/TaskProxy;-><init>(Lorg/xutils/common/task/AbsTask;)V

    .restart local v1    # "proxy":Lorg/xutils/common/task/TaskProxy;, "Lorg/xutils/common/task/TaskProxy<TT;>;"
    goto :goto_8

    .line 51
    :catch_12
    move-exception v0

    .line 52
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public startSync(Lorg/xutils/common/task/AbsTask;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/common/task/AbsTask",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "task":Lorg/xutils/common/task/AbsTask;, "Lorg/xutils/common/task/AbsTask<TT;>;"
    const/4 v2, 0x0

    .line 61
    .local v2, "result":Ljava/lang/Object;, "TT;"
    :try_start_1
    invoke-virtual {p1}, Lorg/xutils/common/task/AbsTask;->onWaiting()V

    .line 62
    invoke-virtual {p1}, Lorg/xutils/common/task/AbsTask;->onStarted()V

    .line 63
    invoke-virtual {p1}, Lorg/xutils/common/task/AbsTask;->doBackground()Ljava/lang/Object;

    move-result-object v2

    .line 64
    invoke-virtual {p1, v2}, Lorg/xutils/common/task/AbsTask;->onSuccess(Ljava/lang/Object;)V
    :try_end_e
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_1 .. :try_end_e} :catch_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_1a
    .catchall {:try_start_1 .. :try_end_e} :catchall_20

    .line 71
    invoke-virtual {p1}, Lorg/xutils/common/task/AbsTask;->onFinished()V

    .line 73
    .end local v2    # "result":Ljava/lang/Object;, "TT;"
    :goto_11
    return-object v2

    .line 65
    :catch_12
    move-exception v0

    .line 66
    .local v0, "cex":Lorg/xutils/common/Callback$CancelledException;
    :try_start_13
    invoke-virtual {p1, v0}, Lorg/xutils/common/task/AbsTask;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_20

    .line 71
    invoke-virtual {p1}, Lorg/xutils/common/task/AbsTask;->onFinished()V

    goto :goto_11

    .line 67
    .end local v0    # "cex":Lorg/xutils/common/Callback$CancelledException;
    :catch_1a
    move-exception v1

    .line 68
    .local v1, "ex":Ljava/lang/Throwable;
    const/4 v3, 0x0

    :try_start_1c
    invoke-virtual {p1, v1, v3}, Lorg/xutils/common/task/AbsTask;->onError(Ljava/lang/Throwable;Z)V

    .line 69
    throw v1
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_20

    .line 71
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catchall_20
    move-exception v3

    invoke-virtual {p1}, Lorg/xutils/common/task/AbsTask;->onFinished()V

    throw v3
.end method

.method public varargs startTasks(Lorg/xutils/common/Callback$GroupCallback;[Lorg/xutils/common/task/AbsTask;)Lorg/xutils/common/Callback$Cancelable;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/xutils/common/task/AbsTask",
            "<*>;>(",
            "Lorg/xutils/common/Callback$GroupCallback",
            "<TT;>;[TT;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "groupCallback":Lorg/xutils/common/Callback$GroupCallback;, "Lorg/xutils/common/Callback$GroupCallback<TT;>;"
    .local p2, "tasks":[Lorg/xutils/common/task/AbsTask;, "[TT;"
    if-nez p2, :cond_a

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "task must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_a
    new-instance v5, Lorg/xutils/common/task/TaskControllerImpl$1;

    invoke-direct {v5, p0, p2, p1}, Lorg/xutils/common/task/TaskControllerImpl$1;-><init>(Lorg/xutils/common/task/TaskControllerImpl;[Lorg/xutils/common/task/AbsTask;Lorg/xutils/common/Callback$GroupCallback;)V

    .line 99
    .local v5, "callIfOnAllFinished":Ljava/lang/Runnable;
    array-length v7, p2

    const/4 v0, 0x0

    move v6, v0

    :goto_12
    if-ge v6, v7, :cond_25

    aget-object v2, p2, v6

    .line 100
    .local v2, "task":Lorg/xutils/common/task/AbsTask;, "TT;"
    new-instance v0, Lorg/xutils/common/task/TaskControllerImpl$2;

    move-object v1, p0

    move-object v3, p1

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/xutils/common/task/TaskControllerImpl$2;-><init>(Lorg/xutils/common/task/TaskControllerImpl;Lorg/xutils/common/task/AbsTask;Lorg/xutils/common/Callback$GroupCallback;Lorg/xutils/common/task/AbsTask;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lorg/xutils/common/task/TaskControllerImpl;->start(Lorg/xutils/common/task/AbsTask;)Lorg/xutils/common/task/AbsTask;

    .line 99
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_12

    .line 156
    .end local v2    # "task":Lorg/xutils/common/task/AbsTask;, "TT;"
    :cond_25
    new-instance v0, Lorg/xutils/common/task/TaskControllerImpl$3;

    invoke-direct {v0, p0, p2}, Lorg/xutils/common/task/TaskControllerImpl$3;-><init>(Lorg/xutils/common/task/TaskControllerImpl;[Lorg/xutils/common/task/AbsTask;)V

    return-object v0
.end method
