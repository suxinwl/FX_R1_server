.class public Lcom/alibaba/fastjson/serializer/MapSerializer;
.super Lcom/alibaba/fastjson/serializer/SerializeFilterable;

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field private static final NON_STRINGKEY_AS_STRING:I

.field public static instance:Lcom/alibaba/fastjson/serializer/MapSerializer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 31
    new-instance v0, Lcom/alibaba/fastjson/serializer/MapSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MapSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 33
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v0

    sput v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->NON_STRINGKEY_AS_STRING:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 44
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/serializer/MapSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p2

    move-object/from16 v10, p4

    move/from16 v11, p5

    .line 54
    iget-object v12, v9, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez v0, :cond_12

    .line 57
    invoke-virtual {v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 61
    :cond_12
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    .line 62
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->MapSortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 63
    iget v3, v12, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v3, v2

    if-nez v3, :cond_24

    and-int/2addr v2, v11

    if-eqz v2, :cond_22

    goto :goto_24

    :catch_22
    :cond_22
    move-object v13, v1

    goto :goto_3c

    .line 64
    :cond_24
    :goto_24
    instance-of v2, v1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_2e

    .line 65
    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v1

    .line 68
    :cond_2e
    instance-of v2, v1, Ljava/util/SortedMap;

    if-nez v2, :cond_22

    instance-of v2, v1, Ljava/util/LinkedHashMap;

    if-nez v2, :cond_22

    .line 70
    :try_start_36
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3b} :catch_22

    move-object v13, v2

    .line 77
    :goto_3c
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 78
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    return-void

    .line 82
    :cond_46
    iget-object v14, v9, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    const/4 v15, 0x0

    move-object/from16 v1, p3

    .line 83
    invoke-virtual {v9, v14, v0, v1, v15}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    if-nez p6, :cond_55

    const/16 v1, 0x7b

    .line 86
    :try_start_52
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 89
    :cond_55
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 96
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    const/4 v7, 0x1

    if-eqz v1, :cond_90

    .line 97
    iget-object v1, v9, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object v1, v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    .line 98
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 99
    const-class v3, Lcom/alibaba/fastjson/JSONObject;

    if-eq v2, v3, :cond_75

    const-class v3, Ljava/util/HashMap;

    if-eq v2, v3, :cond_75

    const-class v3, Ljava/util/LinkedHashMap;

    if-ne v2, v3, :cond_7d

    .line 100
    :cond_75
    invoke-interface {v13, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    const/4 v2, 0x1

    goto :goto_7e

    :cond_7d
    const/4 v2, 0x0

    :goto_7e
    if-nez v2, :cond_90

    .line 102
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_91

    :cond_90
    const/4 v1, 0x1

    .line 108
    :goto_91
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v18, v1

    move-object/from16 v6, v17

    move-object/from16 v19, v6

    :goto_a1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 109
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 111
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 114
    iget-object v2, v9, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;

    if-eqz v2, :cond_ed

    .line 115
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_ed

    if-eqz v1, :cond_df

    .line 116
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_c6

    goto :goto_df

    .line 120
    :cond_c6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_d4

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_ed

    .line 121
    :cond_d4
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual {v8, v9, v0, v2}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ed

    goto :goto_e8

    .line 117
    :cond_df
    :goto_df
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v9, v0, v2}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ed

    :goto_e8
    move-object/from16 v22, v6

    const/4 v0, 0x1

    goto/16 :goto_247

    .line 129
    :cond_ed
    iget-object v2, v8, Lcom/alibaba/fastjson/serializer/MapSerializer;->propertyPreFilters:Ljava/util/List;

    if-eqz v2, :cond_121

    .line 130
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_121

    if-eqz v1, :cond_117

    .line 131
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_fe

    goto :goto_117

    .line 135
    :cond_fe
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_10c

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_121

    .line 136
    :cond_10c
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-virtual {v8, v9, v0, v2}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_121

    goto :goto_e8

    .line 132
    :cond_117
    :goto_117
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v9, v0, v2}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_121

    goto :goto_e8

    .line 145
    :cond_121
    iget-object v2, v9, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    if-eqz v2, :cond_155

    .line 146
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_155

    if-eqz v1, :cond_14b

    .line 147
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_132

    goto :goto_14b

    .line 151
    :cond_132
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_140

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_155

    .line 152
    :cond_140
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-virtual {v8, v9, v0, v2, v5}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_155

    goto :goto_e8

    .line 148
    :cond_14b
    :goto_14b
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v9, v0, v2, v5}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_155

    goto :goto_e8

    .line 160
    :cond_155
    iget-object v2, v8, Lcom/alibaba/fastjson/serializer/MapSerializer;->propertyFilters:Ljava/util/List;

    if-eqz v2, :cond_18b

    .line 161
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_18b

    if-eqz v1, :cond_180

    .line 162
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_166

    goto :goto_180

    .line 166
    :cond_166
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_174

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_18b

    .line 167
    :cond_174
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-virtual {v8, v9, v0, v2, v5}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18b

    goto/16 :goto_e8

    .line 163
    :cond_180
    :goto_180
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v9, v0, v2, v5}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18b

    goto/16 :goto_e8

    .line 176
    :cond_18b
    iget-object v2, v9, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    if-eqz v2, :cond_1b9

    .line 177
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1b9

    if-eqz v1, :cond_1b3

    .line 178
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_19c

    goto :goto_1b3

    .line 180
    :cond_19c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1aa

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_1b9

    .line 181
    :cond_1aa
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {v8, v9, v0, v1, v5}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b9

    .line 179
    :cond_1b3
    :goto_1b3
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v9, v0, v1, v5}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 187
    :cond_1b9
    :goto_1b9
    iget-object v2, v8, Lcom/alibaba/fastjson/serializer/MapSerializer;->nameFilters:Ljava/util/List;

    if-eqz v2, :cond_1e7

    .line 188
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1e7

    if-eqz v1, :cond_1e1

    .line 189
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1ca

    goto :goto_1e1

    .line 191
    :cond_1ca
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1d8

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_1e7

    .line 192
    :cond_1d8
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-virtual {v8, v9, v0, v1, v5}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e7

    .line 190
    :cond_1e1
    :goto_1e1
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v9, v0, v1, v5}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_1e7
    :goto_1e7
    move-object v4, v1

    if-eqz v4, :cond_222

    .line 199
    instance-of v1, v4, Ljava/lang/String;

    if-eqz v1, :cond_1ef

    goto :goto_222

    .line 202
    :cond_1ef
    instance-of v1, v4, Ljava/util/Map;

    if-nez v1, :cond_1fa

    instance-of v1, v4, Ljava/util/Collection;

    if-eqz v1, :cond_1f8

    goto :goto_1fa

    :cond_1f8
    const/4 v1, 0x0

    goto :goto_1fb

    :cond_1fa
    :goto_1fa
    const/4 v1, 0x1

    :goto_1fb
    if-nez v1, :cond_219

    .line 204
    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v15, v4

    move-object/from16 v4, p2

    move-object/from16 v21, v5

    move-object/from16 v5, v20

    move-object/from16 v22, v6

    move-object/from16 v6, v21

    const/4 v0, 0x1

    move/from16 v7, p5

    .line 205
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_23a

    :cond_219
    move-object v15, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    const/4 v0, 0x1

    move-object/from16 v3, v21

    goto :goto_23b

    :cond_222
    :goto_222
    move-object v15, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 200
    move-object v5, v15

    check-cast v5, Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v6, v21

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    :goto_23a
    move-object v3, v1

    :goto_23b
    if-nez v3, :cond_24f

    .line 211
    iget v1, v12, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v1, v11, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(IILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-nez v1, :cond_24f

    :goto_247
    move-object/from16 v0, p2

    move-object/from16 v6, v22

    const/4 v7, 0x1

    const/4 v15, 0x0

    goto/16 :goto_a1

    .line 216
    :cond_24f
    instance-of v1, v15, Ljava/lang/String;

    const/16 v2, 0x2c

    if-eqz v1, :cond_26c

    .line 217
    move-object v4, v15

    check-cast v4, Ljava/lang/String;

    if-nez v18, :cond_25d

    .line 220
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 223
    :cond_25d
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_268

    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 226
    :cond_268
    invoke-virtual {v12, v4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    goto :goto_295

    :cond_26c
    if-nez v18, :cond_271

    .line 229
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 232
    :cond_271
    sget v1, Lcom/alibaba/fastjson/serializer/MapSerializer;->NON_STRINGKEY_AS_STRING:I

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_281

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v11, v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_28d

    :cond_281
    instance-of v1, v15, Ljava/lang/Enum;

    if-nez v1, :cond_28d

    .line 234
    invoke-static {v15}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto :goto_290

    .line 237
    :cond_28d
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    :goto_290
    const/16 v1, 0x3a

    .line 240
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_295
    if-nez v3, :cond_2a4

    .line 246
    invoke-virtual {v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    move-object/from16 v0, p2

    move-object/from16 v6, v22

    :goto_29e
    const/4 v7, 0x1

    const/4 v15, 0x0

    const/16 v18, 0x0

    goto/16 :goto_a1

    .line 250
    :cond_2a4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object/from16 v2, v22

    if-eq v1, v2, :cond_2b2

    .line 254
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v19

    move-object v7, v1

    goto :goto_2b3

    :cond_2b2
    move-object v7, v2

    :goto_2b3
    move-object/from16 v6, v19

    .line 257
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v11, v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_2e4

    instance-of v1, v6, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v1, :cond_2e4

    .line 260
    instance-of v1, v10, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2d4

    .line 261
    move-object v1, v10

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 262
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 263
    array-length v2, v1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2d4

    .line 264
    aget-object v1, v1, v0

    move-object v5, v1

    goto :goto_2d6

    :cond_2d4
    move-object/from16 v5, v17

    .line 268
    :goto_2d6
    move-object v1, v6

    check-cast v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-object/from16 v2, p1

    move-object v4, v15

    move-object/from16 v19, v6

    move/from16 v6, p5

    .line 269
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeNoneASM(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto :goto_2f1

    :cond_2e4
    move-object/from16 v19, v6

    const/4 v5, 0x0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object v4, v15

    move/from16 v6, p5

    .line 271
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_2f1
    .catchall {:try_start_52 .. :try_end_2f1} :catchall_313

    :goto_2f1
    move-object/from16 v0, p2

    move-object v6, v7

    goto :goto_29e

    .line 275
    :cond_2f5
    iput-object v14, v9, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 278
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 279
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_30b

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_30b

    .line 280
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    :cond_30b
    if-nez p6, :cond_312

    const/16 v0, 0x7d

    .line 284
    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_312
    return-void

    :catchall_313
    move-exception v0

    .line 275
    iput-object v14, v9, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 276
    goto :goto_318

    :goto_317
    throw v0

    :goto_318
    goto :goto_317
.end method
