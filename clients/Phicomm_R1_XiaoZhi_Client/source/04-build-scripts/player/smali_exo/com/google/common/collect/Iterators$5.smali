.class final Lcom/google/common/collect/Iterators$5;
.super Lcom/google/common/collect/UnmodifiableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterators;->partitionImpl(Ljava/util/Iterator;IZ)Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterator:Ljava/util/Iterator;

.field final synthetic val$pad:Z

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Ljava/util/Iterator;IZ)V
    .registers 4

    .line 577
    iput-object p1, p0, Lcom/google/common/collect/Iterators$5;->val$iterator:Ljava/util/Iterator;

    iput p2, p0, Lcom/google/common/collect/Iterators$5;->val$size:I

    iput-boolean p3, p0, Lcom/google/common/collect/Iterators$5;->val$pad:Z

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 580
    iget-object v0, p0, Lcom/google/common/collect/Iterators$5;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 577
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$5;->next()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 585
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$5;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 588
    iget v0, p0, Lcom/google/common/collect/Iterators$5;->val$size:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 590
    :goto_c
    iget v3, p0, Lcom/google/common/collect/Iterators$5;->val$size:I

    if-ge v2, v3, :cond_23

    iget-object v3, p0, Lcom/google/common/collect/Iterators$5;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 591
    iget-object v3, p0, Lcom/google/common/collect/Iterators$5;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_23
    move v3, v2

    .line 593
    :goto_24
    iget v4, p0, Lcom/google/common/collect/Iterators$5;->val$size:I

    if-ge v3, v4, :cond_2e

    const/4 v4, 0x0

    .line 594
    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 598
    :cond_2e
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 599
    iget-boolean v3, p0, Lcom/google/common/collect/Iterators$5;->val$pad:Z

    if-nez v3, :cond_43

    iget v3, p0, Lcom/google/common/collect/Iterators$5;->val$size:I

    if-ne v2, v3, :cond_3f

    goto :goto_43

    :cond_3f
    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_43
    :goto_43
    return-object v0

    .line 586
    :cond_44
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    goto :goto_4b

    :goto_4a
    throw v0

    :goto_4b
    goto :goto_4a
.end method
