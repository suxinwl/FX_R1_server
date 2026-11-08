.class final Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;
.super Lcom/google/common/collect/MapMakerInternalMap$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongKeyWeakValueSegment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$Segment<",
        "TK;TV;",
        "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
        "TK;TV;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final queueForValues:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;>;II)V"
        }
    .end annotation

    .line 1881
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    .line 1869
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;
    .registers 1

    .line 1867
    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .registers 2

    .line 1867
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1897
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    return-object p1
.end method

.method getValueReferenceQueueForTesting()Ljava/lang/ref/ReferenceQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation

    .line 1891
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method public getWeakValueReferenceForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1903
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object p1

    return-object p1
.end method

.method maybeClearReferenceQueues()V
    .registers 2

    .line 1933
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->clearReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method maybeDrainReferenceQueues()V
    .registers 2

    .line 1928
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->drainValueReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method public newWeakValueReferenceForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;TV;)",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1909
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object p1

    invoke-direct {v0, v1, p2, p1}, Lcom/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    return-object v0
.end method

.method bridge synthetic self()Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .registers 2

    .line 1867
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->self()Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    move-result-object v0

    return-object v0
.end method

.method self()Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public setWeakValueReferenceForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;+",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;>;)V"
        }
    .end annotation

    .line 1917
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object p1

    .line 1921
    # getter for: Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->access$500(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object v0

    .line 1922
    # setter for: Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    invoke-static {p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->access$502(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;)Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 1923
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;->clear()V

    return-void
.end method
