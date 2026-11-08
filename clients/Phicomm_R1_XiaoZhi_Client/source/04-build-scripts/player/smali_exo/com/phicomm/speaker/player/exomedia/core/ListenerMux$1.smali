.class Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->notifyPreparedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;)V
    .registers 2

    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$1;->this$0:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$1;->this$0:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    # invokes: Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->performPreparedHandlerNotification()V
    invoke-static {v0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->access$000(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;)V

    return-void
.end method
