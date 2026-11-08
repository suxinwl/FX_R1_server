.class public Lcom/easydlna/dlna/dlnaclient/DMSClient;
.super Ljava/lang/Object;
.source "DMSClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;
    }
.end annotation


# static fields
.field public static final DLNA_APP_PACKAGE_NAME_STRING:Ljava/lang/String; = "com.easydlna.application"

.field private static final DMSCLIENT_TAG:Ljava/lang/String; = "DMSClient"

.field private static DMSSERVICE_INTENT_NAME_STRING:Ljava/lang/String; = null

.field public static final DMS_SERVICE_DOWN:I = 0x1

.field public static final DMS_SERVICE_ERROR:I = 0x2

.field public static final DMS_SERVICE_UP:I = 0x0

.field public static final DMS_SHARE_AUDIO:I = 0x1

.field public static final DMS_SHARE_IMAGE:I = 0x2

.field public static final DMS_SHARE_VIDEO:I


# instance fields
.field private dmsService:Lcom/easydlna/dlna/service/IDMSService;

.field private mContext:Landroid/content/Context;

.field private outterCallback:Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-string v0, "com.easydlna.dlna.service.DMSService"

    sput-object v0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->DMSSERVICE_INTENT_NAME_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    .line 29
    iput-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;

    .line 31
    new-instance v0, Lcom/easydlna/dlna/dlnaclient/DMSClient$1;

    invoke-direct {v0, p0}, Lcom/easydlna/dlna/dlnaclient/DMSClient$1;-><init>(Lcom/easydlna/dlna/dlnaclient/DMSClient;)V

    iput-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->serviceConnection:Landroid/content/ServiceConnection;

    .line 59
    iput-object p1, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/easydlna/dlna/dlnaclient/DMSClient;)Lcom/easydlna/dlna/service/IDMSService;
    .registers 2
    .param p0, "x0"    # Lcom/easydlna/dlna/dlnaclient/DMSClient;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/easydlna/dlna/dlnaclient/DMSClient;Lcom/easydlna/dlna/service/IDMSService;)Lcom/easydlna/dlna/service/IDMSService;
    .registers 2
    .param p0, "x0"    # Lcom/easydlna/dlna/dlnaclient/DMSClient;
    .param p1, "x1"    # Lcom/easydlna/dlna/service/IDMSService;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/easydlna/dlna/dlnaclient/DMSClient;)Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;
    .registers 2
    .param p0, "x0"    # Lcom/easydlna/dlna/dlnaclient/DMSClient;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;

    return-object v0
.end method


# virtual methods
.method public getDMSName()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 88
    :try_start_1
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    if-eqz v2, :cond_b

    .line 89
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    invoke-interface {v2}, Lcom/easydlna/dlna/service/IDMSService;->getServerFriendlyName()Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 93
    :cond_b
    :goto_b
    return-object v1

    .line 90
    :catch_c
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_b
.end method

.method public setDMSAutoStartup(Z)Z
    .registers 5
    .param p1, "bAutoStartup"    # Z

    .prologue
    const/4 v1, 0x0

    .line 126
    :try_start_1
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    if-eqz v2, :cond_b

    .line 127
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    invoke-interface {v2, p1}, Lcom/easydlna/dlna/service/IDMSService;->setAutoStartup(Z)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v1

    .line 131
    :cond_b
    :goto_b
    return v1

    .line 128
    :catch_c
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_b
.end method

.method public setDMSName(Ljava/lang/String;Z)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bRestart"    # Z

    .prologue
    const/4 v1, -0x1

    .line 98
    :try_start_1
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    if-eqz v2, :cond_b

    .line 99
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    invoke-interface {v2, p1, p2}, Lcom/easydlna/dlna/service/IDMSService;->setServerFriendlyName(Ljava/lang/String;Z)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v1

    .line 103
    :cond_b
    :goto_b
    return v1

    .line 100
    :catch_c
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_b
.end method

.method public setSharedContents(IZ)I
    .registers 6
    .param p1, "type"    # I
    .param p2, "bShared"    # Z

    .prologue
    const/4 v1, -0x1

    .line 107
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    if-nez v2, :cond_6

    .line 121
    :cond_5
    :goto_5
    return v1

    .line 109
    :cond_6
    if-eqz p1, :cond_e

    const/4 v2, 0x1

    if-eq p1, v2, :cond_e

    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 113
    :cond_e
    if-eqz p2, :cond_17

    .line 114
    :try_start_10
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    invoke-interface {v2, p1}, Lcom/easydlna/dlna/service/IDMSService;->addSharedContents(I)I

    move-result v1

    goto :goto_5

    .line 116
    :cond_17
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    invoke-interface {v2, p1}, Lcom/easydlna/dlna/service/IDMSService;->removeSharedContents(I)I
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_1e

    move-result v1

    goto :goto_5

    .line 117
    :catch_1e
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public startDMS(Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;)I
    .registers 6
    .param p1, "callback"    # Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;

    .line 65
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1d

    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/easydlna/dlna/dlnaclient/DMSClient;->DMSSERVICE_INTENT_NAME_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v1, "com.easydlna.application"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 73
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1d
    const/4 v1, 0x0

    return v1
.end method

.method public stopDMS()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 77
    iput-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;

    .line 78
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_14

    .line 79
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    if-eqz v0, :cond_12

    .line 80
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 81
    :cond_12
    iput-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    .line 83
    :cond_14
    const/4 v0, 0x0

    return v0
.end method
