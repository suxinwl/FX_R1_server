.class public final Lcom/google/common/collect/ImmutableSortedMap;
.super Lcom/google/common/collect/ImmutableSortedMapFauxverideShim;

# interfaces
.implements Ljava/util/NavigableMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableSortedMap$SerializedForm;,
        Lcom/google/common/collect/ImmutableSortedMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedMapFauxverideShim<",
        "TK;TV;>;",
        "Ljava/util/NavigableMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final NATURAL_EMPTY_MAP:Lcom/google/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "Ljava/lang/Comparable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private transient descendingMap:Lcom/google/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient keySet:Lcom/google/common/collect/RegularImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RegularImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final transient valueList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 62
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 64
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/RegularImmutableSortedSet;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableSortedMap;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V

    sput-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_EMPTY_MAP:Lcom/google/common/collect/ImmutableSortedMap;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RegularImmutableSortedSet<",
            "TK;>;",
            "Lcom/google/common/collect/ImmutableList<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 513
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/ImmutableSortedMap;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSortedMap;)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSortedMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RegularImmutableSortedSet<",
            "TK;>;",
            "Lcom/google/common/collect/ImmutableList<",
            "TV;>;",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 519
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMapFauxverideShim;-><init>()V

    .line 520
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 521
    iput-object p2, p0, Lcom/google/common/collect/ImmutableSortedMap;->valueList:Lcom/google/common/collect/ImmutableList;

    .line 522
    iput-object p3, p0, Lcom/google/common/collect/ImmutableSortedMap;->descendingMap:Lcom/google/common/collect/ImmutableSortedMap;

    return-void
.end method

