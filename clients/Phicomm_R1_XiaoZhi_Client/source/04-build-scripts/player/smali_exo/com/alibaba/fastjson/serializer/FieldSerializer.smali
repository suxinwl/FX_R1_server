.class public Lcom/alibaba/fastjson/serializer/FieldSerializer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/alibaba/fastjson/serializer/FieldSerializer;",
        ">;"
    }
.end annotation


# instance fields
.field protected browserCompatible:Z

.field protected disableCircularReferenceDetect:Z

.field private final double_quoted_fieldPrefix:Ljava/lang/String;

.field protected features:I

.field protected fieldContext:Lcom/alibaba/fastjson/serializer/BeanContext;

.field public final fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

.field private format:Ljava/lang/String;

.field protected persistenceXToMany:Z

.field private runtimeInfo:Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;

.field protected serializeUsing:Z

.field private single_quoted_fieldPrefix:Ljava/lang/String;

.field private un_quoted_fieldPrefix:Ljava/lang/String;

.field protected writeEnumUsingName:Z

.field protected writeEnumUsingToString:Z

.field protected final writeNull:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeEnumUsingToString:Z

    .line 46
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeEnumUsingName:Z

    .line 47
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->disableCircularReferenceDetect:Z

    .line 49
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->serializeUsing:Z

    .line 51
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->persistenceXToMany:Z

    .line 57
    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 58
    new-instance v1, Lcom/alibaba/fastjson/serializer/BeanContext;

    invoke-direct {v1, p1, p2}, Lcom/alibaba/fastjson/serializer/BeanContext;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldContext:Lcom/alibaba/fastjson/serializer/BeanContext;

    const/4 v1, 0x1

    if-eqz p1, :cond_63

    .line 61
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz p1, :cond_63

    .line 63
    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v2, :cond_63

    aget-object v4, p1, v3

    .line 64
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v4, v5, :cond_35

    .line 65
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeEnumUsingToString:Z

    goto :goto_60

    .line 66
    :cond_35
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v4, v5, :cond_3c

    .line 67
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeEnumUsingName:Z

    goto :goto_60

    .line 68
    :cond_3c
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v4, v5, :cond_43

    .line 69
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->disableCircularReferenceDetect:Z

    goto :goto_60

    .line 70
    :cond_43
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v4, v5, :cond_53

    .line 71
    iget v4, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    .line 72
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->browserCompatible:Z

    goto :goto_60

    .line 73
    :cond_53
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v4, v5, :cond_60

    .line 74
    iget v4, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    :cond_60
    :goto_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 80
    :cond_63
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->setAccessible()V

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\":"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->double_quoted_fieldPrefix:Ljava/lang/String;

    .line 85
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object p1

    if-eqz p1, :cond_e8

    .line 87
    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_8c
    if-ge v4, v3, :cond_9e

    aget-object v5, v2, v4

    .line 88
    invoke-virtual {v5}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v5

    sget v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_9b

    const/4 v2, 0x1

    goto :goto_9f

    :cond_9b
    add-int/lit8 v4, v4, 0x1

    goto :goto_8c

    :cond_9e
    const/4 v2, 0x0

    .line 94
    :goto_9f
    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->format:Ljava/lang/String;

    .line 96
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b2

    const/4 v3, 0x0

    .line 97
    iput-object v3, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->format:Ljava/lang/String;

    .line 100
    :cond_b2
    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_b8
    if-ge v5, v4, :cond_da

    aget-object v6, v3, v5

    .line 101
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v6, v7, :cond_c3

    .line 102
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeEnumUsingToString:Z

    goto :goto_d7

    .line 103
    :cond_c3
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v6, v7, :cond_ca

    .line 104
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeEnumUsingName:Z

    goto :goto_d7

    .line 105
    :cond_ca
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v6, v7, :cond_d1

    .line 106
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->disableCircularReferenceDetect:Z

    goto :goto_d7

    .line 107
    :cond_d1
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v6, v7, :cond_d7

    .line 108
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->browserCompatible:Z

    :cond_d7
    :goto_d7
    add-int/lit8 v5, v5, 0x1

    goto :goto_b8

    .line 112
    :cond_da
    iget v3, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result p1

    or-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    goto :goto_e9

    :cond_e8
    const/4 v2, 0x0

    .line 115
    :goto_e9
    iput-boolean v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeNull:Z

    .line 117
    iget-object p1, p2, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isAnnotationPresentOneToMany(Ljava/lang/reflect/Method;)Z

    move-result p1

    if-nez p1, :cond_fb

    iget-object p1, p2, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 118
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isAnnotationPresentManyToMany(Ljava/lang/reflect/Method;)Z

    move-result p1

    if-eqz p1, :cond_fc

    :cond_fb
    const/4 v0, 0x1

    :cond_fc
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->persistenceXToMany:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/alibaba/fastjson/serializer/FieldSerializer;)I
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 32
    check-cast p1, Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->compareTo(Lcom/alibaba/fastjson/serializer/FieldSerializer;)I

    move-result p1

    return p1
