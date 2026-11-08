.class Lcom/phicomm/speaker/player/model/AirPortPlayer$ShairportListener;
.super Ljava/lang/Object;
.source "AirPortPlayer.java"

# interfaces
.implements Lcom/phicomm/speaker/player/airplay/ShairportWrapper$ShairportListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/AirPortPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShairportListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/model/AirPortPlayer;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/player/model/AirPortPlayer;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer$ShairportListener;->this$0:Lcom/phicomm/speaker/player/model/AirPortPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/player/model/AirPortPlayer;Lcom/phicomm/speaker/player/model/AirPortPlayer$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/phicomm/speaker/player/model/AirPortPlayer;
    .param p2, "x1"    # Lcom/phicomm/speaker/player/model/AirPortPlayer$1;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/AirPortPlayer$ShairportListener;-><init>(Lcom/phicomm/speaker/player/model/AirPortPlayer;)V

    return-void
.end method


# virtual methods
.method public Paused()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/AirPortPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/AirPortPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Shairport callback Paused"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer$ShairportListener;->this$0:Lcom/phicomm/speaker/player/model/AirPortPlayer;

    iget-object v0, v0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    if-eqz v0, :cond_2d

    .line 109
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer$ShairportListener;->this$0:Lcom/phicomm/speaker/player/model/AirPortPlayer;

    iget-object v0, v0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer$ShairportListener;->this$0:Lcom/phicomm/speaker/player/model/AirPortPlayer;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/phicomm/speaker/player/interfaces/PlayerListener;->onMediaState(Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 111
    :cond_2d
    return v3
.end method

.method public Playing()I
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/AirPortPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/AirPortPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Shairport callback Playing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer$ShairportListener;->this$0:Lcom/phicomm/speaker/player/model/AirPortPlayer;

    iget-object v0, v0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    if-eqz v0, :cond_2e

    .line 100
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer$ShairportListener;->this$0:Lcom/phicomm/speaker/player/model/AirPortPlayer;

    iget-object v0, v0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer$ShairportListener;->this$0:Lcom/phicomm/speaker/player/model/AirPortPlayer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/phicomm/speaker/player/interfaces/PlayerListener;->onMediaState(Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 102
    :cond_2e
    return v4
.end method

.method public Prepared()I
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/AirPortPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/AirPortPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Shairport callback Prepared"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer$ShairportListener;->this$0:Lcom/phicomm/speaker/player/model/AirPortPlayer;

    iget-object v0, v0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    if-eqz v0, :cond_2e

    .line 82
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer$ShairportListener;->this$0:Lcom/phicomm/speaker/player/model/AirPortPlayer;

    iget-object v0, v0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer$ShairportListener;->this$0:Lcom/phicomm/speaker/player/model/AirPortPlayer;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/phicomm/speaker/player/interfaces/PlayerListener;->onMediaState(Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 84
    :cond_2e
    return v4
.end method

.method public Stopped()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/AirPortPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/AirPortPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Shairport callback Stopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer$ShairportListener;->this$0:Lcom/phicomm/speaker/player/model/AirPortPlayer;

    iget-object v0, v0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    if-eqz v0, :cond_2d

    .line 91
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer$ShairportListener;->this$0:Lcom/phicomm/speaker/player/model/AirPortPlayer;

    iget-object v0, v0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer$ShairportListener;->this$0:Lcom/phicomm/speaker/player/model/AirPortPlayer;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/phicomm/speaker/player/interfaces/PlayerListener;->onMediaState(Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 93
    :cond_2d
    return v3
.end method
