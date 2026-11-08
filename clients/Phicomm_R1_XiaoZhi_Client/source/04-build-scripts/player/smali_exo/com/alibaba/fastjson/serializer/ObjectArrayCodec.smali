.class public Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;->instance:Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/JSONArray;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return-object v0

    .line 194
    :cond_4
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    .line 196
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v1, :cond_65

    .line 198
    invoke-virtual {p3, v4}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p3, :cond_1a

    .line 201
    invoke-static {v2, v4, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_62

    .line 205
    :cond_1a
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_31

    .line 207
    invoke-virtual {p2, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    goto :goto_2d

    .line 210
    :cond_27
    check-cast v5, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {p0, p1, p2, v5}, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;->toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object v5

    .line 213
    :goto_2d
    invoke-static {v2, v4, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_62

    .line 216
    :cond_31
    instance-of v6, v5, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v6, :cond_54

    .line 218
    move-object v6, v5

    check-cast v6, Lcom/alibaba/fastjson/JSONArray;

    .line 219
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_3e
    if-ge v8, v7, :cond_4d

    .line 221
    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, p3, :cond_4a

    .line 223
    invoke-virtual {v6, v4, v2}, Lcom/alibaba/fastjson/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    :cond_4a
    add-int/lit8 v8, v8, 0x1

    goto :goto_3e

    :cond_4d
    if-eqz v9, :cond_54

    .line 228
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->toArray()[Ljava/lang/Object;

    move-result-object v6

    goto :goto_55

    :cond_54
    move-object v6, v0

    :goto_55
    if-nez v6, :cond_5f

    .line 233
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v6

    invoke-static {v5, p2, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v6

    .line 235
    :cond_5f
    invoke-static {v2, v4, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 240
    :cond_65
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/JSONArray;->setRelatedArray(Ljava/lang/Object;)V

    .line 241
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/JSONArray;->setComponentType(Ljava/lang/reflect/Type;)V

    return-object v2
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
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

    .line 129
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 130
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v1, v4, :cond_11

    .line 132
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-object v3

    :cond_11
    const/4 v4, 0x4

    if-eq v1, v4, :cond_90

    const/16 v4, 0x1a

    if-ne v1, v4, :cond_1a

    goto/16 :goto_90

    .line 149
    :cond_1a
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_7c

    .line 150
    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    .line 151
    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 152
    instance-of v0, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_77

    .line 153
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 154
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/ParseContext;->type:Ljava/lang/reflect/Type;

    .line 155
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    const/4 v4, 0x0

    if-eqz v2, :cond_6c

    .line 156
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 157
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 159
    instance-of v5, v2, Ljava/lang/Class;

    if-eqz v5, :cond_62

    .line 160
    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    .line 161
    :goto_46
    array-length v5, v2

    if-ge v4, v5, :cond_62

    .line 162
    aget-object v5, v2, v4

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 163
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v4

    :cond_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 167
    :cond_62
    instance-of v0, v3, Ljava/lang/Class;

    if-eqz v0, :cond_69

    .line 168
    check-cast v3, Ljava/lang/Class;

    goto :goto_83

    .line 170
    :cond_69
    const-class v3, Ljava/lang/Object;

    goto :goto_83

    .line 173
    :cond_6c
    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_83

    .line 176
    :cond_77
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_83

    .line 179
    :cond_7c
    check-cast p2, Ljava/lang/Class;

    .line 180
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    move-object v3, p2

    .line 182
    :goto_83
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 183
    invoke-virtual {p1, p2, v0, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 185
    invoke-direct {p0, p1, v3, v0}, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;->toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 137
    :cond_90
    :goto_90
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->bytesValue()[B

    move-result-object p1

    .line 138
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 140
    array-length p3, p1

    if-nez p3, :cond_9f

    const-class p3, [B

    if-eq p2, p3, :cond_9f

    return-object v3

    :cond_9f
    return-object p1
.end method

.method public getFastMatchToken()I
    .registers 2

    const/16 v0, 0xe

    return v0
.end method

.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    .line 44
    iget-object v8, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 46
    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, [Ljava/lang/Object;

    if-nez v0, :cond_14

    .line 49
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void

    .line 53
    :cond_14
    array-length v1, v9

    add-int/lit8 v10, v1, -0x1

    const/4 v2, -0x1

    if-ne v10, v2, :cond_20

    const-string v0, "[]"

    .line 58
    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    return-void

    .line 62
    :cond_20
    iget-object v11, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    const/4 v2, 0x0

    move-object/from16 v3, p3

    .line 63
    invoke-virtual {v7, v11, v0, v3, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 v0, 0x5b

    .line 68
    :try_start_2a
    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 70
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    const/16 v12, 0x5d

    const/16 v13, 0x2c

    if-eqz v0, :cond_5d

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    :goto_3f
    if-ge v2, v1, :cond_51

    if-eqz v2, :cond_49

    .line 75
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 78
    :cond_49
    aget-object v0, v9, v2

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 80
    :cond_51
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 82
    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V
    :try_end_5a
    .catchall {:try_start_2a .. :try_end_5a} :catchall_c5

    .line 123
    iput-object v11, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    return-void

    :cond_5d
    const/4 v0, 0x0

    move-object v14, v0

    const/4 v15, 0x0

    :goto_60
    if-ge v15, v10, :cond_a4

    .line 87
    :try_start_62
    aget-object v3, v9, v15

    if-nez v3, :cond_6c

    const-string v1, "null,"

    .line 90
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_a1

    .line 92
    :cond_6c
    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 93
    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_9e

    .line 95
    :cond_76
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v6, v0, :cond_89

    .line 98
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v14

    move-object/from16 v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto :goto_9e

    .line 101
    :cond_89
    invoke-virtual {v7, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v14

    .line 103
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v0, 0x0

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v16, v6

    move v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    move-object/from16 v0, v16

    .line 106
    :goto_9e
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    :goto_a1
    add-int/lit8 v15, v15, 0x1

    goto :goto_60

    .line 110
    :cond_a4
    aget-object v0, v9, v10

    if-nez v0, :cond_ae

    const-string v0, "null]"

    .line 113
    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_c2

    .line 115
    :cond_ae
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 116
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_bf

    .line 118
    :cond_b8
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeWithFieldName(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    :goto_bf
    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_c2
    .catchall {:try_start_62 .. :try_end_c2} :catchall_c5

    .line 123
    :goto_c2
    iput-object v11, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    return-void

    :catchall_c5
    move-exception v0

    iput-object v11, v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 124
    goto :goto_ca

    :goto_c9
    throw v0

    :goto_ca
    goto :goto_c9
.end method
