.class public Lcom/phicomm/speaker/player/dlna/util/LogFactory;
.super Ljava/lang/Object;
.source "LogFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaRender"

.field private static log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput-object v0, Lcom/phicomm/speaker/player/dlna/util/LogFactory;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLog()Lcom/phicomm/speaker/player/dlna/util/CommonLog;
    .registers 2

    .prologue
    .line 9
    sget-object v0, Lcom/phicomm/speaker/player/dlna/util/LogFactory;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    if-nez v0, :cond_b

    .line 10
    new-instance v0, Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/player/dlna/util/LogFactory;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    .line 13
    :cond_b
    sget-object v0, Lcom/phicomm/speaker/player/dlna/util/LogFactory;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    const-string v1, "MediaRender"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->setTag(Ljava/lang/String;)V

    .line 14
    sget-object v0, Lcom/phicomm/speaker/player/dlna/util/LogFactory;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    return-object v0
.end method

.method public static createLog(Ljava/lang/String;)Lcom/phicomm/speaker/player/dlna/util/CommonLog;
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 18
    sget-object v0, Lcom/phicomm/speaker/player/dlna/util/LogFactory;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    if-nez v0, :cond_b

    .line 19
    new-instance v0, Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/player/dlna/util/LogFactory;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    .line 22
    :cond_b
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1e

    .line 23
    :cond_14
    sget-object v0, Lcom/phicomm/speaker/player/dlna/util/LogFactory;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    const-string v1, "MediaRender"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->setTag(Ljava/lang/String;)V

    .line 27
    :goto_1b
    sget-object v0, Lcom/phicomm/speaker/player/dlna/util/LogFactory;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    return-object v0

    .line 25
    :cond_1e
    sget-object v0, Lcom/phicomm/speaker/player/dlna/util/LogFactory;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->setTag(Ljava/lang/String;)V

    goto :goto_1b
.end method
