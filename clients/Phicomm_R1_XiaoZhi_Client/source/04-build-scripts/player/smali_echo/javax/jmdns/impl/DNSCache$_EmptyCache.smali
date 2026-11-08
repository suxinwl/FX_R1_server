.class final Ljavax/jmdns/impl/DNSCache$_EmptyCache;
.super Ljavax/jmdns/impl/DNSCache;
.source "DNSCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "_EmptyCache"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSCache;-><init>()V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 127
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/util/Map;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSCache$_EmptyCache;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 56
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Ljavax/jmdns/impl/DNSCache$_EmptyCache;->put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;)",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
