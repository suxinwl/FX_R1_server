.class Lcom/phicomm/speaker/player/PlayerBinderWrapper$1;
.super Ljava/lang/Object;
.source "PlayerBinderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/PlayerBinderWrapper;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/PlayerBinderWrapper;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/PlayerBinderWrapper;)V
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$1;->this$0:Lcom/phicomm/speaker/player/PlayerBinderWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$1;->this$0:Lcom/phicomm/speaker/player/PlayerBinderWrapper;

    # getter for: Lcom/phicomm/speaker/player/PlayerBinderWrapper;->mPlayer:Lcom/phicomm/speaker/player/model/AbsPlayer;
    invoke-static {v0}, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->access$000(Lcom/phicomm/speaker/player/PlayerBinderWrapper;)Lcom/phicomm/speaker/player/model/AbsPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/AbsPlayer;->destroy()V

    .line 47
    return-void
.end method
