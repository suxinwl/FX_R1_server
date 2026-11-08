.class public Lorg/xutils/common/util/DoubleKeyValueMap;
.super Ljava/lang/Object;
.source "DoubleKeyValueMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K1:",
        "Ljava/lang/Object;",
        "K2:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK1;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK2;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    .local p0, "this":Lorg/xutils/common/util/DoubleKeyValueMap;, "Lorg/xutils/common/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    .line 124
    .local p0, "this":Lorg/xutils/common/util/DoubleKeyValueMap;, "Lorg/xutils/common/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    iget-object v1, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_27

    .line 125
    iget-object v1, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 126
    .local v0, "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_12

    .line 128
    .end local v0    # "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    :cond_22
    iget-object v1, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 130
    :cond_27
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;)Z"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lorg/xutils/common/util/DoubleKeyValueMap;, "Lorg/xutils/common/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    iget-object v0, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;TK2;)Z"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lorg/xutils/common/util/DoubleKeyValueMap;, "Lorg/xutils/common/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    .local p2, "key2":Ljava/lang/Object;, "TK2;"
    iget-object v0, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 90
    iget-object v0, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 92
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;TK2;)TV;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lorg/xutils/common/util/DoubleKeyValueMap;, "Lorg/xutils/common/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    .local p2, "key2":Ljava/lang/Object;, "TK2;"
    iget-object v1, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    .local v0, "k2_v":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_b
.end method

.method public get(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;)",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK2;TV;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lorg/xutils/common/util/DoubleKeyValueMap;, "Lorg/xutils/common/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    iget-object v0, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getAllValues()Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lorg/xutils/common/util/DoubleKeyValueMap;, "Lorg/xutils/common/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    const/4 v2, 0x0

    .line 75
    .local v2, "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    iget-object v4, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 76
    .local v1, "k1Set":Ljava/util/Set;, "Ljava/util/Set<TK1;>;"
    if-eqz v1, :cond_2e

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .restart local v2    # "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_12
    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, "k1":Ljava/lang/Object;, "TK1;"
    iget-object v4, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 80
    .local v3, "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v3, :cond_12

    .line 81
    invoke-interface {v2, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_12

    .line 85
    .end local v0    # "k1":Ljava/lang/Object;, "TK1;"
    .end local v3    # "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_2e
    return-object v2
.end method

.method public getAllValues(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lorg/xutils/common/util/DoubleKeyValueMap;, "Lorg/xutils/common/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    iget-object v1, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    .local v0, "k2_v":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    goto :goto_b
.end method

.method public getFirstKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK1;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lorg/xutils/common/util/DoubleKeyValueMap;, "Lorg/xutils/common/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    iget-object v0, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;TK2;TV;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lorg/xutils/common/util/DoubleKeyValueMap;, "Lorg/xutils/common/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    .local p2, "key2":Ljava/lang/Object;, "TK2;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_7

    .line 53
    :cond_6
    :goto_6
    return-void

    .line 39
    :cond_7
    iget-object v1, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 40
    iget-object v1, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    .local v0, "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    if-eqz v0, :cond_1d

    .line 42
    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 44
    :cond_1d
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v0    # "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 45
    .restart local v0    # "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 49
    .end local v0    # "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    :cond_2b
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 50
    .restart local v0    # "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v1, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6
.end method

.method public remove(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lorg/xutils/common/util/DoubleKeyValueMap;, "Lorg/xutils/common/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    iget-object v0, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;TK2;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lorg/xutils/common/util/DoubleKeyValueMap;, "Lorg/xutils/common/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    .local p2, "key2":Ljava/lang/Object;, "TK2;"
    iget-object v1, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 115
    .local v0, "k2_v":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    if-eqz v0, :cond_d

    .line 116
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_d
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 119
    :cond_15
    iget-object v1, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_1a
    return-void
.end method

.method public size()I
    .registers 5

    .prologue
    .line 100
    .local p0, "this":Lorg/xutils/common/util/DoubleKeyValueMap;, "Lorg/xutils/common/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    iget-object v2, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-nez v2, :cond_a

    const/4 v1, 0x0

    .line 106
    :cond_9
    return v1

    .line 102
    :cond_a
    const/4 v1, 0x0

    .line 103
    .local v1, "result":I
    iget-object v2, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    .local v0, "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 105
    goto :goto_15
.end method
