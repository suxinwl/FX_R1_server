.class Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;-><init>(Lcom/phicomm/speaker/player/model/MultiExoPlayer;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

.field final synthetic val$this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;Landroid/os/Looper;Lcom/phicomm/speaker/player/model/MultiExoPlayer;)V
    .registers 4

    .line 403
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$1;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    iput-object p3, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$1;->val$this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 406
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$1;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->bufferUpdateListener:Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$200(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 407
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$1;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->bufferUpdateListener:Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$200(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;->onBufferingUpdate(I)V

    goto :goto_46

    .line 408
    :cond_19
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_46

    .line 409
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$1;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->stop()V

    .line 410
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$1;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$300(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    move-result-object p1

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$1;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$300(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    move-result-object p1

    iget-object p1, p1, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnCompletionListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnCompletionListener;

    if-eqz p1, :cond_46

    .line 411
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$1;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$300(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    move-result-object p1

    iget-object p1, p1, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnCompletionListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnCompletionListener;

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$1;->this$1:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$300(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnCompletionListener;->onCompletion(Lcom/phicomm/speaker/player/model/MultiExoPlayer;)V

    :cond_46
    :goto_46
    return-void
.end method
