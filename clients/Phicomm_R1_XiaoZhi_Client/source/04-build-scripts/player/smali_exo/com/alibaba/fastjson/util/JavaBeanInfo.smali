.class public Lcom/alibaba/fastjson/util/JavaBeanInfo;
.super Ljava/lang/Object;


# instance fields
.field public final buildMethod:Ljava/lang/reflect/Method;

.field public final builderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final creatorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

.field public creatorConstructorParameters:[Ljava/lang/String;

.field public final defaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public final defaultConstructorParameterSize:I

.field public final factoryMethod:Ljava/lang/reflect/Method;

.field public final fields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field public final jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

.field public kotlin:Z

.field public kotlinDefaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public orders:[Ljava/lang/String;

.field public final parserFeatures:I

.field public final sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field public final typeKey:Ljava/lang/String;

.field public final typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    .line 58
    iput-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->builderClass:Ljava/lang/Class;

    .line 59
    iput-object p3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 60
    iput-object p4, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 61
    iput-object p5, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    .line 62
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getParserFeatures(Ljava/lang/Class;)I

    move-result p2

    iput p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    .line 63
    iput-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    .line 65
    iput-object p7, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 p2, 0x0

    if-eqz p7, :cond_46

    .line 67
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object p6

    .line 68
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_29

    goto :goto_2a

    :cond_29
    move-object v0, p2

    :goto_2a
    iput-object v0, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeKey:Ljava/lang/String;

    .line 71
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_35

    .line 72
    iput-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    goto :goto_3b

    .line 74
    :cond_35
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 76
    :goto_3b
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object p6

    .line 77
    array-length p7, p6

    if-nez p7, :cond_43

    move-object p6, p2

    :cond_43
    iput-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    goto :goto_50

    .line 79
    :cond_46
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeKey:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    .line 84
    :goto_50
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p6

    new-array p6, p6, [Lcom/alibaba/fastjson/util/FieldInfo;

    iput-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 85
    invoke-interface {p8, p6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 87
    iget-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length p7, p6

    new-array p7, p7, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 88
    iget-object v0, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_b4

    .line 89
    new-instance p6, Ljava/util/LinkedHashMap;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p8

    invoke-direct {p6, p8}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 90
    iget-object p8, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v0, p8

    const/4 v2, 0x0

    :goto_72
    if-ge v2, v0, :cond_7e

    aget-object v3, p8, v2

    .line 91
    iget-object v4, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p6, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    .line 94
    :cond_7e
    iget-object p8, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    array-length v0, p8

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_83
    if-ge v2, v0, :cond_9a

    aget-object v4, p8, v2

    .line 95
    invoke-virtual {p6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v5, :cond_97

    add-int/lit8 v6, v3, 0x1

    .line 97
    aput-object v5, p7, v3

    .line 98
    invoke-virtual {p6, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v6

    :cond_97
    add-int/lit8 v2, v2, 0x1

    goto :goto_83

    .line 101
    :cond_9a
    invoke-virtual {p6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_a2
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result p8

    if-eqz p8, :cond_bb

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lcom/alibaba/fastjson/util/FieldInfo;

    add-int/lit8 v0, v3, 0x1

    .line 102
    aput-object p8, p7, v3

    move v3, v0

    goto :goto_a2

    .line 105
    :cond_b4
    array-length p8, p6

    invoke-static {p6, v1, p7, v1, p8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    invoke-static {p7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 109
    :cond_bb
    iget-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-static {p6, p7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_c5

    .line 110
    iget-object p7, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 112
    :cond_c5
    iput-object p7, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz p3, :cond_d1

    .line 115
    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    array-length p3, p3

    iput p3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    goto :goto_dd

    :cond_d1
    if-eqz p5, :cond_db

    .line 117
    invoke-virtual {p5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    array-length p3, p3

    iput p3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    goto :goto_dd

    .line 119
    :cond_db
    iput v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    :goto_dd
    if-eqz p4, :cond_154

    .line 123
    invoke-virtual {p4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    .line 126
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlin:Z

    if-eqz p3, :cond_12e

    .line 128
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    :try_start_f3
    new-array p3, v1, [Ljava/lang/Class;

    .line 130
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlinDefaultConstructor:Ljava/lang/reflect/Constructor;
    :try_end_fb
    .catchall {:try_start_f3 .. :try_end_fb} :catchall_fb

    .line 135
    :catchall_fb
    invoke-static {p4}, Lcom/alibaba/fastjson/util/TypeUtils;->getParameterAnnotations(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object p1

    const/4 p3, 0x0

    .line 136
    :goto_100
    iget-object p4, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    array-length p4, p4

    if-ge p3, p4, :cond_154

    array-length p4, p1

    if-ge p3, p4, :cond_154

    .line 137
    aget-object p4, p1, p3

    .line 139
    array-length p5, p4

    const/4 p6, 0x0

    :goto_10c
    if-ge p6, p5, :cond_11a

    aget-object p7, p4, p6

    .line 140
    instance-of p8, p7, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz p8, :cond_117

    .line 141
    check-cast p7, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_11b

    :cond_117
    add-int/lit8 p6, p6, 0x1

    goto :goto_10c

    :cond_11a
    move-object p7, p2

    :goto_11b
    if-eqz p7, :cond_12b

    .line 146
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object p4

    .line 147
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    if-lez p5, :cond_12b

    .line 148
    iget-object p5, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    aput-object p4, p5, p3

    :cond_12b
    add-int/lit8 p3, p3, 0x1

    goto :goto_100

    .line 154
    :cond_12e
    iget-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    array-length p1, p1

    iget-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length p2, p2

    if-eq p1, p2, :cond_137

    goto :goto_14c

    :cond_137
    const/4 p1, 0x0

    .line 158
    :goto_138
    iget-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    array-length p3, p2

    if-ge p1, p3, :cond_14b

    .line 159
    aget-object p2, p2, p1

    iget-object p3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object p3, p3, p1

    iget-object p3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-eq p2, p3, :cond_148

    goto :goto_14c

    :cond_148
    add-int/lit8 p1, p1, 0x1

    goto :goto_138

    :cond_14b
    const/4 v1, 0x1

    :goto_14c
    if-nez v1, :cond_154

    .line 167
    invoke-static {p4}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    :cond_154
    return-void
.end method

.method static add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")Z"
        }
    .end annotation

    .line 189
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_3e

    .line 190
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 192
    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 193
    iget-boolean v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-eqz v3, :cond_21

    iget-boolean v3, p1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-nez v3, :cond_21

    goto :goto_3b

    .line 197
    :cond_21
    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 198
    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 202
    :cond_2f
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v2

    if-gez v2, :cond_39

    .line 205
    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_39
    const/4 p0, 0x0

    return p0

    :cond_3b
    :goto_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 212
    :cond_3e
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public static build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/util/JavaBeanInfo;"
        }
    .end annotation

    .line 218
    sget-boolean v4, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object p0

    return-object p0
.end method

.method public static build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "ZZ)",
            "Lcom/alibaba/fastjson/util/JavaBeanInfo;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 261
    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object p0

    return-object p0
.end method

.method public static build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .registers 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "ZZZ)",
            "Lcom/alibaba/fastjson/util/JavaBeanInfo;"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move/from16 v9, p5

    .line 271
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {v13, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v15, :cond_1d

    .line 273
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONType;->naming()Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 274
    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    if-eq v0, v1, :cond_1d

    move-object v12, v0

    goto :goto_1f

    :cond_1d
    move-object/from16 v12, p2

    .line 279
    :goto_1f
    invoke-static {v13, v15}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;

    move-result-object v11

    .line 281
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 282
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    .line 283
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildGenericInfo(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v16

    .line 285
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v17

    .line 286
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/16 v18, 0x0

    const/4 v7, 0x1

    if-eqz v17, :cond_43

    .line 289
    array-length v1, v0

    if-ne v1, v7, :cond_40

    goto :goto_43

    :cond_40
    move-object/from16 v19, v18

    goto :goto_54

    :cond_43
    :goto_43
    if-nez v11, :cond_4a

    .line 291
    invoke-static {v13, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_52

    .line 293
    :cond_4a
    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    :goto_52
    move-object/from16 v19, v1

    :goto_54
    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 301
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_86

    move-object v0, v13

    :goto_60
    if-eqz v0, :cond_6e

    .line 305
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 307
    invoke-static {v13, v14, v12, v6, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    .line 304
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_60

    :cond_6e
    if-eqz v19, :cond_73

    .line 311
    invoke-static/range {v19 .. v19}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 314
    :cond_73
    new-instance v9, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v4, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v3, v19

    move-object/from16 v5, v21

    move-object v8, v6

    move-object/from16 v6, v20

    move-object v7, v15

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v9

    .line 317
    :cond_86
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_99

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-eqz v1, :cond_97

    goto :goto_99

    :cond_97
    const/4 v1, 0x0

    goto :goto_9a

    :cond_99
    :goto_99
    const/4 v1, 0x1

    :goto_9a
    if-nez v19, :cond_9e

    if-eqz v11, :cond_a0

    :cond_9e
    if-eqz v1, :cond_42e

    .line 320
    :cond_a0
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/JSON;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 321
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_bd

    .line 322
    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 323
    invoke-static {v2}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getCreatorConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    if-eqz v2, :cond_bd

    .line 326
    :try_start_b4
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2
    :try_end_bc
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b4 .. :try_end_bc} :catch_bd

    goto :goto_bf

    :catch_bd
    :cond_bd
    move-object/from16 v2, v18

    :goto_bf
    if-nez v2, :cond_c5

    .line 334
    invoke-static {v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getCreatorConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    :cond_c5
    move-object/from16 v22, v2

    if-eqz v22, :cond_1a1

    if-nez v1, :cond_1a1

    .line 338
    invoke-static/range {v22 .. v22}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 340
    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 343
    array-length v0, v9

    if-lez v0, :cond_199

    .line 344
    invoke-static/range {v22 .. v22}, Lcom/alibaba/fastjson/util/TypeUtils;->getParameterAnnotations(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    move-object/from16 v0, v18

    const/4 v2, 0x0

    .line 345
    :goto_dc
    array-length v1, v9

    if-ge v2, v1, :cond_199

    array-length v1, v3

    if-ge v2, v1, :cond_199

    .line 346
    aget-object v1, v3, v2

    .line 348
    array-length v4, v1

    const/4 v5, 0x0

    :goto_e6
    if-ge v5, v4, :cond_f9

    aget-object v7, v1, v5

    move-object/from16 p5, v1

    .line 349
    instance-of v1, v7, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v1, :cond_f3

    .line 350
    check-cast v7, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_fb

    :cond_f3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p5

    const/4 v7, 0x1

    goto :goto_e6

    :cond_f9
    move-object/from16 v7, v18

    .line 355
    :goto_fb
    aget-object v4, v9, v2

    .line 356
    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v5, v1, v2

    if-eqz v7, :cond_126

    .line 362
    invoke-interface {v7}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 363
    invoke-interface {v7}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v25

    .line 364
    invoke-interface {v7}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v26

    .line 365
    invoke-interface {v7}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v27

    .line 366
    invoke-interface {v7}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v7

    goto :goto_12f

    :cond_126
    move-object/from16 v1, v18

    move-object v7, v1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    :goto_12f
    if-eqz v7, :cond_137

    .line 369
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v28

    if-nez v28, :cond_13f

    :cond_137
    if-nez v0, :cond_13d

    .line 371
    invoke-static/range {v22 .. v22}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v0

    .line 373
    :cond_13d
    aget-object v7, v0, v2

    :cond_13f
    if-nez v1, :cond_15e

    if-nez v0, :cond_14e

    if-eqz v17, :cond_14a

    .line 379
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_14e

    .line 381
    :cond_14a
    invoke-static/range {v22 .. v22}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v0

    :cond_14e
    :goto_14e
    move-object/from16 p5, v1

    .line 385
    array-length v1, v0

    if-le v1, v2, :cond_160

    .line 386
    aget-object v1, v0, v2

    .line 387
    invoke-static {v13, v1, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object/from16 v28, v0

    move-object/from16 v29, v1

    goto :goto_164

    :cond_15e
    move-object/from16 p5, v1

    :cond_160
    move-object/from16 v29, p5

    move-object/from16 v28, v0

    .line 391
    :goto_164
    new-instance v1, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object v0, v1

    move-object/from16 p5, v9

    move-object v9, v1

    move-object v1, v7

    move/from16 v30, v2

    move-object/from16 v2, p0

    move-object/from16 v31, v3

    const/4 v7, 0x3

    move-object v3, v4

    const/4 v14, 0x2

    move-object v4, v5

    move-object/from16 v5, v29

    move-object v14, v6

    move/from16 v6, v25

    move-object/from16 v23, v12

    const/4 v12, 0x1

    move/from16 v7, v26

    move-object v12, v8

    move/from16 v8, v27

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 393
    invoke-static {v14, v9}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    add-int/lit8 v2, v30, 0x1

    move-object/from16 v9, p5

    move-object v8, v12

    move-object v6, v14

    move-object/from16 v12, v23

    move-object/from16 v0, v28

    move-object/from16 v3, v31

    const/4 v7, 0x1

    move-object/from16 v14, p1

    goto/16 :goto_dc

    :cond_199
    move-object v14, v6

    move-object/from16 v23, v12

    move-object v12, v8

    :cond_19d
    const/16 v27, 0x1

    goto/16 :goto_436

    :cond_1a1
    move-object v14, v6

    move-object/from16 v23, v12

    move-object v12, v8

    .line 398
    invoke-static {v13, v12, v9}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getFactoryMethod(Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object v21

    if-eqz v21, :cond_25d

    .line 399
    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 402
    invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 403
    array-length v0, v8

    if-lez v0, :cond_19d

    .line 404
    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/TypeUtils;->getParameterAnnotations(Ljava/lang/reflect/Method;)[[Ljava/lang/annotation/Annotation;

    move-result-object v12

    move-object/from16 v0, v18

    const/4 v7, 0x0

    .line 405
    :goto_1bc
    array-length v1, v8

    if-ge v7, v1, :cond_24c

    .line 406
    aget-object v1, v12, v7

    .line 408
    array-length v2, v1

    const/4 v5, 0x0

    :goto_1c3
    if-ge v5, v2, :cond_1d1

    aget-object v3, v1, v5

    .line 409
    instance-of v4, v3, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v4, :cond_1ce

    .line 410
    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_1d3

    :cond_1ce
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c3

    :cond_1d1
    move-object/from16 v3, v18

    :goto_1d3
    if-nez v3, :cond_1e6

    if-eqz v9, :cond_1de

    .line 414
    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/TypeUtils;->isJacksonCreator(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_1de

    goto :goto_1e6

    .line 415
    :cond_1de
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "illegal json creator"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e6
    :goto_1e6
    if-eqz v3, :cond_206

    .line 422
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 423
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v2

    .line 424
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v4

    .line 425
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v3

    move v6, v2

    move/from16 v17, v3

    move/from16 v16, v4

    goto :goto_20d

    :cond_206
    move-object/from16 v1, v18

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_20d
    if-eqz v1, :cond_219

    .line 428
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_216

    goto :goto_219

    :cond_216
    :goto_216
    move-object/from16 v19, v0

    goto :goto_222

    :cond_219
    :goto_219
    if-nez v0, :cond_21f

    .line 430
    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v0

    .line 432
    :cond_21f
    aget-object v1, v0, v7

    goto :goto_216

    .line 435
    :goto_222
    aget-object v3, v8, v7

    .line 436
    invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v4, v0, v7

    .line 438
    invoke-static {v13, v1, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 439
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object v0, v2

    move-object v9, v2

    move-object/from16 v2, p0

    move/from16 v20, v7

    move/from16 v7, v16

    move-object/from16 v16, v8

    move/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 441
    invoke-static {v14, v9}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    add-int/lit8 v7, v20, 0x1

    move/from16 v9, p5

    move-object/from16 v8, v16

    move-object/from16 v0, v19

    goto/16 :goto_1bc

    .line 444
    :cond_24c
    new-instance v9, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v5, v21

    move-object v7, v15

    move-object v8, v14

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v9

    :cond_25d
    if-nez v1, :cond_19d

    .line 447
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v17, :cond_27b

    .line 450
    array-length v1, v0

    if-lez v1, :cond_27b

    .line 451
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v1

    .line 452
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getKotlinConstructor([Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 453
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    move-object/from16 v22, v0

    move-object v7, v1

    :goto_276
    const/4 v8, 0x3

    :goto_277
    const/16 v24, 0x0

    goto/16 :goto_336

    .line 456
    :cond_27b
    array-length v1, v0

    move-object/from16 v2, v18

    const/4 v5, 0x0

    :goto_27f
    if-ge v5, v1, :cond_332

    aget-object v3, v0, v5

    .line 457
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    const-string v6, "org.springframework.security.web.authentication.WebAuthenticationDetails"

    .line 459
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b1

    .line 460
    array-length v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2ac

    const/4 v8, 0x0

    aget-object v6, v4, v8

    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_2ac

    const/4 v6, 0x1

    aget-object v4, v4, v6

    const-class v7, Ljava/lang/String;

    if-ne v4, v7, :cond_2ac

    .line 462
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 463
    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    move-object/from16 v22, v3

    goto :goto_276

    :cond_2ac
    const/4 v8, 0x3

    const/16 v24, 0x0

    goto/16 :goto_32e

    :cond_2b1
    const/4 v8, 0x0

    const-string v6, "org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken"

    .line 470
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e9

    .line 471
    array-length v6, v4

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2ac

    aget-object v6, v4, v8

    const-class v8, Ljava/lang/Object;

    if-ne v6, v8, :cond_2ac

    const/4 v6, 0x1

    aget-object v8, v4, v6

    const-class v7, Ljava/lang/Object;

    if-ne v8, v7, :cond_2ac

    const/4 v7, 0x2

    aget-object v4, v4, v7

    const-class v8, Ljava/util/Collection;

    if-ne v4, v8, :cond_2ac

    .line 476
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v8, 0x3

    new-array v1, v8, [Ljava/lang/String;

    const-string v0, "principal"

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "credentials"

    aput-object v0, v1, v6

    const-string v0, "authorities"

    aput-object v0, v1, v7

    move-object v7, v1

    move-object/from16 v22, v3

    goto :goto_277

    :cond_2e9
    const/4 v8, 0x3

    const-string v6, "org.springframework.security.core.authority.SimpleGrantedAuthority"

    .line 484
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_308

    .line 485
    array-length v6, v4

    const/4 v7, 0x1

    const/16 v24, 0x0

    if-ne v6, v7, :cond_32e

    aget-object v4, v4, v24

    const-class v6, Ljava/lang/String;

    if-ne v4, v6, :cond_32e

    new-array v1, v7, [Ljava/lang/String;

    const-string v0, "authority"

    aput-object v0, v1, v24

    move-object v7, v1

    move-object/from16 v22, v3

    goto :goto_336

    :cond_308
    const/4 v7, 0x1

    const/16 v24, 0x0

    .line 498
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v4

    and-int/2addr v4, v7

    if-eqz v4, :cond_314

    const/4 v4, 0x1

    goto :goto_315

    :cond_314
    const/4 v4, 0x0

    :goto_315
    if-nez v4, :cond_318

    goto :goto_32e

    .line 502
    :cond_318
    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_32e

    .line 503
    array-length v6, v4

    if-nez v6, :cond_322

    goto :goto_32e

    :cond_322
    if-eqz v22, :cond_32b

    if-eqz v2, :cond_32b

    .line 507
    array-length v6, v4

    array-length v7, v2

    if-gt v6, v7, :cond_32b

    goto :goto_32e

    :cond_32b
    move-object/from16 v22, v3

    move-object v2, v4

    :cond_32e
    :goto_32e
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_27f

    :cond_332
    const/4 v8, 0x3

    const/16 v24, 0x0

    move-object v7, v2

    :goto_336
    if-eqz v7, :cond_33e

    .line 519
    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    move-object v6, v0

    goto :goto_340

    :cond_33e
    move-object/from16 v6, v18

    :goto_340
    if-eqz v7, :cond_417

    .line 522
    array-length v0, v6

    array-length v1, v7

    if-ne v0, v1, :cond_417

    .line 524
    invoke-static/range {v22 .. v22}, Lcom/alibaba/fastjson/util/TypeUtils;->getParameterAnnotations(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object v26

    const/4 v5, 0x0

    .line 525
    :goto_34b
    array-length v0, v6

    if-ge v5, v0, :cond_3f6

    .line 526
    aget-object v0, v26, v5

    .line 527
    aget-object v1, v7, v5

    .line 530
    array-length v2, v0

    const/4 v3, 0x0

    :goto_354
    if-ge v3, v2, :cond_363

    aget-object v4, v0, v3

    .line 531
    instance-of v8, v4, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v8, :cond_35f

    .line 532
    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_365

    :cond_35f
    add-int/lit8 v3, v3, 0x1

    const/4 v8, 0x3

    goto :goto_354

    :cond_363
    move-object/from16 v4, v18

    .line 537
    :goto_365
    aget-object v3, v6, v5

    .line 538
    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v8, v0, v5

    .line 539
    invoke-static {v13, v1, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_37e

    if-nez v4, :cond_37e

    .line 542
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    :cond_37e
    if-nez v4, :cond_3a2

    const-string v0, "org.springframework.security.core.userdetails.User"

    .line 550
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39b

    const-string v0, "password"

    .line 551
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39b

    .line 552
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v29, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    goto :goto_3c7

    :cond_39b
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    goto :goto_3c7

    .line 557
    :cond_3a2
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    .line 558
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_3ad

    move-object v1, v0

    .line 561
    :cond_3ad
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v0

    .line 562
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v27

    .line 563
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v4

    move/from16 v29, v4

    move/from16 v28, v27

    move/from16 v27, v0

    .line 565
    :goto_3c7
    new-instance v4, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object v0, v4

    move-object/from16 v30, v2

    move-object/from16 v2, p0

    move-object/from16 p5, v9

    move-object v9, v4

    move-object v4, v8

    move/from16 v31, v5

    move-object/from16 v5, v30

    move-object/from16 v30, v6

    move/from16 v6, v27

    move-object/from16 v25, v7

    const/4 v8, 0x3

    const/16 v27, 0x1

    move/from16 v7, v28

    move/from16 v8, v29

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 567
    invoke-static {v14, v9}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    add-int/lit8 v5, v31, 0x1

    move-object/from16 v9, p5

    move-object/from16 v7, v25

    move-object/from16 v6, v30

    const/4 v8, 0x3

    const/16 v24, 0x0

    goto/16 :goto_34b

    :cond_3f6
    const/16 v27, 0x1

    if-nez v17, :cond_436

    .line 570
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javax.servlet.http.Cookie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_436

    .line 571
    new-instance v9, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v4, v22

    move-object v7, v15

    move-object v8, v14

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v9

    .line 574
    :cond_417
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default constructor not found. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42e
    move-object v14, v6

    move-object/from16 v23, v12

    const/16 v27, 0x1

    move-object v12, v8

    move-object/from16 v22, v18

    :cond_436
    :goto_436
    if-eqz v19, :cond_43b

    .line 580
    invoke-static/range {v19 .. v19}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    :cond_43b
    const-string v9, "set"

    if-eqz v11, :cond_625

    .line 586
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    invoke-static {v11, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    if-eqz v0, :cond_44e

    .line 588
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;->withPrefix()Ljava/lang/String;

    move-result-object v0

    goto :goto_450

    :cond_44e
    move-object/from16 v0, v18

    :goto_450
    if-nez v0, :cond_454

    const-string v0, "with"

    :cond_454
    move-object v8, v0

    .line 595
    invoke-virtual {v11}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v6, v7

    const/4 v5, 0x0

    :goto_45b
    if-ge v5, v6, :cond_5db

    aget-object v2, v7, v5

    .line 596
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_47e

    :goto_469
    move/from16 v31, v5

    move/from16 v32, v6

    move-object/from16 v33, v7

    move-object/from16 v24, v8

    move-object/from16 v39, v9

    move-object/from16 v36, v10

    move-object/from16 v37, v11

    move-object/from16 v29, v15

    move-object/from16 v38, v23

    move-object v15, v12

    goto/16 :goto_5c2

    .line 600
    :cond_47e
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_489

    goto :goto_469

    .line 606
    :cond_489
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-nez v0, :cond_497

    .line 609
    invoke-static {v13, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v0

    :cond_497
    move-object/from16 v24, v0

    if-eqz v24, :cond_51d

    .line 613
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v0

    if-nez v0, :cond_4a2

    goto :goto_469

    .line 617
    :cond_4a2
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v25

    .line 618
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v26

    .line 619
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v28

    .line 621
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_502

    .line 622
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 623
    new-instance v4, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object v0, v4

    move-object/from16 v34, v4

    move-object/from16 v4, p0

    move/from16 v31, v5

    move-object/from16 v5, p1

    move/from16 v32, v6

    move/from16 v6, v25

    move-object/from16 v33, v7

    move/from16 v7, v26

    move-object/from16 p2, v8

    move/from16 v8, v28

    move-object/from16 v35, v9

    move-object/from16 v9, v24

    move-object/from16 v36, v10

    move-object/from16 v10, v29

    move-object/from16 v37, v11

    move-object/from16 v11, v30

    move-object/from16 v29, v15

    move-object/from16 v38, v23

    const/4 v13, 0x1

    move-object v15, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, v34

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    move-object/from16 v24, p2

    move-object/from16 v39, v35

    goto/16 :goto_5c2

    :cond_502
    move/from16 v31, v5

    move/from16 v32, v6

    move-object/from16 v33, v7

    move-object/from16 p2, v8

    move-object/from16 v35, v9

    move-object/from16 v36, v10

    move-object/from16 v37, v11

    move-object/from16 v29, v15

    move-object/from16 v38, v23

    const/4 v13, 0x1

    move-object v15, v12

    move/from16 v6, v25

    move/from16 v7, v26

    move/from16 v8, v28

    goto :goto_534

    :cond_51d
    move/from16 v31, v5

    move/from16 v32, v6

    move-object/from16 v33, v7

    move-object/from16 p2, v8

    move-object/from16 v35, v9

    move-object/from16 v36, v10

    move-object/from16 v37, v11

    move-object/from16 v29, v15

    move-object/from16 v38, v23

    const/4 v13, 0x1

    move-object v15, v12

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 629
    :goto_534
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v12, v35

    .line 631
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_551

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v11, 0x3

    if-le v1, v11, :cond_552

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_55d

    :cond_551
    const/4 v11, 0x3

    .line 634
    :cond_552
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_561

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_55d
    move-object/from16 v10, p2

    :goto_55f
    const/4 v9, 0x0

    goto :goto_587

    :cond_561
    move-object/from16 v10, p2

    .line 637
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_56e

    :goto_569
    move-object/from16 v24, v10

    move-object/from16 v39, v12

    goto :goto_5c2

    .line 641
    :cond_56e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v1, v3, :cond_579

    goto :goto_569

    .line 645
    :cond_579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_55f

    .line 649
    :goto_587
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 650
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_598

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_598

    goto :goto_569

    .line 654
    :cond_598
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-virtual {v1, v9, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 656
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 658
    new-instance v5, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    move-object v0, v5

    move-object/from16 v4, p0

    move-object v13, v5

    move-object/from16 v5, p1

    move-object/from16 v9, v24

    move-object/from16 v24, v10

    move-object/from16 v10, v23

    move-object/from16 v11, v25

    move-object/from16 v39, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v14, v13}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    :goto_5c2
    add-int/lit8 v5, v31, 0x1

    move-object/from16 v13, p0

    move-object v12, v15

    move-object/from16 v8, v24

    move-object/from16 v15, v29

    move/from16 v6, v32

    move-object/from16 v7, v33

    move-object/from16 v10, v36

    move-object/from16 v11, v37

    move-object/from16 v23, v38

    move-object/from16 v9, v39

    const/16 v27, 0x1

    goto/16 :goto_45b

    :cond_5db
    move-object/from16 v39, v9

    move-object/from16 v36, v10

    move-object v13, v11

    move-object/from16 v29, v15

    move-object/from16 v38, v23

    move-object v15, v12

    if-eqz v13, :cond_62f

    .line 663
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    invoke-static {v13, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    if-eqz v0, :cond_5f6

    .line 667
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;->buildMethod()Ljava/lang/String;

    move-result-object v0

    goto :goto_5f8

    :cond_5f6
    move-object/from16 v0, v18

    :goto_5f8
    if-eqz v0, :cond_600

    .line 670
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_602

    :cond_600
    const-string v0, "build"

    :cond_602
    const/4 v12, 0x0

    :try_start_603
    new-array v1, v12, [Ljava/lang/Class;

    .line 675
    invoke-virtual {v13, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20
    :try_end_609
    .catch Ljava/lang/NoSuchMethodException; {:try_start_603 .. :try_end_609} :catch_60a
    .catch Ljava/lang/SecurityException; {:try_start_603 .. :try_end_609} :catch_60a

    goto :goto_60b

    :catch_60a
    nop

    :goto_60b
    if-nez v20, :cond_617

    :try_start_60d
    const-string v0, "create"

    new-array v1, v12, [Ljava/lang/Class;

    .line 684
    invoke-virtual {v13, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20
    :try_end_615
    .catch Ljava/lang/NoSuchMethodException; {:try_start_60d .. :try_end_615} :catch_616
    .catch Ljava/lang/SecurityException; {:try_start_60d .. :try_end_615} :catch_616

    goto :goto_617

    :catch_616
    nop

    :cond_617
    :goto_617
    if-eqz v20, :cond_61d

    .line 696
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    goto :goto_630

    .line 693
    :cond_61d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "buildMethod not found."

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_625
    move-object/from16 v39, v9

    move-object/from16 v36, v10

    move-object v13, v11

    move-object/from16 v29, v15

    move-object/from16 v38, v23

    move-object v15, v12

    :cond_62f
    const/4 v12, 0x0

    .line 700
    :goto_630
    array-length v11, v15

    const/4 v10, 0x0

    :goto_632
    const-string v9, "get"

    const/4 v8, 0x4

    if-ge v10, v11, :cond_967

    aget-object v2, v15, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v23, 0x0

    .line 702
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 704
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_661

    :cond_64b
    :goto_64b
    move/from16 v30, v10

    move/from16 v25, v11

    move-object/from16 v37, v13

    move-object/from16 v32, v15

    move-object/from16 v42, v36

    move-object/from16 v13, v38

    move-object/from16 v33, v39

    const/16 v27, 0x1

    const/16 v28, 0x2

    :goto_65d
    const/16 v31, 0x0

    goto/16 :goto_956

    .line 709
    :cond_661
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 710
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_678

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_678

    goto :goto_64b

    .line 714
    :cond_678
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/lang/Object;

    if-ne v1, v3, :cond_681

    goto :goto_64b

    .line 718
    :cond_681
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 720
    array-length v3, v1

    if-eqz v3, :cond_64b

    array-length v3, v1

    const/4 v5, 0x2

    if-le v3, v5, :cond_68d

    goto :goto_64b

    .line 724
    :cond_68d
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v24, :cond_6d2

    .line 725
    array-length v3, v1

    if-ne v3, v5, :cond_6d2

    aget-object v3, v1, v12

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_6d2

    const/4 v3, 0x1

    aget-object v4, v1, v3

    const-class v3, Ljava/lang/Object;

    if-ne v4, v3, :cond_6d2

    .line 729
    new-instance v9, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v1, ""

    move-object v0, v9

    move-object/from16 v4, p0

    const/16 v28, 0x2

    move-object/from16 v5, p1

    move/from16 v8, v23

    move-object/from16 v40, v9

    move-object/from16 v9, v24

    move/from16 v30, v10

    move-object/from16 v10, v25

    move/from16 v25, v11

    move-object/from16 v11, v26

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, v40

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto :goto_6dc

    :cond_6d2
    move/from16 v30, v10

    move/from16 v25, v11

    const/16 v28, 0x2

    .line 734
    array-length v3, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6ea

    :goto_6dc
    move-object/from16 v37, v13

    move-object/from16 v32, v15

    move-object/from16 v42, v36

    move-object/from16 v13, v38

    move-object/from16 v33, v39

    :goto_6e6
    const/16 v27, 0x1

    goto/16 :goto_65d

    :cond_6ea
    const/4 v11, 0x1

    move-object/from16 v12, p0

    if-nez v24, :cond_6f5

    .line 739
    invoke-static {v12, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v3

    move-object/from16 v24, v3

    :cond_6f5
    if-nez v24, :cond_6fe

    .line 742
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v8, :cond_6fe

    goto :goto_6dc

    :cond_6fe
    if-eqz v24, :cond_74c

    .line 747
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v3

    if-nez v3, :cond_707

    goto :goto_6dc

    .line 751
    :cond_707
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v6

    .line 752
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v7

    .line 753
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v10

    .line 755
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_74a

    .line 756
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 757
    new-instance v9, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    move-object v0, v9

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v8, v10

    move-object v10, v9

    move-object/from16 v9, v24

    move-object/from16 v41, v10

    move-object/from16 v10, v23

    move-object/from16 v11, v26

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, v41

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto :goto_6dc

    :cond_74a
    move/from16 v23, v10

    :cond_74c
    move-object/from16 v12, v39

    if-nez v24, :cond_762

    .line 763
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_757

    goto :goto_762

    :cond_757
    :goto_757
    move-object/from16 v33, v12

    move-object/from16 v37, v13

    move-object/from16 v32, v15

    move-object/from16 v42, v36

    :goto_75f
    move-object/from16 v13, v38

    goto :goto_6e6

    :cond_762
    :goto_762
    if-eqz v13, :cond_765

    goto :goto_757

    :cond_765
    const/4 v11, 0x3

    .line 767
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eqz v17, :cond_78d

    .line 775
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 776
    :goto_772
    array-length v10, v15

    if-ge v5, v10, :cond_78f

    .line 777
    aget-object v10, v15, v5

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_78a

    .line 778
    aget-object v10, v15, v5

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_78a
    add-int/lit8 v5, v5, 0x1

    goto :goto_772

    :cond_78d
    move-object/from16 v4, v18

    .line 783
    :cond_78f
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    const-string v9, "is"

    const-string v10, "g"

    if-nez v5, :cond_83a

    const/16 v5, 0x200

    if-le v3, v5, :cond_79f

    goto/16 :goto_83a

    :cond_79f
    const/16 v5, 0x5f

    if-ne v3, v5, :cond_7fe

    if-eqz v17, :cond_7e0

    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 804
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c4

    .line 805
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7d7

    .line 807
    :cond_7c4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7d7
    move-object/from16 v4, p0

    move-object/from16 v10, v36

    .line 809
    invoke-static {v4, v0, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v3

    goto :goto_7fb

    :cond_7e0
    const/4 v5, 0x1

    move-object/from16 v4, p0

    move-object/from16 v10, v36

    .line 811
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 812
    invoke-static {v4, v3, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v8

    if-nez v8, :cond_7f9

    .line 815
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 816
    invoke-static {v4, v0, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v8

    if-nez v8, :cond_7fa

    :cond_7f9
    move-object v0, v3

    :cond_7fa
    move-object v3, v8

    :cond_7fb
    :goto_7fb
    move-object v8, v10

    goto/16 :goto_86d

    :cond_7fe
    move-object/from16 v4, p0

    move-object/from16 v10, v36

    const/16 v5, 0x66

    if-ne v3, v5, :cond_80c

    .line 824
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_80a
    move-object v8, v10

    goto :goto_858

    .line 825
    :cond_80c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x5

    if-lt v3, v5, :cond_826

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_826

    .line 826
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_80a

    .line 828
    :cond_826
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 829
    invoke-static {v4, v0, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-nez v3, :cond_7fb

    move-object/from16 v42, v10

    :goto_832
    move-object/from16 v33, v12

    move-object/from16 v37, v13

    move-object/from16 v32, v15

    goto/16 :goto_75f

    :cond_83a
    :goto_83a
    move-object/from16 v4, p0

    move-object/from16 v8, v36

    if-eqz v17, :cond_85b

    .line 789
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 790
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByMethodName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_858
    move-object/from16 v3, v18

    goto :goto_86d

    .line 792
    :cond_85b
    sget-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v3, :cond_868

    .line 793
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_858

    .line 795
    :cond_868
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByMethodName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_858

    :goto_86d
    if-nez v3, :cond_873

    .line 836
    invoke-static {v4, v0, v8}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v3

    :cond_873
    if-nez v3, :cond_8a3

    const/4 v10, 0x0

    .line 839
    aget-object v1, v1, v10

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v5, :cond_8a1

    .line 840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 841
    invoke-static {v4, v1, v8}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v3, v1

    goto :goto_8a5

    :cond_8a1
    const/4 v5, 0x1

    goto :goto_8a5

    :cond_8a3
    const/4 v5, 0x1

    const/4 v10, 0x0

    :goto_8a5
    if-eqz v3, :cond_925

    .line 846
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v3, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v26, :cond_915

    .line 849
    invoke-interface/range {v26 .. v26}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v1

    if-nez v1, :cond_8bd

    move-object/from16 v42, v8

    goto/16 :goto_832

    .line 853
    :cond_8bd
    invoke-interface/range {v26 .. v26}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v6

    .line 854
    invoke-interface/range {v26 .. v26}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v7

    .line 855
    invoke-interface/range {v26 .. v26}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v9

    .line 857
    invoke-interface/range {v26 .. v26}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_908

    .line 858
    invoke-interface/range {v26 .. v26}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 859
    new-instance v0, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v23, 0x0

    move-object/from16 p2, v0

    move-object/from16 v4, p0

    const/16 v27, 0x1

    move-object/from16 v5, p1

    move-object/from16 v42, v8

    move v8, v9

    move-object/from16 v9, v24

    const/16 v31, 0x0

    move-object/from16 v10, v26

    move-object/from16 v32, v15

    const/4 v15, 0x3

    move-object/from16 v11, v23

    move-object/from16 v33, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    move-object/from16 v37, v13

    move-object/from16 v13, v38

    goto :goto_956

    :cond_908
    move-object/from16 v42, v8

    move-object/from16 v33, v12

    move-object/from16 v32, v15

    const/4 v15, 0x3

    const/16 v27, 0x1

    const/16 v31, 0x0

    move v8, v9

    goto :goto_922

    :cond_915
    move-object/from16 v42, v8

    move-object/from16 v33, v12

    move-object/from16 v32, v15

    const/4 v15, 0x3

    const/16 v27, 0x1

    const/16 v31, 0x0

    move/from16 v8, v23

    :goto_922
    move-object/from16 v10, v26

    goto :goto_934

    :cond_925
    move-object/from16 v42, v8

    move-object/from16 v33, v12

    move-object/from16 v32, v15

    const/4 v15, 0x3

    const/16 v27, 0x1

    const/16 v31, 0x0

    move-object/from16 v10, v18

    move/from16 v8, v23

    :goto_934
    move-object/from16 v12, v38

    if-eqz v12, :cond_93c

    .line 868
    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_93c
    move-object v1, v0

    .line 871
    new-instance v11, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v23, 0x0

    move-object v0, v11

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, v24

    move-object v15, v11

    move-object/from16 v11, v23

    move-object/from16 v37, v13

    move-object v13, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v14, v15}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    :goto_956
    add-int/lit8 v10, v30, 0x1

    move-object/from16 v38, v13

    move/from16 v11, v25

    move-object/from16 v15, v32

    move-object/from16 v39, v33

    move-object/from16 v13, v37

    move-object/from16 v36, v42

    const/4 v12, 0x0

    goto/16 :goto_632

    :cond_967
    move-object/from16 v37, v13

    move-object/from16 v42, v36

    move-object/from16 v13, v38

    const/16 v27, 0x1

    const/16 v31, 0x0

    .line 875
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    move-object/from16 v15, p0

    move-object/from16 v12, p1

    .line 876
    invoke-static {v15, v12, v13, v14, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    .line 878
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v11

    array-length v10, v11

    const/4 v7, 0x0

    :goto_982
    if-ge v7, v10, :cond_abf

    aget-object v2, v11, v7

    .line 879
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 880
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v8, :cond_9a3

    :cond_990
    :goto_990
    move/from16 v31, v7

    move-object/from16 v24, v9

    move/from16 v17, v10

    move-object/from16 v25, v11

    move-object/from16 v38, v13

    move-object/from16 v44, v42

    :goto_99c
    const/16 v23, 0x4

    const/16 v30, 0x3

    move-object v13, v12

    goto/16 :goto_aaf

    .line 884
    :cond_9a3
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_9ae

    goto :goto_990

    :cond_9ae
    if-nez v37, :cond_990

    .line 888
    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_990

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_990

    .line 889
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_9c9

    goto :goto_990

    .line 893
    :cond_9c9
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_9f9

    const-class v1, Ljava/util/Map;

    .line 894
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_9f9

    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 895
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_9f9

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 896
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_9f9

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 897
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    if-ne v1, v3, :cond_990

    .line 902
    :cond_9f9
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v2, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v17, :cond_a0c

    .line 903
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v1

    if-eqz v1, :cond_a0c

    goto :goto_990

    :cond_a0c
    if-eqz v17, :cond_a21

    .line 907
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a21

    .line 908
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v18

    move-object/from16 v5, v42

    goto :goto_a5a

    .line 910
    :cond_a21
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByMethodName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v42

    .line 912
    invoke-static {v15, v0, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_a58

    .line 914
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v1, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v3, :cond_a3e

    .line 915
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v3

    if-nez v3, :cond_a3e

    goto :goto_a67

    .line 919
    :cond_a3e
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_a56

    const-class v3, Ljava/util/Map;

    .line 920
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_a58

    :cond_a56
    move-object v3, v1

    goto :goto_a5a

    :cond_a58
    move-object/from16 v3, v18

    :goto_a5a
    if-eqz v13, :cond_a60

    .line 927
    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_a60
    move-object v1, v0

    .line 930
    invoke-static {v14, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getField(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v0

    if-eqz v0, :cond_a75

    :goto_a67
    move-object/from16 v44, v5

    move/from16 v31, v7

    move-object/from16 v24, v9

    move/from16 v17, v10

    move-object/from16 v25, v11

    move-object/from16 v38, v13

    goto/16 :goto_99c

    .line 935
    :cond_a75
    new-instance v4, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object v0, v4

    move-object/from16 v43, v4

    move-object/from16 v4, p0

    move-object/from16 v44, v5

    move-object/from16 v5, p1

    const/16 v30, 0x3

    move/from16 v6, v23

    move/from16 v31, v7

    move/from16 v7, v24

    const/16 v23, 0x4

    move/from16 v8, v25

    move-object/from16 v24, v9

    move-object/from16 v9, v17

    move/from16 v17, v10

    move-object/from16 v10, v26

    move-object/from16 v25, v11

    move-object/from16 v11, v28

    move-object/from16 v38, v13

    move-object v13, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, v43

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    :goto_aaf
    add-int/lit8 v7, v31, 0x1

    move-object v12, v13

    move/from16 v10, v17

    move-object/from16 v9, v24

    move-object/from16 v11, v25

    move-object/from16 v13, v38

    move-object/from16 v42, v44

    const/4 v8, 0x4

    goto/16 :goto_982

    :cond_abf
    move-object/from16 v38, v13

    move-object/from16 v44, v42

    move-object v13, v12

    .line 940
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_ae4

    .line 941
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isXmlField(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_ad1

    goto :goto_ad3

    :cond_ad1
    move/from16 v27, p3

    :goto_ad3
    if-eqz v27, :cond_ae4

    move-object v12, v15

    :goto_ad6
    if-eqz v12, :cond_ae4

    move-object/from16 v1, v38

    move-object/from16 v0, v44

    .line 947
    invoke-static {v15, v13, v1, v14, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    .line 946
    invoke-virtual {v12}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v12

    goto :goto_ad6

    .line 952
    :cond_ae4
    new-instance v9, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v37

    move-object/from16 v3, v19

    move-object/from16 v4, v22

    move-object/from16 v5, v21

    move-object/from16 v6, v20

    move-object/from16 v7, v29

    move-object v8, v14

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v9
.end method

.method private static buildGenericInfo(Ljava/lang/Class;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    :goto_8
    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    if-eqz p0, :cond_57

    .line 231
    const-class v2, Ljava/lang/Object;

    if-eq p0, v2, :cond_57

    .line 232
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_52

    .line 233
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 234
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    const/4 v3, 0x0

    .line 235
    :goto_28
    array-length v4, v0

    if-ge v3, v4, :cond_52

    if-nez v1, :cond_32

    .line 238
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 241
    :cond_32
    aget-object v4, v0, v3

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 242
    aget-object v4, v0, v3

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Type;

    .line 243
    aget-object v5, v2, v3

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    .line 245
    :cond_48
    aget-object v4, v2, v3

    aget-object v5, v0, v3

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 231
    :cond_52
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_8

    :cond_57
    return-object v1
.end method

.method private static computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;[",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    .line 956
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildGenericInfo(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v15

    .line 958
    array-length v14, v1

    const/16 v16, 0x0

    const/4 v13, 0x0

    :goto_c
    if-ge v13, v14, :cond_e6

    aget-object v5, v1, v13

    .line 959
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_20

    :goto_18
    move-object/from16 v2, p3

    move/from16 v17, v13

    move/from16 v18, v14

    goto/16 :goto_e0

    :cond_20
    and-int/lit8 v2, v2, 0x10

    const/4 v3, 0x1

    if-eqz v2, :cond_58

    .line 965
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 966
    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_54

    const-class v4, Ljava/util/Collection;

    .line 967
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_54

    const-class v4, Ljava/util/concurrent/atomic/AtomicLong;

    .line 968
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    const-class v4, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 969
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    const-class v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 970
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    goto :goto_54

    :cond_52
    const/4 v2, 0x0

    goto :goto_55

    :cond_54
    :goto_54
    const/4 v2, 0x1

    :goto_55
    if-nez v2, :cond_58

    goto :goto_18

    .line 977
    :cond_58
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 978
    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    goto :goto_76

    :cond_75
    const/4 v3, 0x0

    :goto_76
    if-eqz v3, :cond_79

    goto :goto_18

    .line 989
    :cond_79
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 991
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v5, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v12, :cond_b5

    .line 994
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v3

    if-nez v3, :cond_8f

    goto :goto_18

    .line 998
    :cond_8f
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v3

    .line 999
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v4

    .line 1000
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v6

    .line 1002
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_b1

    .line 1003
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    :cond_b1
    move v8, v3

    move v9, v4

    move v10, v6

    goto :goto_b8

    :cond_b5
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_b8
    if-eqz v0, :cond_be

    .line 1008
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_be
    move-object v3, v2

    .line 1011
    new-instance v11, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v2, v11

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v19, v11

    move-object/from16 v11, v17

    move/from16 v17, v13

    move-object/from16 v13, v18

    move/from16 v18, v14

    move-object v14, v15

    invoke-direct/range {v2 .. v14}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v2, p3

    move-object/from16 v3, v19

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    :goto_e0
    add-int/lit8 v13, v17, 0x1

    move/from16 v14, v18

    goto/16 :goto_c

    :cond_e6
    return-void
.end method

.method public static getBuilderClass(Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1139
    invoke-static {v0, p0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p0, :cond_15

    .line 1143
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "org.springframework.security.web.savedrequest.DefaultSavedRequest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    const-string p0, "org.springframework.security.web.savedrequest.DefaultSavedRequest$Builder"

    .line 1144
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    if-nez p1, :cond_19

    return-object p0

    .line 1151
    :cond_19
    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONType;->builder()Ljava/lang/Class;

    move-result-object p1

    .line 1153
    const-class v0, Ljava/lang/Void;

    if-ne p1, v0, :cond_22

    return-object p0

    :cond_22
    return-object p1
.end method

.method public static getCreatorConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Constructor;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 1049
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    const-string v4, "multi-JSONCreator"

    if-ge v3, v0, :cond_21

    aget-object v5, p0, v3

    .line 1050
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONCreator;

    if-eqz v6, :cond_1e

    if-nez v2, :cond_18

    move-object v2, v5

    goto :goto_1e

    .line 1053
    :cond_18
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_21
    if-eqz v2, :cond_24

    return-object v2

    .line 1064
    :cond_24
    array-length v0, p0

    const/4 v3, 0x0

    :goto_26
    if-ge v3, v0, :cond_5e

    aget-object v5, p0, v3

    .line 1065
    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getParameterAnnotations(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object v6

    .line 1067
    array-length v7, v6

    if-nez v7, :cond_32

    goto :goto_5b

    .line 1071
    :cond_32
    array-length v7, v6

    const/4 v8, 0x0

    :goto_34
    const/4 v9, 0x1

    if-ge v8, v7, :cond_4f

    aget-object v10, v6, v8

    .line 1073
    array-length v11, v10

    const/4 v12, 0x0

    :goto_3b
    if-ge v12, v11, :cond_47

    aget-object v13, v10, v12

    .line 1074
    instance-of v13, v13, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v13, :cond_44

    goto :goto_48

    :cond_44
    add-int/lit8 v12, v12, 0x1

    goto :goto_3b

    :cond_47
    const/4 v9, 0x0

    :goto_48
    if-nez v9, :cond_4c

    const/4 v9, 0x0

    goto :goto_4f

    :cond_4c
    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    :cond_4f
    :goto_4f
    if-eqz v9, :cond_5b

    if-nez v2, :cond_55

    move-object v2, v5

    goto :goto_5b

    .line 1087
    :cond_55
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5b
    :goto_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_5e
    if-eqz v2, :cond_60

    :cond_60
    return-object v2
.end method

.method static getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 1017
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return-object v1

    .line 1023
    :cond_c
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v0, :cond_1f

    aget-object v4, p1, v3

    .line 1024
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_1c

    move-object v1, v4

    goto :goto_1f

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1f
    :goto_1f
    if-nez v1, :cond_50

    .line 1031
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_50

    .line 1033
    array-length v0, p1

    const/4 v3, 0x0

    :goto_33
    if-ge v3, v0, :cond_50

    aget-object v4, p1, v3

    .line 1034
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4d

    aget-object v5, v5, v2

    .line 1035
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    move-object v1, v4

    goto :goto_50

    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_50
    :goto_50
    return-object v1
.end method

.method private static getFactoryMethod(Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Method;",
            "Z)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1104
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_37

    aget-object v4, p1, v3

    .line 1105
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_13

    goto :goto_34

    .line 1109
    :cond_13
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1e

    goto :goto_34

    .line 1113
    :cond_1e
    const-class v5, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-static {v4, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/annotation/JSONCreator;

    if-eqz v5, :cond_34

    if-nez v2, :cond_2c

    move-object v2, v4

    goto :goto_34

    .line 1116
    :cond_2c
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string p1, "multi-JSONCreator"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_37
    if-nez v2, :cond_4b

    if-eqz p2, :cond_4b

    .line 1125
    array-length p0, p1

    :goto_3c
    if-ge v1, p0, :cond_4b

    aget-object p2, p1, v1

    .line 1126
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->isJacksonCreator(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_48

    move-object v2, p2

    goto :goto_4b

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_4b
    :goto_4b
    return-object v2
.end method

.method private static getField(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/fastjson/util/FieldInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/fastjson/util/FieldInfo;"
        }
    .end annotation

    .line 174
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 175
    iget-object v1, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    return-object v0

    .line 179
    :cond_19
    iget-object v1, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_4

    .line 180
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method
