.class abstract Lcom/google/common/collect/AbstractMapBasedMultiset;
.super Lcom/google/common/collect/AbstractMultiset;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultiset<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1f3c5464cd7009c6L


# instance fields
.field private transient backingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TE;",
            "Lcom/google/common/collect/Count;",
            ">;"
        }
    .end annotation
.end field

.field private transient size:J


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;",
            "Lcom/google/common/collect/Count;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultiset;-><init>()V

    .line 60
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    .line 61
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->size()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$110(Lcom/google/common/collect/AbstractMapBasedMultiset;)J
    .registers 5

    .line 47
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return-wide v0
.end method

.method static synthetic access$122(Lcom/google/common/collect/AbstractMapBasedMultiset;J)J
    .registers 5

    .line 47
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return-wide v0
.end method

.method private static getAndSet(Lcom/google/common/collect/Count;I)I
    .registers 2
    .param p0    # Lcom/google/common/collect/Count;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 293
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Count;->getAndSet(I)I

    move-result p0

    return p0
.end method

.method private readObjectNoData()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 299
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Stream data required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .registers 11
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    if-nez p2, :cond_7

    .line 219
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_7
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_d

    const/4 v2, 0x1

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    const-string v3, "occurrences cannot be negative: %s"

    .line 221
    invoke-static {v2, v3, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 222
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Count;

    if-nez v2, :cond_28

    .line 226
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    new-instance v2, Lcom/google/common/collect/Count;

    invoke-direct {v2, p2}, Lcom/google/common/collect/Count;-><init>(I)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    .line 228
    :cond_28
    invoke-virtual {v2}, Lcom/google/common/collect/Count;->get()I

    move-result p1

    int-to-long v3, p1

    int-to-long v5, p2

    add-long/2addr v3, v5

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v3, v5

    if-gtz v7, :cond_37

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    const-string v1, "too many occurrences: %s"

    .line 230
    invoke-static {v0, v1, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 231
    invoke-virtual {v2, p2}, Lcom/google/common/collect/Count;->add(I)V

    move v1, p1

    .line 233
    :goto_41
    iget-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long p1, p2

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return v1
.end method

.method public clear()V
    .registers 4

    .line 130
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Count;

    const/4 v2, 0x0

    .line 131
    invoke-virtual {v1, v2}, Lcom/google/common/collect/Count;->set(I)V

    goto :goto_a

    .line 133
    :cond_1b
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    .line 134
    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return-void
.end method

.method public count(Ljava/lang/Object;)I
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 202
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Count;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_10

    .line 203
    :cond_c
    invoke-virtual {p1}, Lcom/google/common/collect/Count;->get()I

    move-result p1

    :goto_10
    return p1
.end method

.method distinctElements()I
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultiset$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultiset$1;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 80
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 151
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_7

    .line 241
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_7
    const/4 v0, 0x0

    if-lez p2, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    const-string v2, "occurrences cannot be negative: %s"

    .line 243
    invoke-static {v1, v2, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 244
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Count;

    if-nez v1, :cond_1d

    return v0

    .line 249
    :cond_1d
    invoke-virtual {v1}, Lcom/google/common/collect/Count;->get()I

    move-result v0

    if-le v0, p2, :cond_24

    goto :goto_2a

    .line 256
    :cond_24
    iget-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move p2, v0

    :goto_2a
    neg-int p1, p2

    .line 259
    invoke-virtual {v1, p1}, Lcom/google/common/collect/Count;->add(I)V

    .line 260
    iget-wide v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long p1, p2

    sub-long/2addr v1, p1

    iput-wide v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return v0
.end method

.method setBackingMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;",
            "Lcom/google/common/collect/Count;",
            ">;)V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    return-void
.end method

.method public setCount(Ljava/lang/Object;I)I
    .registers 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    const-string v0, "count"

    .line 268
    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    if-nez p2, :cond_14

    .line 273
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Count;

    .line 274
    invoke-static {p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->getAndSet(Lcom/google/common/collect/Count;I)I

    move-result p1

    goto :goto_2d

    .line 276
    :cond_14
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    .line 277
    invoke-static {v0, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->getAndSet(Lcom/google/common/collect/Count;I)I

    move-result v1

    if-nez v0, :cond_2c

    .line 280
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    new-instance v2, Lcom/google/common/collect/Count;

    invoke-direct {v2, p2}, Lcom/google/common/collect/Count;-><init>(I)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    move p1, v1

    .line 284
    :goto_2d
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    sub-int/2addr p2, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return p1
.end method

.method public size()I
    .registers 3

    .line 146
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method
