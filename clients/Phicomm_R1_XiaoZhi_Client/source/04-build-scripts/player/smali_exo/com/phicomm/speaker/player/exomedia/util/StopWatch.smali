.class public Lcom/phicomm/speaker/player/exomedia/util/StopWatch;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickListener;,
        Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;
    }
.end annotation


# static fields
.field protected static final DEFAULT_TICK_DELAY:I = 0x21

.field protected static final HANDLER_THREAD_NAME:Ljava/lang/String; = "ExoMedia_StopWatch_HandlerThread"


# instance fields
.field protected currentTime:J

.field protected delayedHandler:Landroid/os/Handler;

.field protected handlerThread:Landroid/os/HandlerThread;

.field protected volatile isRunning:Z

.field protected listener:Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickListener;

.field protected startTime:J

.field protected storedTime:J

.field protected tickDelay:I

.field protected tickRunnable:Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;

.field protected useHandlerThread:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->isRunning:Z

    const/16 v1, 0x21

    iput v1, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->tickDelay:I

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->useHandlerThread:Z

    new-instance v0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;-><init>(Lcom/phicomm/speaker/player/exomedia/util/StopWatch;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->tickRunnable:Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->startTime:J

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->currentTime:J

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->storedTime:J

    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->delayedHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->isRunning:Z

    const/16 v1, 0x21

    iput v1, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->tickDelay:I

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->useHandlerThread:Z

    new-instance v0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;-><init>(Lcom/phicomm/speaker/player/exomedia/util/StopWatch;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->tickRunnable:Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->startTime:J

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->currentTime:J

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->storedTime:J

    if-eqz p1, :cond_25

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->delayedHandler:Landroid/os/Handler;

    goto :goto_28

    :cond_25
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->useHandlerThread:Z

    :goto_28
    return-void
.end method


# virtual methods
.method public getTickDelay()I
    .registers 2

    iget v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->tickDelay:I

    return v0
.end method

.method public getTime()J
    .registers 5

    iget-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->currentTime:J

    iget-wide v2, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->storedTime:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTimeInt()I
    .registers 6

    iget-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->currentTime:J

    iget-wide v2, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->storedTime:J

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gez v4, :cond_e

    long-to-int v1, v0

    goto :goto_11

    :cond_e
    const v1, 0x7fffffff

    :goto_11
    return v1
.end method

.method public isRunning()Z
    .registers 2

    iget-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->isRunning:Z

    return v0
.end method

.method public overrideCurrentTime(J)V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->startTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->currentTime:J

    iput-wide p1, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->storedTime:J

    return-void
.end method

.method public reset()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->currentTime:J

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->storedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->startTime:J

    return-void
.end method

.method public setTickDelay(I)V
    .registers 2

    iput p1, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->tickDelay:I

    return-void
.end method

.method public setTickListener(Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->listener:Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickListener;

    return-void
.end method

.method public start()V
    .registers 3

    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_32

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->isRunning:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->startTime:J

    iget-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->useHandlerThread:Z

    if-eqz v0, :cond_2d

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoMedia_StopWatch_HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->delayedHandler:Landroid/os/Handler;

    :cond_2d
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->tickRunnable:Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;->performTick()V

    :goto_32
    return-void
.end method

.method public stop()V
    .registers 7

    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_27

    :cond_7
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->delayedHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->isRunning:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->currentTime:J

    iget-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->storedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->startTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->storedTime:J

    :goto_27
    return-void
.end method
