.class Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateStore"
.end annotation


# static fields
.field public static final FLAG_PLAY_WHEN_READY:I = -0x10000000

.field public static final STATE_SEEKING:I = 0x64


# instance fields
.field private final prevStates:[I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 524
    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->prevStates:[I

    .line 527
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->reset()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$1;)V
    .registers 2

    .line 521
    invoke-direct {p0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;-><init>()V

    return-void
.end method


# virtual methods
.method public getMostRecentState()I
    .registers 3

    .line 549
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->prevStates:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getState(ZI)I
    .registers 3

    if-eqz p1, :cond_5

    const/high16 p1, -0x10000000

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    or-int/2addr p1, p2

    return p1
.end method

.method public isLastReportedPlayWhenReady()Z
    .registers 3

    .line 553
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->prevStates:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public matchesHistory([IZ)Z
    .registers 7

    if-eqz p2, :cond_6

    const p2, 0xfffffff

    goto :goto_7

    :cond_6
    const/4 p2, -0x1

    .line 558
    :goto_7
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->prevStates:[I

    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v0, v1

    move v1, v0

    .line 559
    :goto_d
    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->prevStates:[I

    array-length v3, v2

    if-ge v1, v3, :cond_21

    .line 560
    aget v2, v2, v1

    and-int/2addr v2, p2

    sub-int v3, v1, v0

    aget v3, p1, v3

    and-int/2addr v3, p2

    if-eq v2, v3, :cond_1e

    const/4 p1, 0x0

    return p1

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_21
    const/4 p1, 0x1

    return p1
.end method

.method public reset()V
    .registers 3

    .line 531
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->prevStates:[I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public setMostRecentState(ZI)V
    .registers 7

    .line 535
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->getState(ZI)I

    move-result p1

    .line 536
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->prevStates:[I

    const/4 v1, 0x3

    aget v2, v0, v1

    if-eq v2, p1, :cond_1c

    const/4 p1, 0x0

    const/4 v2, 0x1

    .line 537
    aget v3, v0, v2

    aput v3, v0, p1

    const/4 p1, 0x2

    .line 538
    aget v3, v0, p1

    aput v3, v0, v2

    .line 539
    aget v2, v0, v1

    aput v2, v0, p1

    .line 540
    aput p2, v0, v1

    :cond_1c
    return-void
.end method
