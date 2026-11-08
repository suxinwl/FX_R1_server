.class public final Lcom/google/android/exoplayer2/SeekParameters;
.super Ljava/lang/Object;


# static fields
.field public static final CLOSEST_SYNC:Lcom/google/android/exoplayer2/SeekParameters;

.field public static final DEFAULT:Lcom/google/android/exoplayer2/SeekParameters;

.field public static final EXACT:Lcom/google/android/exoplayer2/SeekParameters;

.field public static final NEXT_SYNC:Lcom/google/android/exoplayer2/SeekParameters;

.field public static final PREVIOUS_SYNC:Lcom/google/android/exoplayer2/SeekParameters;


# instance fields
.field public final toleranceAfterUs:J

.field public final toleranceBeforeUs:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 40
    new-instance v0, Lcom/google/android/exoplayer2/SeekParameters;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/google/android/exoplayer2/SeekParameters;-><init>(JJ)V

    sput-object v0, Lcom/google/android/exoplayer2/SeekParameters;->EXACT:Lcom/google/android/exoplayer2/SeekParameters;

    .line 42
    new-instance v0, Lcom/google/android/exoplayer2/SeekParameters;

    const-wide v3, 0x7fffffffffffffffL

    invoke-direct {v0, v3, v4, v3, v4}, Lcom/google/android/exoplayer2/SeekParameters;-><init>(JJ)V

    sput-object v0, Lcom/google/android/exoplayer2/SeekParameters;->CLOSEST_SYNC:Lcom/google/android/exoplayer2/SeekParameters;

    .line 45
    new-instance v0, Lcom/google/android/exoplayer2/SeekParameters;

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/android/exoplayer2/SeekParameters;-><init>(JJ)V

    sput-object v0, Lcom/google/android/exoplayer2/SeekParameters;->PREVIOUS_SYNC:Lcom/google/android/exoplayer2/SeekParameters;

    .line 47
    new-instance v0, Lcom/google/android/exoplayer2/SeekParameters;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/SeekParameters;-><init>(JJ)V

    sput-object v0, Lcom/google/android/exoplayer2/SeekParameters;->NEXT_SYNC:Lcom/google/android/exoplayer2/SeekParameters;

    .line 49
    sget-object v0, Lcom/google/android/exoplayer2/SeekParameters;->EXACT:Lcom/google/android/exoplayer2/SeekParameters;

    sput-object v0, Lcom/google/android/exoplayer2/SeekParameters;->DEFAULT:Lcom/google/android/exoplayer2/SeekParameters;

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 10

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_e

    :cond_d
    const/4 v4, 0x0

    .line 69
    :goto_e
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    cmp-long v4, p3, v2

    if-ltz v4, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 70
    :goto_17
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 71
    iput-wide p1, p0, Lcom/google/android/exoplayer2/SeekParameters;->toleranceBeforeUs:J

    .line 72
    iput-wide p3, p0, Lcom/google/android/exoplayer2/SeekParameters;->toleranceAfterUs:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 118
    :cond_12
    check-cast p1, Lcom/google/android/exoplayer2/SeekParameters;

    .line 119
    iget-wide v2, p0, Lcom/google/android/exoplayer2/SeekParameters;->toleranceBeforeUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/SeekParameters;->toleranceBeforeUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_25

    iget-wide v2, p0, Lcom/google/android/exoplayer2/SeekParameters;->toleranceAfterUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/SeekParameters;->toleranceAfterUs:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public hashCode()I
    .registers 5

    .line 125
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SeekParameters;->toleranceBeforeUs:J

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/SeekParameters;->toleranceAfterUs:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public resolveSeekPositionUs(JJJ)J
    .registers 15

    .line 86
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SeekParameters;->toleranceBeforeUs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_f

    iget-wide v0, p0, Lcom/google/android/exoplayer2/SeekParameters;->toleranceAfterUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_f

    return-wide p1

    .line 89
    :cond_f
    iget-wide v2, p0, Lcom/google/android/exoplayer2/SeekParameters;->toleranceBeforeUs:J

    const-wide/high16 v4, -0x8000000000000000L

    move-wide v0, p1

    .line 90
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/Util;->subtractWithOverflowDefault(JJJ)J

    move-result-wide v6

    .line 91
    iget-wide v2, p0, Lcom/google/android/exoplayer2/SeekParameters;->toleranceAfterUs:J

    const-wide v4, 0x7fffffffffffffffL

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/Util;->addWithOverflowDefault(JJJ)J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmp-long v4, v6, p3

    if-gtz v4, :cond_2f

    cmp-long v4, p3, v0

    if-gtz v4, :cond_2f

    const/4 v4, 0x1

    goto :goto_30

    :cond_2f
    const/4 v4, 0x0

    :goto_30
    cmp-long v5, v6, p5

    if-gtz v5, :cond_39

    cmp-long v5, p5, v0

    if-gtz v5, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v2, 0x0

    :goto_3a
    if-eqz v4, :cond_50

    if-eqz v2, :cond_50

    sub-long v0, p3, p1

    .line 96
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long v2, p5, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_4f

    return-wide p3

    :cond_4f
    return-wide p5

    :cond_50
    if-eqz v4, :cond_53

    return-wide p3

    :cond_53
    if-eqz v2, :cond_56

    return-wide p5

    :cond_56
    return-wide v6
.end method
