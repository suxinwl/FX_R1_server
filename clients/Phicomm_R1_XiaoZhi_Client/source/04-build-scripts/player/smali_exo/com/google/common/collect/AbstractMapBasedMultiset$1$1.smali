.class Lcom/google/common/collect/AbstractMapBasedMultiset$1$1;
.super Lcom/google/common/collect/Multisets$AbstractEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractMapBasedMultiset$1;->next()Lcom/google/common/collect/Multiset$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$AbstractEntry<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/AbstractMapBasedMultiset$1;

.field final synthetic val$mapEntry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset$1;Ljava/util/Map$Entry;)V
    .registers 3

    .line 98
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1$1;->this$1:Lcom/google/common/collect/AbstractMapBasedMultiset$1;

    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1$1;->val$mapEntry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 4

    .line 106
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1$1;->val$mapEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    if-eqz v0, :cond_10

    .line 107
    invoke-virtual {v0}, Lcom/google/common/collect/Count;->get()I

    move-result v1

    if-nez v1, :cond_29

    .line 108
    :cond_10
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1$1;->this$1:Lcom/google/common/collect/AbstractMapBasedMultiset$1;

    iget-object v1, v1, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    # getter for: Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$000(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$1$1;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Count;

    if-eqz v1, :cond_29

    .line 110
    invoke-virtual {v1}, Lcom/google/common/collect/Count;->get()I

    move-result v0

    return v0

    :cond_29
    if-nez v0, :cond_2d

    const/4 v0, 0x0

    goto :goto_31

    .line 113
    :cond_2d
    invoke-virtual {v0}, Lcom/google/common/collect/Count;->get()I

    move-result v0

    :goto_31
    return v0
.end method

.method public getElement()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1$1;->val$mapEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
