.class final Lcom/google/common/collect/Hashing;
.super Ljava/lang/Object;


# static fields
.field private static final C1:I = -0x3361d2af

.field private static final C2:I = 0x1b873593

.field private static final MAX_TABLE_SIZE:I = 0x40000000


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static closedTableSize(ID)I
    .registers 6

    const/4 v0, 0x2

    .line 58
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 59
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    int-to-double v1, v0

    .line 61
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v1

    double-to-int p1, p1

    if-le p0, p1, :cond_1a

    shl-int/lit8 p0, v0, 0x1

    if-lez p0, :cond_17

    goto :goto_19

    :cond_17
    const/high16 p0, 0x40000000    # 2.0f

    :goto_19
    return p0

    :cond_1a
    return v0
.end method

.method static needsResizing(IID)Z
    .registers 8

    int-to-double v0, p0

    int-to-double v2, p1

    .line 69
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v2

    cmpl-double p0, v0, p2

    if-lez p0, :cond_11

    const/high16 p0, 0x40000000    # 2.0f

    if-ge p1, p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method static smear(I)I
    .registers 2

    const v0, -0x3361d2af    # -8.2930312E7f

    mul-int p0, p0, v0

    const/16 v0, 0xf

    .line 46
    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    const v0, 0x1b873593

    mul-int p0, p0, v0

    return p0
.end method

.method static smearedHash(Ljava/lang/Object;)I
    .registers 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 50
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_8
    invoke-static {p0}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result p0

    return p0
.end method
