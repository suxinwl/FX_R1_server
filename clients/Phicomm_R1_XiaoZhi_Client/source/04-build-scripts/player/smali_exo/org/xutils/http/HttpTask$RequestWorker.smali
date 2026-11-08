.class final Lorg/xutils/http/HttpTask$RequestWorker;
.super Ljava/lang/Object;
.source "HttpTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/http/HttpTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RequestWorker"
.end annotation


# instance fields
.field ex:Ljava/lang/Throwable;

.field result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/xutils/http/HttpTask;


# direct methods
.method private constructor <init>(Lorg/xutils/http/HttpTask;)V
    .registers 2

    .prologue
    .line 572
    .local p0, "this":Lorg/xutils/http/HttpTask$RequestWorker;, "Lorg/xutils/http/HttpTask<TResultType;>.RequestWorker;"
    iput-object p1, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    return-void
.end method

.method synthetic constructor <init>(Lorg/xutils/http/HttpTask;Lorg/xutils/http/HttpTask$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/xutils/http/HttpTask;
    .param p2, "x1"    # Lorg/xutils/http/HttpTask$1;

    .prologue
    .line 568
    .local p0, "this":Lorg/xutils/http/HttpTask$RequestWorker;, "Lorg/xutils/http/HttpTask<TResultType;>.RequestWorker;"
    invoke-direct {p0, p1}, Lorg/xutils/http/HttpTask$RequestWorker;-><init>(Lorg/xutils/http/HttpTask;)V

    return-void
.end method


# virtual methods
.method public request()V
    .registers 15

    .prologue
    .line 577
    .local p0, "this":Lorg/xutils/http/HttpTask$RequestWorker;, "Lorg/xutils/http/HttpTask<TResultType;>.RequestWorker;"
    const/4 v6, 0x0

    .line 578
    .local v6, "interrupted":Z
    :try_start_1
    const-class v10, Ljava/io/File;

    iget-object v11, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    # getter for: Lorg/xutils/http/HttpTask;->loadType:Ljava/lang/reflect/Type;
    invoke-static {v11}, Lorg/xutils/http/HttpTask;->access$200(Lorg/xutils/http/HttpTask;)Ljava/lang/reflect/Type;

    move-result-object v11

    if-ne v10, v11, :cond_37

    .line 579
    # getter for: Lorg/xutils/http/HttpTask;->sCurrFileLoadCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    monitor-enter v11
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_5e
    .catchall {:try_start_1 .. :try_end_10} :catchall_e1

    .line 580
    :goto_10
    :try_start_10
    # getter for: Lorg/xutils/http/HttpTask;->sCurrFileLoadCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    const/4 v12, 0x3

    if-lt v10, v12, :cond_2f

    iget-object v10, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    .line 581
    invoke-virtual {v10}, Lorg/xutils/http/HttpTask;->isCancelled()Z
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_de

    move-result v10

    if-nez v10, :cond_2f

    .line 583
    :try_start_23
    # getter for: Lorg/xutils/http/HttpTask;->sCurrFileLoadCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    const-wide/16 v12, 0xa

    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2c} :catch_158
    .catchall {:try_start_23 .. :try_end_2c} :catchall_de

    goto :goto_10

    .line 584
    :catch_2d
    move-exception v5

    .line 585
    .local v5, "iex":Ljava/lang/InterruptedException;
    const/4 v6, 0x1

    .line 590
    .end local v5    # "iex":Ljava/lang/InterruptedException;
    :cond_2f
    :try_start_2f
    monitor-exit v11
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_de

    .line 591
    :try_start_30
    # getter for: Lorg/xutils/http/HttpTask;->sCurrFileLoadCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 594
    :cond_37
    if-nez v6, :cond_41

    iget-object v10, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-virtual {v10}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v10

    if-eqz v10, :cond_105

    .line 595
    :cond_41
    new-instance v11, Lorg/xutils/common/Callback$CancelledException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cancelled before request"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v6, :cond_101

    const-string v10, "(interrupted)"

    :goto_52
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_5e} :catch_5e
    .catchall {:try_start_30 .. :try_end_5e} :catchall_e1

    .line 608
    :catch_5e
    move-exception v3

    .line 609
    .local v3, "ex":Ljava/lang/Throwable;
    :try_start_5f
    iput-object v3, p0, Lorg/xutils/http/HttpTask$RequestWorker;->ex:Ljava/lang/Throwable;

    .line 610
    instance-of v10, v3, Lorg/xutils/ex/HttpException;

    if-eqz v10, :cond_bf

    .line 611
    move-object v0, v3

    check-cast v0, Lorg/xutils/ex/HttpException;

    move-object v4, v0

    .line 612
    .local v4, "httpEx":Lorg/xutils/ex/HttpException;
    invoke-virtual {v4}, Lorg/xutils/ex/HttpException;->getCode()I

    move-result v2

    .line 613
    .local v2, "errorCode":I
    const/16 v10, 0x12d

    if-eq v2, v10, :cond_75

    const/16 v10, 0x12e

    if-ne v2, v10, :cond_bf

    .line 614
    :cond_75
    iget-object v10, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    # getter for: Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;
    invoke-static {v10}, Lorg/xutils/http/HttpTask;->access$600(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/RequestParams;

    move-result-object v10

    invoke-virtual {v10}, Lorg/xutils/http/RequestParams;->getRedirectHandler()Lorg/xutils/http/app/RedirectHandler;
    :try_end_7e
    .catchall {:try_start_5f .. :try_end_7e} :catchall_e1

    move-result-object v7

    .line 615
    .local v7, "redirectHandler":Lorg/xutils/http/app/RedirectHandler;
    if-eqz v7, :cond_bf

    .line 617
    :try_start_81
    iget-object v10, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    # getter for: Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;
    invoke-static {v10}, Lorg/xutils/http/HttpTask;->access$500(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;

    move-result-object v10

    invoke-interface {v7, v10}, Lorg/xutils/http/app/RedirectHandler;->getRedirectParams(Lorg/xutils/http/request/UriRequest;)Lorg/xutils/http/RequestParams;

    move-result-object v8

    .line 618
    .local v8, "redirectParams":Lorg/xutils/http/RequestParams;
    if-eqz v8, :cond_bf

    .line 619
    invoke-virtual {v8}, Lorg/xutils/http/RequestParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v10

    if-nez v10, :cond_a0

    .line 620
    iget-object v10, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    # getter for: Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;
    invoke-static {v10}, Lorg/xutils/http/HttpTask;->access$600(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/RequestParams;

    move-result-object v10

    invoke-virtual {v10}, Lorg/xutils/http/RequestParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/xutils/http/RequestParams;->setMethod(Lorg/xutils/http/HttpMethod;)V

    .line 623
    :cond_a0
    iget-object v10, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    # setter for: Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;
    invoke-static {v10, v8}, Lorg/xutils/http/HttpTask;->access$602(Lorg/xutils/http/HttpTask;Lorg/xutils/http/RequestParams;)Lorg/xutils/http/RequestParams;

    .line 624
    iget-object v10, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    iget-object v11, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    # invokes: Lorg/xutils/http/HttpTask;->createNewRequest()Lorg/xutils/http/request/UriRequest;
    invoke-static {v11}, Lorg/xutils/http/HttpTask;->access$700(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;

    move-result-object v11

    # setter for: Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;
    invoke-static {v10, v11}, Lorg/xutils/http/HttpTask;->access$502(Lorg/xutils/http/HttpTask;Lorg/xutils/http/request/UriRequest;)Lorg/xutils/http/request/UriRequest;

    .line 625
    new-instance v10, Lorg/xutils/ex/HttpRedirectException;

    invoke-virtual {v4}, Lorg/xutils/ex/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lorg/xutils/ex/HttpException;->getResult()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v2, v11, v12}, Lorg/xutils/ex/HttpRedirectException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v10, p0, Lorg/xutils/http/HttpTask$RequestWorker;->ex:Ljava/lang/Throwable;
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_bf} :catch_14d
    .catchall {:try_start_81 .. :try_end_bf} :catchall_e1

    .line 634
    .end local v2    # "errorCode":I
    .end local v4    # "httpEx":Lorg/xutils/ex/HttpException;
    .end local v7    # "redirectHandler":Lorg/xutils/http/app/RedirectHandler;
    .end local v8    # "redirectParams":Lorg/xutils/http/RequestParams;
    :cond_bf
    :goto_bf
    const-class v10, Ljava/io/File;

    iget-object v11, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    # getter for: Lorg/xutils/http/HttpTask;->loadType:Ljava/lang/reflect/Type;
    invoke-static {v11}, Lorg/xutils/http/HttpTask;->access$200(Lorg/xutils/http/HttpTask;)Ljava/lang/reflect/Type;

    move-result-object v11

    if-ne v10, v11, :cond_dd

    .line 635
    # getter for: Lorg/xutils/http/HttpTask;->sCurrFileLoadCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    monitor-enter v11

    .line 636
    :try_start_ce
    # getter for: Lorg/xutils/http/HttpTask;->sCurrFileLoadCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 637
    # getter for: Lorg/xutils/http/HttpTask;->sCurrFileLoadCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 638
    monitor-exit v11
    :try_end_dd
    .catchall {:try_start_ce .. :try_end_dd} :catchall_152

    .line 641
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_dd
    :goto_dd
    return-void

    .line 590
    :catchall_de
    move-exception v10

    :try_start_df
    monitor-exit v11
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    :try_start_e0
    throw v10
    :try_end_e1
    .catch Ljava/lang/Throwable; {:try_start_e0 .. :try_end_e1} :catch_5e
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_e1

    .line 634
    :catchall_e1
    move-exception v10

    const-class v11, Ljava/io/File;

    iget-object v12, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    # getter for: Lorg/xutils/http/HttpTask;->loadType:Ljava/lang/reflect/Type;
    invoke-static {v12}, Lorg/xutils/http/HttpTask;->access$200(Lorg/xutils/http/HttpTask;)Ljava/lang/reflect/Type;

    move-result-object v12

    if-ne v11, v12, :cond_100

    .line 635
    # getter for: Lorg/xutils/http/HttpTask;->sCurrFileLoadCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    monitor-enter v11

    .line 636
    :try_start_f1
    # getter for: Lorg/xutils/http/HttpTask;->sCurrFileLoadCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 637
    # getter for: Lorg/xutils/http/HttpTask;->sCurrFileLoadCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 638
    monitor-exit v11
    :try_end_100
    .catchall {:try_start_f1 .. :try_end_100} :catchall_155

    :cond_100
    throw v10

    .line 595
    :cond_101
    :try_start_101
    const-string v10, ""
    :try_end_103
    .catch Ljava/lang/Throwable; {:try_start_101 .. :try_end_103} :catch_5e
    .catchall {:try_start_101 .. :try_end_103} :catchall_e1

    goto/16 :goto_52

    .line 599
    :cond_105
    :try_start_105
    iget-object v10, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    # getter for: Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;
    invoke-static {v10}, Lorg/xutils/http/HttpTask;->access$500(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;

    move-result-object v10

    iget-object v11, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    # getter for: Lorg/xutils/http/HttpTask;->requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;
    invoke-static {v11}, Lorg/xutils/http/HttpTask;->access$400(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/app/RequestInterceptListener;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/xutils/http/request/UriRequest;->setRequestInterceptListener(Lorg/xutils/http/app/RequestInterceptListener;)V

    .line 600
    iget-object v10, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    # getter for: Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;
    invoke-static {v10}, Lorg/xutils/http/HttpTask;->access$500(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;

    move-result-object v10

    invoke-virtual {v10}, Lorg/xutils/http/request/UriRequest;->loadResult()Ljava/lang/Object;

    move-result-object v10

    iput-object v10, p0, Lorg/xutils/http/HttpTask$RequestWorker;->result:Ljava/lang/Object;
    :try_end_120
    .catch Ljava/lang/Throwable; {:try_start_105 .. :try_end_120} :catch_127
    .catchall {:try_start_105 .. :try_end_120} :catchall_e1

    .line 605
    :goto_120
    :try_start_120
    iget-object v10, p0, Lorg/xutils/http/HttpTask$RequestWorker;->ex:Ljava/lang/Throwable;

    if-eqz v10, :cond_12b

    .line 606
    iget-object v10, p0, Lorg/xutils/http/HttpTask$RequestWorker;->ex:Ljava/lang/Throwable;

    throw v10

    .line 601
    :catch_127
    move-exception v3

    .line 602
    .restart local v3    # "ex":Ljava/lang/Throwable;
    iput-object v3, p0, Lorg/xutils/http/HttpTask$RequestWorker;->ex:Ljava/lang/Throwable;
    :try_end_12a
    .catch Ljava/lang/Throwable; {:try_start_120 .. :try_end_12a} :catch_5e
    .catchall {:try_start_120 .. :try_end_12a} :catchall_e1

    goto :goto_120

    .line 634
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_12b
    const-class v10, Ljava/io/File;

    iget-object v11, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    # getter for: Lorg/xutils/http/HttpTask;->loadType:Ljava/lang/reflect/Type;
    invoke-static {v11}, Lorg/xutils/http/HttpTask;->access$200(Lorg/xutils/http/HttpTask;)Ljava/lang/reflect/Type;

    move-result-object v11

    if-ne v10, v11, :cond_dd

    .line 635
    # getter for: Lorg/xutils/http/HttpTask;->sCurrFileLoadCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    monitor-enter v11

    .line 636
    :try_start_13a
    # getter for: Lorg/xutils/http/HttpTask;->sCurrFileLoadCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 637
    # getter for: Lorg/xutils/http/HttpTask;->sCurrFileLoadCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 638
    monitor-exit v11

    goto :goto_dd

    :catchall_14a
    move-exception v10

    monitor-exit v11
    :try_end_14c
    .catchall {:try_start_13a .. :try_end_14c} :catchall_14a

    throw v10

    .line 627
    .restart local v2    # "errorCode":I
    .restart local v3    # "ex":Ljava/lang/Throwable;
    .restart local v4    # "httpEx":Lorg/xutils/ex/HttpException;
    .restart local v7    # "redirectHandler":Lorg/xutils/http/app/RedirectHandler;
    :catch_14d
    move-exception v9

    .line 628
    .local v9, "throwable":Ljava/lang/Throwable;
    :try_start_14e
    iput-object v3, p0, Lorg/xutils/http/HttpTask$RequestWorker;->ex:Ljava/lang/Throwable;
    :try_end_150
    .catchall {:try_start_14e .. :try_end_150} :catchall_e1

    goto/16 :goto_bf

    .line 638
    .end local v2    # "errorCode":I
    .end local v4    # "httpEx":Lorg/xutils/ex/HttpException;
    .end local v7    # "redirectHandler":Lorg/xutils/http/app/RedirectHandler;
    .end local v9    # "throwable":Ljava/lang/Throwable;
    :catchall_152
    move-exception v10

    :try_start_153
    monitor-exit v11
    :try_end_154
    .catchall {:try_start_153 .. :try_end_154} :catchall_152

    throw v10

    .end local v3    # "ex":Ljava/lang/Throwable;
    :catchall_155
    move-exception v10

    :try_start_156
    monitor-exit v11
    :try_end_157
    .catchall {:try_start_156 .. :try_end_157} :catchall_155

    throw v10

    .line 587
    :catch_158
    move-exception v10

    goto/16 :goto_10
.end method
