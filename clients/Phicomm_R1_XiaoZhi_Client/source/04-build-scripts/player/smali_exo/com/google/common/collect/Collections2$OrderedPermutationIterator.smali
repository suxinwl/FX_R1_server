.class final Lcom/google/common/collect/Collections2$OrderedPermutationIterator;
.super Lcom/google/common/collect/AbstractIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Collections2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OrderedPermutationIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/util/List<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field nextPermutation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 489
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 490
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    .line 491
    iput-object p2, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method calculateNextPermutation()V
    .registers 4

    .line 505
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->findNextJ()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    .line 507
    iput-object v0, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    return-void

    .line 511
    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->findNextL(I)I

    move-result v1

    .line 512
    iget-object v2, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    invoke-static {v2, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 513
    iget-object v1, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 514
    iget-object v2, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-void
.end method

.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .registers 2

    .line 484
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->computeNext()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    if-nez v0, :cond_b

    .line 497
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 499
    :cond_b
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 500
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->calculateNextPermutation()V

    return-object v0
.end method

.method findNextJ()I
    .registers 6

    .line 518
    iget-object v0, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_8
    if-ltz v0, :cond_24

    .line 519
    iget-object v1, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_21

    return v0

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_24
    const/4 v0, -0x1

    return v0
.end method

.method findNextL(I)I
    .registers 6

    .line 527
    iget-object v0, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 528
    iget-object v1, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    if-le v1, p1, :cond_22

    .line 529
    iget-object v2, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->comparator:Ljava/util/Comparator;

    iget-object v3, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1f

    return v1

    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 533
    :cond_22
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "this statement should be unreachable"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_2b

    :goto_2a
    throw p1

    :goto_2b
    goto :goto_2a
.end method
