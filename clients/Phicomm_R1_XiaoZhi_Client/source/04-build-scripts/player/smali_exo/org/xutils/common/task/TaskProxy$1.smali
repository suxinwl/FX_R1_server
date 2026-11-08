.class Lorg/xutils/common/task/TaskProxy$1;
.super Ljava/lang/Object;
.source "TaskProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/common/task/TaskProxy;->doBackground()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xutils/common/task/TaskProxy;


# direct methods
.method constructor <init>(Lorg/xutils/common/task/TaskProxy;)V
    .registers 2
    .param p1, "this$0"    # Lorg/xutils/common/task/TaskProxy;

    .prologue
    .line 45
    .local p0, "this":Lorg/xutils/common/task/TaskProxy$1;, "Lorg/xutils/common/task/TaskProxy$1;"
    iput-object p1, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 50
    .local p0, "this":Lorg/xutils/common/task/TaskProxy$1;, "Lorg/xutils/common/task/TaskProxy$1;"
    :try_start_0
    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    # getter for: Lorg/xutils/common/task/TaskProxy;->callOnCanceled:Z
    invoke-static {v2}, Lorg/xutils/common/task/TaskProxy;->access$100(Lorg/xutils/common/task/TaskProxy;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v2}, Lorg/xutils/common/task/TaskProxy;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 51
    :cond_10
    new-instance v2, Lorg/xutils/common/Callback$CancelledException;

    const-string v3, ""

    invoke-direct {v2, v3}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_18
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_0 .. :try_end_18} :catch_18
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_18} :catch_39
    .catchall {:try_start_0 .. :try_end_18} :catchall_78

    .line 72
    :catch_18
    move-exception v0

    .line 73
    .local v0, "cex":Lorg/xutils/common/Callback$CancelledException;
    :try_start_19
    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v2, v0}, Lorg/xutils/common/task/TaskProxy;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_78

    .line 77
    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v2}, Lorg/xutils/common/task/TaskProxy;->onFinished()V

    .line 79
    .end local v0    # "cex":Lorg/xutils/common/Callback$CancelledException;
    :goto_23
    return-void

    .line 55
    :cond_24
    :try_start_24
    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v2}, Lorg/xutils/common/task/TaskProxy;->onStarted()V

    .line 57
    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v2}, Lorg/xutils/common/task/TaskProxy;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 58
    new-instance v2, Lorg/xutils/common/Callback$CancelledException;

    const-string v3, ""

    invoke-direct {v2, v3}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_39
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_24 .. :try_end_39} :catch_18
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_39} :catch_39
    .catchall {:try_start_24 .. :try_end_39} :catchall_78

    .line 74
    :catch_39
    move-exception v1

    .line 75
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_3a
    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/xutils/common/task/TaskProxy;->onError(Ljava/lang/Throwable;Z)V
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_78

    .line 77
    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v2}, Lorg/xutils/common/task/TaskProxy;->onFinished()V

    goto :goto_23

    .line 62
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_46
    :try_start_46
    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    # getter for: Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;
    invoke-static {v2}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v2

    iget-object v3, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    # getter for: Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xutils/common/task/AbsTask;->doBackground()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xutils/common/task/AbsTask;->setResult(Ljava/lang/Object;)V

    .line 63
    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    iget-object v3, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    # getter for: Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xutils/common/task/AbsTask;->getResult()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xutils/common/task/TaskProxy;->setResult(Ljava/lang/Object;)V

    .line 66
    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v2}, Lorg/xutils/common/task/TaskProxy;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 67
    new-instance v2, Lorg/xutils/common/Callback$CancelledException;

    const-string v3, ""

    invoke-direct {v2, v3}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_78
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_46 .. :try_end_78} :catch_18
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_78} :catch_39
    .catchall {:try_start_46 .. :try_end_78} :catchall_78

    .line 77
    :catchall_78
    move-exception v2

    iget-object v3, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v3}, Lorg/xutils/common/task/TaskProxy;->onFinished()V

    throw v2

    .line 71
    :cond_7f
    :try_start_7f
    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    iget-object v3, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    # getter for: Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xutils/common/task/AbsTask;->getResult()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xutils/common/task/TaskProxy;->onSuccess(Ljava/lang/Object;)V
    :try_end_8e
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_7f .. :try_end_8e} :catch_18
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_8e} :catch_39
    .catchall {:try_start_7f .. :try_end_8e} :catchall_78

    .line 77
    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v2}, Lorg/xutils/common/task/TaskProxy;->onFinished()V

    goto :goto_23
.end method
