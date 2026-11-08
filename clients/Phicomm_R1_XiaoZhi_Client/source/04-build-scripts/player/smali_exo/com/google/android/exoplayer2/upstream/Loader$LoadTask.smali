.class final Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;
.super Landroid/os/Handler;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/upstream/Loader$Loadable;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final MSG_FATAL_ERROR:I = 0x3

.field private static final MSG_FINISH:I = 0x1

.field private static final MSG_IO_EXCEPTION:I = 0x2

.field private static final MSG_START:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LoadTask"


# instance fields
.field private callback:Lcom/google/android/exoplayer2/upstream/Loader$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private canceled:Z

.field private currentError:Ljava/io/IOException;

.field public final defaultMinRetryCount:I

.field private errorCount:I

.field private executorThread:Ljava/lang/Thread;

.field private final loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile released:Z

.field private final startTimeMs:J

.field final synthetic this$0:Lcom/google/android/exoplayer2/upstream/Loader;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/Loader;Landroid/os/Looper;Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
            "TT;>;IJ)V"
        }
    .end annotation

    .line 343
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 344
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 345
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    .line 346
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->callback:Lcom/google/android/exoplayer2/upstream/Loader$Callback;

    .line 347
    iput p5, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->defaultMinRetryCount:I

    .line 348
    iput-wide p6, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->startTimeMs:J

    return-void
.end method

.method private execute()V
    .registers 3

    const/4 v0, 0x0

    .line 509
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    .line 510
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer2/upstream/Loader;

    # getter for: Lcom/google/android/exoplayer2/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->access$500(Lcom/google/android/exoplayer2/upstream/Loader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer2/upstream/Loader;

    # getter for: Lcom/google/android/exoplayer2/upstream/Loader;->currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;
    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->access$100(Lcom/google/android/exoplayer2/upstream/Loader;)Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finish()V
    .registers 3

    .line 514
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer2/upstream/Loader;

    const/4 v1, 0x0

    # setter for: Lcom/google/android/exoplayer2/upstream/Loader;->currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->access$102(Lcom/google/android/exoplayer2/upstream/Loader;Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;)Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    return-void
.end method

