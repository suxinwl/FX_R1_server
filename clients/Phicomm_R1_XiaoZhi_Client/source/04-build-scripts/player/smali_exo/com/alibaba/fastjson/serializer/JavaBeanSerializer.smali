.class public Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
.super Lcom/alibaba/fastjson/serializer/SerializeFilterable;

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# instance fields
.field protected beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

.field protected final getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

.field private volatile transient hashArray:[J

.field private volatile transient hashArrayMapping:[S

.field protected final sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V
    .registers 8

    .line 82
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    .line 85
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v0, v0

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 86
    :goto_e
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v3, v2

    if-ge v1, v3, :cond_23

    .line 87
    new-instance v3, Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iget-object v4, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    iget-object v5, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v5, v5, v1

    invoke-direct {v3, v4, v5}, Lcom/alibaba/fastjson/serializer/FieldSerializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 90
    :cond_23
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-ne v1, v2, :cond_2e

    .line 91
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    goto :goto_5b

    .line 93
    :cond_2e
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v1, v1

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    const/4 v1, 0x0

    .line 95
    :goto_36
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v2

    if-ge v1, v2, :cond_50

    .line 96
    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v2

    if-nez v2, :cond_49

    const/4 v1, 0x1

    goto :goto_51

    .line 101
    :cond_49
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_50
    const/4 v1, 0x0

    :goto_51
    if-eqz v1, :cond_5b

    .line 104
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    :cond_5b
    :goto_5b
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v1, :cond_7f

    .line 109
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFilters()[Ljava/lang/Class;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_67
    if-ge v2, v1, :cond_7f

    aget-object v3, p1, v2

    :try_start_6b
    new-array v4, v0, [Ljava/lang/Class;

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/serializer/SerializeFilter;

    .line 112
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->addFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_7c} :catch_7c

    :catch_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    :cond_7f
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 55
    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 79
    invoke-static {p1, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-static {p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->createAliasMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method static varargs createAliasMap([Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    aget-object v3, p0, v2

    .line 65
    invoke-interface {v0, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_11
    return-object v0
.end method


# virtual methods
.method protected applyLabel(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;)Z
    .registers 5

    .line 848
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->labelFilters:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 849
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->labelFilters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/LabelFilter;

    .line 850
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson/serializer/LabelFilter;->apply(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    return v1

    .line 856
    :cond_1e
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->labelFilters:Ljava/util/List;

    if-eqz p1, :cond_3b

    .line 857
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->labelFilters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/LabelFilter;

    .line 858
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson/serializer/LabelFilter;->apply(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    return v1

    :cond_3b
    const/4 p1, 0x1

    return p1
.end method

.method protected getBeanContext(I)Lcom/alibaba/fastjson/serializer/BeanContext;
    .registers 3

    .line 805
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldContext:Lcom/alibaba/fastjson/serializer/BeanContext;

    return-object p1
.end method

.method public getFieldNames(Ljava/lang/Object;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 765
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 766
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_1d

    aget-object v4, v1, v3

    .line 767
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValueDirect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1a

    .line 769
    iget-object v4, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_1d
    return-object v0
.end method

.method public getFieldSerializer(J)Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .registers 15

    .line 651
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_55

    .line 652
    invoke-static {}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->values()[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v0

    .line 654
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v3, v3

    array-length v4, v0

    mul-int v3, v3, v4

    new-array v3, v3, [J

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 656
    :goto_14
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v7, v6

    if-ge v4, v7, :cond_48

    .line 657
    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    add-int/lit8 v7, v5, 0x1

    .line 658
    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v3, v5

    move v5, v7

    const/4 v7, 0x0

    .line 660
    :goto_29
    array-length v8, v0

    if-ge v7, v8, :cond_45

    .line 661
    aget-object v8, v0, v7

    invoke-virtual {v8, v6}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 662
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_39

    goto :goto_42

    :cond_39
    add-int/lit8 v9, v5, 0x1

    .line 665
    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v3, v5

    move v5, v9

    :goto_42
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    :cond_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 668
    :cond_48
    invoke-static {v3, v2, v5}, Ljava/util/Arrays;->sort([JII)V

    .line 670
    new-array v4, v5, [J

    iput-object v4, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    .line 671
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_56

    :cond_55
    move-object v0, v1

    .line 674
    :goto_56
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    invoke-static {v3, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_5f

    return-object v1

    .line 679
    :cond_5f
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArrayMapping:[S

    const/4 v3, -0x1

    if-nez p2, :cond_b5

    if-nez v0, :cond_6a

    .line 681
    invoke-static {}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->values()[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v0

    .line 684
    :cond_6a
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    array-length p2, p2

    new-array p2, p2, [S

    .line 685
    invoke-static {p2, v3}, Ljava/util/Arrays;->fill([SS)V

    const/4 v4, 0x0

    .line 686
    :goto_73
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v6, v5

    if-ge v4, v6, :cond_b3

    .line 687
    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 689
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    .line 690
    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v7

    .line 689
    invoke-static {v6, v7, v8}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v6

    if-ltz v6, :cond_8d

    int-to-short v7, v4

    .line 692
    aput-short v7, p2, v6

    :cond_8d
    const/4 v6, 0x0

    .line 695
    :goto_8e
    array-length v7, v0

    if-ge v6, v7, :cond_b0

    .line 696
    aget-object v7, v0, v6

    invoke-virtual {v7, v5}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 697
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9e

    goto :goto_ad

    .line 701
    :cond_9e
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    .line 702
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v9

    .line 701
    invoke-static {v8, v9, v10}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v7

    if-ltz v7, :cond_ad

    int-to-short v8, v4

    .line 704
    aput-short v8, p2, v7

    :cond_ad
    :goto_ad
    add-int/lit8 v6, v6, 0x1

    goto :goto_8e

    :cond_b0
    add-int/lit8 v4, v4, 0x1

    goto :goto_73

    .line 708
    :cond_b3
    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArrayMapping:[S

    .line 711
    :cond_b5
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArrayMapping:[S

    aget-short p1, p2, p1

    if-eq p1, v3, :cond_c0

    .line 713
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object p1, p2, p1

    return-object p1

    :cond_c0
    return-object v1
.end method

.method public getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x0

    .line 628
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_a
    if-gt v1, v2, :cond_2d

    add-int v3, v1, v2

    ushr-int/lit8 v3, v3, 0x1

    .line 633
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 635
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_22

    add-int/lit8 v3, v3, 0x1

    move v1, v3

    goto :goto_a

    :cond_22
    if-lez v4, :cond_28

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    goto :goto_a

    .line 642
    :cond_28
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object p1, p1, v3

    return-object p1

    :cond_2d
    return-object v0
.end method

.method protected getFieldType(I)Ljava/lang/reflect/Type;
    .registers 3

    .line 809
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    return-object p1
.end method

.method public getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    const-string v0, "getFieldValue error."

    .line 590
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 596
    :try_start_8
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_c} :catch_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 600
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_23
    move-exception p1

    .line 598
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 592
    :cond_39
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "field not found. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFieldValue(Ljava/lang/Object;Ljava/lang/String;JZ)Ljava/lang/Object;
    .registers 7

    const-string v0, "getFieldValue error."

    .line 605
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(J)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object p3

    if-nez p3, :cond_23

    if-nez p5, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 608
    :cond_c
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "field not found. "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 614
    :cond_23
    :try_start_23
    invoke-virtual {p3, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_23 .. :try_end_27} :catch_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_27} :catch_28

    return-object p1

    :catch_28
    move-exception p1

    .line 618
    new-instance p3, Lcom/alibaba/fastjson/JSONException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_3e
    move-exception p1

    .line 616
    new-instance p3, Lcom/alibaba/fastjson/JSONException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public getFieldValues(Ljava/lang/Object;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 720
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 721
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1a

    aget-object v4, v1, v3

    .line 722
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1a
    return-object v0
.end method

.method public getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 776
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 780
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_55

    aget-object v4, v1, v3

    .line 781
    iget v5, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v5, v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    .line 782
    iget-object v6, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v5, :cond_23

    if-eqz v6, :cond_23

    .line 784
    iget-boolean v5, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    if-eqz v5, :cond_23

    goto :goto_52

    .line 788
    :cond_23
    iget-object v5, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-boolean v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v5, :cond_47

    .line 789
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 790
    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 791
    instance-of v6, v5, Ljava/util/Map;

    if-eqz v6, :cond_3b

    .line 792
    check-cast v5, Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_52

    .line 794
    :cond_3b
    iget-object v5, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 797
    :cond_47
    iget-object v5, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_55
    return-object v0
.end method

.method public getObjectFieldValues(Ljava/lang/Object;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 730
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 731
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_32

    aget-object v4, v1, v3

    .line 732
    iget-object v5, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 733
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_1b

    goto :goto_2f

    .line 736
    :cond_1b
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "java.lang."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    goto :goto_2f

    .line 739
    :cond_28
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_32
    return-object v0
.end method

.method public getSize(Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 747
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v2, v1, :cond_14

    aget-object v4, v0, v2

    .line 748
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValueDirect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_11

    add-int/lit8 v3, v3, 0x1

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    return v3
.end method

.method public getType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    return-object v0
.end method

.method protected isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;)Z
    .registers 3

    const/4 v0, 0x0

    .line 579
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;I)Z

    move-result p1

    return p1
.end method

.method protected isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;I)Z
    .registers 5

    .line 583
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 584
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    and-int/2addr v1, v0

    if-nez v1, :cond_18

    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-boolean p1, p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beanToArray:Z

    if-nez p1, :cond_18

    and-int p1, p2, v0

    if-eqz p1, :cond_16

    goto :goto_18

    :cond_16
    const/4 p1, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p1, 0x1

    :goto_19
    return p1
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 149
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    return-void
.end method

.method protected write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V
    .registers 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    .line 167
    iget-object v14, v9, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez v10, :cond_14

    .line 170
    invoke-virtual {v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 174
    :cond_14
    invoke-virtual {v8, v9, v10, v13}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeReference(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b

    return-void

    .line 180
    :cond_1b
    iget-boolean v1, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sortField:Z

    if-eqz v1, :cond_22

    .line 181
    iget-object v1, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    goto :goto_24

    .line 183
    :cond_22
    iget-object v1, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    :goto_24
    move-object v15, v1

    .line 186
    iget-object v7, v9, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 187
    iget-object v1, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_41

    .line 188
    iget-object v1, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v5, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    move-object/from16 v1, p1

    move-object v2, v7

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 191
    :cond_41
    invoke-virtual {v8, v9, v13}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;I)Z

    move-result v16

    if-eqz v16, :cond_4a

    const/16 v1, 0x5b

    goto :goto_4c

    :cond_4a
    const/16 v1, 0x7b

    :goto_4c
    if-eqz v16, :cond_53

    const/16 v2, 0x5d

    const/16 v6, 0x5d

    goto :goto_57

    :cond_53
    const/16 v2, 0x7d

    const/16 v6, 0x7d

    :goto_57
    const/16 v17, 0x0

    if-nez p6, :cond_6a

    .line 198
    :try_start_5b
    invoke-virtual {v14, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_64
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_6a

    :catchall_5f
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    goto/16 :goto_5dd

    :catch_64
    move-exception v0

    move-object v3, v0

    move-object v2, v7

    move-object v1, v10

    goto/16 :goto_531

    .line 201
    :cond_6a
    :goto_6a
    :try_start_6a
    array-length v1, v15
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6b} :catch_52d
    .catchall {:try_start_6a .. :try_end_6b} :catchall_528

    if-lez v1, :cond_7b

    :try_start_6d
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v14, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_7b} :catch_64
    .catchall {:try_start_6d .. :try_end_7b} :catchall_5f

    .line 208
    :cond_7b
    :try_start_7b
    iget-object v1, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_83} :catch_52d
    .catchall {:try_start_7b .. :try_end_83} :catchall_528

    and-int/2addr v1, v2

    if-nez v1, :cond_93

    :try_start_86
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v13

    if-nez v1, :cond_93

    .line 210
    invoke-virtual {v9, v12, v10}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isWriteClassName(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v1
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_91} :catch_64
    .catchall {:try_start_86 .. :try_end_91} :catchall_5f

    if-eqz v1, :cond_ae

    .line 211
    :cond_93
    :try_start_93
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_97} :catch_52d
    .catchall {:try_start_93 .. :try_end_97} :catchall_528

    if-eq v1, v12, :cond_a2

    .line 214
    :try_start_99
    instance-of v2, v12, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_a2

    .line 215
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_a3

    :cond_a2
    move-object v2, v12

    :goto_a3
    if-eq v1, v2, :cond_ae

    .line 221
    iget-object v1, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeKey:Ljava/lang/String;

    invoke-virtual {v8, v9, v1, v10}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_ac} :catch_64
    .catchall {:try_start_99 .. :try_end_ac} :catchall_5f

    const/4 v1, 0x1

    goto :goto_af

    :cond_ae
    const/4 v1, 0x0

    :goto_af
    const/16 v3, 0x2c

    if-eqz v1, :cond_b6

    const/16 v1, 0x2c

    goto :goto_b7

    :cond_b6
    const/4 v1, 0x0

    .line 228
    :goto_b7
    :try_start_b7
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v14, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v18

    .line 229
    invoke-virtual {v8, v9, v10, v1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result v1

    if-ne v1, v3, :cond_c5

    const/4 v1, 0x1

    goto :goto_c6

    :cond_c5
    const/4 v1, 0x0

    .line 232
    :goto_c6
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v14, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v19

    .line 233
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v14, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v20
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_d2} :catch_52d
    .catchall {:try_start_b7 .. :try_end_d2} :catchall_528

    move/from16 v21, v1

    move-object/from16 v1, v17

    const/4 v2, 0x0

    .line 235
    :goto_d7
    :try_start_d7
    array-length v3, v15
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_d8} :catch_51f
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_528

    if-ge v2, v3, :cond_4d4

    .line 236
    :try_start_da
    aget-object v3, v15, v2

    .line 238
    iget-object v4, v3, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 239
    iget-object v13, v3, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 240
    iget-object v11, v13, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v15

    .line 241
    iget-object v15, v13, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 243
    iget v5, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_ea} :catch_4cc
    .catchall {:try_start_da .. :try_end_ea} :catchall_5f

    move-object/from16 v26, v1

    :try_start_ec
    iget v1, v13, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    move/from16 v27, v2

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v5, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(IILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v28

    .line 244
    iget-boolean v1, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_f8} :catch_4ca
    .catchall {:try_start_ec .. :try_end_f8} :catchall_5f

    if-eqz v1, :cond_ff

    if-nez v28, :cond_ff

    const/16 v29, 0x1

    goto :goto_101

    :cond_ff
    const/16 v29, 0x0

    :goto_101
    if-eqz v19, :cond_110

    if-eqz v13, :cond_110

    .line 248
    :try_start_105
    iget-boolean v1, v13, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_107} :catch_10a
    .catchall {:try_start_105 .. :try_end_107} :catchall_5f

    if-eqz v1, :cond_110

    goto :goto_114

    :catch_10a
    move-exception v0

    move-object v3, v0

    move-object v2, v7

    move-object v1, v10

    goto/16 :goto_525

    :cond_110
    if-eqz v20, :cond_11e

    if-nez v4, :cond_11e

    :cond_114
    :goto_114
    move/from16 v32, v6

    move-object/from16 v33, v7

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v10, 0x2c

    goto/16 :goto_4b6

    .line 261
    :cond_11e
    :try_start_11e
    invoke-virtual {v8, v9, v10, v11}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_122} :catch_4ca
    .catchall {:try_start_11e .. :try_end_122} :catchall_5f

    if-eqz v1, :cond_12f

    :try_start_124
    iget-object v1, v13, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    .line 262
    invoke-virtual {v8, v9, v1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->applyLabel(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;)Z

    move-result v1
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_12a} :catch_10a
    .catchall {:try_start_124 .. :try_end_12a} :catchall_5f

    if-nez v1, :cond_12d

    goto :goto_12f

    :cond_12d
    const/4 v1, 0x0

    goto :goto_132

    :cond_12f
    :goto_12f
    if-eqz v16, :cond_114

    const/4 v1, 0x1

    .line 270
    :goto_132
    :try_start_132
    iget-object v2, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeKey:Ljava/lang/String;
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_136} :catch_4ca
    .catchall {:try_start_132 .. :try_end_136} :catchall_5f

    if-eqz v2, :cond_149

    :try_start_138
    iget-object v2, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeKey:Ljava/lang/String;

    .line 271
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_149

    .line 272
    invoke-virtual {v9, v12, v10}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isWriteClassName(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v2
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_146} :catch_10a
    .catchall {:try_start_138 .. :try_end_146} :catchall_5f

    if-eqz v2, :cond_149

    goto :goto_114

    :cond_149
    if-eqz v1, :cond_14e

    :goto_14b
    move-object/from16 v1, v17

    goto :goto_160

    .line 282
    :cond_14e
    :try_start_14e
    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValueDirect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_152
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_14e .. :try_end_152} :catch_153
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_152} :catch_10a
    .catchall {:try_start_14e .. :try_end_152} :catchall_5f

    goto :goto_160

    :catch_153
    move-exception v0

    move-object v1, v0

    .line 285
    :try_start_155
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreErrorGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v14, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_15b} :catch_4ae
    .catchall {:try_start_155 .. :try_end_15b} :catchall_5f

    if-eqz v2, :cond_4a4

    move-object/from16 v26, v3

    goto :goto_14b

    .line 293
    :goto_160
    :try_start_160
    invoke-virtual {v8, v9, v10, v11, v1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_167

    goto :goto_114

    .line 297
    :cond_167
    const-class v2, Ljava/lang/String;
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_169} :catch_4ca
    .catchall {:try_start_160 .. :try_end_169} :catchall_5f

    if-ne v15, v2, :cond_17d

    :try_start_16b
    const-string v2, "trim"

    iget-object v4, v13, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17d

    if-eqz v1, :cond_17d

    .line 299
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_17d} :catch_10a
    .catchall {:try_start_16b .. :try_end_17d} :catchall_5f

    :cond_17d
    move-object v5, v1

    .line 304
    :try_start_17e
    invoke-virtual {v8, v9, v10, v11, v5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 307
    iget-object v2, v3, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldContext:Lcom/alibaba/fastjson/serializer/BeanContext;
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_17e .. :try_end_184} :catch_4ca
    .catchall {:try_start_17e .. :try_end_184} :catchall_5f

    move-object/from16 v1, p0

    move-object/from16 v30, v2

    move-object/from16 v2, p1

    move-object v12, v3

    const/16 v10, 0x2c

    move-object/from16 v3, v30

    move-object/from16 v31, v4

    const/16 v22, 0x0

    move-object/from16 v4, p2

    move-object/from16 v23, v5

    move-object v5, v11

    move/from16 v32, v6

    move-object/from16 v6, v23

    move-object/from16 v33, v7

    move/from16 v7, p5

    :try_start_1a0
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1a4} :catch_49f
    .catchall {:try_start_1a0 .. :try_end_1a4} :catchall_4fe

    const-string v2, ""

    if-nez v1, :cond_2c0

    .line 311
    :try_start_1a8
    iget v3, v13, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 312
    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v4

    .line 313
    iget-object v5, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v5, :cond_1c1

    .line 314
    iget-object v5, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v5}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v5

    or-int/2addr v3, v5

    :cond_1c1
    if-eqz v4, :cond_1d3

    .line 317
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->defaultValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d3

    .line 318
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->defaultValue()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2c0

    .line 319
    :cond_1d3
    const-class v4, Ljava/lang/Boolean;

    if-ne v15, v4, :cond_209

    .line 320
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 321
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v5, v4

    if-nez v16, :cond_1ed

    and-int v6, v3, v5

    if-nez v6, :cond_1ed

    .line 322
    iget v6, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v5, v6

    if-nez v5, :cond_1ed

    goto/16 :goto_37b

    :cond_1ed
    and-int v5, v3, v4

    if-eqz v5, :cond_1f7

    .line 325
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_2c0

    .line 326
    :cond_1f7
    iget v5, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_2c0

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v4

    if-nez v3, :cond_2c0

    .line 328
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_2c0

    .line 330
    :cond_209
    const-class v4, Ljava/lang/String;

    if-ne v15, v4, :cond_237

    .line 331
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 332
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v5, v4

    if-nez v16, :cond_223

    and-int v6, v3, v5

    if-nez v6, :cond_223

    .line 333
    iget v6, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v5, v6

    if-nez v5, :cond_223

    goto/16 :goto_37b

    :cond_223
    and-int v5, v3, v4

    if-eqz v5, :cond_22a

    :goto_227
    move-object v1, v2

    goto/16 :goto_2c0

    .line 337
    :cond_22a
    iget v5, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_2c0

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v4

    if-nez v3, :cond_2c0

    goto :goto_227

    .line 341
    :cond_237
    const-class v4, Ljava/lang/Number;

    invoke-virtual {v4, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_26f

    .line 342
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 343
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v5, v4

    if-nez v16, :cond_255

    and-int v6, v3, v5

    if-nez v6, :cond_255

    .line 344
    iget v6, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v5, v6

    if-nez v5, :cond_255

    goto/16 :goto_37b

    :cond_255
    and-int v5, v3, v4

    if-eqz v5, :cond_25e

    .line 347
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2c0

    .line 348
    :cond_25e
    iget v5, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_2c0

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v4

    if-nez v3, :cond_2c0

    .line 350
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2c0

    .line 352
    :cond_26f
    const-class v4, Ljava/util/Collection;

    invoke-virtual {v4, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2a7

    .line 353
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 354
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v5, v4

    if-nez v16, :cond_28d

    and-int v6, v3, v5

    if-nez v6, :cond_28d

    .line 355
    iget v6, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v5, v6

    if-nez v5, :cond_28d

    goto/16 :goto_37b

    :cond_28d
    and-int v5, v3, v4

    if-eqz v5, :cond_296

    .line 358
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_2c0

    .line 359
    :cond_296
    iget v5, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_2c0

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v4

    if-nez v3, :cond_2c0

    .line 361
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_2c0

    :cond_2a7
    if-nez v16, :cond_2c0

    .line 363
    iget-boolean v4, v12, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeNull:Z

    if-nez v4, :cond_2c0

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 364
    invoke-virtual {v14, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_2c0

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v4

    if-nez v3, :cond_2c0

    goto/16 :goto_37b

    :cond_2c0
    :goto_2c0
    if-eqz v1, :cond_368

    .line 370
    iget-boolean v3, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->notWriteDefaultValue:Z

    if-nez v3, :cond_2da

    iget v3, v13, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v4

    if-nez v3, :cond_2da

    iget-object v3, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_368

    .line 375
    :cond_2da
    iget-object v3, v13, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 376
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_2ef

    instance-of v4, v1, Ljava/lang/Byte;

    if-eqz v4, :cond_2ef

    move-object v4, v1

    check-cast v4, Ljava/lang/Byte;

    .line 377
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    if-nez v4, :cond_2ef

    goto/16 :goto_37b

    .line 379
    :cond_2ef
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_302

    instance-of v4, v1, Ljava/lang/Short;

    if-eqz v4, :cond_302

    move-object v4, v1

    check-cast v4, Ljava/lang/Short;

    .line 380
    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    if-nez v4, :cond_302

    goto/16 :goto_37b

    .line 382
    :cond_302
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_315

    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_315

    move-object v4, v1

    check-cast v4, Ljava/lang/Integer;

    .line 383
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_315

    goto/16 :goto_37b

    .line 385
    :cond_315
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_32b

    instance-of v4, v1, Ljava/lang/Long;

    if-eqz v4, :cond_32b

    move-object v4, v1

    check-cast v4, Ljava/lang/Long;

    .line 386
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v25, v4, v6

    if-nez v25, :cond_32b

    goto :goto_37b

    .line 388
    :cond_32b
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_340

    instance-of v4, v1, Ljava/lang/Float;

    if-eqz v4, :cond_340

    move-object v4, v1

    check-cast v4, Ljava/lang/Float;

    .line 389
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_340

    goto :goto_37b

    .line 391
    :cond_340
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_356

    instance-of v4, v1, Ljava/lang/Double;

    if-eqz v4, :cond_356

    move-object v4, v1

    check-cast v4, Ljava/lang/Double;

    .line 392
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v25, v4, v6

    if-nez v25, :cond_356

    goto :goto_37b

    .line 394
    :cond_356
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_368

    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_368

    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    .line 395
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_368

    goto :goto_37b

    :cond_368
    if-eqz v21, :cond_38d

    .line 401
    iget-boolean v3, v13, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v3, :cond_37f

    instance-of v3, v1, Ljava/util/Map;

    if-eqz v3, :cond_37f

    move-object v3, v1

    check-cast v3, Ljava/util/Map;

    .line 403
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_37f

    :goto_37b
    const/4 v4, 0x1

    const/4 v6, 0x0

    goto/16 :goto_4b6

    .line 407
    :cond_37f
    invoke-virtual {v14, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 408
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v14, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_38d

    .line 409
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    :cond_38d
    move-object/from16 v3, v31

    if-eq v3, v11, :cond_39f

    if-nez v16, :cond_398

    const/4 v4, 0x1

    .line 415
    invoke-virtual {v14, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    goto :goto_399

    :cond_398
    const/4 v4, 0x1

    .line 418
    :goto_399
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    :goto_39c
    const/4 v6, 0x0

    goto/16 :goto_463

    :cond_39f
    move-object/from16 v3, v23

    const/4 v4, 0x1

    if-eq v3, v1, :cond_3ad

    if-nez v16, :cond_3a9

    .line 421
    invoke-virtual {v12, v9}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    .line 423
    :cond_3a9
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto :goto_39c

    :cond_3ad
    if-nez v16, :cond_3e9

    .line 426
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    .line 427
    invoke-virtual {v15}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_3c7

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "java."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3cb

    :cond_3c7
    const-class v5, Ljava/lang/Object;

    if-ne v15, v5, :cond_3cd

    :cond_3cb
    const/4 v5, 0x1

    goto :goto_3ce

    :cond_3cd
    const/4 v5, 0x0

    :goto_3ce
    if-nez v18, :cond_3d8

    .line 428
    iget-boolean v6, v13, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v6, :cond_3d8

    if-nez v3, :cond_3e9

    if-nez v5, :cond_3e9

    :cond_3d8
    if-eqz v29, :cond_3e4

    .line 430
    iget-object v3, v13, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    iget-object v5, v13, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    array-length v5, v5

    const/4 v6, 0x0

    invoke-virtual {v14, v3, v6, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    goto :goto_3ea

    :cond_3e4
    const/4 v6, 0x0

    .line 432
    invoke-virtual {v12, v9}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    goto :goto_3ea

    :cond_3e9
    const/4 v6, 0x0

    :goto_3ea
    if-nez v16, :cond_460

    .line 438
    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v3

    .line 439
    const-class v5, Ljava/lang/String;

    if-ne v15, v5, :cond_445

    if-eqz v3, :cond_3fe

    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->serializeUsing()Ljava/lang/Class;

    move-result-object v3

    const-class v5, Ljava/lang/Void;

    if-ne v3, v5, :cond_445

    :cond_3fe
    if-nez v1, :cond_438

    .line 441
    iget v3, v12, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    .line 442
    iget-object v5, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v5, :cond_415

    .line 443
    iget-object v5, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v5}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v5

    or-int/2addr v3, v5

    .line 445
    :cond_415
    iget v5, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v7

    if-eqz v5, :cond_429

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v3

    if-nez v5, :cond_429

    .line 447
    invoke-virtual {v14, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_463

    .line 448
    :cond_429
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_434

    .line 449
    invoke-virtual {v14, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_463

    .line 451
    :cond_434
    invoke-virtual {v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_463

    .line 454
    :cond_438
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    if-eqz v28, :cond_441

    .line 457
    invoke-virtual {v14, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto :goto_463

    .line 459
    :cond_441
    invoke-virtual {v14, v2, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_463

    .line 463
    :cond_445
    iget-boolean v2, v13, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v2, :cond_45c

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_45c

    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    .line 465
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_45c

    move-object/from16 v1, v26

    const/16 v21, 0x0

    goto/16 :goto_4b8

    .line 470
    :cond_45c
    invoke-virtual {v12, v9, v1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    goto :goto_463

    .line 473
    :cond_460
    invoke-virtual {v12, v9, v1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    .line 478
    :goto_463
    iget-boolean v2, v13, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v2, :cond_497

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_497

    .line 480
    check-cast v1, Ljava/util/Map;

    .line 481
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_475

    :goto_473
    const/4 v5, 0x1

    goto :goto_498

    .line 483
    :cond_475
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-nez v2, :cond_497

    .line 485
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_485
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_493

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2
    :try_end_48f
    .catch Ljava/lang/Exception; {:try_start_1a8 .. :try_end_48f} :catch_49f
    .catchall {:try_start_1a8 .. :try_end_48f} :catchall_4fe

    if-eqz v2, :cond_485

    const/4 v5, 0x1

    goto :goto_494

    :cond_493
    const/4 v5, 0x0

    :goto_494
    if-nez v5, :cond_497

    goto :goto_473

    :cond_497
    const/4 v5, 0x0

    :goto_498
    if-nez v5, :cond_4b6

    move-object/from16 v1, v26

    const/16 v21, 0x1

    goto :goto_4b8

    :catch_49f
    move-exception v0

    move-object/from16 v1, p2

    goto/16 :goto_505

    :cond_4a4
    move-object v12, v3

    move-object/from16 v33, v7

    .line 288
    :try_start_4a7
    throw v1
    :try_end_4a8
    .catch Ljava/lang/Exception; {:try_start_4a7 .. :try_end_4a8} :catch_4a8
    .catchall {:try_start_4a7 .. :try_end_4a8} :catchall_4fe

    :catch_4a8
    move-exception v0

    move-object/from16 v1, p2

    move-object v3, v0

    goto/16 :goto_508

    :catch_4ae
    move-exception v0

    move-object v12, v3

    move-object/from16 v1, p2

    move-object v3, v0

    move-object v2, v7

    goto/16 :goto_533

    :cond_4b6
    :goto_4b6
    move-object/from16 v1, v26

    :goto_4b8
    add-int/lit8 v2, v27, 0x1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v15, v24

    move/from16 v6, v32

    move-object/from16 v7, v33

    goto/16 :goto_d7

    :catch_4ca
    move-exception v0

    goto :goto_4cf

    :catch_4cc
    move-exception v0

    move-object/from16 v26, v1

    :goto_4cf
    move-object/from16 v1, p2

    move-object v3, v0

    move-object v2, v7

    goto :goto_525

    :cond_4d4
    move-object/from16 v26, v1

    move/from16 v32, v6

    move-object/from16 v33, v7

    move-object/from16 v24, v15

    const/4 v6, 0x0

    const/16 v10, 0x2c

    move-object/from16 v1, p2

    if-eqz v21, :cond_4e6

    const/16 v4, 0x2c

    goto :goto_4e7

    :cond_4e6
    const/4 v4, 0x0

    .line 502
    :goto_4e7
    :try_start_4e7
    invoke-virtual {v8, v9, v1, v4}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-object/from16 v2, v24

    .line 504
    array-length v2, v2
    :try_end_4ed
    .catch Ljava/lang/Exception; {:try_start_4e7 .. :try_end_4ed} :catch_51b
    .catchall {:try_start_4e7 .. :try_end_4ed} :catchall_517

    if-lez v2, :cond_50b

    :try_start_4ef
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v14, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_50b

    .line 505
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 506
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    goto :goto_50b

    :catchall_4fe
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v33

    goto/16 :goto_5dd

    :catch_504
    move-exception v0

    :goto_505
    move-object v3, v0

    move-object/from16 v12, v26

    :goto_508
    move-object/from16 v2, v33

    goto :goto_533

    :cond_50b
    :goto_50b
    if-nez p6, :cond_512

    move/from16 v2, v32

    .line 510
    invoke-virtual {v14, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_512
    .catch Ljava/lang/Exception; {:try_start_4ef .. :try_end_512} :catch_504
    .catchall {:try_start_4ef .. :try_end_512} :catchall_4fe

    :cond_512
    move-object/from16 v2, v33

    .line 541
    iput-object v2, v9, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    return-void

    :catchall_517
    move-exception v0

    move-object/from16 v2, v33

    goto :goto_52a

    :catch_51b
    move-exception v0

    move-object/from16 v2, v33

    goto :goto_524

    :catch_51f
    move-exception v0

    move-object/from16 v26, v1

    move-object v2, v7

    move-object v1, v10

    :goto_524
    move-object v3, v0

    :goto_525
    move-object/from16 v12, v26

    goto :goto_533

    :catchall_528
    move-exception v0

    move-object v2, v7

    :goto_52a
    move-object v1, v0

    goto/16 :goto_5dd

    :catch_52d
    move-exception v0

    move-object v2, v7

    move-object v1, v10

    move-object v3, v0

    :goto_531
    move-object/from16 v12, v17

    :goto_533
    :try_start_533
    const-string v4, "write javaBean error, fastjson version 1.2.75"

    if-eqz v1, :cond_553

    .line 515
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", class "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_553
    .catchall {:try_start_533 .. :try_end_553} :catchall_5da

    :cond_553
    const-string v1, ", fieldName : "

    move-object/from16 v5, p3

    if-eqz v5, :cond_56c

    .line 518
    :try_start_559
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5a9

    :cond_56c
    if-eqz v12, :cond_5a9

    .line 519
    iget-object v5, v12, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v5, :cond_5a9

    .line 520
    iget-object v5, v12, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 521
    iget-object v6, v5, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_593

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", method : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5a9

    .line 524
    :cond_593
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 527
    :cond_5a9
    :goto_5a9
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5c7

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 532
    :cond_5c7
    instance-of v1, v3, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_5cf

    .line 533
    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v17

    :cond_5cf
    if-nez v17, :cond_5d2

    goto :goto_5d4

    :cond_5d2
    move-object/from16 v3, v17

    .line 539
    :goto_5d4
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v1, v4, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5da
    .catchall {:try_start_559 .. :try_end_5da} :catchall_5da

    :catchall_5da
    move-exception v0

    goto/16 :goto_52a

    .line 541
    :goto_5dd
    iput-object v2, v9, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 542
    goto :goto_5e1

    :goto_5e0
    throw v1

    :goto_5e1
    goto :goto_5e0
.end method

.method protected writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
    .registers 6

    .line 832
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;

    if-eqz v0, :cond_1b

    .line 833
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/AfterFilter;

    .line 834
    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/AfterFilter;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    goto :goto_a

    .line 838
    :cond_1b
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->afterFilters:Ljava/util/List;

    if-eqz v0, :cond_36

    .line 839
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->afterFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/AfterFilter;

    .line 840
    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/AfterFilter;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    goto :goto_25

    :cond_36
    return p3
.end method

.method public writeAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    return-void
.end method

.method public writeAsArrayNonContext(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    return-void
.end method

.method protected writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
    .registers 6

    .line 815
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;

    if-eqz v0, :cond_1b

    .line 816
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    .line 817
    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    goto :goto_a

    .line 821
    :cond_1b
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beforeFilters:Ljava/util/List;

    if-eqz v0, :cond_36

    .line 822
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beforeFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    .line 823
    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    goto :goto_25

    :cond_36
    return p3
.end method

.method protected writeClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    if-nez p2, :cond_6

    .line 547
    iget-object p2, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object p2, p2, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    .line 549
    :cond_6
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 550
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object p2, p2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeName:Ljava/lang/String;

    if-nez p2, :cond_24

    .line 552
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 554
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->isProxy(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_20

    .line 555
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    .line 558
    :cond_20
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    .line 560
    :cond_24
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeDirectNonContext(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    return-void
.end method

.method public writeNoneASM(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 157
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    return-void
.end method

.method public writeReference(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;I)Z
    .registers 7

    .line 564
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 565
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 566
    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerialContext;->features:I

    and-int/2addr v0, v1

    if-nez v0, :cond_23

    and-int/2addr p3, v1

    if-eqz p3, :cond_12

    goto :goto_23

    .line 570
    :cond_12
    iget-object p3, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-eqz p3, :cond_23

    iget-object p3, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    invoke-virtual {p3, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_23

    .line 571
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_23
    :goto_23
    return v2
.end method
