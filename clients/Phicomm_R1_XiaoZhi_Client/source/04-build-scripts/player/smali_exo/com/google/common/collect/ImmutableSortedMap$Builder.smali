.class public Lcom/google/common/collect/ImmutableSortedMap$Builder;
.super Lcom/google/common/collect/ImmutableMap$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap$Builder<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    .line 414
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 415
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/common/collect/ImmutableMap;
    .registers 2

    .line 406
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->build()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/common/collect/ImmutableSortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 497
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    if-eqz v0, :cond_2a

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_13

    .line 503
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    iget v3, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->size:I

    # invokes: Lcom/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lcom/google/common/collect/ImmutableSortedMap;
    invoke-static {v0, v2, v1, v3}, Lcom/google/common/collect/ImmutableSortedMap;->access$100(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 501
    :cond_13
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    # invokes: Lcom/google/common/collect/ImmutableSortedMap;->of(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSortedMap;->access$000(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 499
    :cond_2a
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic orderEntriesByValue(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMap$Builder;
    .registers 2

    .line 406
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->orderEntriesByValue(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public orderEntriesByValue(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 486
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not available on ImmutableSortedMap.Builder"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;
    .registers 3

    .line 406
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$Builder;
    .registers 2

    .line 406
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 426
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 441
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$Builder;

    return-object p0
.end method

.method public bridge synthetic putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap$Builder;
    .registers 2

    .line 406
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;
    .registers 2

    .line 406
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 471
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap$Builder;

    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 455
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;

    return-object p0
.end method
