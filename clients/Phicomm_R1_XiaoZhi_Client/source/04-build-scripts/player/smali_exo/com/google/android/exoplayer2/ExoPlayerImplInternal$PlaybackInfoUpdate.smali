.class public final Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfoUpdate"
.end annotation


# instance fields
.field public discontinuityReason:I

.field private hasPendingChange:Z

.field public hasPlayWhenReadyChangeReason:Z

.field public operationAcks:I

.field public playWhenReadyChangeReason:I

.field public playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

.field public positionDiscontinuity:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V
    .registers 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)Z
    .registers 1

    .line 83
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingChange:Z

    return p0
.end method


# virtual methods
.method public incrementPendingOperationAcks(I)V
    .registers 4

    .line 99
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingChange:Z

    if-lez p1, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingChange:Z

    .line 100
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    return-void
.end method

.method public setPlayWhenReadyChangeReason(I)V
    .registers 3

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingChange:Z

    .line 124
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPlayWhenReadyChangeReason:Z

    .line 125
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playWhenReadyChangeReason:I

    return-void
.end method

.method public setPlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;)V
    .registers 4

    .line 104
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingChange:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    if-eq v1, p1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingChange:Z

    .line 105
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    return-void
.end method

.method public setPositionDiscontinuity(I)V
    .registers 5

    .line 109
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->discontinuityReason:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_12

    if-ne p1, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 113
    :goto_e
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    return-void

    .line 116
    :cond_12
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingChange:Z

    .line 117
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    .line 118
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->discontinuityReason:I

    return-void
.end method
