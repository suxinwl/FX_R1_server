.class public Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field private final alterNameFieldDeserializers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field private final autoTypeCheckHandler:Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;

.field public final beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

.field protected final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private fieldDeserializerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

.field private transient hashArray:[J

.field private transient hashArrayMapping:[S

.field private transient smartMatchHashArray:[J

.field private transient smartMatchHashArrayMapping:[S

.field protected final sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)V
    .registers 12

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    .line 57
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .line 60
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->autoTypeCheckHandler()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;

    if-eq v0, v2, :cond_25

    .line 62
    :try_start_18
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->autoTypeCheckHandler()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_24} :catch_25

    goto :goto_26

    :catch_25
    :cond_25
    move-object v0, v1

    .line 67
    :goto_26
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->autoTypeCheckHandler:Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;

    .line 70
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v0, v0

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 71
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v0, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_34
    if-ge v3, v0, :cond_70

    .line 72
    iget-object v4, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v4, v4, v3

    .line 73
    invoke-virtual {p1, p1, p2, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v5

    .line 75
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v5, v6, v3

    const/16 v6, 0x80

    if-le v0, v6, :cond_58

    .line 78
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializerMap:Ljava/util/Map;

    if-nez v6, :cond_51

    .line 79
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializerMap:Ljava/util/Map;

    .line 81
    :cond_51
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializerMap:Ljava/util/Map;

    iget-object v7, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_58
    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    array-length v6, v4

    const/4 v7, 0x0

    :goto_5c
    if-ge v7, v6, :cond_6d

    aget-object v8, v4, v7

    if-nez v1, :cond_67

    .line 86
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 88
    :cond_67
    invoke-interface {v1, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_5c

    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 91
    :cond_70
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    .line 93
    iget-object p1, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length p1, p1

    new-array p1, p1, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 94
    iget-object p1, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length p1, p1

    :goto_7c
    if-ge v2, p1, :cond_8f

    .line 95
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v0, v0, v2

    .line 96
    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    :cond_8f
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 50
    iget-object v2, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    iget-boolean v3, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->fieldBased:Z

    iget-boolean v4, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->compatibleWithJavaBean:Z

    .line 51
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->isJacksonCompatible()Z

    move-result v5

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object p2

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)V

    return-void
.end method

.method private createFactoryInstance(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1369
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected static getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .registers 9

    .line 1619
    iget-object v0, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 1623
    :cond_6
    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_31

    aget-object v3, p1, v2

    .line 1624
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    .line 1625
    instance-of v4, v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v4, :cond_2e

    .line 1626
    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 1628
    iget-object v4, v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .line 1629
    iget-object v5, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    return-object v3

    .line 1633
    :cond_27
    invoke-static {p0, v4, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v3

    if-eqz v3, :cond_2e

    return-object v3

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_31
    return-object v1
.end method

.method static isSetFlag(I[I)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 188
    :cond_4
    div-int/lit8 v1, p0, 0x20

    .line 189
    rem-int/lit8 p0, p0, 0x20

    .line 190
    array-length v2, p1

    if-ge v1, v2, :cond_14

    .line 191
    aget p1, p1, v1

    const/4 v1, 0x1

    shl-int p0, v1, p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_14

    return v1

    :cond_14
    return v0
.end method

.method protected static parseArray(Ljava/util/Collection;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .registers 11

    .line 1650
    iget-object p4, p2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    check-cast p4, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 1651
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v0

    const/16 v1, 0x10

    const/16 v2, 0x8

    if-ne v0, v2, :cond_15

    .line 1653
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 1654
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    return-void

    :cond_15
    const/16 v2, 0xe

    if-eq v0, v2, :cond_1c

    .line 1659
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->throwException(I)V

    .line 1661
    :cond_1c
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v0

    const/16 v3, 0x5b

    if-ne v0, v3, :cond_2b

    .line 1663
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1664
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_2e

    .line 1666
    :cond_2b
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 1669
    :goto_2e
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v0

    const/16 v4, 0xf

    if-ne v0, v4, :cond_3a

    .line 1670
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    return-void

    :cond_3a
    const/4 v0, 0x0

    .line 1676
    :goto_3b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, p2, p3, v5}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1677
    invoke-interface {p0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    .line 1679
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v5

    if-ne v5, v1, :cond_5f

    .line 1680
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v5

    if-ne v5, v3, :cond_5b

    .line 1682
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1683
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_3b

    .line 1685
    :cond_5b
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto :goto_3b

    .line 1692
    :cond_5f
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result p0

    if-eq p0, v4, :cond_68

    .line 1694
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->throwException(I)V

    .line 1697
    :cond_68
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result p0

    const/16 p1, 0x2c

    if-ne p0, p1, :cond_77

    .line 1699
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1700
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_7a

    .line 1702
    :cond_77
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    :goto_7a
    return-void
.end method


# virtual methods
.method protected check(Lcom/alibaba/fastjson/parser/JSONLexer;I)V
    .registers 3

    .line 391
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p1

    if-ne p1, p2, :cond_7

    return-void

    .line 392
    :cond_7
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "syntax error"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 13

    const-string v0, "create instance error, class "

    .line 200
    instance-of v1, p2, Ljava/lang/Class;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_28

    .line 201
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 202
    check-cast p2, Ljava/lang/Class;

    .line 203
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 204
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    new-array v1, v2, [Ljava/lang/Class;

    aput-object p2, v1, v3

    .line 205
    invoke-static {p1, v1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 210
    :cond_28
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x0

    if-nez v1, :cond_36

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_36

    return-object v4

    .line 214
    :cond_36
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    if-lez v1, :cond_43

    return-object v4

    .line 220
    :cond_43
    :try_start_43
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 221
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v5, v5, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    if-nez v5, :cond_63

    if-eqz v1, :cond_57

    new-array p2, v3, [Ljava/lang/Object;

    .line 223
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_ef

    .line 225
    :cond_57
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p2, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_ef

    .line 228
    :cond_63
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v5
    :try_end_67
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_43 .. :try_end_67} :catch_15e
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_67} :catch_142

    const-string v6, "can\'t create non-static inner class instance."

    if-eqz v5, :cond_13c

    .line 229
    :try_start_6b
    iget-object v7, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v7, :cond_13c

    .line 234
    instance-of v7, p2, Ljava/lang/Class;

    if-eqz v7, :cond_136

    .line 235
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/16 v7, 0x24

    .line 240
    invoke-virtual {p2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 241
    invoke-virtual {p2, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 243
    iget-object v7, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 244
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 247
    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d8

    .line 248
    iget-object v5, v5, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v5, :cond_d6

    .line 249
    iget-object v9, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v9, :cond_d6

    const-string v9, "java.util.ArrayList"

    .line 251
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c3

    const-string v9, "java.util.List"

    .line 252
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c3

    const-string v9, "java.util.Collection"

    .line 253
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c3

    const-string v9, "java.util.Map"

    .line 254
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c3

    const-string v9, "java.util.HashMap"

    .line 255
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d6

    .line 256
    :cond_c3
    iget-object v7, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 257
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d7

    .line 258
    iget-object v4, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_d7

    :cond_d6
    move-object v4, v7

    :cond_d7
    :goto_d7
    move-object v7, v4

    :cond_d8
    if-eqz v7, :cond_130

    .line 267
    instance-of p2, v7, Ljava/util/Collection;

    if-eqz p2, :cond_e7

    move-object p2, v7

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_130

    :cond_e7
    new-array p2, v2, [Ljava/lang/Object;

    aput-object v7, p2, v3

    .line 271
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_ef
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_6b .. :try_end_ef} :catch_15e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_ef} :catch_142

    :goto_ef
    if-eqz p1, :cond_12f

    .line 279
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    .line 280
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result p1

    if-eqz p1, :cond_12f

    .line 281
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v1, p1

    :goto_100
    if-ge v3, v1, :cond_12f

    aget-object v2, p1, v3

    .line 282
    iget-object v4, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_12c

    :try_start_10a
    const-string v4, ""

    .line 284
    invoke-virtual {v2, p2, v4}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_10f} :catch_110

    goto :goto_12c

    :catch_110
    move-exception p1

    .line 286
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_12c
    :goto_12c
    add-int/lit8 v3, v3, 0x1

    goto :goto_100

    :cond_12f
    return-object p2

    .line 268
    :cond_130
    :try_start_130
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 237
    :cond_136
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :cond_13c
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_142
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_130 .. :try_end_142} :catch_15e
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_142} :catch_142

    :catch_142
    move-exception p1

    .line 276
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_15e
    move-exception p1

    .line 274
    goto :goto_161

    :goto_160
    throw p1

    :goto_161
    goto :goto_160
.end method

.method public createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1378
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_16b

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_16b

    .line 1379
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {p0, v2, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 1381
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_150

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1382
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1383
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1385
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v5

    if-nez v5, :cond_3a

    goto :goto_1d

    .line 1390
    :cond_3a
    iget-object v6, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1391
    iget-object v7, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 1392
    iget-object v8, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 1394
    iget-object v9, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1395
    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v10

    .line 1397
    iget-object v11, v6, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    if-eqz v11, :cond_69

    .line 1398
    invoke-virtual {v9, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5c

    if-eqz v10, :cond_69

    .line 1399
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->deserializeUsing()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Void;

    if-eq v9, v10, :cond_69

    .line 1401
    :cond_5c
    new-instance v6, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;)V

    .line 1402
    invoke-virtual {v5, v6, v0, v8, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    goto :goto_1d

    :cond_69
    if-eqz v7, :cond_115

    .line 1406
    iget-object v9, v6, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v9, :cond_115

    .line 1407
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    .line 1408
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_87

    .line 1409
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v4, v9, :cond_7f

    .line 1410
    invoke-virtual {v7, v0, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_1d

    .line 1414
    :cond_7f
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v4, v9, :cond_115

    .line 1415
    invoke-virtual {v7, v0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_1d

    .line 1418
    :cond_87
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_99

    .line 1419
    instance-of v9, v4, Ljava/lang/Number;

    if-eqz v9, :cond_115

    .line 1420
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v7, v0, v4}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_1d

    .line 1423
    :cond_99
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_ac

    .line 1424
    instance-of v9, v4, Ljava/lang/Number;

    if-eqz v9, :cond_115

    .line 1425
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {v7, v0, v4, v5}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto/16 :goto_1d

    .line 1428
    :cond_ac
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v11, 0xa

    if-ne v9, v10, :cond_db

    .line 1429
    instance-of v9, v4, Ljava/lang/Number;

    if-eqz v9, :cond_c1

    .line 1430
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v7, v0, v4}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto/16 :goto_1d

    .line 1432
    :cond_c1
    instance-of v9, v4, Ljava/lang/String;

    if-eqz v9, :cond_115

    .line 1433
    check-cast v4, Ljava/lang/String;

    .line 1435
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v11, :cond_d2

    .line 1436
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->parseFloat(Ljava/lang/String;)F

    move-result v4

    goto :goto_d6

    .line 1438
    :cond_d2
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 1441
    :goto_d6
    invoke-virtual {v7, v0, v4}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto/16 :goto_1d

    .line 1444
    :cond_db
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_108

    .line 1445
    instance-of v9, v4, Ljava/lang/Number;

    if-eqz v9, :cond_ee

    .line 1446
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v7, v0, v4, v5}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto/16 :goto_1d

    .line 1448
    :cond_ee
    instance-of v9, v4, Ljava/lang/String;

    if-eqz v9, :cond_115

    .line 1449
    check-cast v4, Ljava/lang/String;

    .line 1451
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v11, :cond_ff

    .line 1452
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    goto :goto_103

    .line 1454
    :cond_ff
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 1457
    :goto_103
    invoke-virtual {v7, v0, v4, v5}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto/16 :goto_1d

    :cond_108
    if-eqz v4, :cond_115

    .line 1460
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v8, v9, :cond_115

    .line 1461
    invoke-virtual {v7, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1d

    .line 1466
    :cond_115
    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    if-eqz v6, :cond_122

    .line 1467
    const-class v7, Ljava/util/Date;

    if-ne v8, v7, :cond_122

    .line 1468
    invoke-static {v4, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    goto :goto_14b

    :cond_122
    if-eqz v6, :cond_13c

    .line 1469
    instance-of v7, v8, Ljava/lang/Class;

    if-eqz v7, :cond_13c

    move-object v7, v8

    check-cast v7, Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "java.time.LocalDateTime"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13c

    .line 1470
    invoke-static {v4, v6}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->castToLocalDateTime(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_14b

    .line 1472
    :cond_13c
    instance-of v6, v8, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_147

    .line 1473
    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v4, v8, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_14b

    .line 1475
    :cond_147
    invoke-static {v4, v8, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v4

    .line 1479
    :goto_14b
    invoke-virtual {v5, v0, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1d

    .line 1482
    :cond_150
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_16a

    .line 1485
    :try_start_156
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_160} :catch_161

    return-object p1

    :catch_161
    move-exception p1

    .line 1487
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "build object error"

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_16a
    return-object v0

    .line 1497
    :cond_16b
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1498
    array-length v4, v0

    .line 1499
    new-array v5, v4, [Ljava/lang/Object;

    move-object v7, v2

    const/4 v6, 0x0

    :goto_174
    if-ge v6, v4, :cond_1e5

    .line 1502
    aget-object v8, v0, v6

    .line 1503
    iget-object v9, v8, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1e0

    .line 1506
    iget-object v10, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1507
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_18b

    .line 1508
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_1d0

    .line 1509
    :cond_18b
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_196

    const-wide/16 v9, 0x0

    .line 1510
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_1d0

    .line 1511
    :cond_196
    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_19f

    .line 1512
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    goto :goto_1d0

    .line 1513
    :cond_19f
    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_1a8

    .line 1514
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    goto :goto_1d0

    .line 1515
    :cond_1a8
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_1b2

    const/4 v9, 0x0

    .line 1516
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    goto :goto_1d0

    .line 1517
    :cond_1b2
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_1bd

    const-wide/16 v9, 0x0

    .line 1518
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_1d0

    .line 1519
    :cond_1bd
    sget-object v11, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_1c8

    const/16 v9, 0x30

    .line 1520
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    goto :goto_1d0

    .line 1521
    :cond_1c8
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_1d0

    .line 1522
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    :cond_1d0
    :goto_1d0
    if-nez v7, :cond_1d7

    .line 1525
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1527
    :cond_1d7
    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    :cond_1e0
    aput-object v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_174

    :cond_1e5
    if-eqz v7, :cond_21e

    .line 1533
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1ef
    :goto_1ef
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1534
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1535
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1537
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v6

    if-eqz v6, :cond_1ef

    .line 1539
    iget-object v6, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_1ef

    .line 1541
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput-object v0, v5, v6

    goto :goto_1ef

    .line 1547
    :cond_21e
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_2e8

    .line 1549
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-boolean p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlin:Z

    if-eqz p1, :cond_26c

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_22c
    if-ge p1, v4, :cond_26d

    .line 1551
    aget-object v2, v5, p1

    if-nez v2, :cond_24d

    .line 1553
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v2, :cond_269

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v2, v2

    if-ge p1, v2, :cond_269

    .line 1554
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v2, v2, p1

    .line 1555
    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    if-ne v2, v6, :cond_269

    const/4 v0, 0x1

    goto :goto_269

    .line 1559
    :cond_24d
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-eq v6, v7, :cond_269

    .line 1560
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v6, v6, p1

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v2, v6, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v5, p1

    :cond_269
    :goto_269
    add-int/lit8 p1, p1, 0x1

    goto :goto_22c

    :cond_26c
    const/4 v0, 0x0

    :cond_26d
    const-string p1, "create instance error, "

    if-eqz v0, :cond_2c0

    .line 1565
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p2, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlinDefaultConstructor:Ljava/lang/reflect/Constructor;

    if-eqz p2, :cond_2c0

    .line 1567
    :try_start_277
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p2, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlinDefaultConstructor:Ljava/lang/reflect/Constructor;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_281
    if-ge v3, v4, :cond_2a0

    .line 1570
    aget-object v0, v5, v3

    if-eqz v0, :cond_29d

    .line 1571
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v1, :cond_29d

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v1, v1

    if-ge v3, v1, :cond_29d

    .line 1572
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v1, v1, v3

    .line 1573
    invoke-virtual {v1, p2, v0}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_29d
    .catch Ljava/lang/Exception; {:try_start_277 .. :try_end_29d} :catch_2a2

    :cond_29d
    add-int/lit8 v3, v3, 0x1

    goto :goto_281

    :cond_2a0
    move-object v2, p2

    goto :goto_317

    :catch_2a2
    move-exception p2

    .line 1577
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 1578
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1582
    :cond_2c0
    :try_start_2c0
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p2, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {p2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2c8
    .catch Ljava/lang/Exception; {:try_start_2c0 .. :try_end_2c8} :catch_2ca

    move-object v2, p1

    goto :goto_317

    :catch_2ca
    move-exception p2

    .line 1584
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 1585
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1588
    :cond_2e8
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_317

    .line 1590
    :try_start_2ee
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p1, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2f6
    .catch Ljava/lang/Exception; {:try_start_2ee .. :try_end_2f6} :catch_2f7

    goto :goto_317

    :catch_2f7
    move-exception p1

    .line 1592
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create factory method error, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_317
    :goto_317
    return-object v2
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 296
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "I)TT;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 300
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;
    .registers 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "I[I)TT;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 407
    const-class v1, Lcom/alibaba/fastjson/JSON;

    if-eq v10, v1, :cond_9cd

    const-class v1, Lcom/alibaba/fastjson/JSONObject;

    if-ne v10, v1, :cond_12

    goto/16 :goto_9cd

    .line 411
    :cond_12
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object v12, v1

    check-cast v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 412
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v13

    .line 414
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    const/16 v2, 0x8

    const/16 v14, 0x10

    const/4 v15, 0x0

    if-ne v1, v2, :cond_2a

    .line 416
    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    return-object v15

    .line 420
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v2

    if-eqz p4, :cond_34

    if-eqz v2, :cond_34

    .line 422
    iget-object v2, v2, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_34
    move-object v7, v2

    const/16 v6, 0xd

    if-ne v1, v6, :cond_50

    .line 430
    :try_start_39
    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    if-nez p4, :cond_43

    .line 432
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_49

    goto :goto_45

    :cond_43
    move-object/from16 v1, p4

    .line 1084
    :goto_45
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v1

    :catchall_49
    move-exception v0

    move-object/from16 v14, p4

    move-object v1, v0

    :goto_4d
    move-object v3, v7

    goto/16 :goto_9c5

    :cond_50
    const/16 v2, 0xe

    if-ne v1, v2, :cond_79

    .line 438
    :try_start_54
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 439
    iget-object v6, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v6, v6, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v6, v3

    if-nez v6, :cond_6e

    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    .line 440
    invoke-virtual {v12, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v6

    if-nez v6, :cond_6e

    and-int v3, p5, v3

    if-eqz v3, :cond_6c

    goto :goto_6e

    :cond_6c
    const/4 v3, 0x0

    goto :goto_6f

    :cond_6e
    :goto_6e
    const/4 v3, 0x1

    :goto_6f
    if-eqz v3, :cond_79

    .line 444
    invoke-virtual/range {p0 .. p4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_75
    .catchall {:try_start_54 .. :try_end_75} :catchall_49

    .line 1084
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v1

    :cond_79
    const/16 v3, 0xc

    const/4 v6, 0x4

    if-eq v1, v3, :cond_16a

    if-eq v1, v14, :cond_16a

    .line 449
    :try_start_80
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isBlankInput()Z

    move-result v3
    :try_end_84
    .catchall {:try_start_80 .. :try_end_84} :catchall_49

    if-eqz v3, :cond_8a

    .line 1084
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v15

    :cond_8a
    if-ne v1, v6, :cond_c4

    .line 454
    :try_start_8c
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v3

    .line 455
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_9d

    .line 456
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V
    :try_end_99
    .catchall {:try_start_8c .. :try_end_99} :catchall_49

    .line 1084
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v15

    .line 460
    :cond_9d
    :try_start_9d
    iget-object v10, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v10, v10, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v10, :cond_c4

    .line 461
    iget-object v10, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v10, v10, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object v10

    array-length v14, v10

    const/4 v6, 0x0

    :goto_ad
    if-ge v6, v14, :cond_c4

    aget-object v5, v10, v6

    .line 462
    const-class v4, Ljava/lang/Enum;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4
    :try_end_b7
    .catchall {:try_start_9d .. :try_end_b7} :catchall_49

    if-eqz v4, :cond_c1

    .line 464
    :try_start_b9
    invoke-static {v5, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1
    :try_end_bd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b9 .. :try_end_bd} :catch_c1
    .catchall {:try_start_b9 .. :try_end_bd} :catchall_49

    .line 1084
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v1

    :catch_c1
    :cond_c1
    add-int/lit8 v6, v6, 0x1

    goto :goto_ad

    :cond_c4
    if-ne v1, v2, :cond_d8

    .line 474
    :try_start_c6
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v2

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_d8

    .line 475
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 476
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V
    :try_end_d4
    .catchall {:try_start_c6 .. :try_end_d4} :catchall_49

    .line 1084
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v15

    .line 480
    :cond_d8
    :try_start_d8
    iget-object v2, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_12d

    iget-object v2, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v2, v2
    :try_end_e3
    .catchall {:try_start_d8 .. :try_end_e3} :catchall_49

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12d

    .line 482
    :try_start_e6
    iget-object v2, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 483
    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    if-ne v3, v4, :cond_109

    const/4 v3, 0x2

    if-ne v1, v3, :cond_12d

    .line 485
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->intValue()I

    move-result v1

    .line 486
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 487
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v8, v13, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createFactoryInstance(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_105} :catch_121
    .catchall {:try_start_e6 .. :try_end_105} :catchall_49

    .line 1084
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v1

    .line 489
    :cond_109
    :try_start_109
    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_12d

    const/4 v2, 0x4

    if-ne v1, v2, :cond_12d

    .line 491
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 492
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 493
    invoke-direct {v8, v13, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createFactoryInstance(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_11d} :catch_121
    .catchall {:try_start_109 .. :try_end_11d} :catchall_49

    .line 1084
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v1

    :catch_121
    move-exception v0

    move-object v1, v0

    .line 497
    :try_start_123
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 501
    :cond_12d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, expect {, actual "

    .line 502
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->tokenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pos "

    .line 504
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 507
    instance-of v2, v11, Ljava/lang/String;

    if-eqz v2, :cond_156

    const-string v2, ", fieldName "

    .line 509
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_156
    const-string v2, ", fastjson-version "

    .line 513
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "1.2.75"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_16a
    .catchall {:try_start_123 .. :try_end_16a} :catchall_49

    .line 518
    :cond_16a
    :try_start_16a
    iget v1, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_16c
    .catchall {:try_start_16a .. :try_end_16c} :catchall_9bf

    const/4 v2, 0x2

    if-ne v1, v2, :cond_173

    const/4 v5, 0x0

    .line 519
    :try_start_170
    iput v5, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_172
    .catchall {:try_start_170 .. :try_end_172} :catchall_49

    goto :goto_174

    :cond_173
    const/4 v5, 0x0

    .line 522
    :goto_174
    :try_start_174
    iget-object v1, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v6, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeKey:Ljava/lang/String;
    :try_end_178
    .catchall {:try_start_174 .. :try_end_178} :catchall_9bf

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    move-object v5, v15

    move-object/from16 v17, v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 530
    :goto_181
    :try_start_181
    iget-object v15, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v15, v15
    :try_end_184
    .catchall {:try_start_181 .. :try_end_184} :catchall_9b6

    if-ge v4, v15, :cond_1b3

    if-ge v3, v14, :cond_1b3

    .line 531
    :try_start_188
    iget-object v15, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v15, v15, v4

    .line 532
    iget-object v14, v15, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move/from16 p4, v4

    .line 533
    iget-object v4, v14, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 534
    invoke-virtual {v14}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v21

    if-eqz v21, :cond_1a5

    move-object/from16 p6, v4

    .line 535
    instance-of v4, v15, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    if-eqz v4, :cond_1a7

    .line 536
    move-object v4, v15

    check-cast v4, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    iget-boolean v4, v4, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->customDeserilizer:Z
    :try_end_1a3
    .catchall {:try_start_188 .. :try_end_1a3} :catchall_1ad

    move-object v10, v15

    goto :goto_1a9

    :cond_1a5
    move-object/from16 p6, v4

    :cond_1a7
    move-object v10, v15

    const/4 v4, 0x0

    :goto_1a9
    move-object v15, v14

    move-object/from16 v14, p6

    goto :goto_1bb

    :catchall_1ad
    move-exception v0

    move-object v14, v1

    move-object v15, v5

    move-object v3, v7

    goto/16 :goto_9c4

    :cond_1b3
    move/from16 p4, v4

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    :goto_1bb
    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    if-eqz v10, :cond_3a8

    move-object/from16 p6, v2

    .line 545
    :try_start_1c5
    iget-object v2, v15, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C
    :try_end_1c7
    .catchall {:try_start_1c5 .. :try_end_1c7} :catchall_39e

    if-eqz v4, :cond_1d6

    .line 546
    :try_start_1c9
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchField([C)Z

    move-result v4
    :try_end_1cd
    .catchall {:try_start_1c9 .. :try_end_1cd} :catchall_1ad

    if-eqz v4, :cond_1d6

    move-object/from16 v27, v1

    :goto_1d1
    move-object/from16 v29, v10

    const/4 v1, 0x1

    goto/16 :goto_3af

    .line 548
    :cond_1d6
    :try_start_1d6
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_1d8
    .catchall {:try_start_1d6 .. :try_end_1d8} :catchall_39e

    move-object/from16 v27, v1

    const/4 v1, -0x2

    if-eq v14, v4, :cond_372

    :try_start_1dd
    const-class v4, Ljava/lang/Integer;

    if-ne v14, v4, :cond_1e3

    goto/16 :goto_372

    .line 563
    :cond_1e3
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v14, v4, :cond_351

    const-class v4, Ljava/lang/Long;

    if-ne v14, v4, :cond_1ed

    goto/16 :goto_351

    .line 578
    :cond_1ed
    const-class v4, Ljava/lang/String;

    if-ne v14, v4, :cond_20a

    .line 579
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldString([C)Ljava/lang/String;

    move-result-object v2

    .line 581
    iget v4, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_1ff

    :goto_1f9
    move-object/from16 v29, v10

    :goto_1fb
    const/4 v1, 0x1

    const/4 v4, 0x1

    goto/16 :goto_3b1

    .line 584
    :cond_1ff
    iget v4, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-ne v4, v1, :cond_205

    goto/16 :goto_391

    :cond_205
    move-object/from16 v29, v10

    :cond_207
    const/4 v1, 0x0

    goto/16 :goto_3b0

    .line 588
    :cond_20a
    const-class v4, Ljava/util/Date;

    if-ne v14, v4, :cond_221

    iget-object v4, v15, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    if-nez v4, :cond_221

    .line 589
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldDate([C)Ljava/util/Date;

    move-result-object v2

    .line 591
    iget v4, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_21b

    goto :goto_1f9

    .line 594
    :cond_21b
    iget v4, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-ne v4, v1, :cond_205

    goto/16 :goto_391

    .line 598
    :cond_221
    const-class v4, Ljava/math/BigDecimal;

    if-ne v14, v4, :cond_234

    .line 599
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldDecimal([C)Ljava/math/BigDecimal;

    move-result-object v2

    .line 601
    iget v4, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_22e

    goto :goto_1f9

    .line 604
    :cond_22e
    iget v4, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-ne v4, v1, :cond_205

    goto/16 :goto_391

    .line 608
    :cond_234
    const-class v4, Ljava/math/BigInteger;

    if-ne v14, v4, :cond_247

    .line 609
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldBigInteger([C)Ljava/math/BigInteger;

    move-result-object v2

    .line 611
    iget v4, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_241

    goto :goto_1f9

    .line 614
    :cond_241
    iget v4, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-ne v4, v1, :cond_205

    goto/16 :goto_391

    .line 618
    :cond_247
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v14, v4, :cond_334

    const-class v4, Ljava/lang/Boolean;

    if-ne v14, v4, :cond_251

    goto/16 :goto_334

    .line 634
    :cond_251
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v14, v4, :cond_312

    const-class v4, Ljava/lang/Float;

    if-ne v14, v4, :cond_25b

    goto/16 :goto_312

    .line 649
    :cond_25b
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v14, v4, :cond_2ed

    const-class v4, Ljava/lang/Double;

    if-ne v14, v4, :cond_265

    goto/16 :goto_2ed

    .line 664
    :cond_265
    invoke-virtual {v14}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_2a2

    .line 665
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    if-eqz v4, :cond_2a2

    if-eqz v21, :cond_281

    .line 666
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->deserializeUsing()Ljava/lang/Class;

    move-result-object v4

    const-class v1, Ljava/lang/Void;

    if-ne v4, v1, :cond_2a2

    .line 668
    :cond_281
    instance-of v1, v10, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    if-eqz v1, :cond_3ac

    .line 669
    move-object v1, v10

    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 670
    invoke-virtual {v8, v12, v2, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->scanEnum(Lcom/alibaba/fastjson/parser/JSONLexerBase;[CLcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)Ljava/lang/Enum;

    move-result-object v2

    .line 672
    iget v1, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v1, :cond_295

    const/4 v1, 0x1

    const/4 v4, 0x1

    goto :goto_29e

    .line 675
    :cond_295
    iget v1, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v4, -0x2

    if-ne v1, v4, :cond_29c

    goto/16 :goto_391

    :cond_29c
    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_29e
    move-object/from16 v29, v10

    goto/16 :goto_3b1

    .line 680
    :cond_2a2
    const-class v1, [I

    if-ne v14, v1, :cond_2b7

    .line 681
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldIntArray([C)[I

    move-result-object v2

    .line 683
    iget v1, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v1, :cond_2b0

    goto/16 :goto_1f9

    .line 686
    :cond_2b0
    iget v1, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v4, -0x2

    if-ne v1, v4, :cond_205

    goto/16 :goto_391

    .line 690
    :cond_2b7
    const-class v1, [F

    if-ne v14, v1, :cond_2cc

    .line 691
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldFloatArray([C)[F

    move-result-object v2

    .line 693
    iget v1, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v1, :cond_2c5

    goto/16 :goto_1f9

    .line 696
    :cond_2c5
    iget v1, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v4, -0x2

    if-ne v1, v4, :cond_205

    goto/16 :goto_391

    .line 700
    :cond_2cc
    const-class v1, [[F

    if-ne v14, v1, :cond_2e1

    .line 701
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldFloatArray2([C)[[F

    move-result-object v2

    .line 703
    iget v1, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v1, :cond_2da

    goto/16 :goto_1f9

    .line 706
    :cond_2da
    iget v1, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v4, -0x2

    if-ne v1, v4, :cond_205

    goto/16 :goto_391

    .line 710
    :cond_2e1
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchField([C)Z

    move-result v1

    if-eqz v1, :cond_2e9

    goto/16 :goto_1d1

    :cond_2e9
    move/from16 v21, v3

    goto/16 :goto_3dc

    .line 650
    :cond_2ed
    :goto_2ed
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldDouble([C)D

    move-result-wide v1

    cmpl-double v4, v1, v22

    if-nez v4, :cond_2fe

    .line 651
    iget v4, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object/from16 v29, v10

    const/4 v10, 0x5

    if-ne v4, v10, :cond_300

    const/4 v2, 0x0

    goto :goto_305

    :cond_2fe
    move-object/from16 v29, v10

    .line 654
    :cond_300
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object v2, v1

    .line 657
    :goto_305
    iget v1, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v1, :cond_30b

    :goto_309
    goto/16 :goto_1fb

    .line 660
    :cond_30b
    iget v1, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v4, -0x2

    if-ne v1, v4, :cond_207

    goto/16 :goto_391

    :cond_312
    :goto_312
    move-object/from16 v29, v10

    .line 635
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldFloat([C)F

    move-result v1

    cmpl-float v2, v1, v24

    if-nez v2, :cond_323

    .line 636
    iget v2, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_323

    const/4 v2, 0x0

    goto :goto_328

    .line 639
    :cond_323
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object v2, v1

    .line 642
    :goto_328
    iget v1, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v1, :cond_32d

    goto :goto_309

    .line 645
    :cond_32d
    iget v1, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v4, -0x2

    if-ne v1, v4, :cond_207

    goto/16 :goto_391

    :cond_334
    :goto_334
    move-object/from16 v29, v10

    .line 619
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldBoolean([C)Z

    move-result v1

    .line 621
    iget v2, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_341

    const/4 v2, 0x0

    goto :goto_346

    .line 624
    :cond_341
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v2, v1

    .line 627
    :goto_346
    iget v1, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v1, :cond_34b

    goto :goto_309

    .line 630
    :cond_34b
    iget v1, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v4, -0x2

    if-ne v1, v4, :cond_207

    goto :goto_391

    :cond_351
    :goto_351
    move-object/from16 v29, v10

    .line 564
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldLong([C)J

    move-result-wide v1

    cmp-long v4, v1, v25

    if-nez v4, :cond_362

    .line 565
    iget v4, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v10, 0x5

    if-ne v4, v10, :cond_362

    const/4 v2, 0x0

    goto :goto_367

    .line 568
    :cond_362
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v2, v1

    .line 571
    :goto_367
    iget v1, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v1, :cond_36c

    goto :goto_309

    .line 574
    :cond_36c
    iget v1, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v4, -0x2

    if-ne v1, v4, :cond_207

    goto :goto_391

    :cond_372
    :goto_372
    move-object/from16 v29, v10

    .line 549
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldInt([C)I

    move-result v1

    if-nez v1, :cond_381

    .line 550
    iget v2, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_381

    const/4 v2, 0x0

    goto :goto_386

    .line 553
    :cond_381
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v1

    .line 556
    :goto_386
    iget v1, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v1, :cond_38c

    goto/16 :goto_309

    .line 559
    :cond_38c
    iget v1, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I
    :try_end_38e
    .catchall {:try_start_1dd .. :try_end_38e} :catchall_3e2

    const/4 v4, -0x2

    if-ne v1, v4, :cond_207

    :goto_391
    add-int/lit8 v3, v3, 0x1

    move/from16 v10, p4

    move/from16 v16, v3

    move-object/from16 v20, v6

    move-object v3, v7

    move-object/from16 v19, v17

    goto/16 :goto_568

    :catchall_39e
    move-exception v0

    move-object/from16 v27, v1

    :goto_3a1
    move-object v1, v0

    move-object v15, v5

    move-object v3, v7

    move-object/from16 v14, v27

    goto/16 :goto_9c5

    :cond_3a8
    move-object/from16 v27, v1

    move-object/from16 p6, v2

    :cond_3ac
    move-object/from16 v29, v10

    const/4 v1, 0x0

    :goto_3af
    const/4 v2, 0x0

    :goto_3b0
    const/4 v4, 0x0

    :goto_3b1
    if-nez v1, :cond_58b

    .line 718
    :try_start_3b3
    iget-object v10, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v12, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v10
    :try_end_3b9
    .catchall {:try_start_3b3 .. :try_end_3b9} :catchall_584

    if-nez v10, :cond_3e4

    move/from16 v21, v3

    .line 721
    :try_start_3bd
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v3

    move-object/from16 v28, v14

    const/16 v14, 0xd

    if-ne v3, v14, :cond_3d0

    const/16 v14, 0x10

    .line 723
    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    move-object/from16 v14, v27

    goto/16 :goto_555

    :cond_3d0
    const/16 v14, 0x10

    if-ne v3, v14, :cond_3e8

    .line 727
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v3
    :try_end_3da
    .catchall {:try_start_3bd .. :try_end_3da} :catchall_3e2

    if-eqz v3, :cond_3e8

    :goto_3dc
    move-object/from16 v14, v27

    const/16 v3, 0xd

    goto/16 :goto_55d

    :catchall_3e2
    move-exception v0

    goto :goto_3a1

    :cond_3e4
    move/from16 v21, v3

    move-object/from16 v28, v14

    :cond_3e8
    :try_start_3e8
    const-string v3, "$ref"
    :try_end_3ea
    .catchall {:try_start_3e8 .. :try_end_3ea} :catchall_584

    if-ne v3, v10, :cond_4c6

    if-eqz v7, :cond_4c6

    const/4 v3, 0x4

    .line 734
    :try_start_3ef
    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithColon(I)V

    .line 735
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    if-ne v1, v3, :cond_4ab

    .line 737
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@"

    .line 738
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_408

    .line 739
    iget-object v1, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto/16 :goto_488

    :cond_408
    const-string v2, ".."

    .line 740
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_426

    .line 741
    iget-object v2, v7, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 742
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v3, :cond_41a

    .line 743
    iget-object v1, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto/16 :goto_488

    .line 745
    :cond_41a
    new-instance v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v3, v2, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v1, 0x1

    .line 746
    iput v1, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_486

    :cond_426
    const-string v2, "$"

    .line 748
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_449

    move-object v2, v7

    .line 750
    :goto_42f
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v3, :cond_436

    .line 751
    iget-object v2, v2, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_42f

    .line 754
    :cond_436
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v3, :cond_43d

    .line 755
    iget-object v1, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_488

    .line 757
    :cond_43d
    new-instance v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v3, v2, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v1, 0x1

    .line 758
    iput v1, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_486

    :cond_449
    const/16 v2, 0x5c

    .line 761
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_473

    .line 762
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    .line 763
    :goto_457
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_46f

    .line 764
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v2, :cond_469

    add-int/lit8 v4, v4, 0x1

    .line 766
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 768
    :cond_469
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    add-int/2addr v4, v6

    goto :goto_457

    .line 770
    :cond_46f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 772
    :cond_473
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_47b

    move-object v1, v2

    goto :goto_488

    .line 776
    :cond_47b
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v2, v7, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v1, 0x1

    .line 777
    iput v1, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_486
    .catchall {:try_start_3ef .. :try_end_486} :catchall_3e2

    :goto_486
    move-object/from16 v1, v27

    :goto_488
    const/16 v2, 0xd

    .line 784
    :try_start_48a
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 785
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v3

    if-ne v3, v2, :cond_4a3

    const/16 v2, 0x10

    .line 788
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 790
    invoke-virtual {v9, v7, v1, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_49b
    .catchall {:try_start_48a .. :try_end_49b} :catchall_1ad

    if-eqz v5, :cond_49f

    .line 1082
    iput-object v1, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1084
    :cond_49f
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v1

    .line 786
    :cond_4a3
    :try_start_4a3
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "illegal ref"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4ab
    .catchall {:try_start_4a3 .. :try_end_4ab} :catchall_1ad

    .line 781
    :cond_4ab
    :try_start_4ab
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal ref, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4c6
    if-eqz v6, :cond_4ce

    .line 795
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_4cc
    .catchall {:try_start_4ab .. :try_end_4cc} :catchall_3e2

    if-nez v3, :cond_4d2

    :cond_4ce
    :try_start_4ce
    sget-object v3, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    if-ne v3, v10, :cond_57f

    :cond_4d2
    const/4 v1, 0x4

    .line 797
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithColon(I)V

    .line 798
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v2

    if-ne v2, v1, :cond_575

    .line 799
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    .line 800
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 802
    iget-object v2, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_548

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->IgnoreAutoType:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v2

    if-eqz v2, :cond_4f8

    goto :goto_548

    .line 811
    :cond_4f8
    iget-object v2, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    invoke-static {v13, v2, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v2
    :try_end_4fe
    .catchall {:try_start_4ce .. :try_end_4fe} :catchall_584

    if-nez v2, :cond_528

    .line 815
    :try_start_500
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 817
    iget-object v3, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->autoTypeCheckHandler:Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;

    if-eqz v3, :cond_513

    .line 818
    iget-object v3, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->autoTypeCheckHandler:Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;

    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getFeatures()I

    move-result v4

    invoke-interface {v3, v1, v2, v4}, Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;->handler(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v15

    goto :goto_514

    :cond_513
    const/4 v15, 0x0

    :goto_514
    if-nez v15, :cond_51f

    .line 822
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getFeatures()I

    move-result v3

    invoke-virtual {v13, v1, v2, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v2

    move-object v15, v2

    .line 824
    :cond_51f
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2
    :try_end_527
    .catchall {:try_start_500 .. :try_end_527} :catchall_3e2

    goto :goto_529

    :cond_528
    const/4 v15, 0x0

    .line 827
    :goto_529
    :try_start_529
    invoke-interface {v2, v9, v15, v11}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 828
    instance-of v4, v2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :try_end_52f
    .catchall {:try_start_529 .. :try_end_52f} :catchall_584

    if-eqz v4, :cond_53e

    .line 829
    :try_start_531
    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v6, :cond_53e

    .line 831
    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v2

    if-eqz v2, :cond_53e

    .line 833
    invoke-virtual {v2, v3, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_53e
    .catchall {:try_start_531 .. :try_end_53e} :catchall_3e2

    :cond_53e
    if-eqz v5, :cond_544

    move-object/from16 v14, v27

    .line 1082
    iput-object v14, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1084
    :cond_544
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v3

    :cond_548
    :goto_548
    move-object/from16 v14, v27

    .line 803
    :try_start_54a
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_55d

    .line 804
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    :goto_555
    move-object/from16 v30, v7

    move-object/from16 v1, v17

    const/16 p4, 0x0

    goto/16 :goto_6da

    :cond_55d
    :goto_55d
    move/from16 v10, p4

    move-object/from16 v20, v6

    move-object v3, v7

    move-object/from16 v27, v14

    move-object/from16 v19, v17

    move/from16 v16, v21

    :goto_568
    const/4 v1, 0x0

    const/16 v2, 0x10

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/16 v15, 0xd

    const/16 v21, 0x4

    move-object/from16 v17, p6

    goto/16 :goto_973

    :cond_575
    move-object/from16 v14, v27

    .line 839
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "syntax error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_57f
    .catchall {:try_start_54a .. :try_end_57f} :catchall_5c5

    :cond_57f
    move-object/from16 v14, v27

    const/16 v3, 0xd

    goto :goto_594

    :catchall_584
    move-exception v0

    move-object/from16 v14, v27

    :goto_587
    move-object v1, v0

    move-object v15, v5

    goto/16 :goto_4d

    :cond_58b
    move/from16 v21, v3

    move-object/from16 v28, v14

    move-object/from16 v14, v27

    const/16 v3, 0xd

    const/4 v10, 0x0

    :goto_594
    if-nez v14, :cond_5c7

    if-nez v17, :cond_5c7

    .line 845
    :try_start_598
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_5ab

    .line 847
    new-instance v3, Ljava/util/HashMap;
    :try_end_5a0
    .catchall {:try_start_598 .. :try_end_5a0} :catchall_5ca

    move-object/from16 v27, v5

    :try_start_5a2
    iget-object v5, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v5, v5

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v17, v3

    goto :goto_5ad

    :cond_5ab
    move-object/from16 v27, v5

    .line 849
    :goto_5ad
    invoke-virtual {v9, v7, v14, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v5
    :try_end_5b1
    .catchall {:try_start_5a2 .. :try_end_5b1} :catchall_673

    if-nez p6, :cond_5c7

    .line 851
    :try_start_5b3
    iget-object v3, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x20

    const/16 v20, 0x1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I
    :try_end_5be
    .catchall {:try_start_5b3 .. :try_end_5be} :catchall_5c5

    move-object/from16 v27, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v3

    goto :goto_5d5

    :catchall_5c5
    move-exception v0

    goto :goto_587

    :cond_5c7
    move-object/from16 v27, v5

    goto :goto_5d1

    :catchall_5ca
    move-exception v0

    move-object/from16 v27, v5

    :goto_5cd
    move-object v1, v0

    move-object v3, v7

    goto/16 :goto_9bc

    :goto_5d1
    move-object/from16 v5, v17

    move-object/from16 v17, p6

    :goto_5d5
    if-eqz v1, :cond_662

    if-nez v4, :cond_5f2

    move-object/from16 v4, p2

    move-object/from16 v1, v29

    .line 857
    :try_start_5dd
    invoke-virtual {v1, v9, v14, v4, v5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    :cond_5e0
    move/from16 v10, p4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v30, v7

    move/from16 v16, v21

    const/16 p4, 0x0

    const/16 v15, 0xd

    const/16 v21, 0x4

    goto/16 :goto_6c1

    :cond_5f2
    move-object/from16 v4, p2

    move-object/from16 v1, v29

    if-nez v14, :cond_5fe

    .line 860
    iget-object v1, v15, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_645

    :cond_5fe
    if-nez v2, :cond_61a

    .line 862
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v10, v28

    if-eq v10, v3, :cond_645

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v10, v3, :cond_645

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v10, v3, :cond_645

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v10, v3, :cond_645

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v10, v3, :cond_645

    .line 868
    invoke-virtual {v1, v14, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_645

    :cond_61a
    move-object/from16 v10, v28

    .line 871
    const-class v3, Ljava/lang/String;

    if-ne v10, v3, :cond_642

    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->TrimStringFieldValue:Lcom/alibaba/fastjson/parser/Feature;

    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int v3, p5, v3

    if-nez v3, :cond_63c

    iget-object v3, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v3, v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->TrimStringFieldValue:Lcom/alibaba/fastjson/parser/Feature;

    iget v10, v10, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v3, v10

    if-nez v3, :cond_63c

    iget v3, v15, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->TrimStringFieldValue:Lcom/alibaba/fastjson/parser/Feature;

    iget v10, v10, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v3, v10

    if-eqz v3, :cond_642

    .line 875
    :cond_63c
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 878
    :cond_642
    invoke-virtual {v1, v14, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_645
    :goto_645
    if-eqz v17, :cond_654

    .line 882
    div-int/lit8 v1, p4, 0x20

    .line 883
    rem-int/lit8 v2, p4, 0x20

    .line 884
    aget v3, v17, v1

    const/4 v15, 0x1

    shl-int v2, v15, v2

    or-int/2addr v2, v3

    aput v2, v17, v1

    goto :goto_655

    :cond_654
    const/4 v15, 0x1

    .line 887
    :goto_655
    iget v1, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_5e0

    move-object/from16 v19, v5

    move-object/from16 v30, v7

    const/16 p4, 0x0

    goto/16 :goto_6d6

    :cond_662
    move-object/from16 v4, p2

    const/4 v3, 0x4

    const/4 v15, 0x1

    if-nez v5, :cond_676

    .line 892
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V
    :try_end_670
    .catchall {:try_start_5dd .. :try_end_670} :catchall_673

    move-object/from16 v18, v1

    goto :goto_678

    :catchall_673
    move-exception v0

    goto/16 :goto_5cd

    :cond_676
    move-object/from16 v18, v5

    :goto_678
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v16, v21

    const/16 v20, 0x4

    const/16 v21, 0xd

    move-object v3, v10

    move/from16 v10, p4

    move-object v4, v14

    move-object/from16 v19, v5

    const/16 p4, 0x0

    move-object/from16 v5, p2

    move-object/from16 v20, v6

    const/16 v15, 0xd

    const/16 v21, 0x4

    move-object/from16 v6, v18

    move-object/from16 v30, v7

    move-object/from16 v7, v17

    :try_start_698
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;[I)Z

    move-result v1
    :try_end_69c
    .catchall {:try_start_698 .. :try_end_69c} :catchall_9b2

    if-nez v1, :cond_6b9

    .line 896
    :try_start_69e
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    if-ne v1, v15, :cond_6a8

    .line 897
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V
    :try_end_6a7
    .catchall {:try_start_69e .. :try_end_6a7} :catchall_6b1

    goto :goto_6d6

    :cond_6a8
    move-object/from16 v3, v30

    const/4 v1, 0x0

    const/16 v2, 0x10

    :goto_6ad
    const/4 v4, 0x0

    const/4 v6, 0x1

    goto/16 :goto_96f

    :catchall_6b1
    move-exception v0

    move-object v1, v0

    move-object/from16 v15, v27

    move-object/from16 v3, v30

    goto/16 :goto_9c5

    .line 902
    :cond_6b9
    :try_start_6b9
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_9a6

    .line 907
    :goto_6c1
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_6cd

    move-object/from16 v3, v30

    const/4 v1, 0x0

    goto :goto_6ad

    .line 911
    :cond_6cd
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    if-ne v1, v15, :cond_95c

    .line 912
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V
    :try_end_6d6
    .catchall {:try_start_6b9 .. :try_end_6d6} :catchall_9b2

    :goto_6d6
    move-object/from16 v1, v19

    move-object/from16 v5, v27

    :goto_6da
    if-nez v14, :cond_92e

    if-nez v1, :cond_6ff

    .line 923
    :try_start_6de
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1
    :try_end_6e2
    .catchall {:try_start_6de .. :try_end_6e2} :catchall_6fa

    if-nez v5, :cond_6f0

    move-object/from16 v3, v30

    .line 925
    :try_start_6e6
    invoke-virtual {v9, v3, v1, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v5
    :try_end_6ea
    .catchall {:try_start_6e6 .. :try_end_6ea} :catchall_6eb

    goto :goto_6f2

    :catchall_6eb
    move-exception v0

    move-object v14, v1

    move-object v15, v5

    goto/16 :goto_9c4

    :cond_6f0
    move-object/from16 v3, v30

    :goto_6f2
    if-eqz v5, :cond_6f6

    .line 1082
    iput-object v1, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1084
    :cond_6f6
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v1

    :catchall_6fa
    move-exception v0

    move-object/from16 v3, v30

    goto/16 :goto_958

    :cond_6ff
    move-object/from16 v3, v30

    .line 930
    :try_start_701
    iget-object v2, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;
    :try_end_705
    .catchall {:try_start_701 .. :try_end_705} :catchall_957

    const-string v4, ""

    if-eqz v2, :cond_7b5

    .line 933
    :try_start_709
    array-length v6, v2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 934
    :goto_70d
    array-length v10, v2

    if-ge v7, v10, :cond_829

    .line 935
    aget-object v10, v2, v7

    .line 937
    invoke-interface {v1, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_771

    .line 939
    iget-object v11, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v11, v11, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    aget-object v11, v11, v7

    .line 940
    iget-object v12, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v12, v12, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v12, v12, v7

    .line 941
    sget-object v13, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v11, v13, :cond_72d

    .line 942
    invoke-static/range {p4 .. p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    goto :goto_76f

    .line 943
    :cond_72d
    sget-object v13, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v11, v13, :cond_736

    .line 944
    invoke-static/range {p4 .. p4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    goto :goto_76f

    .line 945
    :cond_736
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v11, v13, :cond_73f

    .line 946
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_76f

    .line 947
    :cond_73f
    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v11, v13, :cond_748

    .line 948
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_76f

    .line 949
    :cond_748
    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v11, v13, :cond_751

    .line 950
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    goto :goto_76f

    .line 951
    :cond_751
    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v11, v13, :cond_75a

    .line 952
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_76f

    .line 953
    :cond_75a
    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v11, v13, :cond_761

    .line 954
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_76f

    .line 955
    :cond_761
    const-class v13, Ljava/lang/String;

    if-ne v11, v13, :cond_76f

    iget v11, v12, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v12, v12, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_76f

    move-object v10, v4

    :cond_76f
    :goto_76f
    const/4 v13, 0x0

    goto :goto_7ad

    .line 960
    :cond_771
    iget-object v11, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v11, v11, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    if-eqz v11, :cond_76f

    iget-object v11, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v11, v11, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    array-length v11, v11

    if-ge v7, v11, :cond_76f

    .line 961
    iget-object v11, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v11, v11, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    aget-object v11, v11, v7

    .line 962
    instance-of v12, v11, Ljava/lang/Class;

    if-eqz v12, :cond_76f

    .line 963
    check-cast v11, Ljava/lang/Class;

    .line 964
    invoke-virtual {v11, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_76f

    .line 965
    instance-of v12, v10, Ljava/util/List;

    if-eqz v12, :cond_76f

    .line 966
    move-object v12, v10

    check-cast v12, Ljava/util/List;

    .line 967
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_76f

    const/4 v13, 0x0

    .line 968
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 969
    invoke-virtual {v11, v15}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7ad

    .line 970
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 978
    :cond_7ad
    :goto_7ad
    aput-object v10, v6, v7

    add-int/lit8 v7, v7, 0x1

    const/16 p4, 0x0

    goto/16 :goto_70d

    :cond_7b5
    const/4 v13, 0x0

    .line 981
    iget-object v6, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 982
    array-length v7, v6

    .line 983
    new-array v10, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    :goto_7be
    if-ge v11, v7, :cond_828

    .line 985
    aget-object v12, v6, v11

    .line 986
    iget-object v15, v12, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_81e

    .line 988
    iget-object v13, v12, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 p2, v4

    .line 989
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v13, v4, :cond_7d8

    const/4 v4, 0x0

    .line 990
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    goto :goto_820

    .line 991
    :cond_7d8
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v13, v4, :cond_7e2

    const/4 v4, 0x0

    .line 992
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v15

    goto :goto_820

    .line 993
    :cond_7e2
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v13, v4, :cond_7ec

    const/4 v4, 0x0

    .line 994
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_820

    .line 995
    :cond_7ec
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v13, v4, :cond_7f5

    .line 996
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    goto :goto_820

    .line 997
    :cond_7f5
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v13, v4, :cond_7fe

    .line 998
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    goto :goto_820

    .line 999
    :cond_7fe
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v13, v4, :cond_807

    .line 1000
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    goto :goto_820

    .line 1001
    :cond_807
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v13, v4, :cond_80e

    .line 1002
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_820

    .line 1003
    :cond_80e
    const-class v4, Ljava/lang/String;

    if-ne v13, v4, :cond_820

    iget v4, v12, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v12, v12, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v4, v12

    if-eqz v4, :cond_820

    move-object/from16 v15, p2

    goto :goto_820

    :cond_81e
    move-object/from16 p2, v4

    .line 1008
    :cond_820
    :goto_820
    aput-object v15, v10, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, p2

    const/4 v13, 0x0

    goto :goto_7be

    :cond_828
    move-object v6, v10

    .line 1012
    :cond_829
    iget-object v4, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v4, :cond_8f7

    .line 1014
    iget-object v4, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-boolean v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlin:Z

    if-eqz v4, :cond_85c

    const/4 v4, 0x0

    .line 1015
    :goto_836
    array-length v7, v6

    if-ge v4, v7, :cond_85c

    .line 1016
    aget-object v7, v6, v4

    if-nez v7, :cond_859

    iget-object v7, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v7, :cond_859

    iget-object v7, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v7, v7

    if-ge v4, v7, :cond_859

    .line 1017
    iget-object v7, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v4, v7, v4

    .line 1018
    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v7, Ljava/lang/String;
    :try_end_854
    .catchall {:try_start_709 .. :try_end_854} :catchall_957

    if-ne v4, v7, :cond_85c

    const/16 v28, 0x1

    goto :goto_85e

    :cond_859
    add-int/lit8 v4, v4, 0x1

    goto :goto_836

    :cond_85c
    const/16 v28, 0x0

    :goto_85e
    if-eqz v28, :cond_895

    .line 1027
    :try_start_860
    iget-object v4, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlinDefaultConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v4, :cond_895

    .line 1028
    iget-object v4, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlinDefaultConstructor:Ljava/lang/reflect/Constructor;

    const/4 v7, 0x0

    new-array v10, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_871
    .catch Ljava/lang/Exception; {:try_start_860 .. :try_end_871} :catch_8c9
    .catchall {:try_start_860 .. :try_end_871} :catchall_957

    const/4 v7, 0x0

    .line 1030
    :goto_872
    :try_start_872
    array-length v10, v6

    if-ge v7, v10, :cond_89d

    .line 1031
    aget-object v10, v6, v7

    if-eqz v10, :cond_88f

    .line 1032
    iget-object v11, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v11, v11, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v11, :cond_88f

    iget-object v11, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v11, v11, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v11, v11

    if-ge v7, v11, :cond_88f

    .line 1033
    iget-object v11, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v11, v11, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v11, v11, v7

    .line 1034
    invoke-virtual {v11, v4, v10}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_88f
    .catch Ljava/lang/Exception; {:try_start_872 .. :try_end_88f} :catch_892
    .catchall {:try_start_872 .. :try_end_88f} :catchall_8f3

    :cond_88f
    add-int/lit8 v7, v7, 0x1

    goto :goto_872

    :catch_892
    move-exception v0

    move-object v1, v0

    goto :goto_8cc

    .line 1038
    :cond_895
    :try_start_895
    iget-object v4, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_89d
    .catch Ljava/lang/Exception; {:try_start_895 .. :try_end_89d} :catch_8c9
    .catchall {:try_start_895 .. :try_end_89d} :catchall_957

    :cond_89d
    if-eqz v2, :cond_8c7

    .line 1046
    :try_start_89f
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8a7
    :goto_8a7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1047
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v6

    if-eqz v6, :cond_8a7

    .line 1049
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v4, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8a7

    :cond_8c7
    move-object v14, v4

    goto :goto_929

    :catch_8c9
    move-exception v0

    move-object v1, v0

    move-object v4, v14

    .line 1041
    :goto_8cc
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "create instance error, "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 1042
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_8f3
    .catchall {:try_start_89f .. :try_end_8f3} :catchall_8f3

    :catchall_8f3
    move-exception v0

    move-object v1, v0

    move-object v14, v4

    goto :goto_959

    .line 1053
    :cond_8f7
    :try_start_8f7
    iget-object v1, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;
    :try_end_8fb
    .catchall {:try_start_8f7 .. :try_end_8fb} :catchall_957

    if-eqz v1, :cond_929

    .line 1055
    :try_start_8fd
    iget-object v1, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_906
    .catch Ljava/lang/Exception; {:try_start_8fd .. :try_end_906} :catch_908
    .catchall {:try_start_8fd .. :try_end_906} :catchall_957

    move-object v14, v1

    goto :goto_929

    :catch_908
    move-exception v0

    move-object v1, v0

    .line 1057
    :try_start_90a
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create factory method error, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_929
    :goto_929
    if-eqz v5, :cond_930

    .line 1062
    iput-object v14, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_930

    :cond_92e
    move-object/from16 v3, v30

    .line 1066
    :cond_930
    :goto_930
    iget-object v1, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;
    :try_end_934
    .catchall {:try_start_90a .. :try_end_934} :catchall_957

    if-nez v1, :cond_93e

    if-eqz v5, :cond_93a

    .line 1082
    iput-object v14, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1084
    :cond_93a
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v14

    :cond_93e
    const/4 v2, 0x0

    :try_start_93f
    new-array v2, v2, [Ljava/lang/Object;

    .line 1074
    invoke-virtual {v1, v14, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_945
    .catch Ljava/lang/Exception; {:try_start_93f .. :try_end_945} :catch_94d
    .catchall {:try_start_93f .. :try_end_945} :catchall_957

    if-eqz v5, :cond_949

    .line 1082
    iput-object v14, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1084
    :cond_949
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v1

    :catch_94d
    move-exception v0

    move-object v1, v0

    .line 1076
    :try_start_94f
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "build object error"

    invoke-direct {v2, v4, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_957
    .catchall {:try_start_94f .. :try_end_957} :catchall_957

    :catchall_957
    move-exception v0

    :goto_958
    move-object v1, v0

    :goto_959
    move-object v15, v5

    goto/16 :goto_9c5

    :cond_95c
    move-object/from16 v3, v30

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 916
    :try_start_960
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v5

    const/16 v6, 0x12

    if-eq v5, v6, :cond_987

    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_987

    :goto_96f
    move-object/from16 v5, v27

    move-object/from16 v27, v14

    :goto_973
    add-int/lit8 v7, v10, 0x1

    move-object/from16 v10, p2

    move v4, v7

    move-object/from16 v2, v17

    move-object/from16 v17, v19

    move-object/from16 v6, v20

    move-object/from16 v1, v27

    const/16 v14, 0x10

    move-object v7, v3

    move/from16 v3, v16

    goto/16 :goto_181

    .line 917
    :cond_987
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error, unexpect token "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    invoke-static {v4}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9a6
    move-object/from16 v3, v30

    .line 903
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "syntax error, unexpect token \':\'"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_9b0
    .catchall {:try_start_960 .. :try_end_9b0} :catchall_9b0

    :catchall_9b0
    move-exception v0

    goto :goto_9bb

    :catchall_9b2
    move-exception v0

    move-object/from16 v3, v30

    goto :goto_9bb

    :catchall_9b6
    move-exception v0

    move-object v14, v1

    move-object/from16 v27, v5

    move-object v3, v7

    :goto_9bb
    move-object v1, v0

    :goto_9bc
    move-object/from16 v15, v27

    goto :goto_9c5

    :catchall_9bf
    move-exception v0

    move-object v3, v7

    move-object v4, v15

    move-object/from16 v14, p4

    :goto_9c4
    move-object v1, v0

    :goto_9c5
    if-eqz v15, :cond_9c9

    .line 1082
    iput-object v14, v15, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1084
    :cond_9c9
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1085
    throw v1

    .line 408
    :cond_9cd
    :goto_9cd
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 305
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 306
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_145

    .line 311
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanTypeName(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 312
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    invoke-static {v3, v4, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v3

    if-nez v3, :cond_36

    .line 316
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    .line 317
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v4

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result v5

    invoke-virtual {v4, v1, v3, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v1

    .line 318
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    .line 321
    :cond_36
    instance-of v1, v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v1, :cond_41

    .line 322
    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 326
    :cond_41
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x0

    .line 328
    iget-object p4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length p4, p4

    :goto_49
    const/16 v1, 0x10

    if-ge p3, p4, :cond_141

    add-int/lit8 v3, p4, -0x1

    const/16 v4, 0x5d

    if-ne p3, v3, :cond_56

    const/16 v3, 0x5d

    goto :goto_58

    :cond_56
    const/16 v3, 0x2c

    .line 330
    :goto_58
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v5, v5, p3

    .line 331
    iget-object v6, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 332
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_6d

    .line 333
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanInt(C)I

    move-result v1

    .line 334
    invoke-virtual {v5, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;I)V

    goto/16 :goto_13d

    .line 335
    :cond_6d
    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_7a

    .line 336
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString(C)Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-virtual {v5, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_13d

    .line 338
    :cond_7a
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_87

    .line 339
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLong(C)J

    move-result-wide v3

    .line 340
    invoke-virtual {v5, p2, v3, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;J)V

    goto/16 :goto_13d

    .line 341
    :cond_87
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v7

    if-eqz v7, :cond_ca

    .line 342
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v1

    const/16 v4, 0x22

    if-eq v1, v4, :cond_bd

    const/16 v4, 0x6e

    if-ne v1, v4, :cond_9a

    goto :goto_bd

    :cond_9a
    const/16 v4, 0x30

    if-lt v1, v4, :cond_b8

    const/16 v4, 0x39

    if-gt v1, v4, :cond_b8

    .line 348
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanInt(C)I

    move-result v1

    .line 350
    move-object v3, v5

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    .line 351
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->valueOf(I)Ljava/lang/Enum;

    move-result-object v1

    goto :goto_c5

    .line 353
    :cond_b8
    invoke-virtual {p0, v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->scanEnum(Lcom/alibaba/fastjson/parser/JSONLexer;C)Ljava/lang/Enum;

    move-result-object v1

    goto :goto_c5

    .line 346
    :cond_bd
    :goto_bd
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v1

    invoke-interface {v0, v6, v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;

    move-result-object v1

    .line 356
    :goto_c5
    invoke-virtual {v5, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_13d

    .line 357
    :cond_ca
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_d6

    .line 358
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanBoolean(C)Z

    move-result v1

    .line 359
    invoke-virtual {v5, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Z)V

    goto :goto_13d

    .line 360
    :cond_d6
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_e6

    .line 361
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFloat(C)F

    move-result v1

    .line 362
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v5, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13d

    .line 363
    :cond_e6
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_f6

    .line 364
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanDouble(C)D

    move-result-wide v3

    .line 365
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v5, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13d

    .line 366
    :cond_f6
    const-class v7, Ljava/util/Date;

    if-ne v6, v7, :cond_10f

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v7

    const/16 v8, 0x31

    if-ne v7, v8, :cond_10f

    .line 367
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLong(C)J

    move-result-wide v3

    .line 368
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13d

    .line 369
    :cond_10f
    const-class v7, Ljava/math/BigDecimal;

    if-ne v6, v7, :cond_11b

    .line 370
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanDecimal(C)Ljava/math/BigDecimal;

    move-result-object v1

    .line 371
    invoke-virtual {v5, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13d

    .line 373
    :cond_11b
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 374
    iget-object v6, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    iget-object v7, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 375
    invoke-virtual {v5, p2, v6}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 377
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v6, 0xf

    if-ne v5, v6, :cond_136

    goto :goto_141

    :cond_136
    if-ne v3, v4, :cond_13a

    const/16 v1, 0xf

    .line 381
    :cond_13a
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->check(Lcom/alibaba/fastjson/parser/JSONLexer;I)V

    :goto_13d
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_49

    .line 385
    :cond_141
    :goto_141
    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-object p2

    .line 307
    :cond_145
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "error"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_14e

    :goto_14d
    throw p1

    :goto_14e
    goto :goto_14d
.end method

.method public getFastMatchToken()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method

.method public getFieldDeserializer(J)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .registers 10

    .line 148
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    const/4 v1, 0x0

    if-nez v0, :cond_24

    .line 149
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v0, v0

    new-array v0, v0, [J

    const/4 v2, 0x0

    .line 150
    :goto_b
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v4, v3

    if-ge v2, v4, :cond_1f

    .line 151
    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 153
    :cond_1f
    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 154
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    .line 157
    :cond_24
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    const/4 p2, 0x0

    if-gez p1, :cond_2e

    return-object p2

    .line 162
    :cond_2e
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArrayMapping:[S

    const/4 v2, -0x1

    if-nez v0, :cond_5a

    .line 163
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    array-length v0, v0

    new-array v0, v0, [S

    .line 164
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([SS)V

    .line 165
    :goto_3b
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v4, v3

    if-ge v1, v4, :cond_58

    .line 166
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 167
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v5

    .line 166
    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    if-ltz v3, :cond_55

    int-to-short v4, v1

    .line 169
    aput-short v4, v0, v3

    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 172
    :cond_58
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArrayMapping:[S

    .line 175
    :cond_5a
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArrayMapping:[S

    aget-short p1, v0, p1

    if-eq p1, v2, :cond_65

    .line 177
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object p1, p2, p1

    return-object p1

    :cond_65
    return-object p2
.end method

.method public getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .registers 3

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object p1

    return-object p1
.end method

.method public getFieldDeserializer(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 110
    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializerMap:Ljava/util/Map;

    if-eqz v1, :cond_11

    .line 111
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    if-eqz v1, :cond_11

    return-object v1

    :cond_11
    const/4 v1, 0x0

    .line 118
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_17
    if-gt v1, v2, :cond_41

    add-int v3, v1, v2

    ushr-int/lit8 v3, v3, 0x1

    .line 123
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 125
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_2f

    add-int/lit8 v3, v3, 0x1

    move v1, v3

    goto :goto_17

    :cond_2f
    if-lez v4, :cond_35

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    goto :goto_17

    .line 132
    :cond_35
    invoke-static {v3, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->isSetFlag(I[I)Z

    move-result p1

    if-eqz p1, :cond_3c

    return-object v0

    .line 136
    :cond_3c
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object p1, p1, v3

    return-object p1

    .line 140
    :cond_41
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    if-eqz p2, :cond_4c

    .line 141
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    return-object p1

    :cond_4c
    return-object v0
.end method

.method public getFieldType(I)Ljava/lang/reflect/Type;
    .registers 3

    .line 1600
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    return-object p1
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1120
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;[I)Z

    move-result p1

    return p1
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;[I)Z
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[I)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    .line 1125
    iget-object v10, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1127
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->DisableFieldSmartMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 1128
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 1130
    invoke-interface {v10, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_3e

    iget-object v4, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_26

    goto :goto_3e

    .line 1132
    :cond_26
    invoke-interface {v10, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_39

    iget-object v2, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v2, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_34

    goto :goto_39

    .line 1135
    :cond_34
    invoke-virtual {v1, v11, v15}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v2

    goto :goto_42

    .line 1133
    :cond_39
    :goto_39
    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v2

    goto :goto_42

    .line 1131
    :cond_3e
    :goto_3e
    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v2

    .line 1138
    :goto_42
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->SupportNonPublicField:Lcom/alibaba/fastjson/parser/Feature;

    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    const/16 v16, 0x0

    const/4 v9, 0x1

    if-nez v2, :cond_11b

    .line 1140
    invoke-interface {v10, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_58

    iget-object v4, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_11b

    .line 1142
    :cond_58
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    if-nez v3, :cond_c8

    .line 1143
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v3, v9, v4, v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 1144
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    :goto_65
    if-eqz v4, :cond_c3

    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_c3

    .line 1145
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 1146
    array-length v6, v5

    const/4 v7, 0x0

    :goto_71
    if-ge v7, v6, :cond_bb

    aget-object v8, v5, v7

    .line 1147
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1148
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v18

    if-eqz v18, :cond_80

    goto :goto_af

    .line 1151
    :cond_80
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v18

    and-int/lit8 v19, v18, 0x10

    if-nez v19, :cond_af

    and-int/lit8 v18, v18, 0x8

    if-eqz v18, :cond_8d

    goto :goto_af

    :cond_8d
    move-object/from16 v18, v2

    .line 1155
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v8, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v2, :cond_a9

    .line 1157
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v5

    const-string v5, ""

    .line 1158
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ab

    move-object v9, v2

    goto :goto_ab

    :cond_a9
    move-object/from16 v19, v5

    .line 1162
    :cond_ab
    :goto_ab
    invoke-virtual {v3, v9, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b3

    :cond_af
    :goto_af
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    :goto_b3
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v18

    move-object/from16 v5, v19

    const/4 v9, 0x1

    goto :goto_71

    :cond_bb
    move-object/from16 v18, v2

    .line 1144
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    const/4 v9, 0x1

    goto :goto_65

    :cond_c3
    move-object/from16 v18, v2

    .line 1165
    iput-object v3, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_ca

    :cond_c8
    move-object/from16 v18, v2

    .line 1168
    :goto_ca
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v11}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11d

    .line 1170
    instance-of v3, v2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    if-eqz v3, :cond_dc

    .line 1171
    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-object v15, v10

    const/16 v17, 0x1

    goto :goto_122

    .line 1173
    :cond_dc
    move-object v7, v2

    check-cast v7, Ljava/lang/reflect/Field;

    const/4 v9, 0x1

    .line 1174
    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1175
    new-instance v8, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v6

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v2, v8

    move-object/from16 v3, p2

    move-object/from16 v20, v8

    move/from16 v8, v17

    const/16 v17, 0x1

    move/from16 v9, v18

    move-object v15, v10

    move/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 1176
    new-instance v2, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v3

    iget-object v4, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    move-object/from16 v5, v20

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 1177
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v11, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_122

    :cond_11b
    move-object/from16 v18, v2

    :cond_11d
    move-object v15, v10

    const/16 v17, 0x1

    move-object/from16 v2, v18

    :goto_122
    const/4 v3, -0x1

    if-nez v2, :cond_212

    .line 1183
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v2

    if-eqz v2, :cond_1ed

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 1188
    :goto_12f
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v6, v5

    if-ge v2, v6, :cond_1d7

    .line 1189
    aget-object v5, v5, v2

    .line 1191
    iget-object v6, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1192
    iget-boolean v7, v6, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v7, :cond_1d3

    instance-of v7, v5, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    if-eqz v7, :cond_1d3

    .line 1194
    iget-object v7, v6, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    const-string v8, "parse unwrapped field error."

    if-eqz v7, :cond_1ae

    .line 1195
    move-object v7, v5

    check-cast v7, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    .line 1196
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v9

    .line 1197
    instance-of v10, v9, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v10, :cond_183

    .line 1198
    move-object v10, v9

    check-cast v10, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 1199
    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v10

    if-eqz v10, :cond_1d3

    .line 1203
    :try_start_15e
    iget-object v4, v6, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_171

    .line 1205
    check-cast v9, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    iget-object v4, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {v9, v0, v4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    .line 1206
    invoke-virtual {v5, v12, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1208
    :cond_171
    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->getFastMatchToken()I

    move-result v5

    invoke-interface {v15, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 1209
    invoke-virtual {v10, v0, v4, v13, v14}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    :try_end_17b
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_17b} :catch_17c

    goto :goto_1ca

    :catch_17c
    move-exception v0

    .line 1212
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v2, v8, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1215
    :cond_183
    instance-of v7, v9, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    if-eqz v7, :cond_1d3

    .line 1216
    check-cast v9, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    .line 1220
    :try_start_189
    iget-object v4, v6, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_19c

    .line 1222
    iget-object v4, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v4

    .line 1223
    invoke-virtual {v5, v12, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1226
    :cond_19c
    invoke-interface {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 1227
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1228
    invoke-interface {v4, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a6
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_1a6} :catch_1a7

    goto :goto_1ca

    :catch_1a7
    move-exception v0

    .line 1230
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v2, v8, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1234
    :cond_1ae
    iget-object v5, v6, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1d3

    .line 1235
    invoke-interface {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 1236
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1238
    :try_start_1bf
    iget-object v5, v6, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v11, v6, v16

    aput-object v4, v6, v17

    invoke-virtual {v5, v12, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1ca
    .catch Ljava/lang/Exception; {:try_start_1bf .. :try_end_1ca} :catch_1cc

    :goto_1ca
    move v4, v2

    goto :goto_1d3

    :catch_1cc
    move-exception v0

    .line 1240
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v2, v8, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1d3
    :goto_1d3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_12f

    :cond_1d7
    if-eq v4, v3, :cond_1e9

    move-object/from16 v5, p6

    if-eqz v5, :cond_1e8

    .line 1249
    div-int/lit8 v0, v4, 0x20

    .line 1250
    rem-int/lit8 v4, v4, 0x20

    .line 1251
    aget v2, v5, v0

    shl-int v3, v17, v4

    or-int/2addr v2, v3

    aput v2, v5, v0

    :cond_1e8
    return v17

    .line 1256
    :cond_1e9
    invoke-virtual {v0, v12, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseExtra(Ljava/lang/Object;Ljava/lang/String;)V

    return v16

    .line 1184
    :cond_1ed
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setter not found, class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_212
    move-object/from16 v5, p6

    move-object v4, v15

    const/4 v6, 0x0

    .line 1262
    :goto_216
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v8, v7

    if-ge v6, v8, :cond_223

    .line 1263
    aget-object v7, v7, v6

    if-ne v7, v2, :cond_220

    goto :goto_224

    :cond_220
    add-int/lit8 v6, v6, 0x1

    goto :goto_216

    :cond_223
    const/4 v6, -0x1

    :goto_224
    if-eq v6, v3, :cond_23a

    if-eqz v5, :cond_23a

    const-string v3, "_"

    .line 1268
    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23a

    .line 1269
    invoke-static {v6, v5}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->isSetFlag(I[I)Z

    move-result v3

    if-eqz v3, :cond_23a

    .line 1270
    invoke-virtual {v0, v12, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseExtra(Ljava/lang/Object;Ljava/lang/String;)V

    return v16

    .line 1275
    :cond_23a
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getFastMatchToken()I

    move-result v3

    invoke-interface {v4, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 1277
    invoke-virtual {v2, v0, v12, v13, v14}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    if-eqz v5, :cond_251

    .line 1280
    div-int/lit8 v0, v6, 0x20

    .line 1281
    rem-int/lit8 v6, v6, 0x20

    .line 1282
    aget v2, v5, v0

    shl-int v3, v17, v6

    or-int/2addr v2, v3

    aput v2, v5, v0

    :cond_251
    return v17
.end method

.method protected parseRest(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 14

    const/4 v0, 0x0

    new-array v7, v0, [I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 1604
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseRest(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected parseRest(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;
    .registers 7

    .line 1613
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected scanEnum(Lcom/alibaba/fastjson/parser/JSONLexer;C)Ljava/lang/Enum;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/JSONLexer;",
            "C)",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 397
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal enum. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected scanEnum(Lcom/alibaba/fastjson/parser/JSONLexerBase;[CLcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)Ljava/lang/Enum;
    .registers 10

    .line 1090
    instance-of v0, p3, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1091
    check-cast p3, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    goto :goto_9

    :cond_8
    move-object p3, v1

    :goto_9
    if-nez p3, :cond_f

    const/4 p2, -0x1

    .line 1095
    iput p2, p1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v1

    .line 1099
    :cond_f
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanEnumSymbol([C)J

    move-result-wide v2

    .line 1100
    iget p2, p1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez p2, :cond_4a

    .line 1101
    invoke-virtual {p3, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object p2

    if-nez p2, :cond_49

    const-wide v4, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    cmp-long v0, v2, v4

    if-nez v0, :cond_27

    return-object v1

    .line 1107
    :cond_27
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->ErrorOnEnumNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result p1

    if-nez p1, :cond_30

    goto :goto_49

    .line 1108
    :cond_30
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not match enum value, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumClass:Ljava/lang/Class;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_49
    :goto_49
    return-object p2

    :cond_4a
    return-object v1
.end method

.method public smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .registers 3

    const/4 v0, 0x0

    .line 1289
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object p1

    return-object p1
.end method

.method public smartMatch(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1297
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v1

    if-nez v1, :cond_b0

    .line 1300
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    const/4 v3, 0x0

    if-nez v2, :cond_2a

    .line 1301
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v2, v2

    new-array v2, v2, [J

    const/4 v4, 0x0

    .line 1302
    :goto_15
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v6, v5

    if-ge v4, v6, :cond_25

    .line 1303
    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-wide v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 1305
    :cond_25
    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    .line 1306
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    .line 1310
    :cond_2a
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_lower(Ljava/lang/String;)J

    move-result-wide v4

    .line 1311
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    if-gez v2, :cond_40

    .line 1313
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_extract(Ljava/lang/String;)J

    move-result-wide v4

    .line 1314
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    :cond_40
    if-gez v2, :cond_5a

    const-string v4, "is"

    .line 1318
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    const/4 v2, 0x2

    .line 1319
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_extract(Ljava/lang/String;)J

    move-result-wide v5

    .line 1320
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    goto :goto_5b

    :cond_5a
    const/4 v4, 0x0

    :cond_5b
    :goto_5b
    if-ltz v2, :cond_95

    .line 1324
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArrayMapping:[S

    const/4 v5, -0x1

    if-nez p1, :cond_85

    .line 1325
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    array-length p1, p1

    new-array p1, p1, [S

    .line 1326
    invoke-static {p1, v5}, Ljava/util/Arrays;->fill([SS)V

    .line 1327
    :goto_6a
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v7, v6

    if-ge v3, v7, :cond_83

    .line 1328
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-wide v8, v6, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    invoke-static {v7, v8, v9}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v6

    if-ltz v6, :cond_80

    int-to-short v7, v3

    .line 1330
    aput-short v7, p1, v6

    :cond_80
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    .line 1333
    :cond_83
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArrayMapping:[S

    .line 1336
    :cond_85
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArrayMapping:[S

    aget-short p1, p1, v2

    if-eq p1, v5, :cond_95

    .line 1338
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->isSetFlag(I[I)Z

    move-result p2

    if-nez p2, :cond_95

    .line 1339
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v1, p2, p1

    :cond_95
    if-eqz v1, :cond_b0

    .line 1345
    iget-object p1, v1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1346
    iget p2, p1, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->DisableFieldSmartMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_a3

    return-object v0

    .line 1350
    :cond_a3
    iget-object p1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-eqz v4, :cond_b0

    .line 1351
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_b0

    const-class p2, Ljava/lang/Boolean;

    if-eq p1, p2, :cond_b0

    goto :goto_b1

    :cond_b0
    move-object v0, v1

    :goto_b1
    return-object v0
.end method
