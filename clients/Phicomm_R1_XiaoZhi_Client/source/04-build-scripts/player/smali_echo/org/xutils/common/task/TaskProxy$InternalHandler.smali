.class final Lorg/xutils/common/task/TaskProxy$InternalHandler;
.super Landroid/os/Handler;
.source "TaskProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/common/task/TaskProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InternalHandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 162
    const-class v0, Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/xutils/common/task/TaskProxy$InternalHandler;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 165
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 166
    return-void
.end method

.method synthetic constructor <init>(Lorg/xutils/common/task/TaskProxy$1;)V
    .registers 2
    .param p1, "x0"    # Lorg/xutils/common/task/TaskProxy$1;

    .prologue
    .line 162
    invoke-direct {p0}, Lorg/xutils/common/task/TaskProxy$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 171
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v5, :cond_d

    .line 172
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "msg must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 174
    :cond_d
    const/4 v3, 0x0

    .line 175
    .local v3, "taskProxy":Lorg/xutils/common/task/TaskProxy;
    const/4 v0, 0x0

    .line 176
    .local v0, "args":[Ljava/lang/Object;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Lorg/xutils/common/task/TaskProxy;

    if-eqz v5, :cond_23

    .line 177
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v3    # "taskProxy":Lorg/xutils/common/task/TaskProxy;
    check-cast v3, Lorg/xutils/common/task/TaskProxy;

    .line 183
    .restart local v3    # "taskProxy":Lorg/xutils/common/task/TaskProxy;
    :cond_19
    :goto_19
    if-nez v3, :cond_32

    .line 184
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "msg.obj not instanceof TaskProxy"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 178
    :cond_23
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Lorg/xutils/common/task/TaskProxy$ArgsObj;

    if-eqz v5, :cond_19

    .line 179
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/xutils/common/task/TaskProxy$ArgsObj;

    .line 180
    .local v1, "argsObj":Lorg/xutils/common/task/TaskProxy$ArgsObj;
    iget-object v3, v1, Lorg/xutils/common/task/TaskProxy$ArgsObj;->taskProxy:Lorg/xutils/common/task/TaskProxy;

    .line 181
    iget-object v0, v1, Lorg/xutils/common/task/TaskProxy$ArgsObj;->args:[Ljava/lang/Object;

    goto :goto_19

    .line 188
    .end local v1    # "argsObj":Lorg/xutils/common/task/TaskProxy$ArgsObj;
    :cond_32
    :try_start_32
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_d6

    .line 237
    :cond_37
    :goto_37
    return-void

    .line 190
    :pswitch_38
    # getter for: Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xutils/common/task/AbsTask;->onWaiting()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_3f} :catch_40

    goto :goto_37

    .line 229
    :catch_40
    move-exception v2

    .line 230
    .local v2, "ex":Ljava/lang/Throwable;
    sget-object v5, Lorg/xutils/common/task/AbsTask$State;->ERROR:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {v3, v5}, Lorg/xutils/common/task/TaskProxy;->setState(Lorg/xutils/common/task/AbsTask$State;)V

    .line 231
    iget v5, p1, Landroid/os/Message;->what:I

    const v6, 0x3b9aca04

    if-eq v5, v6, :cond_ca

    .line 232
    # getter for: Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v5

    invoke-virtual {v5, v2, v7}, Lorg/xutils/common/task/AbsTask;->onError(Ljava/lang/Throwable;Z)V

    goto :goto_37

    .line 194
    .end local v2    # "ex":Ljava/lang/Throwable;
    :pswitch_55
    :try_start_55
    # getter for: Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xutils/common/task/AbsTask;->onStarted()V

    goto :goto_37

    .line 198
    :pswitch_5d
    # getter for: Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v5

    invoke-virtual {v3}, Lorg/xutils/common/task/TaskProxy;->getResult()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/xutils/common/task/AbsTask;->onSuccess(Ljava/lang/Object;)V

    goto :goto_37

    .line 202
    :pswitch_69
    sget-boolean v5, Lorg/xutils/common/task/TaskProxy$InternalHandler;->$assertionsDisabled:Z

    if-nez v5, :cond_75

    if-nez v0, :cond_75

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 203
    :cond_75
    const/4 v5, 0x0

    aget-object v4, v0, v5

    check-cast v4, Ljava/lang/Throwable;

    .line 204
    .local v4, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    # getter for: Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lorg/xutils/common/task/AbsTask;->onError(Ljava/lang/Throwable;Z)V

    goto :goto_37

    .line 209
    .end local v4    # "throwable":Ljava/lang/Throwable;
    :pswitch_8a
    # getter for: Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6, v0}, Lorg/xutils/common/task/AbsTask;->onUpdate(I[Ljava/lang/Object;)V

    goto :goto_37

    .line 213
    :pswitch_94
    # getter for: Lorg/xutils/common/task/TaskProxy;->callOnCanceled:Z
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$100(Lorg/xutils/common/task/TaskProxy;)Z

    move-result v5

    if-nez v5, :cond_37

    .line 214
    const/4 v5, 0x1

    # setter for: Lorg/xutils/common/task/TaskProxy;->callOnCanceled:Z
    invoke-static {v3, v5}, Lorg/xutils/common/task/TaskProxy;->access$102(Lorg/xutils/common/task/TaskProxy;Z)Z

    .line 215
    sget-boolean v5, Lorg/xutils/common/task/TaskProxy$InternalHandler;->$assertionsDisabled:Z

    if-nez v5, :cond_aa

    if-nez v0, :cond_aa

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 216
    :cond_aa
    # getter for: Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v6

    const/4 v5, 0x0

    aget-object v5, v0, v5

    check-cast v5, Lorg/xutils/common/Callback$CancelledException;

    invoke-virtual {v6, v5}, Lorg/xutils/common/task/AbsTask;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V

    goto :goto_37

    .line 220
    :pswitch_b7
    # getter for: Lorg/xutils/common/task/TaskProxy;->callOnFinished:Z
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$300(Lorg/xutils/common/task/TaskProxy;)Z

    move-result v5

    if-nez v5, :cond_37

    .line 221
    const/4 v5, 0x1

    # setter for: Lorg/xutils/common/task/TaskProxy;->callOnFinished:Z
    invoke-static {v3, v5}, Lorg/xutils/common/task/TaskProxy;->access$302(Lorg/xutils/common/task/TaskProxy;Z)Z

    .line 222
    # getter for: Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xutils/common/task/AbsTask;->onFinished()V
    :try_end_c8
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_c8} :catch_40

    goto/16 :goto_37

    .line 233
    .restart local v2    # "ex":Ljava/lang/Throwable;
    :cond_ca
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 234
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 188
    :pswitch_data_d6
    .packed-switch 0x3b9aca01
        :pswitch_38
        :pswitch_55
        :pswitch_5d
        :pswitch_69
        :pswitch_8a
        :pswitch_94
        :pswitch_b7
    .end packed-switch
.end method
