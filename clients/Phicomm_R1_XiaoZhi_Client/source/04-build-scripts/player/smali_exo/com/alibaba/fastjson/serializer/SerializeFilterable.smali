.class public abstract Lcom/alibaba/fastjson/serializer/SerializeFilterable;
.super Ljava/lang/Object;


# instance fields
.field protected afterFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/AfterFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected beforeFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/BeforeFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected contextValueFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/ContextValueFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected labelFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/LabelFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected nameFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/NameFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected propertyFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/PropertyFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected propertyPreFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/PropertyPreFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected valueFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/ValueFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected writeDirect:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->beforeFilters:Ljava/util/List;

    .line 12
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->afterFilters:Ljava/util/List;

    .line 13
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyFilters:Ljava/util/List;

    .line 14
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->valueFilters:Ljava/util/List;

    .line 15
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->nameFilters:Ljava/util/List;

    .line 16
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyPreFilters:Ljava/util/List;

    .line 17
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->labelFilters:Ljava/util/List;

    .line 18
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->contextValueFilters:Ljava/util/List;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    return-void
.end method


# virtual methods
.method public addFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 99
    :cond_3
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    if-eqz v0, :cond_11

    .line 100
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->getPropertyPreFilters()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_11
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/NameFilter;

    if-eqz v0, :cond_1f

    .line 104
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->getNameFilters()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/alibaba/fastjson/serializer/NameFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_1f
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/ValueFilter;

    if-eqz v0, :cond_2d

    .line 108
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->getValueFilters()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/alibaba/fastjson/serializer/ValueFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_2d
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/ContextValueFilter;

    if-eqz v0, :cond_3b

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->getContextValueFilters()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/alibaba/fastjson/serializer/ContextValueFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_3b
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    if-eqz v0, :cond_49

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->getPropertyFilters()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_49
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    if-eqz v0, :cond_57

    .line 120
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->getBeforeFilters()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_57
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/AfterFilter;

    if-eqz v0, :cond_65

    .line 124
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->getAfterFilters()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/alibaba/fastjson/serializer/AfterFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_65
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/LabelFilter;

    if-eqz v0, :cond_72

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->getLabelFilters()Ljava/util/List;

    move-result-object v0

    check-cast p1, Lcom/alibaba/fastjson/serializer/LabelFilter;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_72
    return-void
.end method

