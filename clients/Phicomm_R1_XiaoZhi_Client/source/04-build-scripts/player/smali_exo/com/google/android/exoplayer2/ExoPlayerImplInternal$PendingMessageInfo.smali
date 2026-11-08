.class final Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingMessageInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final message:Lcom/google/android/exoplayer2/PlayerMessage;

.field public resolvedPeriodIndex:I

.field public resolvedPeriodTimeUs:J

.field public resolvedPeriodUid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .registers 2

    .line 3020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3021
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;)I
    .registers 6

    .line 3032
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iget-object v3, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-nez v3, :cond_f

    const/4 v3, 0x1

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    :goto_10
    if-eq v0, v3, :cond_18

    .line 3034
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-eqz p1, :cond_17

    const/4 v1, -0x1

    :cond_17
    return v1

    .line 3036
    :cond_18
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-nez v0, :cond_1d

    return v2

    .line 3041
    :cond_1d
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    iget v1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_25

    return v0

    .line 3045
    :cond_25
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->compareLong(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 3012
    check-cast p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->compareTo(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;)I

    move-result p1

    return p1
.end method

.method public setResolvedPosition(IJLjava/lang/Object;)V
    .registers 5

    .line 3025
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    .line 3026
    iput-wide p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    .line 3027
    iput-object p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    return-void
.end method
