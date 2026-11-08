.class Lcom/alibaba/fastjson/JSONPath$PropertySegment;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PropertySegment"
.end annotation


# instance fields
.field private final deep:Z

.field private final propertyName:Ljava/lang/String;

.field private final propertyNameHash:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 5

    .line 2258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2259
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyName:Ljava/lang/String;

    .line 2260
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyNameHash:J

    .line 2261
    iput-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/fastjson/JSONPath$PropertySegment;)Z
    .registers 1

    .line 2252
    iget-boolean p0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    return p0
.end method

.method static synthetic access$400(Lcom/alibaba/fastjson/JSONPath$PropertySegment;)Ljava/lang/String;
    .registers 1

    .line 2252
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 2265
    iget-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-eqz p2, :cond_f

    .line 2266
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2267
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyName:Ljava/lang/String;

    invoke-virtual {p1, p3, v0, p2}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    return-object p2

    .line 2271
    :cond_f
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyName:Ljava/lang/String;

    iget-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyNameHash:J

    invoke-virtual {p1, p3, p2, v0, v1}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 2276
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    check-cast v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 2278
    iget-boolean v4, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-eqz v4, :cond_19

    iget-object v4, v2, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    if-nez v4, :cond_19

    .line 2279
    new-instance v4, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v4, v2, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    .line 2282
    :cond_19
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/4 v5, -0x1

    const/16 v6, 0xe

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/16 v10, 0x10

    if-ne v4, v6, :cond_f3

    .line 2283
    iget-object v4, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyName:Ljava/lang/String;

    const-string v11, "*"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    return-void

    .line 2287
    :cond_32
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 2290
    iget-boolean v4, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-eqz v4, :cond_3e

    .line 2291
    iget-object v4, v2, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    check-cast v4, Lcom/alibaba/fastjson/JSONArray;

    goto :goto_43

    .line 2293
    :cond_3e
    new-instance v4, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 2296
    :goto_43
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v11

    const/16 v12, 0xc

    const/4 v13, 0x0

    if-eq v11, v12, :cond_62

    if-eq v11, v6, :cond_56

    packed-switch v11, :pswitch_data_192

    goto :goto_ab

    .line 2351
    :pswitch_52
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto :goto_ab

    .line 2338
    :cond_56
    iget-boolean v11, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-eqz v11, :cond_5e

    .line 2339
    invoke-virtual/range {p0 .. p3}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V

    goto :goto_ab

    .line 2341
    :cond_5e
    invoke-virtual {v3, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipObject(Z)V

    goto :goto_ab

    .line 2298
    :cond_62
    iget-boolean v11, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-eqz v11, :cond_6a

    .line 2299
    invoke-virtual/range {p0 .. p3}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V

    goto :goto_ab

    .line 2302
    :cond_6a
    iget-wide v14, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyNameHash:J

    invoke-virtual {v3, v14, v15, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->seekObjectToField(JZ)I

    move-result v11

    if-ne v11, v9, :cond_a1

    .line 2305
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v11

    if-eq v11, v8, :cond_87

    if-eq v11, v7, :cond_7f

    .line 2315
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v11

    goto :goto_8e

    .line 2311
    :cond_7f
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v11

    .line 2312
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto :goto_8e

    .line 2307
    :cond_87
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->integerValue()Ljava/lang/Number;

    move-result-object v11

    .line 2308
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 2319
    :goto_8e
    invoke-virtual {v4, v11}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 2320
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_9d

    .line 2321
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto :goto_43

    .line 2324
    :cond_9d
    invoke-virtual {v3, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipObject(Z)V

    goto :goto_ab

    :cond_a1
    if-ne v11, v5, :cond_a4

    goto :goto_43

    .line 2329
    :cond_a4
    iget-boolean v11, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-nez v11, :cond_e9

    .line 2332
    invoke-virtual {v3, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipObject(Z)V

    .line 2357
    :goto_ab
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v11

    const/16 v12, 0xf

    if-ne v11, v12, :cond_c3

    .line 2358
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 2368
    iget-boolean v1, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-nez v1, :cond_c2

    .line 2369
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-lez v1, :cond_c2

    .line 2370
    iput-object v4, v2, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    :cond_c2
    return-void

    .line 2360
    :cond_c3
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v11

    if-ne v11, v10, :cond_ce

    .line 2361
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto/16 :goto_43

    .line 2364
    :cond_ce
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal json : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2330
    :cond_e9
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2376
    :cond_f3
    iget-boolean v4, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-nez v4, :cond_130

    .line 2377
    iget-wide v5, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyNameHash:J

    invoke-virtual {v3, v5, v6, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->seekObjectToField(JZ)I

    move-result v4

    if-ne v4, v9, :cond_12f

    .line 2379
    iget-boolean v4, v2, Lcom/alibaba/fastjson/JSONPath$Context;->eval:Z

    if-eqz v4, :cond_12f

    .line 2381
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    if-eq v4, v8, :cond_122

    if-eq v4, v9, :cond_11a

    if-eq v4, v7, :cond_112

    .line 2395
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    goto :goto_129

    .line 2391
    :cond_112
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 2392
    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto :goto_129

    .line 2387
    :cond_11a
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v1

    .line 2388
    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto :goto_129

    .line 2383
    :cond_122
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->integerValue()Ljava/lang/Number;

    move-result-object v1

    .line 2384
    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 2399
    :goto_129
    iget-boolean v3, v2, Lcom/alibaba/fastjson/JSONPath$Context;->eval:Z

    if-eqz v3, :cond_12f

    .line 2400
    iput-object v1, v2, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    :cond_12f
    return-void

    .line 2409
    :cond_130
    :goto_130
    iget-wide v11, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyNameHash:J

    iget-boolean v4, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    invoke-virtual {v3, v11, v12, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->seekObjectToField(JZ)I

    move-result v4

    if-ne v4, v5, :cond_13b

    return-void

    :cond_13b
    if-ne v4, v9, :cond_189

    .line 2415
    iget-boolean v4, v2, Lcom/alibaba/fastjson/JSONPath$Context;->eval:Z

    if-eqz v4, :cond_130

    .line 2417
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    if-eq v4, v8, :cond_160

    if-eq v4, v9, :cond_158

    if-eq v4, v7, :cond_150

    .line 2431
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v4

    goto :goto_167

    .line 2427
    :cond_150
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v4

    .line 2428
    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto :goto_167

    .line 2423
    :cond_158
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v4

    .line 2424
    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto :goto_167

    .line 2419
    :cond_160
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->integerValue()Ljava/lang/Number;

    move-result-object v4

    .line 2420
    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 2435
    :goto_167
    iget-boolean v6, v2, Lcom/alibaba/fastjson/JSONPath$Context;->eval:Z

    if-eqz v6, :cond_130

    .line 2436
    iget-object v6, v2, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    instance-of v6, v6, Ljava/util/List;

    if-eqz v6, :cond_186

    .line 2437
    iget-object v6, v2, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .line 2438
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_182

    instance-of v11, v4, Ljava/util/List;

    if-eqz v11, :cond_182

    .line 2439
    iput-object v4, v2, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    goto :goto_130

    .line 2441
    :cond_182
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_130

    .line 2444
    :cond_186
    iput-object v4, v2, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    goto :goto_130

    :cond_189
    const/4 v6, 0x1

    if-eq v4, v6, :cond_18e

    if-ne v4, v8, :cond_130

    .line 2449
    :cond_18e
    invoke-virtual/range {p0 .. p3}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V

    goto :goto_130

    :pswitch_data_192
    .packed-switch 0x2
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
    .end packed-switch
.end method

.method public remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z
    .registers 5

    .line 2463
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyName:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/fastjson/JSONPath;->removePropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 16

    .line 2455
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z

    if-eqz v0, :cond_f

    .line 2456
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyNameHash:J

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/JSONPath;->deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_19

    .line 2458
    :cond_f
    iget-object v8, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyName:Ljava/lang/String;

    iget-wide v9, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyNameHash:J

    move-object v6, p1

    move-object v7, p2

    move-object v11, p3

    invoke-virtual/range {v6 .. v11}, Lcom/alibaba/fastjson/JSONPath;->setPropertyValue(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)Z

    :goto_19
    return-void
.end method
