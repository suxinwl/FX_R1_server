.class public Lcom/alibaba/fastjson/serializer/JSONSerializer;
.super Lcom/alibaba/fastjson/serializer/SerializeFilterable;


# instance fields
.field protected final config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

.field protected context:Lcom/alibaba/fastjson/serializer/SerialContext;

.field private dateFormat:Ljava/text/DateFormat;

.field private dateFormatPattern:Ljava/lang/String;

.field private fastJsonConfigDateFormatPattern:Ljava/lang/String;

.field private indent:Ljava/lang/String;

.field private indentCount:I

.field protected locale:Ljava/util/Locale;

.field public final out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

.field protected references:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/serializer/SerialContext;",
            ">;"
        }
    .end annotation
.end field

.field protected timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 60
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    .registers 3

    .line 68
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V
    .registers 3

    .line 64
    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    .registers 4

    .line 71
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indentCount:I

    const-string v0, "\t"

    .line 40
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indent:Ljava/lang/String;

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    .line 56
    sget-object v0, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->timeZone:Ljava/util/TimeZone;

    .line 57
    sget-object v0, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->locale:Ljava/util/Locale;

    .line 72
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 73
    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    return-void
.end method

.method private generateDateFormat(Ljava/lang/String;)Ljava/text/DateFormat;
    .registers 4

    .line 94
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->locale:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 95
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Object;)V
    .registers 3

    .line 298
    new-instance v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    .line 299
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    return-void
.end method

