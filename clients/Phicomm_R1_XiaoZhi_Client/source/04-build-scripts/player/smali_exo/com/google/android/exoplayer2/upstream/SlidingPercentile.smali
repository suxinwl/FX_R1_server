.class public Lcom/google/android/exoplayer2/upstream/SlidingPercentile;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;
    }
.end annotation


# static fields
.field private static final INDEX_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_RECYCLED_SAMPLES:I = 0x5

.field private static final SORT_ORDER_BY_INDEX:I = 0x1

.field private static final SORT_ORDER_BY_VALUE:I = 0x0

.field private static final SORT_ORDER_NONE:I = -0x1

.field private static final VALUE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentSortOrder:I

.field private final maxWeight:I

.field private nextSampleIndex:I

.field private recycledSampleCount:I

.field private final recycledSamples:[Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;

.field private final samples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private totalWeight:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    sget-object v0, Lcom/google/android/exoplayer2/upstream/-$$Lambda$SlidingPercentile$OAX6wOeghCn3_9czjQPmbfo-4c8;->INSTANCE:Lcom/google/android/exoplayer2/upstream/-$$Lambda$SlidingPercentile$OAX6wOeghCn3_9czjQPmbfo-4c8;

    sput-object v0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->INDEX_COMPARATOR:Ljava/util/Comparator;

    .line 39
    sget-object v0, Lcom/google/android/exoplayer2/upstream/-$$Lambda$SlidingPercentile$-Io6bvslmz1ZIWSbxaR0nQzsmDM;->INSTANCE:Lcom/google/android/exoplayer2/upstream/-$$Lambda$SlidingPercentile$-Io6bvslmz1ZIWSbxaR0nQzsmDM;

    sput-object v0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->VALUE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->maxWeight:I

    const/4 p1, 0x5

    new-array p1, p1, [Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;

    .line 63
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->recycledSamples:[Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 65
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->currentSortOrder:I

    return-void
.end method

.method private ensureSortedByIndex()V
    .registers 4

    .line 132
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->currentSortOrder:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    sget-object v2, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->INDEX_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 134
    iput v1, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->currentSortOrder:I

    :cond_e
    return-void
.end method

.method private ensureSortedByValue()V
    .registers 3

    .line 140
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->currentSortOrder:I

    if-eqz v0, :cond_e

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->VALUE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->currentSortOrder:I

    :cond_e
    return-void
.end method

.method static synthetic lambda$static$0(Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;)I
    .registers 2

    .line 38
    iget p0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->index:I

    iget p1, p1, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->index:I

    sub-int/2addr p0, p1

    return p0
.end method

.method static synthetic lambda$static$1(Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;)I
    .registers 2

    .line 40
    iget p0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->value:F

    iget p1, p1, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->value:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method


# virtual methods
.method public addSample(IF)V
    .registers 6

    .line 83
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->ensureSortedByIndex()V

    .line 85
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->recycledSampleCount:I

    if-lez v0, :cond_10

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->recycledSamples:[Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->recycledSampleCount:I

    aget-object v0, v1, v0

    goto :goto_16

    :cond_10
    new-instance v0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;-><init>(Lcom/google/android/exoplayer2/upstream/SlidingPercentile$1;)V

    .line 87
    :goto_16
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->nextSampleIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->nextSampleIndex:I

    iput v1, v0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->index:I

    .line 88
    iput p1, v0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->weight:I

    .line 89
    iput p2, v0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->value:F

    .line 90
    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget p2, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->totalWeight:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->totalWeight:I

    .line 93
    :cond_2c
    :goto_2c
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->totalWeight:I

    iget p2, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->maxWeight:I

    if-le p1, p2, :cond_65

    sub-int/2addr p1, p2

    .line 95
    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;

    .line 96
    iget v1, p2, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->weight:I

    if-gt v1, p1, :cond_5a

    .line 97
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->totalWeight:I

    iget v1, p2, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->weight:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->totalWeight:I

    .line 98
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 99
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->recycledSampleCount:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_2c

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->recycledSamples:[Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->recycledSampleCount:I

    aput-object p2, v0, p1

    goto :goto_2c

    .line 103
    :cond_5a
    iget v0, p2, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->weight:I

    sub-int/2addr v0, p1

    iput v0, p2, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->weight:I

    .line 104
    iget p2, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->totalWeight:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->totalWeight:I

    goto :goto_2c

    :cond_65
    return-void
.end method

.method public getPercentile(F)F
    .registers 6

    .line 116
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->ensureSortedByValue()V

    .line 117
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->totalWeight:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 119
    :goto_a
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_28

    .line 120
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;

    .line 121
    iget v3, v2, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->weight:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_25

    .line 123
    iget p1, v2, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->value:F

    return p1

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 127
    :cond_28
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_33

    const/high16 p1, 0x7fc00000    # Float.NaN

    goto :goto_43

    :cond_33
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;

    iget p1, p1, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;->value:F

    :goto_43
    return p1
.end method

.method public reset()V
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->currentSortOrder:I

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->nextSampleIndex:I

    .line 73
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->totalWeight:I

    return-void
.end method