.method static synthetic access$000(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 3

    .line 55
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap;->of(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 4

    .line 55
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/common/collect/ImmutableSortedMap;)Lcom/google/common/collect/RegularImmutableSortedSet;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/google/common/collect/ImmutableSortedMap;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/common/collect/ImmutableSortedMap;)Lcom/google/common/collect/ImmutableList;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/google/common/collect/ImmutableSortedMap;->valueList:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 221
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    check-cast v0, Lcom/google/common/collect/Ordering;

    .line 222
    invoke-static {p0, v0}, Lcom/google/common/collect/ImmutableSortedMap;->copyOf(Ljava/lang/Iterable;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/lang/Iterable;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 238
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;ZLjava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    check-cast v0, Lcom/google/common/collect/Ordering;

    .line 183
    invoke-static {p0, v0}, Lcom/google/common/collect/ImmutableSortedMap;->copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 200
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method private static copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 274
    instance-of v0, p0, Ljava/util/SortedMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 275
    move-object v0, p0

    check-cast v0, Ljava/util/SortedMap;

    .line 276
    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    if-nez v0, :cond_15

    .line 277
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne p1, v0, :cond_1a

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_1a

    :cond_15
    invoke-interface {p1, v0}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v1, v0

    :cond_1a
    :goto_1a
    if-eqz v1, :cond_2a

    .line 283
    instance-of v0, p0, Lcom/google/common/collect/ImmutableSortedMap;

    if-eqz v0, :cond_2a

    .line 287
    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/ImmutableSortedMap;

    .line 288
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMap;->isPartialView()Z

    move-result v2

    if-nez v2, :cond_2a

    return-object v0

    .line 292
    :cond_2a
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lcom/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;ZLjava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static copyOfSorted(Ljava/util/SortedMap;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 253
    invoke-interface {p0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    if-nez v0, :cond_8

    .line 257
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 259
    :cond_8
    instance-of v1, p0, Lcom/google/common/collect/ImmutableSortedMap;

    if-eqz v1, :cond_16

    .line 263
    move-object v1, p0

    check-cast v1, Lcom/google/common/collect/ImmutableSortedMap;

    .line 264
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSortedMap;->isPartialView()Z

    move-result v2

    if-nez v2, :cond_16

    return-object v1

    :cond_16
    const/4 v1, 0x1

    .line 268
    invoke-interface {p0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;ZLjava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method static emptyMap(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 69
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 70
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedMap;->of()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0

    .line 72
    :cond_f
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/RegularImmutableSortedSet;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ImmutableSortedMap;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method private static fromEntries(Ljava/util/Comparator;ZLjava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;Z",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 307
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMap;->EMPTY_ENTRY_ARRAY:[Ljava/util/Map$Entry;

    invoke-static {p2, v0}, Lcom/google/common/collect/Iterables;->toArray(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/util/Map$Entry;

    check-cast p2, [Ljava/util/Map$Entry;

    .line 308
    array-length v0, p2

    invoke-static {p0, p1, p2, v0}, Lcom/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method private static fromEntries(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;Z[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;I)",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p3, :cond_93

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p3, v0, :cond_82

    .line 323
    new-array v2, p3, [Ljava/lang/Object;

    .line 324
    new-array v3, p3, [Ljava/lang/Object;

    if-eqz p1, :cond_24

    :goto_c
    if-ge v1, p3, :cond_6d

    .line 328
    aget-object p1, p2, v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    .line 329
    aget-object v0, p2, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 330
    invoke-static {p1, v0}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 331
    aput-object p1, v2, v1

    .line 332
    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 336
    :cond_24
    invoke-static {p0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/Ordering;->onKeys()Lcom/google/common/collect/Ordering;

    move-result-object p1

    invoke-static {p2, v1, p3, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 337
    aget-object p1, p2, v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    .line 338
    aput-object p1, v2, v1

    .line 339
    aget-object v4, p2, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    :goto_40
    if-ge v4, p3, :cond_6d

    .line 341
    aget-object v5, p2, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 342
    aget-object v6, p2, v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 343
    invoke-static {v5, v6}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 344
    aput-object v5, v2, v4

    .line 345
    aput-object v6, v3, v4

    .line 346
    invoke-interface {p0, p1, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_5d

    const/4 p1, 0x1

    goto :goto_5e

    :cond_5d
    const/4 p1, 0x0

    :goto_5e
    add-int/lit8 v6, v4, -0x1

    aget-object v6, p2, v6

    aget-object v7, p2, v4

    const-string v8, "key"

    invoke-static {p1, v8, v6, v7}, Lcom/google/common/collect/ImmutableSortedMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    add-int/lit8 v4, v4, 0x1

    move-object p1, v5

    goto :goto_40

    .line 351
    :cond_6d
    new-instance p1, Lcom/google/common/collect/ImmutableSortedMap;

    new-instance p2, Lcom/google/common/collect/RegularImmutableSortedSet;

    new-instance p3, Lcom/google/common/collect/RegularImmutableList;

    invoke-direct {p3, v2}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    invoke-direct {p2, p3, p0}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    new-instance p0, Lcom/google/common/collect/RegularImmutableList;

    invoke-direct {p0, v3}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    invoke-direct {p1, p2, p0}, Lcom/google/common/collect/ImmutableSortedMap;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V

    return-object p1

    .line 320
    :cond_82
    aget-object p1, p2, v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    aget-object p2, p2, v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap;->of(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0

    .line 318
    :cond_93
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method private getSubMap(II)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_9

    .line 621
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->size()I

    move-result v0

    if-ne p2, v0, :cond_9

    return-object p0

    :cond_9
    if-ne p1, p2, :cond_14

    .line 624
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1

    .line 626
    :cond_14
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->getSubSet(II)Lcom/google/common/collect/RegularImmutableSortedSet;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMap;->valueList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, p1, p2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/ImmutableSortedMap;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public static naturalOrder()Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 363
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static of()Lcom/google/common/collect/ImmutableSortedMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_EMPTY_MAP:Lcom/google/common/collect/ImmutableSortedMap;

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 91
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->of(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/collect/ImmutableMapEntry;

    .line 118
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v0, p1

    invoke-static {p2, p3}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap;->ofEntries([Lcom/google/common/collect/ImmutableMapEntry;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/common/collect/ImmutableMapEntry;

    .line 131
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v0, p1

    invoke-static {p2, p3}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {p4, p5}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap;->ofEntries([Lcom/google/common/collect/ImmutableMapEntry;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/common/collect/ImmutableMapEntry;

    .line 144
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v0, p1

    invoke-static {p2, p3}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {p4, p5}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    invoke-static {p6, p7}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap;->ofEntries([Lcom/google/common/collect/ImmutableMapEntry;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/common/collect/ImmutableMapEntry;

    .line 157
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v0, p1

    invoke-static {p2, p3}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {p4, p5}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    invoke-static {p6, p7}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v0, p1

    invoke-static {p8, p9}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object p0

    const/4 p1, 0x4

    aput-object p0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap;->ofEntries([Lcom/google/common/collect/ImmutableMapEntry;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method private static of(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;TK;TV;)",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap;

    new-instance v1, Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Comparator;

    invoke-direct {v1, p1, p0}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/ImmutableSortedMap;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method private static varargs ofEntries([Lcom/google/common/collect/ImmutableMapEntry;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 105
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static orderedBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 375
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static reverseOrder()Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 383
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 764
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSortedMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 769
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 607
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 579
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_10

    :cond_b
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;-><init>(Lcom/google/common/collect/ImmutableSortedMap;)V

    :goto_10
    return-object v0
.end method

.method public descendingKeySet()Lcom/google/common/collect/ImmutableSortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 842
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->descendingSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingKeySet()Ljava/util/NavigableSet;
    .registers 2

    .line 54
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->descendingKeySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Lcom/google/common/collect/ImmutableSortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 822
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->descendingMap:Lcom/google/common/collect/ImmutableSortedMap;

    if-nez v0, :cond_2e

    .line 824
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 825
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 827
    :cond_1b
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->descendingSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMap;->valueList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/google/common/collect/ImmutableSortedMap;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSortedMap;)V

    :cond_2e
    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .registers 2

    .line 54
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->descendingMap()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 547
    invoke-super {p0}, Lcom/google/common/collect/ImmutableSortedMapFauxverideShim;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .registers 2

    .line 54
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 784
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_17

    :cond_8
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_17
    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 612
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 754
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSortedMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 759
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_b

    const/4 p1, 0x0

    goto :goto_11

    .line 533
    :cond_b
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->valueList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_11
    return-object p1
.end method

.method public headMap(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 643
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public headMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result p1

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/ImmutableSortedMap;->getSubMap(II)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 3

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 2

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 774
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSortedMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 779
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .registers 2

    .line 538
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->isPartialView()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->valueList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isPartialView()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public bridge synthetic keySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .line 54
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Lcom/google/common/collect/ImmutableSortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .registers 2

    .line 54
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 789
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_1c

    :cond_8
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_1c
    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 617
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 744
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSortedMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 749
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public navigableKeySet()Lcom/google/common/collect/ImmutableSortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 837
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    return-object v0
.end method

.method public bridge synthetic navigableKeySet()Ljava/util/NavigableSet;
    .registers 2

    .line 54
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->navigableKeySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 802
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 815
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .registers 2

    .line 527
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->valueList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 678
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 699
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    const-string v1, "expected fromKey <= toKey but %s > %s"

    invoke-static {v0, v1, p1, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 706
    invoke-virtual {p0, p3, p4}, Lcom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 5

    .line 54
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public tailMap(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 721
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public tailMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 739
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->size()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap;->getSubMap(II)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 3

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 2

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public values()Lcom/google/common/collect/ImmutableCollection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->valueList:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .registers 2

    .line 54
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 2

    .line 871
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$SerializedForm;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableSortedMap;)V

    return-object v0
.end method
