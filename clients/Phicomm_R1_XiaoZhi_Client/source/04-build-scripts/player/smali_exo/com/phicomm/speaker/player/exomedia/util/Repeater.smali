.class public Lcom/phicomm/speaker/player/exomedia/util/Repeater;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/exomedia/util/Repeater$PollRunnable;,
        Lcom/phicomm/speaker/player/exomedia/util/Repeater$RepeatListener;
    }
.end annotation


# static fields
.field protected static final DEFAULT_REPEAT_DELAY:I = 0x21

.field protected static final HANDLER_THREAD_NAME:Ljava/lang/String; = "ExoMedia_Repeater_HandlerThread"


# instance fields
.field protected delayedHandler:Landroid/os/Handler;

.field protected handlerThread:Landroid/os/HandlerThread;

.field protected listener:Lcom/phicomm/speaker/player/exomedia/util/Repeater$RepeatListener;

.field protected pollRunnable:Lcom/phicomm/speaker/player/exomedia/util/Repeater$PollRunnable;

.field protected repeatDelay:I

.field protected volatile repeaterRunning:Z

.field protected useHandlerThread:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/exomedia/util/Repeater;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->repeaterRunning:Z

    const/16 v1, 0x21

    iput v1, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->repeatDelay:I

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->useHandlerThread:Z

    new-instance v0, Lcom/phicomm/speaker/player/exomedia/util/Repeater$PollRunnable;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/exomedia/util/Repeater$PollRunnable;-><init>(Lcom/phicomm/speaker/player/exomedia/util/Repeater;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->pollRunnable:Lcom/phicomm/speaker/player/exomedia/util/Repeater$PollRunnable;

    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->delayedHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->repeaterRunning:Z

    const/16 v1, 0x21

    iput v1, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->repeatDelay:I

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->useHandlerThread:Z

    new-instance v0, Lcom/phicomm/speaker/player/exomedia/util/Repeater$PollRunnable;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/exomedia/util/Repeater$PollRunnable;-><init>(Lcom/phicomm/speaker/player/exomedia/util/Repeater;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->pollRunnable:Lcom/phicomm/speaker/player/exomedia/util/Repeater$PollRunnable;

    if-eqz p1, :cond_1d

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->delayedHandler:Landroid/os/Handler;

    goto :goto_20

    :cond_1d
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->useHandlerThread:Z

    :goto_20
    return-void
.end method


# virtual methods
.method public getRepeaterDelay()I
    .registers 2

    iget v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->repeatDelay:I

    return v0
.end method

.method public isRunning()Z
    .registers 2

    iget-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->repeaterRunning:Z

    return v0
.end method

.method public setRepeatListener(Lcom/phicomm/speaker/player/exomedia/util/Repeater$RepeatListener;)V
    .registers 2

    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->listener:Lcom/phicomm/speaker/player/exomedia/util/Repeater$RepeatListener;

    return-void
.end method

.method public setRepeaterDelay(I)V
    .registers 2

    iput p1, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->repeatDelay:I

    return-void
.end method

.method public start()V
    .registers 3

    iget-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->repeaterRunning:Z

    if-nez v0, :cond_29

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->repeaterRunning:Z

    iget-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->useHandlerThread:Z

    if-eqz v0, :cond_24

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoMedia_Repeater_HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->delayedHandler:Landroid/os/Handler;

    :cond_24
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->pollRunnable:Lcom/phicomm/speaker/player/exomedia/util/Repeater$PollRunnable;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/util/Repeater$PollRunnable;->performPoll()V

    :cond_29
    return-void
.end method

.method public stop()V
    .registers 2

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->repeaterRunning:Z

    return-void
.end method
