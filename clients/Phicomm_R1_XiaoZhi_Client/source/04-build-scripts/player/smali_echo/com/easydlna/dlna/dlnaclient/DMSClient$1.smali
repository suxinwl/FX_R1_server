.class Lcom/easydlna/dlna/dlnaclient/DMSClient$1;
.super Ljava/lang/Object;
.source "DMSClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easydlna/dlna/dlnaclient/DMSClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easydlna/dlna/dlnaclient/DMSClient;


# direct methods
.method constructor <init>(Lcom/easydlna/dlna/dlnaclient/DMSClient;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMSClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 34
    const-string v0, "DMSClient"

    const-string v1, "DMS Service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMSClient;

    # getter for: Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;
    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMSClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMSClient;)Lcom/easydlna/dlna/service/IDMSService;

    move-result-object v0

    if-nez v0, :cond_18

    .line 36
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMSClient;

    invoke-static {p2}, Lcom/easydlna/dlna/service/IDMSService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/easydlna/dlna/service/IDMSService;

    move-result-object v1

    # setter for: Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;
    invoke-static {v0, v1}, Lcom/easydlna/dlna/dlnaclient/DMSClient;->access$002(Lcom/easydlna/dlna/dlnaclient/DMSClient;Lcom/easydlna/dlna/service/IDMSService;)Lcom/easydlna/dlna/service/IDMSService;

    .line 37
    :cond_18
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMSClient;

    # getter for: Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;
    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMSClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMSClient;)Lcom/easydlna/dlna/service/IDMSService;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 38
    const-string v0, "DMSClient"

    const-string v1, "DMR Service fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMSClient;

    # getter for: Lcom/easydlna/dlna/dlnaclient/DMSClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;
    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMSClient;->access$100(Lcom/easydlna/dlna/dlnaclient/DMSClient;)Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 40
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMSClient;

    # getter for: Lcom/easydlna/dlna/dlnaclient/DMSClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;
    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMSClient;->access$100(Lcom/easydlna/dlna/dlnaclient/DMSClient;)Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;->DMSServiceStatusNotify(I)V

    .line 45
    :cond_39
    :goto_39
    return-void

    .line 43
    :cond_3a
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMSClient;

    # getter for: Lcom/easydlna/dlna/dlnaclient/DMSClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;
    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMSClient;->access$100(Lcom/easydlna/dlna/dlnaclient/DMSClient;)Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 44
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMSClient;

    # getter for: Lcom/easydlna/dlna/dlnaclient/DMSClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;
    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMSClient;->access$100(Lcom/easydlna/dlna/dlnaclient/DMSClient;)Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;->DMSServiceStatusNotify(I)V

    goto :goto_39
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMSClient;

    # getter for: Lcom/easydlna/dlna/dlnaclient/DMSClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;
    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMSClient;->access$100(Lcom/easydlna/dlna/dlnaclient/DMSClient;)Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 50
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMSClient;

    # getter for: Lcom/easydlna/dlna/dlnaclient/DMSClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;
    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMSClient;->access$100(Lcom/easydlna/dlna/dlnaclient/DMSClient;)Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;->DMSServiceStatusNotify(I)V

    .line 51
    :cond_12
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMSClient;

    const/4 v1, 0x0

    # setter for: Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;
    invoke-static {v0, v1}, Lcom/easydlna/dlna/dlnaclient/DMSClient;->access$002(Lcom/easydlna/dlna/dlnaclient/DMSClient;Lcom/easydlna/dlna/service/IDMSService;)Lcom/easydlna/dlna/service/IDMSService;

    .line 53
    const-string v0, "DMSClient"

    const-string v1, "DMS Service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method
