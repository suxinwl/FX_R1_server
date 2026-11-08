.class public Lcom/phicomm/speaker/player/dlna/player/CheckDelayTimer;
.super Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;
.source "CheckDelayTimer.java"


# instance fields
.field private lastPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;-><init>(Landroid/content/Context;)V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/phicomm/speaker/player/dlna/player/CheckDelayTimer;->lastPos:I

    .line 14
    return-void
.end method


# virtual methods
.method public isDelay(I)Z
    .registers 3
    .param p1, "pos"    # I

    .prologue
    .line 22
    if-eqz p1, :cond_6

    iget v0, p0, Lcom/phicomm/speaker/player/dlna/player/CheckDelayTimer;->lastPos:I

    if-eq p1, v0, :cond_8

    .line 23
    :cond_6
    const/4 v0, 0x0

    .line 26
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public setPos(I)V
    .registers 2
    .param p1, "pos"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/phicomm/speaker/player/dlna/player/CheckDelayTimer;->lastPos:I

    .line 19
    return-void
.end method