.method private getRetryDelayMillis()J
    .registers 3

    .line 518
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->errorCount:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public cancel(Z)V
    .registers 10

    .line 368
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->released:Z

    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    const/4 v1, 0x0

    .line 370
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_18

    .line 372
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->canceled:Z

    .line 373
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->removeMessages(I)V

    if-nez p1, :cond_28

    .line 375
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z

    goto :goto_28

    .line 379
    :cond_18
    monitor-enter p0

    .line 380
    :try_start_19
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->canceled:Z

    .line 381
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/Loader$Loadable;->cancelLoad()V

    .line 382
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    if-eqz v1, :cond_27

    .line 384
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 386
    :cond_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_47

    :cond_28
    :goto_28
    if-eqz p1, :cond_46

    .line 389
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->finish()V

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 391
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->callback:Lcom/google/android/exoplayer2/upstream/Loader$Callback;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/Loader$Callback;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->startTimeMs:J

    sub-long v5, v3, v5

    const/4 v7, 0x1

    .line 392
    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/upstream/Loader$Callback;->onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V

    .line 397
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->callback:Lcom/google/android/exoplayer2/upstream/Loader$Callback;

    :cond_46
    return-void

    :catchall_47
    move-exception p1

    .line 386
    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    .line 457
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-eqz v0, :cond_5

    return-void

    .line 460
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_d

    .line 461
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->execute()V

    return-void

    .line 464
    :cond_d
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9c

    .line 467
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->finish()V

    .line 468
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 469
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->startTimeMs:J

    sub-long v6, v4, v2

    .line 470
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->callback:Lcom/google/android/exoplayer2/upstream/Loader$Callback;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/exoplayer2/upstream/Loader$Callback;

    .line 471
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->canceled:Z

    if-eqz v0, :cond_31

    .line 472
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/Loader$Callback;->onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V

    return-void

    .line 475
    :cond_31
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v10, 0x1

    if-eq v0, v10, :cond_83

    const/4 v11, 0x2

    if-eq v0, v11, :cond_3a

    goto :goto_9b

    .line 486
    :cond_3a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/io/IOException;

    iput-object v8, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    .line 487
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->errorCount:I

    add-int/lit8 v9, p1, 0x1

    iput v9, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->errorCount:I

    .line 488
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    .line 489
    invoke-interface/range {v2 .. v9}, Lcom/google/android/exoplayer2/upstream/Loader$Callback;->onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object p1

    .line 490
    # getter for: Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->type:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->access$300(Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;)I

    move-result v0

    if-ne v0, v1, :cond_5b

    .line 491
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    # setter for: Lcom/google/android/exoplayer2/upstream/Loader;->fatalError:Ljava/io/IOException;
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/upstream/Loader;->access$202(Lcom/google/android/exoplayer2/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_9b

    .line 492
    :cond_5b
    # getter for: Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->type:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->access$300(Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;)I

    move-result v0

    if-eq v0, v11, :cond_9b

    .line 493
    # getter for: Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->type:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->access$300(Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;)I

    move-result v0

    if-ne v0, v10, :cond_69

    .line 494
    iput v10, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->errorCount:I

    .line 497
    :cond_69
    # getter for: Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->retryDelayMillis:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->access$400(Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7b

    .line 498
    # getter for: Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->retryDelayMillis:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->access$400(Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;)J

    move-result-wide v0

    goto :goto_7f

    .line 499
    :cond_7b
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->getRetryDelayMillis()J

    move-result-wide v0

    .line 496
    :goto_7f
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->start(J)V

    goto :goto_9b

    .line 478
    :cond_83
    :try_start_83
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/Loader$Callback;->onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    :try_end_88
    .catch Ljava/lang/RuntimeException; {:try_start_83 .. :try_end_88} :catch_89

    goto :goto_9b

    :catch_89
    move-exception p1

    const-string v0, "LoadTask"

    const-string v1, "Unexpected exception handling load completed"

    .line 481
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 482
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer2/upstream/Loader;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    # setter for: Lcom/google/android/exoplayer2/upstream/Loader;->fatalError:Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->access$202(Lcom/google/android/exoplayer2/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    :cond_9b
    :goto_9b
    return-void

    .line 465
    :cond_9c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method public maybeThrowError(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    if-eqz v0, :cond_a

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->errorCount:I

    if-gt v1, p1, :cond_9

    goto :goto_a

    .line 353
    :cond_9
    throw v0

    :cond_a
    :goto_a
    return-void
.end method

.method public run()V
    .registers 5

    const/4 v0, 0x2

    .line 405
    :try_start_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2} :catch_83
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_2} :catch_6a
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_2} :catch_55

    .line 406
    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->canceled:Z

    const/4 v2, 0x1

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 407
    :goto_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    .line 408
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_52

    if-eqz v1, :cond_3f

    .line 410
    :try_start_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_31} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_31} :catch_83
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_31} :catch_6a
    .catch Ljava/lang/Error; {:try_start_13 .. :try_end_31} :catch_55

    .line 412
    :try_start_31
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/Loader$Loadable;->load()V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_3a

    .line 414
    :try_start_36
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    goto :goto_3f

    :catchall_3a
    move-exception v1

    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    throw v1

    .line 417
    :cond_3f
    :goto_3f
    monitor-enter p0
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_40} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_40} :catch_83
    .catch Ljava/lang/OutOfMemoryError; {:try_start_36 .. :try_end_40} :catch_6a
    .catch Ljava/lang/Error; {:try_start_36 .. :try_end_40} :catch_55

    const/4 v1, 0x0

    .line 418
    :try_start_41
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    .line 420
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 421
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_4f

    .line 422
    :try_start_47
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-nez v1, :cond_a8

    .line 423
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4e} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4e} :catch_83
    .catch Ljava/lang/OutOfMemoryError; {:try_start_47 .. :try_end_4e} :catch_6a
    .catch Ljava/lang/Error; {:try_start_47 .. :try_end_4e} :catch_55

    goto :goto_a8

    :catchall_4f
    move-exception v1

    .line 421
    :try_start_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    :try_start_51
    throw v1
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_52} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_52} :catch_83
    .catch Ljava/lang/OutOfMemoryError; {:try_start_51 .. :try_end_52} :catch_6a
    .catch Ljava/lang/Error; {:try_start_51 .. :try_end_52} :catch_55

    :catchall_52
    move-exception v1

    .line 408
    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    :try_start_54
    throw v1
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_55} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_55} :catch_83
    .catch Ljava/lang/OutOfMemoryError; {:try_start_54 .. :try_end_55} :catch_6a
    .catch Ljava/lang/Error; {:try_start_54 .. :try_end_55} :catch_55

    :catch_55
    move-exception v0

    .line 447
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-nez v1, :cond_69

    const-string v1, "LoadTask"

    const-string v2, "Unexpected error loading stream"

    .line 448
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x3

    .line 449
    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 451
    :cond_69
    throw v0

    :catch_6a
    move-exception v1

    .line 439
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-nez v2, :cond_a8

    const-string v2, "LoadTask"

    const-string v3, "OutOfMemory error loading stream"

    .line 440
    invoke-static {v2, v3, v1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 441
    new-instance v2, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a8

    :catch_83
    move-exception v1

    .line 431
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-nez v2, :cond_a8

    const-string v2, "LoadTask"

    const-string v3, "Unexpected exception loading stream"

    .line 432
    invoke-static {v2, v3, v1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 433
    new-instance v2, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a8

    :catch_9c
    move-exception v1

    .line 426
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-nez v2, :cond_a8

    .line 427
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_a8
    :goto_a8
    return-void
.end method

.method public start(J)V
    .registers 7

    .line 358
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer2/upstream/Loader;

    # getter for: Lcom/google/android/exoplayer2/upstream/Loader;->currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->access$100(Lcom/google/android/exoplayer2/upstream/Loader;)Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 359
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer2/upstream/Loader;

    # setter for: Lcom/google/android/exoplayer2/upstream/Loader;->currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->access$102(Lcom/google/android/exoplayer2/upstream/Loader;Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;)Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1e

    .line 361
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_21

    .line 363
    :cond_1e
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->execute()V

    :goto_21
    return-void
.end method