.method public apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 7

    .line 158
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 159
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 160
    invoke-interface {v0, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return v1

    .line 166
    :cond_1e
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyFilters:Ljava/util/List;

    if-eqz p1, :cond_39

    .line 167
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 168
    invoke-interface {v0, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    return v1

    :cond_39
    const/4 p1, 0x1

    return p1
.end method

.method public applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 7

    .line 135
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 136
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    .line 137
    invoke-interface {v2, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 143
    :cond_1e
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyPreFilters:Ljava/util/List;

    if-eqz v0, :cond_39

    .line 144
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    .line 145
    invoke-interface {v2, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    return v1

    :cond_39
    const/4 p1, 0x1

    return p1
.end method

.method public getAfterFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/AfterFilter;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->afterFilters:Ljava/util/List;

    if-nez v0, :cond_e

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->afterFilters:Ljava/util/List;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    .line 37
    :cond_e
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->afterFilters:Ljava/util/List;

    return-object v0
.end method

.method public getBeforeFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/BeforeFilter;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->beforeFilters:Ljava/util/List;

    if-nez v0, :cond_e

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->beforeFilters:Ljava/util/List;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    .line 28
    :cond_e
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->beforeFilters:Ljava/util/List;

    return-object v0
.end method

.method public getContextValueFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/ContextValueFilter;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->contextValueFilters:Ljava/util/List;

    if-nez v0, :cond_e

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->contextValueFilters:Ljava/util/List;

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    .line 82
    :cond_e
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->contextValueFilters:Ljava/util/List;

    return-object v0
.end method

.method public getLabelFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/LabelFilter;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->labelFilters:Ljava/util/List;

    if-nez v0, :cond_e

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->labelFilters:Ljava/util/List;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    .line 64
    :cond_e
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->labelFilters:Ljava/util/List;

    return-object v0
.end method

.method public getNameFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/NameFilter;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->nameFilters:Ljava/util/List;

    if-nez v0, :cond_e

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->nameFilters:Ljava/util/List;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    .line 46
    :cond_e
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->nameFilters:Ljava/util/List;

    return-object v0
.end method

.method public getPropertyFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/PropertyFilter;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyFilters:Ljava/util/List;

    if-nez v0, :cond_e

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyFilters:Ljava/util/List;

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    .line 73
    :cond_e
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyFilters:Ljava/util/List;

    return-object v0
.end method

.method public getPropertyPreFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/PropertyPreFilter;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyPreFilters:Ljava/util/List;

    if-nez v0, :cond_e

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyPreFilters:Ljava/util/List;

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    .line 55
    :cond_e
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyPreFilters:Ljava/util/List;

    return-object v0
.end method

.method public getValueFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/ValueFilter;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->valueFilters:Ljava/util/List;

    if-nez v0, :cond_e

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->valueFilters:Ljava/util/List;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    .line 91
    :cond_e
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->valueFilters:Ljava/util/List;

    return-object v0
.end method

.method protected processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    .line 182
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    if-eqz v0, :cond_1b

    .line 183
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 184
    invoke-interface {v0, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_a

    .line 188
    :cond_1b
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->nameFilters:Ljava/util/List;

    if-eqz p1, :cond_34

    .line 189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 190
    invoke-interface {v0, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_23

    :cond_34
    return-object p3
.end method

.method protected processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 202
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 9

    if-eqz p5, :cond_4c

    .line 213
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v0, p6, v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(IILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p6

    if-nez p6, :cond_1b

    if-eqz p2, :cond_24

    .line 214
    invoke-virtual {p2}, Lcom/alibaba/fastjson/serializer/BeanContext;->getFeatures()I

    move-result p6

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p6, v0

    if-eqz p6, :cond_24

    :cond_1b
    instance-of p6, p5, Ljava/lang/Number;

    if-nez p6, :cond_33

    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_24

    goto :goto_33

    :cond_24
    if-eqz p2, :cond_4c

    .line 227
    invoke-virtual {p2}, Lcom/alibaba/fastjson/serializer/BeanContext;->isJsonDirect()Z

    move-result p6

    if-eqz p6, :cond_4c

    .line 228
    check-cast p5, Ljava/lang/String;

    .line 229
    invoke-static {p5}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_4c

    :cond_33
    :goto_33
    const/4 v0, 0x0

    if-eqz p6, :cond_3c

    if-eqz p2, :cond_3c

    .line 219
    invoke-virtual {p2}, Lcom/alibaba/fastjson/serializer/BeanContext;->getFormat()Ljava/lang/String;

    move-result-object v0

    :cond_3c
    if-eqz v0, :cond_48

    .line 223
    new-instance p6, Ljava/text/DecimalFormat;

    invoke-direct {p6, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p5}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    goto :goto_4c

    .line 225
    :cond_48
    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    .line 233
    :cond_4c
    :goto_4c
    iget-object p6, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->valueFilters:Ljava/util/List;

    if-eqz p6, :cond_67

    .line 234
    iget-object p6, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->valueFilters:Ljava/util/List;

    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_56
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/ValueFilter;

    .line 235
    invoke-interface {v0, p3, p4, p5}, Lcom/alibaba/fastjson/serializer/ValueFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_56

    .line 239
    :cond_67
    iget-object p6, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->valueFilters:Ljava/util/List;

    if-eqz p6, :cond_80

    .line 241
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_6f
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/ValueFilter;

    .line 242
    invoke-interface {v0, p3, p4, p5}, Lcom/alibaba/fastjson/serializer/ValueFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_6f

    .line 246
    :cond_80
    iget-object p6, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->contextValueFilters:Ljava/util/List;

    if-eqz p6, :cond_9b

    .line 247
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->contextValueFilters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_9b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/alibaba/fastjson/serializer/ContextValueFilter;

    .line 248
    invoke-interface {p6, p2, p3, p4, p5}, Lcom/alibaba/fastjson/serializer/ContextValueFilter;->process(Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_8a

    .line 252
    :cond_9b
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->contextValueFilters:Ljava/util/List;

    if-eqz p1, :cond_b4

    .line 253
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_b4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/alibaba/fastjson/serializer/ContextValueFilter;

    .line 254
    invoke-interface {p6, p2, p3, p4, p5}, Lcom/alibaba/fastjson/serializer/ContextValueFilter;->process(Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_a3

    :cond_b4
    return-object p5
.end method

.method protected writeDirect(Lcom/alibaba/fastjson/serializer/JSONSerializer;)Z
    .registers 3

    .line 267
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-boolean v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeDirect:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    if-eqz v0, :cond_10

    iget-boolean p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeDirect:Z

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method
