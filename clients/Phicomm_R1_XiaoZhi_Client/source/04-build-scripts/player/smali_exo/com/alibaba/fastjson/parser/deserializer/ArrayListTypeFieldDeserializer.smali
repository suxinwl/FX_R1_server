.class public Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;


# instance fields
.field private deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

.field private itemFastMatchToken:I

.field private final itemType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 30
    iget-object p1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 31
    instance-of p1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_28

    .line 32
    iget-object p1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    .line 33
    instance-of p3, p1, Ljava/lang/reflect/WildcardType;

    if-eqz p3, :cond_25

    .line 34
    move-object p3, p1

    check-cast p3, Ljava/lang/reflect/WildcardType;

    .line 35
    invoke-interface {p3}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p3

    .line 36
    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    .line 37
    aget-object p1, p3, p2

    .line 40
    :cond_25
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    goto :goto_2c

    .line 42
    :cond_28
    const-class p1, Ljava/lang/Object;

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    :goto_2c
    return-void
.end method


# virtual methods
.method public getFastMatchToken()I
    .registers 2

    const/16 v0, 0xe

    return v0
.end method

.method public final parseArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .registers 16

    .line 82
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    .line 83
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 85
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_ca

    .line 86
    instance-of v2, v0, Ljava/lang/reflect/TypeVariable;

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v2, :cond_63

    .line 87
    move-object v2, v0

    check-cast v2, Ljava/lang/reflect/TypeVariable;

    .line 88
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 91
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Class;

    if-eqz v3, :cond_24

    .line 92
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/Class;

    :cond_24
    if-eqz v5, :cond_46

    .line 97
    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    array-length v3, v3

    const/4 v7, 0x0

    :goto_2c
    if-ge v7, v3, :cond_46

    .line 98
    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v8

    aget-object v8, v8, v7

    .line 99
    invoke-interface {v8}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    goto :goto_47

    :cond_43
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    :cond_46
    const/4 v7, -0x1

    :goto_47
    if-eq v7, v6, :cond_103

    .line 107
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p2

    aget-object p2, p2, v7

    .line 108
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 109
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    move-object v1, v0

    :cond_60
    :goto_60
    move-object v0, p2

    goto/16 :goto_103

    .line 112
    :cond_63
    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_103

    .line 113
    move-object v2, v0

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 114
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 115
    array-length v8, v7

    if-ne v8, v3, :cond_103

    aget-object v3, v7, v4

    instance-of v3, v3, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_103

    .line 116
    aget-object v3, v7, v4

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    .line 117
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 120
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/Class;

    if-eqz v8, :cond_8b

    .line 121
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    :cond_8b
    if-eqz v5, :cond_ad

    .line 126
    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x0

    :goto_93
    if-ge v9, v8, :cond_ad

    .line 127
    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v10

    aget-object v10, v10, v9

    .line 128
    invoke-interface {v10}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_aa

    goto :goto_ae

    :cond_aa
    add-int/lit8 v9, v9, 0x1

    goto :goto_93

    :cond_ad
    const/4 v9, -0x1

    :goto_ae
    if-eq v9, v6, :cond_103

    .line 137
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p2

    aget-object p2, p2, v9

    aput-object p2, v7, v4

    .line 138
    new-instance p2, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    .line 139
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {p2, v7, v0, v2}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 138
    invoke-static {p2}, Lcom/alibaba/fastjson/TypeReference;->intern(Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;)Ljava/lang/reflect/Type;

    move-result-object p2

    goto :goto_60

    .line 144
    :cond_ca
    instance-of v2, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_103

    instance-of v2, p2, Ljava/lang/Class;

    if-eqz v2, :cond_103

    .line 145
    check-cast p2, Ljava/lang/Class;

    .line 146
    move-object v2, v0

    check-cast v2, Ljava/lang/reflect/TypeVariable;

    .line 147
    invoke-virtual {p2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 149
    invoke-virtual {p2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x0

    :goto_e0
    if-ge v6, v5, :cond_103

    .line 150
    invoke-virtual {p2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v7

    aget-object v7, v7, v6

    .line 151
    invoke-interface {v7}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_100

    .line 152
    invoke-interface {v7}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p2

    .line 153
    array-length v2, p2

    if-ne v2, v3, :cond_103

    .line 154
    aget-object v0, p2, v4

    goto :goto_103

    :cond_100
    add-int/lit8 v6, v6, 0x1

    goto :goto_e0

    .line 161
    :cond_103
    :goto_103
    iget-object p2, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 163
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_161

    if-nez v1, :cond_11f

    .line 166
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 167
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v2

    iput v2, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemFastMatchToken:I

    :cond_11f
    move-object v2, v1

    .line 170
    iget v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemFastMatchToken:I

    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 173
    :goto_125
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    const/16 v3, 0x10

    if-eqz v1, :cond_139

    .line 174
    :goto_12f
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, v3, :cond_139

    .line 175
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_12f

    .line 180
    :cond_139
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v5, 0xf

    if-ne v1, v5, :cond_145

    .line 195
    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_17b

    .line 184
    :cond_145
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, p1, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 185
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 189
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, v3, :cond_15e

    .line 190
    iget v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemFastMatchToken:I

    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    :cond_15e
    add-int/lit8 v4, v4, 0x1

    goto :goto_125

    :cond_161
    if-nez v1, :cond_16d

    .line 198
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 200
    :cond_16d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, v0, p2}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 201
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    :goto_17b
    return-void
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 54
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3c

    const/4 v2, 0x4

    if-ne v1, v2, :cond_18

    .line 56
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    goto :goto_3c

    .line 65
    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v1

    .line 69
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1, p2, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 70
    invoke-virtual {p0, p1, p3, v0}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->parseArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 71
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    if-nez p2, :cond_38

    .line 74
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {p4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    .line 76
    :cond_38
    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3b
    return-void

    :cond_3c
    :goto_3c
    const/4 p1, 0x0

    if-nez p2, :cond_47

    .line 58
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object p2, p2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    .line 60
    :cond_47
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4a
    return-void
.end method
