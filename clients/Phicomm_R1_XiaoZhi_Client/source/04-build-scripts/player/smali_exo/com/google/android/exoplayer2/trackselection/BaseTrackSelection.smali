.class public abstract Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;


# instance fields
.field private final excludeUntilTimes:[J

.field private final formats:[Lcom/google/android/exoplayer2/Format;

.field protected final group:Lcom/google/android/exoplayer2/source/TrackGroup;

.field private hashCode:I

.field protected final length:I

.field protected final tracks:[I

.field private final type:I


# direct methods
.method public varargs constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V
    .registers 4

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[II)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[II)V
    .registers 7

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 68
    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->type:I

    .line 69
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/source/TrackGroup;

    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 70
    array-length p3, p2

    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->length:I

    .line 72
    new-array p3, p3, [Lcom/google/android/exoplayer2/Format;

    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lcom/google/android/exoplayer2/Format;

    const/4 p3, 0x0

    .line 73
    :goto_1f
    array-length v0, p2

    if-ge p3, v0, :cond_2f

    .line 74
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lcom/google/android/exoplayer2/Format;

    aget v2, p2, p3

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    aput-object v2, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1f

    .line 77
    :cond_2f
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lcom/google/android/exoplayer2/Format;

    sget-object p3, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$BaseTrackSelection$SVpuNGt4j8IqtDkli4fuykzugIE;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$BaseTrackSelection$SVpuNGt4j8IqtDkli4fuykzugIE;

    invoke-static {p2, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 79
    iget p2, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->length:I

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    .line 80
    :goto_3c
    iget p2, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->length:I

    if-ge v1, p2, :cond_4f

    .line 81
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    iget-object p3, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object p3, p3, v1

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result p3

    aput p3, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 83
    :cond_4f
    new-array p1, p2, [J

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->excludeUntilTimes:[J

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)I
    .registers 2

    .line 77
    iget p1, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget p0, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    sub-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public blacklist(IJ)Z
    .registers 14

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 169
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->isBlacklisted(IJ)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 170
    :goto_a
    iget v5, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->length:I

    const/4 v6, 0x1

    if-ge v4, v5, :cond_1f

    if-nez v2, :cond_1f

    if-eq v4, p1, :cond_1b

    .line 171
    invoke-virtual {p0, v4, v0, v1}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->isBlacklisted(IJ)Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1f
    if-nez v2, :cond_22

    return v3

    .line 176
    :cond_22
    iget-object v7, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->excludeUntilTimes:[J

    aget-wide v8, v7, p1

    const-wide v4, 0x7fffffffffffffffL

    move-wide v2, p2

    .line 179
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/Util;->addWithOverflowDefault(JJJ)J

    move-result-wide p2

    .line 177
    invoke-static {v8, v9, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    aput-wide p2, v7, p1

    return v6
.end method

.method public disable()V
    .registers 1

    return-void
.end method

.method public enable()V
    .registers 1

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 208
    :cond_12
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;

    .line 209
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v3, p1, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public evaluateQueueSize(JLjava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .line 163
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public final getFormat(I)Lcom/google/android/exoplayer2/Format;
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getIndexInTrackGroup(I)I
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    aget p1, v0, p1

    return p1
.end method

.method public final getSelectedFormat()Lcom/google/android/exoplayer2/Format;
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->getSelectedIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getSelectedIndexInTrackGroup()I
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->getSelectedIndex()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public final getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    return-object v0
.end method

.method public final getType()I
    .registers 2

    .line 90
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->type:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 192
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->hashCode:I

    if-nez v0, :cond_15

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->hashCode:I

    .line 195
    :cond_15
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->hashCode:I

    return v0
.end method

.method public final indexOf(I)I
    .registers 4

    const/4 v0, 0x0

    .line 126
    :goto_1
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->length:I

    if-ge v0, v1, :cond_f

    .line 127
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_c

    return v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    const/4 p1, -0x1

    return p1
.end method

.method public final indexOf(Lcom/google/android/exoplayer2/Format;)I
    .registers 4

    const/4 v0, 0x0

    .line 116
    :goto_1
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->length:I

    if-ge v0, v1, :cond_f

    .line 117
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_c

    return v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    const/4 p1, -0x1

    return p1
.end method

.method public isBlacklisted(IJ)Z
    .registers 7

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->excludeUntilTimes:[J

    aget-wide v1, v0, p1

    cmp-long p1, v1, p2

    if-lez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public final length()I
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    array-length v0, v0

    return v0
.end method

.method public synthetic onDiscontinuity()V
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$-CC;->$default$onDiscontinuity(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V

    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;Z)V

    return-void
.end method

.method public onPlaybackSpeed(F)V
    .registers 2

    return-void
.end method

.method public synthetic onRebuffer()V
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$-CC;->$default$onRebuffer(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V

    return-void
.end method

.method public synthetic shouldCancelChunkLoad(JLcom/google/android/exoplayer2/source/chunk/Chunk;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplayer2/source/chunk/Chunk;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$-CC;->$default$shouldCancelChunkLoad(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;JLcom/google/android/exoplayer2/source/chunk/Chunk;Ljava/util/List;)Z

    move-result p1

    return p1
.end method
