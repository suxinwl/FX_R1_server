.class final Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$4;
.super Ljava/lang/Object;
.source "MediaControlProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;->sendStopBorocast(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 74
    # getter for: Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;->mIMediaControlListener:Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$IMediaControlListener;
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;->access$000()Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$IMediaControlListener;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 75
    # getter for: Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;->mIMediaControlListener:Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$IMediaControlListener;
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;->access$000()Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$IMediaControlListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$IMediaControlListener;->onStopCommand()V

    .line 77
    :cond_d
    return-void
.end method
