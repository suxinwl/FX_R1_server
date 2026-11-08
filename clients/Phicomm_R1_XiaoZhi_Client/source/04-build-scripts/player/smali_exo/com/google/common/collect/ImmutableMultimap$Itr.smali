.class abstract Lcom/google/common/collect/ImmutableMultimap$Itr;
.super Lcom/google/common/collect/UnmodifiableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/UnmodifiableIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final mapIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/ImmutableMultimap;

.field valueIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ImmutableMultimap;)V
    .registers 2

    .line 565
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$Itr;->this$0:Lcom/google/common/collect/ImmutableMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 566
    iget-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$Itr;->this$0:Lcom/google/common/collect/ImmutableMultimap;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMultimap;->asMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$Itr;->mapIterator:Ljava/util/Iterator;

    const/4 p1, 0x0

    .line 567
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$Itr;->key:Ljava/lang/Object;

    .line 568
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$Itr;->valueIterator:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ImmutableMultimap;Lcom/google/common/collect/ImmutableMultimap$1;)V
    .registers 3

    .line 565
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$Itr;-><init>(Lcom/google/common/collect/ImmutableMultimap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 574
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Itr;->mapIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Itr;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

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

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 579
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Itr;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_22

    .line 580
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Itr;->mapIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 581
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$Itr;->key:Ljava/lang/Object;

    .line 582
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Itr;->valueIterator:Ljava/util/Iterator;

    .line 584
    :cond_22
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Itr;->key:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$Itr;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMultimap$Itr;->output(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract output(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TT;"
        }
    .end annotation
.end method
