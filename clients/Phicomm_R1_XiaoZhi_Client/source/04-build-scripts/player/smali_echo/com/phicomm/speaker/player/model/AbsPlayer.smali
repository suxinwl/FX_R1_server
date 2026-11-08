.class public abstract Lcom/phicomm/speaker/player/model/AbsPlayer;
.super Ljava/lang/Object;
.source "AbsPlayer.java"

# interfaces
.implements Lcom/phicomm/speaker/player/interfaces/Player;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected volatile mPlayMode:I

.field protected mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/phicomm/speaker/player/model/AbsPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/model/AbsPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x2

    iput v0, p0, Lcom/phicomm/speaker/player/model/AbsPlayer;->mPlayMode:I

    return-void
.end method


# virtual methods
.method public ackNewPage(Lcom/phicomm/speaker/player/model/PlayRequestInfo;)V
    .registers 2
    .param p1, "playRequestInfo"    # Lcom/phicomm/speaker/player/model/PlayRequestInfo;

    .prologue
    .line 89
    return-void
.end method

.method public addListener(Lcom/phicomm/speaker/player/interfaces/PlayerListener;)V
    .registers 2
    .param p1, "playerListener"    # Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/AbsPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    .line 37
    return-void
.end method

.method public destroy()V
    .registers 1

    .prologue
    .line 104
    return-void
.end method

.method public getCurrentSongName()Lcom/phicomm/speaker/player/model/PlaySong;
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayAllStates()Lcom/phicomm/speaker/player/model/PlayAllStates;
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayMode()I
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lcom/phicomm/speaker/player/model/AbsPlayer;->mPlayMode:I

    return v0
.end method

.method public getPlayPosition()Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public play(Lcom/phicomm/speaker/player/model/PlayRequestInfo;Z)Z
    .registers 4
    .param p1, "playRequestInfo"    # Lcom/phicomm/speaker/player/model/PlayRequestInfo;
    .param p2, "startSelf"    # Z

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public playIndex(IZ)Z
    .registers 4
    .param p1, "index"    # I
    .param p2, "startSelf"    # Z

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public playNext(Z)Z
    .registers 3
    .param p1, "startSelf"    # Z

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public playPre(Z)Z
    .registers 3
    .param p1, "startSelf"    # Z

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public removeListener(Lcom/phicomm/speaker/player/interfaces/PlayerListener;)V
    .registers 3
    .param p1, "playerListener"    # Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AbsPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    .line 41
    return-void
.end method

.method public setPlayMode(I)Z
    .registers 5
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 21
    if-eq p1, v1, :cond_29

    const/4 v2, 0x2

    if-eq p1, v2, :cond_29

    const/4 v2, 0x3

    if-eq p1, v2, :cond_29

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/AbsPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setPlayMode error, mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    :goto_28
    return v0

    .line 27
    :cond_29
    iput p1, p0, Lcom/phicomm/speaker/player/model/AbsPlayer;->mPlayMode:I

    move v0, v1

    .line 28
    goto :goto_28
.end method

.method public startFadeIn(J)Z
    .registers 4
    .param p1, "delay"    # J

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public startServer()V
    .registers 1

    .prologue
    .line 94
    return-void
.end method

.method public stopFadeOut(J)Z
    .registers 4
    .param p1, "delay"    # J

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public stopServer()V
    .registers 1

    .prologue
    .line 99
    return-void
.end method
