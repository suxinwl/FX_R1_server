.class public Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;


# direct methods
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

    .line 19
    invoke-direct {p0, p1, p2, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method private createException(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 162
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move-object v6, v5

    move-object v7, v6

    const/4 v4, 0x0

    :goto_b
    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge v4, v1, :cond_38

    aget-object v10, v0, v4

    .line 163
    invoke-virtual {v10}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    .line 164
    array-length v12, v11

    if-nez v12, :cond_1a

    move-object v7, v10

    goto :goto_35

    .line 169
    :cond_1a
    array-length v12, v11

    if-ne v12, v9, :cond_25

    aget-object v12, v11, v3

    const-class v13, Ljava/lang/String;

    if-ne v12, v13, :cond_25

    move-object v6, v10

    goto :goto_35

    .line 174
    :cond_25
    array-length v12, v11

    if-ne v12, v8, :cond_35

    aget-object v8, v11, v3

    const-class v12, Ljava/lang/String;

    if-ne v8, v12, :cond_35

    aget-object v8, v11, v9

    const-class v9, Ljava/lang/Throwable;

    if-ne v8, v9, :cond_35

    move-object v5, v10

    :cond_35
    :goto_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_38
    if-eqz v5, :cond_47

    new-array v0, v8, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p2, v0, v9

    .line 181
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    :cond_47
    if-eqz v6, :cond_54

    new-array v0, v9, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 185
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    :cond_54
    if-eqz v7, :cond_5f

    new-array v0, v3, [Ljava/lang/Object;

    .line 189
    invoke-virtual {v7, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    :cond_5f
    return-object v2
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
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

    .line 24
    iget-object p3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 26
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_f

    .line 27
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-object v2

    .line 31
    :cond_f
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getResolveStatus()I

    move-result v0

    const/4 v3, 0x2

    const-string v4, "syntax error"

    if-ne v0, v3, :cond_1d

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_25

    .line 34
    :cond_1d
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_174

    :goto_25
    if-eqz p2, :cond_36

    .line 42
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_36

    .line 43
    check-cast p2, Ljava/lang/Class;

    .line 44
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_37

    :cond_36
    move-object p2, v2

    :goto_37
    move-object v0, v2

    move-object v3, v0

    move-object v5, v3

    move-object v6, v5

    .line 56
    :cond_3b
    :goto_3b
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v7

    invoke-interface {p3, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xd

    const/16 v9, 0x10

    if-nez v7, :cond_63

    .line 59
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    if-ne v10, v8, :cond_54

    .line 60
    invoke-interface {p3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_ec

    .line 63
    :cond_54
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    if-ne v10, v9, :cond_63

    .line 64
    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {p3, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v10

    if-eqz v10, :cond_63

    goto :goto_3b

    :cond_63
    const/4 v10, 0x4

    .line 70
    invoke-interface {p3, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 72
    sget-object v11, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_91

    .line 73
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p2

    if-ne p2, v10, :cond_8b

    .line 74
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object p2

    .line 75
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v7

    const-class v10, Ljava/lang/Throwable;

    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result v11

    invoke-virtual {v7, p2, v10, v11}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object p2

    .line 79
    invoke-interface {p3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_e3

    .line 77
    :cond_8b
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_91
    const-string v11, "message"

    .line 80
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b5

    .line 81
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v1, :cond_a1

    move-object v5, v2

    goto :goto_ab

    .line 83
    :cond_a1
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v10, :cond_af

    .line 84
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v5

    .line 88
    :goto_ab
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_e3

    .line 86
    :cond_af
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b5
    const-string v10, "cause"

    .line 89
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c4

    .line 90
    invoke-virtual {p0, p1, v2, v10}, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    goto :goto_e3

    :cond_c4
    const-string v10, "stackTrace"

    .line 91
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d5

    .line 92
    const-class v6, [Ljava/lang/StackTraceElement;

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/StackTraceElement;

    goto :goto_e3

    :cond_d5
    if-nez v0, :cond_dc

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 97
    :cond_dc
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :goto_e3
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v8, :cond_3b

    .line 101
    invoke-interface {p3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    :goto_ec
    if-nez p2, :cond_f4

    .line 108
    new-instance p3, Ljava/lang/Exception;

    invoke-direct {p3, v5, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_107

    .line 110
    :cond_f4
    const-class p3, Ljava/lang/Throwable;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_159

    .line 115
    :try_start_fc
    invoke-direct {p0, v5, v3, p2}, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;->createException(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object p3

    if-nez p3, :cond_107

    .line 117
    new-instance p3, Ljava/lang/Exception;

    invoke-direct {p3, v5, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_107} :catch_150

    :cond_107
    :goto_107
    if-eqz v6, :cond_10c

    .line 125
    invoke-virtual {p3, v6}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :cond_10c
    if-eqz v0, :cond_14f

    if-eqz p2, :cond_125

    .line 132
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;->clazz:Ljava/lang/Class;

    if-ne p2, v1, :cond_116

    move-object v2, p0

    goto :goto_125

    .line 135
    :cond_116
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object p1

    .line 136
    instance-of p2, p1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz p2, :cond_125

    .line 137
    move-object v2, p1

    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    :cond_125
    :goto_125
    if-eqz v2, :cond_14f

    .line 143
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12f
    :goto_12f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_14f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 144
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 147
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    if-eqz v0, :cond_12f

    .line 149
    invoke-virtual {v0, p3, p2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12f

    :cond_14f
    return-object p3

    :catch_150
    move-exception p1

    .line 120
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    const-string p3, "create instance error"

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 111
    :cond_159
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "type not match, not Throwable. "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_174
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_17b

    :goto_17a
    throw p1

    :goto_17b
    goto :goto_17a
.end method

.method public getFastMatchToken()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method
