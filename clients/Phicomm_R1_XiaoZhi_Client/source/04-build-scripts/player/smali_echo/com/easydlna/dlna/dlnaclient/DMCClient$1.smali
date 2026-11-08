.class Lcom/easydlna/dlna/dlnaclient/DMCClient$1;
.super Ljava/lang/Object;
.source "DMCClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easydlna/dlna/dlnaclient/DMCClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;


# direct methods
.method constructor <init>(Lcom/easydlna/dlna/dlnaclient/DMCClient;)V
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x2

    .line 68
    const-string v1, "DMCClient"

    const-string v2, "DMC Service connected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;

    # getter for: Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcService:Lcom/easydlna/dlna/service/IDMCService;
    invoke-static {v1}, Lcom/easydlna/dlna/dlnaclient/DMCClient;->access$100(Lcom/easydlna/dlna/dlnaclient/DMCClient;)Lcom/easydlna/dlna/service/IDMCService;

    move-result-object v1

    if-nez v1, :cond_19

    .line 70
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;

    invoke-static {p2}, Lcom/easydlna/dlna/service/IDMCService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/easydlna/dlna/service/IDMCService;

    move-result-object v2

    # setter for: Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcService:Lcom/easydlna/dlna/service/IDMCService;
    invoke-static {v1, v2}, Lcom/easydlna/dlna/dlnaclient/DMCClient;->access$102(Lcom/easydlna/dlna/dlnaclient/DMCClient;Lcom/easydlna/dlna/service/IDMCService;)Lcom/easydlna/dlna/service/IDMCService;

    .line 71
    :cond_19
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;

    # getter for: Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcService:Lcom/easydlna/dlna/service/IDMCService;
    invoke-static {v1}, Lcom/easydlna/dlna/dlnaclient/DMCClient;->access$100(Lcom/easydlna/dlna/dlnaclient/DMCClient;)Lcom/easydlna/dlna/service/IDMCService;

    move-result-object v1

    if-nez v1, :cond_3a

    .line 72
    const-string v1, "DMCClient"

    const-string v2, "DMC Service fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;

    # getter for: Lcom/easydlna/dlna/dlnaclient/DMCClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;
    invoke-static {v1}, Lcom/easydlna/dlna/dlnaclient/DMCClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMCClient;)Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 74
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;

    # getter for: Lcom/easydlna/dlna/dlnaclient/DMCClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;
    invoke-static {v1}, Lcom/easydlna/dlna/dlnaclient/DMCClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMCClient;)Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;->DMCServiceStatusNotify(I)V

    .line 91
    :cond_39
    :goto_39
    return-void

    .line 78
    :cond_3a
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;

    # getter for: Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcSeriveListener:Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;
    invoke-static {v1}, Lcom/easydlna/dlna/dlnaclient/DMCClient;->access$200(Lcom/easydlna/dlna/dlnaclient/DMCClient;)Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;

    move-result-object v1

    if-nez v1, :cond_4f

    .line 79
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;

    new-instance v2, Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;

    iget-object v3, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;-><init>(Lcom/easydlna/dlna/dlnaclient/DMCClient;Lcom/easydlna/dlna/dlnaclient/DMCClient$1;)V

    # setter for: Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcSeriveListener:Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;
    invoke-static {v1, v2}, Lcom/easydlna/dlna/dlnaclient/DMCClient;->access$202(Lcom/easydlna/dlna/dlnaclient/DMCClient;Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;)Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;

    .line 81
    :cond_4f
    :try_start_4f
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;

    # getter for: Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcService:Lcom/easydlna/dlna/service/IDMCService;
    invoke-static {v1}, Lcom/easydlna/dlna/dlnaclient/DMCClient;->access$100(Lcom/easydlna/dlna/dlnaclient/DMCClient;)Lcom/easydlna/dlna/service/IDMCService;

    move-result-object v1

    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;

    # getter for: Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcSeriveListener:Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;
    invoke-static {v2}, Lcom/easydlna/dlna/dlnaclient/DMCClient;->access$200(Lcom/easydlna/dlna/dlnaclient/DMCClient;)Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/easydlna/dlna/service/IDMCService;->addDMCCallback(Lcom/easydlna/dlna/service/IDMCCallback;)V

    .line 82
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;

    # getter for: Lcom/easydlna/dlna/dlnaclient/DMCClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;
    invoke-static {v1}, Lcom/easydlna/dlna/dlnaclient/DMCClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMCClient;)Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 83
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;

    # getter for: Lcom/easydlna/dlna/dlnaclient/DMCClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;
    invoke-static {v1}, Lcom/easydlna/dlna/dlnaclient/DMCClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMCClient;)Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;->DMCServiceStatusNotify(I)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_70} :catch_71

    goto :goto_39

    .line 85
    :catch_71
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 87
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;

    # getter for: Lcom/easydlna/dlna/dlnaclient/DMCClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;
    invoke-static {v1}, Lcom/easydlna/dlna/dlnaclient/DMCClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMCClient;)Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 88
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;

    # getter for: Lcom/easydlna/dlna/dlnaclient/DMCClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;
    invoke-static {v1}, Lcom/easydlna/dlna/dlnaclient/DMCClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMCClient;)Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;->DMCServiceStatusNotify(I)V

    goto :goto_39
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;

    # getter for: Lcom/easydlna/dlna/dlnaclient/DMCClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;
    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMCClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMCClient;)Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 95
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;

    # getter for: Lcom/easydlna/dlna/dlnaclient/DMCClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;
    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMCClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMCClient;)Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;->DMCServiceStatusNotify(I)V

    .line 96
    :cond_12
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;

    const/4 v1, 0x0

    # setter for: Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcService:Lcom/easydlna/dlna/service/IDMCService;
    invoke-static {v0, v1}, Lcom/easydlna/dlna/dlnaclient/DMCClient;->access$102(Lcom/easydlna/dlna/dlnaclient/DMCClient;Lcom/easydlna/dlna/service/IDMCService;)Lcom/easydlna/dlna/service/IDMCService;

    .line 97
    const-string v0, "DMCClient"

    const-string v1, "DMC Service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method
