.class public Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/ShuffleOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ShuffleOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultShuffleOrder"
.end annotation


# instance fields
.field private final indexInShuffled:[I

.field private final random:Ljava/util/Random;

.field private final shuffled:[I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 45
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(ILjava/util/Random;)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 5

    .line 56
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p2, p3}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(ILjava/util/Random;)V

    return-void
.end method

.method private constructor <init>(ILjava/util/Random;)V
    .registers 3

    .line 71
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->createShuffledList(ILjava/util/Random;)[I

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    return-void
.end method

.method public constructor <init>([IJ)V
    .registers 5

    .line 67
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p2, p3}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    return-void
.end method

.method private constructor <init>([ILjava/util/Random;)V
    .registers 5

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    .line 76
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    .line 77
    array-length p2, p1

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    const/4 p2, 0x0

    .line 78
    :goto_d
    array-length v0, p1

    if-ge p2, v0, :cond_19

    .line 79
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    aget v1, p1, p2

    aput p2, v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    :cond_19
    return-void
.end method

.method private static createShuffledList(ILjava/util/Random;)[I
    .registers 7

    .line 160
    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p0, :cond_13

    add-int/lit8 v2, v1, 0x1

    .line 162
    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 163
    aget v4, v0, v3

    aput v4, v0, v1

    .line 164
    aput v1, v0, v3

    move v1, v2

    goto :goto_3

    :cond_13
    return-object v0
.end method


# virtual methods
.method public cloneAndClear()Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .registers 5

    .line 156
    new-instance v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance v1, Ljava/util/Random;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(ILjava/util/Random;)V

    return-object v0
.end method

.method public cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .registers 11

    .line 112
    new-array v0, p2, [I

    .line 113
    new-array v1, p2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, p2, :cond_26

    .line 115
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aput v4, v0, v3

    .line 116
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 117
    aget v6, v1, v4

    aput v6, v1, v3

    add-int/2addr v3, p1

    .line 118
    aput v3, v1, v4

    move v3, v5

    goto :goto_6

    .line 120
    :cond_26
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 121
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v3, v3

    add-int/2addr v3, p2

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 124
    :goto_31
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v6, v6

    add-int/2addr v6, p2

    if-ge v2, v6, :cond_5a

    if-ge v4, p2, :cond_45

    .line 125
    aget v6, v0, v4

    if-ne v5, v6, :cond_45

    add-int/lit8 v6, v4, 0x1

    .line 127
    aget v4, v1, v4

    aput v4, v3, v2

    move v4, v6

    goto :goto_57

    .line 129
    :cond_45
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    add-int/lit8 v7, v5, 0x1

    aget v5, v6, v5

    aput v5, v3, v2

    .line 130
    aget v5, v3, v2

    if-lt v5, p1, :cond_56

    .line 131
    aget v5, v3, v2

    add-int/2addr v5, p2

    aput v5, v3, v2

    :cond_56
    move v5, v7

    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 135
    :cond_5a
    new-instance p1, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance p2, Ljava/util/Random;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p1, v3, p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    return-object p1
.end method

.method public cloneAndRemove(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .registers 10

    sub-int v0, p2, p1

    .line 141
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v1, v1

    sub-int/2addr v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 143
    :goto_a
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v5, v4

    if-ge v2, v5, :cond_2d

    .line 144
    aget v5, v4, v2

    if-lt v5, p1, :cond_1a

    aget v4, v4, v2

    if-ge v4, p2, :cond_1a

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_1a
    sub-int v4, v2, v3

    .line 147
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    aget v6, v5, v2

    if-lt v6, p1, :cond_26

    aget v5, v5, v2

    sub-int/2addr v5, v0

    goto :goto_28

    :cond_26
    aget v5, v5, v2

    :goto_28
    aput v5, v1, v4

    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 151
    :cond_2d
    new-instance p1, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance p2, Ljava/util/Random;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-direct {p2, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p1, v1, p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    return-object p1
.end method

.method public getFirstIndex()I
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v1, v0

    if-lez v1, :cond_9

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    :goto_a
    return v0
.end method

.method public getLastIndex()I
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v1, v0

    if-lez v1, :cond_b

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    :goto_c
    return v0
.end method

.method public getLength()I
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v0, v0

    return v0
.end method

.method public getNextIndex(I)I
    .registers 4

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    aget p1, v0, p1

    add-int/lit8 p1, p1, 0x1

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v1, v0

    if-ge p1, v1, :cond_e

    aget p1, v0, p1

    goto :goto_f

    :cond_e
    const/4 p1, -0x1

    :goto_f
    return p1
.end method

.method public getPreviousIndex(I)I
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    aget p1, v0, p1

    const/4 v0, -0x1

    add-int/2addr p1, v0

    if-ltz p1, :cond_c

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    aget v0, v0, p1

    :cond_c
    return v0
.end method
