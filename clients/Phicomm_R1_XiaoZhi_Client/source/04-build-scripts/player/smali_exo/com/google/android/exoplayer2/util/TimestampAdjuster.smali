.class public final Lcom/google/android/exoplayer2/util/TimestampAdjuster;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_PTS_PLUS_ONE:J = 0x200000000L

.field public static final MODE_NO_OFFSET:J = 0x7fffffffffffffffL

.field public static final MODE_SHARED:J = 0x7ffffffffffffffeL


# instance fields
.field private firstSampleTimestampUs:J

.field private lastUnadjustedTimestampUs:J

.field private final nextSampleTimestampUs:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private timestampOffsetUs:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->nextSampleTimestampUs:Ljava/lang/ThreadLocal;

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->reset(J)V

    return-void
.end method

.method public static ptsToUs(J)J
    .registers 4

    const-wide/32 v0, 0xf4240

    mul-long p0, p0, v0

    const-wide/32 v0, 0x15f90

    .line 213
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static usToNonWrappedPts(J)J
    .registers 4

    const-wide/32 v0, 0x15f90

    mul-long p0, p0, v0

    const-wide/32 v0, 0xf4240

    .line 237
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static usToWrappedPts(J)J
    .registers 4

    .line 224
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->usToNonWrappedPts(J)J

    move-result-wide p0

    const-wide v0, 0x200000000L

    rem-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public declared-synchronized adjustSampleTimestamp(J)J
    .registers 8

    monitor-enter p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_c

    .line 191
    monitor-exit p0

    return-wide v0

    .line 193
    :cond_c
    :try_start_c
    iget-wide v2, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->timestampOffsetUs:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_36

    .line 194
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v4, v0, v2

    if-nez v4, :cond_2e

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->nextSampleTimestampUs:Ljava/lang/ThreadLocal;

    .line 196
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_30

    :cond_2e
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J

    :goto_30
    sub-long/2addr v0, p1

    .line 198
    iput-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->timestampOffsetUs:J

    .line 200
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 202
    :cond_36
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    .line 203
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_3a
    .catchall {:try_start_c .. :try_end_3a} :catchall_3d

    add-long/2addr p1, v0

    monitor-exit p0

    return-wide p1

    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized adjustTsTimestamp(J)J
    .registers 11

    monitor-enter p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_c

    .line 166
    monitor-exit p0

    return-wide v0

    .line 168
    :cond_c
    :try_start_c
    iget-wide v2, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_3f

    .line 171
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->usToNonWrappedPts(J)J

    move-result-wide v0

    const-wide v2, 0x100000000L

    add-long/2addr v2, v0

    const-wide v4, 0x200000000L

    .line 172
    div-long/2addr v2, v4

    const-wide/16 v6, 0x1

    sub-long v6, v2, v6

    mul-long v6, v6, v4

    add-long/2addr v6, p1

    mul-long v2, v2, v4

    add-long/2addr p1, v2

    sub-long v2, v6, v0

    .line 176
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v4, v2, v0

    if-gez v4, :cond_3f

    move-wide p1, v6

    .line 180
    :cond_3f
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->ptsToUs(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide p1
    :try_end_47
    .catchall {:try_start_c .. :try_end_47} :catchall_49

    monitor-exit p0

    return-wide p1

    :catchall_49
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getFirstSampleTimestampUs()J
    .registers 6

    monitor-enter p0

    .line 122
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1b

    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v4, v0, v2

    if-nez v4, :cond_18

    goto :goto_1b

    :cond_18
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_22

    goto :goto_20

    :cond_1b
    :goto_1b
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_20
    monitor-exit p0

    return-wide v0

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastAdjustedTimestampUs()J
    .registers 6

    monitor-enter p0

    .line 132
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_12

    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->timestampOffsetUs:J

    add-long/2addr v0, v2

    goto :goto_16

    .line 134
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 132
    :goto_16
    monitor-exit p0

    return-wide v0

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTimestampOffsetUs()J
    .registers 3

    monitor-enter p0

    .line 142
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset(J)V
    .registers 8

    monitor-enter p0

    .line 153
    :try_start_1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v0, 0x7fffffffffffffffL

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p1, v0

    if-nez v4, :cond_14

    const-wide/16 p1, 0x0

    goto :goto_15

    :cond_14
    move-wide p1, v2

    .line 154
    :goto_15
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->timestampOffsetUs:J

    .line 155
    iput-wide v2, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 156
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sharedInitializeOrWait(ZJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 103
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 104
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_37

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1f

    .line 106
    monitor-exit p0

    return-void

    :cond_1f
    if-eqz p1, :cond_2b

    .line 108
    :try_start_21
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->nextSampleTimestampUs:Ljava/lang/ThreadLocal;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_35

    .line 111
    :cond_2b
    :goto_2b
    iget-wide p1, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->timestampOffsetUs:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_35

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_34
    .catchall {:try_start_21 .. :try_end_34} :catchall_37

    goto :goto_2b

    .line 115
    :cond_35
    :goto_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception p1

    monitor-exit p0

    goto :goto_3b

    :goto_3a
    throw p1

    :goto_3b
    goto :goto_3a
.end method
