.class Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;
.super Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapBasedMultimap<",
        "TK;TV;>.WrappedCollection;",
        "Ljava/util/List<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V
    .registers 5
    .param p1    # Lcom/google/common/collect/AbstractMapBasedMultimap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List<",
            "TV;>;",
            "Lcom/google/common/collect/AbstractMapBasedMultimap<",
            "TK;TV;>.WrappedCollection;)V"
        }
    .end annotation

    .line 774
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    .line 775
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 813
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 814
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getDelegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 815
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 816
    iget-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    # operator++ for: Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I
    invoke-static {p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$208(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    if-eqz v0, :cond_1c

    .line 818
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->addToMap()V

    :cond_1c
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 784
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 787
    :cond_8
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->size()I

    move-result v0

    .line 788
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 790
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getDelegate()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    .line 791
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    sub-int/2addr p2, v0

    # += operator for: Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I
    invoke-static {v1, p2}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$212(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    if-nez v0, :cond_29

    .line 793
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->addToMap()V

    :cond_29
    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 801
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 802
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getListDelegate()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 779
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getDelegate()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3

    .line 833
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 834
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    .line 839
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 840
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 845
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 846
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 851
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 852
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 824
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 825
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 826
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    # operator-- for: Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I
    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$210(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    .line 827
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->removeIfEmpty()V

    return-object p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 807
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 808
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public subList(II)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 857
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->refreshIfEmpty()V

    .line 858
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getAncestor()Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    move-result-object p2

    if-nez p2, :cond_19

    move-object p2, p0

    goto :goto_1d

    :cond_19
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;->getAncestor()Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    move-result-object p2

    :goto_1d
    # invokes: Lcom/google/common/collect/AbstractMapBasedMultimap;->wrapList(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)Ljava/util/List;
    invoke-static {v0, v1, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$300(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
