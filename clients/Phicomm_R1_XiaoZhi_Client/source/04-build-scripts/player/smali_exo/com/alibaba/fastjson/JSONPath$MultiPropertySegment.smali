.class Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiPropertySegment"
.end annotation


# instance fields
.field private final propertyNames:[Ljava/lang/String;

.field private final propertyNamesHash:[J


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 6

    .line 2472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2473
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;->propertyNames:[Ljava/lang/String;

    .line 2474
    array-length v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;->propertyNamesHash:[J

    const/4 v0, 0x0

    .line 2475
    :goto_b
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;->propertyNamesHash:[J

    array-length v2, v1

    if-ge v0, v2, :cond_1b

    .line 2476
    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1b
    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 2481
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;->propertyNames:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 2483
    :goto_9
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;->propertyNames:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1e

    .line 2484
    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;->propertyNamesHash:[J

    aget-wide v3, v2, v0

    invoke-virtual {p1, p3, v1, v3, v4}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v1

    .line 2485
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1e
    return-object p2
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .registers 9

    .line 2492
    iget-object p1, p2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    check-cast p1, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 2495
    iget-object v0, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    if-nez v0, :cond_10

    .line 2496
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v0, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    goto :goto_15

    .line 2498
    :cond_10
    iget-object p3, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 2500
    :goto_15
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p3

    :goto_19
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;->propertyNamesHash:[J

    array-length v1, v1

    if-ge p3, v1, :cond_25

    const/4 v1, 0x0

    .line 2501
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_19

    .line 2557
    :cond_25
    :goto_25
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;->propertyNamesHash:[J

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->seekObjectToField([J)I

    move-result p3

    .line 2558
    iget v1, p1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_64

    .line 2561
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    const/4 v3, 0x2

    const/16 v4, 0x10

    if-eq v1, v3, :cond_53

    if-eq v1, v2, :cond_4b

    const/4 v2, 0x4

    if-eq v1, v2, :cond_43

    .line 2575
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    goto :goto_5a

    .line 2571
    :cond_43
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 2572
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto :goto_5a

    .line 2567
    :cond_4b
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v1

    .line 2568
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto :goto_5a

    .line 2563
    :cond_53
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->integerValue()Ljava/lang/Number;

    move-result-object v1

    .line 2564
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 2579
    :goto_5a
    invoke-virtual {v0, p3, v1}, Lcom/alibaba/fastjson/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2581
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result p3

    if-ne p3, v4, :cond_64

    goto :goto_25

    :cond_64
    return-void
.end method
