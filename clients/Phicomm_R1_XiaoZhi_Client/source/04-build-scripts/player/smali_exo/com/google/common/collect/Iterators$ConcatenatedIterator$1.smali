.class final Lcom/google/common/collect/Iterators$ConcatenatedIterator$1;
.super Lcom/google/common/collect/MultitransformedIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterators$ConcatenatedIterator;->getComponentIterators(Ljava/util/Iterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/MultitransformedIterator<",
        "Ljava/util/Iterator<",
        "+TT;>;",
        "Ljava/util/Iterator<",
        "+TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .registers 2

    .line 1285
    invoke-direct {p0, p1}, Lcom/google/common/collect/MultitransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/util/Iterator;
    .registers 2

    .line 1285
    check-cast p1, Ljava/util/Iterator;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Iterators$ConcatenatedIterator$1;->transform(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method transform(Ljava/util/Iterator;)Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/util/Iterator<",
            "+TT;>;>;"
        }
    .end annotation

    .line 1288
    instance-of v0, p1, Lcom/google/common/collect/Iterators$ConcatenatedIterator;

    if-eqz v0, :cond_d

    .line 1289
    check-cast p1, Lcom/google/common/collect/Iterators$ConcatenatedIterator;

    .line 1291
    iget-object p1, p1, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->backingIterator:Ljava/util/Iterator;

    # invokes: Lcom/google/common/collect/Iterators$ConcatenatedIterator;->getComponentIterators(Ljava/util/Iterator;)Ljava/util/Iterator;
    invoke-static {p1}, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->access$000(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    .line 1293
    :cond_d
    invoke-static {p1}, Lcom/google/common/collect/Iterators;->singletonIterator(Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    return-object p1
.end method