.method public static write(Ljava/io/Writer;Ljava/lang/Object;)V
    .registers 4

    .line 285
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    .line 287
    :try_start_5
    new-instance v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    .line 288
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 289
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeTo(Ljava/io/Writer;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_16
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    .line 293
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    return-void

    :catchall_14
    move-exception p0

    goto :goto_21

    :catch_16
    move-exception p0

    .line 291
    :try_start_17
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_14

    .line 293
    :goto_21
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 294
    throw p0
.end method


# virtual methods
.method public checkValue(Lcom/alibaba/fastjson/serializer/SerializeFilterable;)Z
    .registers 3

    .line 224
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->valueFilters:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->valueFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_36

    :cond_c
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->contextValueFilters:Ljava/util/List;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->contextValueFilters:Ljava/util/List;

    .line 225
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_36

    :cond_18
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->valueFilters:Ljava/util/List;

    if-eqz v0, :cond_24

    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->valueFilters:Ljava/util/List;

    .line 226
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_36

    :cond_24
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->contextValueFilters:Ljava/util/List;

    if-eqz v0, :cond_30

    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->contextValueFilters:Ljava/util/List;

    .line 227
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_36

    :cond_30
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-boolean p1, p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNonStringValueAsString:Z

    if-eqz p1, :cond_38

    :cond_36
    const/4 p1, 0x1

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    :goto_39
    return p1
.end method

.method public close()V
    .registers 2

    .line 452
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    return-void
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .registers 4

    .line 269
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    return-void
.end method

.method public containsReference(Ljava/lang/Object;)Z
    .registers 5

    .line 169
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 173
    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/SerialContext;

    if-nez v0, :cond_f

    return v1

    .line 178
    :cond_f
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    if-ne p1, v2, :cond_16

    return v1

    .line 182
    :cond_16
    iget-object p1, v0, Lcom/alibaba/fastjson/serializer/SerialContext;->fieldName:Ljava/lang/Object;

    if-eqz p1, :cond_22

    .line 184
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_22

    instance-of p1, p1, Ljava/lang/String;

    if-eqz p1, :cond_23

    :cond_22
    const/4 v1, 0x1

    :cond_23
    return v1
.end method

.method public decrementIdent()V
    .registers 2

    .line 250
    iget v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indentCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indentCount:I

    return-void
.end method

.method public getContext()Lcom/alibaba/fastjson/serializer/SerialContext;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    return-object v0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_e

    .line 85
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormatPattern:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 86
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->generateDateFormat(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormat:Ljava/text/DateFormat;

    .line 90
    :cond_e
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public getDateFormatPattern()Ljava/lang/String;
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormat:Ljava/text/DateFormat;

    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_d

    .line 78
    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 80
    :cond_d
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormatPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getFastJsonConfigDateFormatPattern()Ljava/lang/String;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->fastJsonConfigDateFormatPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getIndentCount()I
    .registers 2

    .line 242
    iget v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indentCount:I

    return v0
.end method

.method public getMapping()Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    return-object v0
.end method

.method public getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object p1

    return-object p1
.end method

.method public getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    return-object v0
.end method

.method public hasNameFilters(Lcom/alibaba/fastjson/serializer/SerializeFilterable;)Z
    .registers 3

    .line 232
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_18

    :cond_c
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->nameFilters:Ljava/util/List;

    if-eqz v0, :cond_1a

    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->nameFilters:Ljava/util/List;

    .line 233
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1a

    :cond_18
    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method public hasPropertyFilters(Lcom/alibaba/fastjson/serializer/SerializeFilterable;)Z
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_18

    :cond_c
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyFilters:Ljava/util/List;

    if-eqz v0, :cond_1a

    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyFilters:Ljava/util/List;

    .line 238
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1a

    :cond_18
    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method public incrementIndent()V
    .registers 2

    .line 246
    iget v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indentCount:I

    return-void
.end method

.method public isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .registers 3

    .line 273
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p1

    return p1
.end method

.method public final isWriteClassName(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .registers 4

    .line 162
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p2

    if-eqz p2, :cond_20

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 164
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    if-eqz p1, :cond_20

    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/SerialContext;->parent:Lcom/alibaba/fastjson/serializer/SerialContext;

    if-eqz p1, :cond_20

    :cond_1e
    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    return p1
.end method

.method public popContext()V
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    if-eqz v0, :cond_8

    .line 157
    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerialContext;->parent:Lcom/alibaba/fastjson/serializer/SerialContext;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    :cond_8
    return-void
.end method

.method public println()V
    .registers 4

    .line 254
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v0, 0x0

    .line 255
    :goto_8
    iget v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indentCount:I

    if-ge v0, v1, :cond_16

    .line 256
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    return-void
.end method

.method public setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    return-void
.end method

.method public setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 136
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V

    return-void
.end method

.method public setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V
    .registers 13

    .line 140
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-boolean v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->disableCircularReferenceDetect:Z

    if-eqz v0, :cond_7

    return-void

    .line 144
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 145
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-nez p1, :cond_1f

    .line 146
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    .line 148
    :cond_1f
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    iget-object p3, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    invoke-virtual {p1, p2, p3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContext(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 152
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormatPattern:Ljava/lang/String;

    .line 109
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormat:Ljava/text/DateFormat;

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormat:Ljava/text/DateFormat;

    :cond_9
    return-void
.end method

.method public setDateFormat(Ljava/text/DateFormat;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormat:Ljava/text/DateFormat;

    .line 102
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormatPattern:Ljava/lang/String;

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    .line 103
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormatPattern:Ljava/lang/String;

    :cond_9
    return-void
.end method

.method public setFastJsonConfigDateFormatPattern(Ljava/lang/String;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->fastJsonConfigDateFormatPattern:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 265
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Ljava/lang/Object;)V
    .registers 9

    if-nez p1, :cond_8

    .line 304
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 308
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 309
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 312
    :try_start_15
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p1

    .line 314
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final write(Ljava/lang/String;)V
    .registers 3

    .line 444
    sget-object v0, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson/serializer/StringCodec;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;)V

    return-void
.end method

.method public final writeAs(Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 9

    if-nez p1, :cond_8

    .line 324
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 328
    :cond_8
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 331
    :try_start_11
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p1

    .line 333
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected final writeKeyValue(CLjava/lang/String;Ljava/lang/Object;)V
    .registers 5

    if-eqz p1, :cond_7

    .line 343
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 345
    :cond_7
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    return-void
.end method

.method public writeNull()V
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void
.end method

.method public writeReference(Ljava/lang/Object;)V
    .registers 4

    .line 188
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 189
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerialContext;->object:Ljava/lang/Object;

    if-ne p1, v1, :cond_e

    .line 192
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const-string v0, "{\"$ref\":\"@\"}"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void

    .line 196
    :cond_e
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerialContext;->parent:Lcom/alibaba/fastjson/serializer/SerialContext;

    if-eqz v1, :cond_1e

    .line 199
    iget-object v1, v1, Lcom/alibaba/fastjson/serializer/SerialContext;->object:Ljava/lang/Object;

    if-ne p1, v1, :cond_1e

    .line 200
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const-string v0, "{\"$ref\":\"..\"}"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void

    .line 207
    :cond_1e
    :goto_1e
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerialContext;->parent:Lcom/alibaba/fastjson/serializer/SerialContext;

    if-nez v1, :cond_4e

    .line 213
    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerialContext;->object:Ljava/lang/Object;

    if-ne p1, v0, :cond_2e

    .line 214
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const-string v0, "{\"$ref\":\"$\"}"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_4d

    .line 216
    :cond_2e
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const-string v1, "{\"$ref\":\""

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/serializer/SerialContext;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerialContext;->toString()Ljava/lang/String;

    move-result-object p1

    .line 218
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 219
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const-string v0, "\"}"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    :goto_4d
    return-void

    .line 210
    :cond_4e
    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerialContext;->parent:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto :goto_1e
.end method

.method public final writeWithFieldName(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 338
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeWithFieldName(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    return-void
.end method

.method public final writeWithFieldName(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 12

    if-nez p1, :cond_8

    .line 352
    :try_start_2
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 356
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 358
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 360
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p1

    .line 362
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final writeWithFormat(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8

    .line 367
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_65

    const-string v0, "unixtime"

    .line 368
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 369
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    .line 370
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    return-void

    :cond_1c
    const-string v0, "millis"

    .line 374
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 375
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    return-void

    .line 379
    :cond_30
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    if-nez v0, :cond_59

    if-eqz p2, :cond_4a

    .line 383
    :try_start_38
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->generateDateFormat(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0
    :try_end_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38 .. :try_end_3c} :catch_3d

    goto :goto_59

    :catch_3d
    const-string v0, "T"

    const-string v1, "\'T\'"

    .line 385
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 386
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->generateDateFormat(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_59

    .line 388
    :cond_4a
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->fastJsonConfigDateFormatPattern:Ljava/lang/String;

    if-eqz p2, :cond_53

    .line 389
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->generateDateFormat(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_59

    .line 391
    :cond_53
    sget-object p2, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->generateDateFormat(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    .line 394
    :cond_59
    :goto_59
    check-cast p1, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 395
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    return-void

    .line 399
    :cond_65
    instance-of v0, p1, [B

    if-eqz v0, :cond_cc

    .line 400
    check-cast p1, [B

    check-cast p1, [B

    const-string v0, "gzip"

    .line 401
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    const-string v0, "gzip,base64"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    goto :goto_92

    :cond_7e
    const-string v0, "hex"

    .line 418
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8c

    .line 419
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeHex([B)V

    goto :goto_bc

    .line 421
    :cond_8c
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeByteArray([B)V

    goto :goto_bc

    :cond_92
    :goto_92
    const/4 p2, 0x0

    .line 404
    :try_start_93
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 405
    array-length v1, p1

    const/16 v2, 0x200

    if-ge v1, v2, :cond_a4

    .line 406
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    array-length v2, p1

    invoke-direct {v1, v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    goto :goto_a9

    .line 408
    :cond_a4
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_a9
    move-object p2, v1

    .line 410
    invoke-virtual {p2, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 411
    invoke-virtual {p2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 412
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeByteArray([B)V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_b9} :catch_bf
    .catchall {:try_start_93 .. :try_end_b9} :catchall_bd

    .line 416
    invoke-static {p2}, Lcom/alibaba/fastjson/util/IOUtils;->close(Ljava/io/Closeable;)V

    :goto_bc
    return-void

    :catchall_bd
    move-exception p1

    goto :goto_c8

    :catch_bf
    move-exception p1

    .line 414
    :try_start_c0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "write gzipBytes error"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_c8
    .catchall {:try_start_c0 .. :try_end_c8} :catchall_bd

    .line 416
    :goto_c8
    invoke-static {p2}, Lcom/alibaba/fastjson/util/IOUtils;->close(Ljava/io/Closeable;)V

    .line 417
    throw p1

    .line 426
    :cond_cc
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_ff

    .line 427
    check-cast p1, Ljava/util/Collection;

    .line 428
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 429
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v1, 0x0

    .line 430
    :goto_de
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-ge v1, v2, :cond_f7

    .line 431
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_f1

    .line 433
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 435
    :cond_f1
    invoke-virtual {p0, v2, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeWithFormat(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_de

    .line 437
    :cond_f7
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 p2, 0x5d

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 440
    :cond_ff
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    return-void
.end method