.end method

.method public getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 152
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->format:Ljava/lang/String;

    if-eqz v0, :cond_2e

    if-eqz p1, :cond_2e

    .line 153
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v1, Ljava/util/Date;

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v1, Ljava/sql/Date;

    if-ne v0, v1, :cond_2e

    .line 154
    :cond_1c
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->format:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 155
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 156
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_2e
    return-object p1
.end method

.method public getPropertyValueDirect(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 144
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->persistenceXToMany:Z

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isHibernateInitialized(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 p1, 0x0

    :cond_11
    return-object p1
.end method

.method public writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 124
    iget-boolean v0, p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v0, :cond_40

    .line 125
    iget v0, p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget v1, v1, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(IILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 127
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->single_quoted_fieldPrefix:Ljava/lang/String;

    if-nez v0, :cond_34

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->single_quoted_fieldPrefix:Ljava/lang/String;

    .line 130
    :cond_34
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->single_quoted_fieldPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_60

    .line 132
    :cond_3a
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->double_quoted_fieldPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_60

    .line 135
    :cond_40
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->un_quoted_fieldPrefix:Ljava/lang/String;

    if-nez v0, :cond_5b

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->un_quoted_fieldPrefix:Ljava/lang/String;

    .line 138
    :cond_5b
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->un_quoted_fieldPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    :goto_60
    return-void
.end method

.method public writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->runtimeInfo:Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;

    if-nez v0, :cond_8f

    if-nez p2, :cond_3b

    .line 172
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 173
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_11

    .line 174
    const-class v0, Ljava/lang/Byte;

    goto :goto_3f

    .line 175
    :cond_11
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_18

    .line 176
    const-class v0, Ljava/lang/Short;

    goto :goto_3f

    .line 177
    :cond_18
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1f

    .line 178
    const-class v0, Ljava/lang/Integer;

    goto :goto_3f

    .line 179
    :cond_1f
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_26

    .line 180
    const-class v0, Ljava/lang/Long;

    goto :goto_3f

    .line 181
    :cond_26
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2d

    .line 182
    const-class v0, Ljava/lang/Float;

    goto :goto_3f

    .line 183
    :cond_2d
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_34

    .line 184
    const-class v0, Ljava/lang/Double;

    goto :goto_3f

    .line 185
    :cond_34
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3f

    .line 186
    const-class v0, Ljava/lang/Boolean;

    goto :goto_3f

    .line 189
    :cond_3b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :cond_3f
    :goto_3f
    const/4 v1, 0x0

    .line 193
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 195
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->serializeUsing()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Void;

    if-eq v3, v4, :cond_5e

    .line 196
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->serializeUsing()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    const/4 v2, 0x1

    .line 197
    iput-boolean v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->serializeUsing:Z

    goto :goto_88

    .line 199
    :cond_5e
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->format:Ljava/lang/String;

    if-eqz v2, :cond_82

    .line 200
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_7b

    const-class v2, Ljava/lang/Double;

    if-ne v0, v2, :cond_6b

    goto :goto_7b

    .line 202
    :cond_6b
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_73

    const-class v2, Ljava/lang/Float;

    if-ne v0, v2, :cond_82

    .line 203
    :cond_73
    new-instance v1, Lcom/alibaba/fastjson/serializer/FloatCodec;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->format:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/serializer/FloatCodec;-><init>(Ljava/lang/String;)V

    goto :goto_82

    .line 201
    :cond_7b
    :goto_7b
    new-instance v1, Lcom/alibaba/fastjson/serializer/DoubleSerializer;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->format:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/serializer/DoubleSerializer;-><init>(Ljava/lang/String;)V

    :cond_82
    :goto_82
    if-nez v1, :cond_88

    .line 208
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1

    .line 212
    :cond_88
    :goto_88
    new-instance v2, Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;

    invoke-direct {v2, v1, v0}, Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;-><init>(Lcom/alibaba/fastjson/serializer/ObjectSerializer;Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->runtimeInfo:Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;

    .line 215
    :cond_8f
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->runtimeInfo:Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;

    .line 217
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->disableCircularReferenceDetect:Z

    if-eqz v1, :cond_9f

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget v1, v1, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v1, v2

    goto :goto_a3

    :cond_9f
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget v1, v1, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    :goto_a3
    iget v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    or-int v8, v1, v2

    if-nez p2, :cond_128

    .line 223
    iget-object p2, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 225
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    if-ne v1, v2, :cond_bf

    sget v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    .line 226
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 227
    invoke-virtual {p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 231
    :cond_bf
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;->runtimeFieldClass:Ljava/lang/Class;

    .line 233
    const-class v2, Ljava/lang/Number;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 234
    iget p1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-virtual {p2, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(II)V

    return-void

    .line 236
    :cond_d3
    const-class v2, Ljava/lang/String;

    if-ne v2, v1, :cond_e1

    .line 237
    iget p1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-virtual {p2, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(II)V

    return-void

    .line 239
    :cond_e1
    const-class v2, Ljava/lang/Boolean;

    if-ne v2, v1, :cond_ef

    .line 240
    iget p1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-virtual {p2, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(II)V

    return-void

    .line 242
    :cond_ef
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_11e

    .line 243
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_fe

    goto :goto_11e

    .line 248
    :cond_fe
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;->fieldSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .line 250
    sget v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_110

    instance-of v0, v3, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v0, :cond_110

    .line 252
    invoke-virtual {p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    :cond_110
    const/4 v5, 0x0

    .line 256
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, p2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, p2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object v4, p1

    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    return-void

    .line 244
    :cond_11e
    :goto_11e
    iget p1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-virtual {p2, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(II)V

    return-void

    .line 260
    :cond_128
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-boolean v1, v1, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    if-eqz v1, :cond_14e

    .line 261
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeEnumUsingName:Z

    if-eqz v1, :cond_13e

    .line 262
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    return-void

    .line 266
    :cond_13e
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeEnumUsingToString:Z

    if-eqz v1, :cond_14e

    .line 267
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    return-void

    .line 272
    :cond_14e
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 274
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;->runtimeFieldClass:Ljava/lang/Class;

    if-eq v1, v2, :cond_160

    iget-boolean v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->serializeUsing:Z

    if-eqz v2, :cond_15b

    goto :goto_160

    .line 277
    :cond_15b
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    goto :goto_162

    .line 275
    :cond_160
    :goto_160
    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;->fieldSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    :goto_162
    move-object v3, v0

    .line 280
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->format:Ljava/lang/String;

    if-eqz v0, :cond_17f

    instance-of v2, v3, Lcom/alibaba/fastjson/serializer/DoubleSerializer;

    if-nez v2, :cond_17f

    instance-of v2, v3, Lcom/alibaba/fastjson/serializer/FloatCodec;

    if-nez v2, :cond_17f

    .line 281
    instance-of v1, v3, Lcom/alibaba/fastjson/serializer/ContextObjectSerializer;

    if-eqz v1, :cond_17b

    .line 282
    check-cast v3, Lcom/alibaba/fastjson/serializer/ContextObjectSerializer;

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldContext:Lcom/alibaba/fastjson/serializer/BeanContext;

    invoke-interface {v3, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/ContextObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/BeanContext;)V

    goto :goto_17e

    .line 284
    :cond_17b
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeWithFormat(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_17e
    return-void

    .line 289
    :cond_17f
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-boolean v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v0, :cond_1af

    .line 290
    instance-of v0, v3, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v0, :cond_19a

    .line 291
    check-cast v3, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 292
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    const/4 v9, 0x1

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v9}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    return-void

    .line 296
    :cond_19a
    instance-of v0, v3, Lcom/alibaba/fastjson/serializer/MapSerializer;

    if-eqz v0, :cond_1af

    .line 297
    check-cast v3, Lcom/alibaba/fastjson/serializer/MapSerializer;

    .line 298
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    const/4 v9, 0x1

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    return-void

    .line 303
    :cond_1af
    iget v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1d3

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-eq v1, v0, :cond_1d3

    instance-of v0, v3, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v0, :cond_1d3

    .line 306
    check-cast v3, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    const/4 v9, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v9}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    return-void

    .line 310
    :cond_1d3
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->browserCompatible:Z

    if-eqz v0, :cond_20c

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_1e7

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_20c

    .line 311
    :cond_1e7
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v4, 0x1fffffffffffffL

    cmp-long v2, v0, v4

    if-gtz v2, :cond_200

    const-wide v4, -0x1fffffffffffffL

    cmp-long v2, v0, v4

    if-gez v2, :cond_20c

    .line 313
    :cond_200
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    return-void

    .line 318
    :cond_20c
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    return-void
.end method
