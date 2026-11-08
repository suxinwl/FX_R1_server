.class public Lcom/alibaba/fastjson/JSONPath;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/JSONAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/JSONPath$FilterGroup;,
        Lcom/alibaba/fastjson/JSONPath$Filter;,
        Lcom/alibaba/fastjson/JSONPath$FilterSegment;,
        Lcom/alibaba/fastjson/JSONPath$Operator;,
        Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;,
        Lcom/alibaba/fastjson/JSONPath$StringOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$RlikeSegement;,
        Lcom/alibaba/fastjson/JSONPath$MatchSegement;,
        Lcom/alibaba/fastjson/JSONPath$RefOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$PropertyFilter;,
        Lcom/alibaba/fastjson/JSONPath$IntOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$StringInSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntInSegement;,
        Lcom/alibaba/fastjson/JSONPath$ValueSegment;,
        Lcom/alibaba/fastjson/JSONPath$NullSegement;,
        Lcom/alibaba/fastjson/JSONPath$NotNullSegement;,
        Lcom/alibaba/fastjson/JSONPath$RangeSegment;,
        Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;,
        Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;,
        Lcom/alibaba/fastjson/JSONPath$WildCardSegment;,
        Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;,
        Lcom/alibaba/fastjson/JSONPath$PropertySegment;,
        Lcom/alibaba/fastjson/JSONPath$KeySetSegment;,
        Lcom/alibaba/fastjson/JSONPath$MinSegment;,
        Lcom/alibaba/fastjson/JSONPath$MaxSegment;,
        Lcom/alibaba/fastjson/JSONPath$FloorSegment;,
        Lcom/alibaba/fastjson/JSONPath$TypeSegment;,
        Lcom/alibaba/fastjson/JSONPath$SizeSegment;,
        Lcom/alibaba/fastjson/JSONPath$Segment;,
        Lcom/alibaba/fastjson/JSONPath$JSONPathParser;,
        Lcom/alibaba/fastjson/JSONPath$Context;
    }
.end annotation


# static fields
.field static final LENGTH:J = -0x15eea8c0e50a614bL

.field static final SIZE:J = 0x4dea9618e618ae3cL

.field private static pathCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONPath;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hasRefSegment:Z

.field private parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

.field private final path:Ljava/lang/String;

.field private segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

.field private serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x80

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 57
    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .registers 5

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_12

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_12

    .line 65
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .line 67
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    return-void

    .line 62
    :cond_12
    new-instance p1, Lcom/alibaba/fastjson/JSONPathException;

    const-string p2, "json-path can not be null or empty"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static varargs arrayAdd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 649
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 650
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->arrayAdd(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    .line 2181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_11

    .line 2182
    check-cast p0, Ljava/lang/Comparable;

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 2185
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2188
    const-class v2, Ljava/math/BigDecimal;

    if-ne v0, v2, :cond_60

    .line 2189
    const-class v0, Ljava/lang/Integer;

    if-ne v1, v0, :cond_2f

    .line 2190
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(I)V

    :goto_2c
    move-object p1, v0

    goto/16 :goto_164

    .line 2191
    :cond_2f
    const-class v0, Ljava/lang/Long;

    if-ne v1, v0, :cond_3f

    .line 2192
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    goto :goto_2c

    .line 2193
    :cond_3f
    const-class v0, Ljava/lang/Float;

    if-ne v1, v0, :cond_50

    .line 2194
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v1, p1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    goto :goto_2c

    .line 2195
    :cond_50
    const-class v0, Ljava/lang/Double;

    if-ne v1, v0, :cond_164

    .line 2196
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    goto :goto_2c

    .line 2198
    :cond_60
    const-class v2, Ljava/lang/Long;

    if-ne v0, v2, :cond_a7

    .line 2199
    const-class v0, Ljava/lang/Integer;

    if-ne v1, v0, :cond_75

    .line 2200
    new-instance v0, Ljava/lang/Long;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_2c

    .line 2201
    :cond_75
    const-class v0, Ljava/math/BigDecimal;

    if-ne v1, v0, :cond_85

    .line 2202
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    goto :goto_bb

    .line 2203
    :cond_85
    const-class v0, Ljava/lang/Float;

    if-ne v1, v0, :cond_96

    .line 2204
    new-instance v0, Ljava/lang/Float;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-float p0, v1

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    goto :goto_bb

    .line 2205
    :cond_96
    const-class v0, Ljava/lang/Double;

    if-ne v1, v0, :cond_164

    .line 2206
    new-instance v0, Ljava/lang/Double;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_bb

    .line 2208
    :cond_a7
    const-class v2, Ljava/lang/Integer;

    if-ne v0, v2, :cond_f0

    .line 2209
    const-class v0, Ljava/lang/Long;

    if-ne v1, v0, :cond_be

    .line 2210
    new-instance v0, Ljava/lang/Long;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v1, p0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    :goto_bb
    move-object p0, v0

    goto/16 :goto_164

    .line 2211
    :cond_be
    const-class v0, Ljava/math/BigDecimal;

    if-ne v1, v0, :cond_ce

    .line 2212
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(I)V

    goto :goto_bb

    .line 2213
    :cond_ce
    const-class v0, Ljava/lang/Float;

    if-ne v1, v0, :cond_df

    .line 2214
    new-instance v0, Ljava/lang/Float;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    goto :goto_bb

    .line 2215
    :cond_df
    const-class v0, Ljava/lang/Double;

    if-ne v1, v0, :cond_164

    .line 2216
    new-instance v0, Ljava/lang/Double;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double v1, p0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_bb

    .line 2218
    :cond_f0
    const-class v2, Ljava/lang/Double;

    if-ne v0, v2, :cond_12a

    .line 2219
    const-class v0, Ljava/lang/Integer;

    if-ne v1, v0, :cond_106

    .line 2220
    new-instance v0, Ljava/lang/Double;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v1, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto/16 :goto_2c

    .line 2221
    :cond_106
    const-class v0, Ljava/lang/Long;

    if-ne v1, v0, :cond_118

    .line 2222
    new-instance v0, Ljava/lang/Double;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto/16 :goto_2c

    .line 2223
    :cond_118
    const-class v0, Ljava/lang/Float;

    if-ne v1, v0, :cond_164

    .line 2224
    new-instance v0, Ljava/lang/Double;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v1, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto/16 :goto_2c

    .line 2226
    :cond_12a
    const-class v2, Ljava/lang/Float;

    if-ne v0, v2, :cond_164

    .line 2227
    const-class v0, Ljava/lang/Integer;

    if-ne v1, v0, :cond_140

    .line 2228
    new-instance v0, Ljava/lang/Float;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    goto/16 :goto_2c

    .line 2229
    :cond_140
    const-class v0, Ljava/lang/Long;

    if-ne v1, v0, :cond_152

    .line 2230
    new-instance v0, Ljava/lang/Float;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-float p1, v1

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    goto/16 :goto_2c

    .line 2231
    :cond_152
    const-class v0, Ljava/lang/Double;

    if-ne v1, v0, :cond_164

    .line 2232
    new-instance v0, Ljava/lang/Double;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v1, p0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto/16 :goto_bb

    .line 2236
    :cond_164
    :goto_164
    check-cast p0, Ljava/lang/Comparable;

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;
    .registers 4

    if-eqz p0, :cond_2a

    .line 668
    sget-object v0, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONPath;

    if-nez v0, :cond_29

    .line 670
    new-instance v0, Lcom/alibaba/fastjson/JSONPath;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;)V

    .line 671
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    const/16 v2, 0x400

    if-ge v1, v2, :cond_29

    .line 672
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    sget-object v0, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/alibaba/fastjson/JSONPath;

    :cond_29
    return-object v0

    .line 665
    :cond_2a
    new-instance p0, Lcom/alibaba/fastjson/JSONPathException;

    const-string v0, "jsonpath can not be null"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static contains(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 639
    :cond_4
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 640
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static containsValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 644
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 645
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 v0, 0x0

    if-eqz p0, :cond_30

    if-nez p1, :cond_a

    goto :goto_30

    .line 3642
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_19

    .line 3643
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 3646
    :cond_19
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2b

    .line 3647
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_2a

    .line 3648
    check-cast p0, Ljava/lang/Number;

    check-cast p1, Ljava/lang/Number;

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->eqNotNull(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result p0

    return p0

    :cond_2a
    return v0

    .line 3654
    :cond_2b
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_30
    :goto_30
    return v0
.end method

.method static eqNotNull(Ljava/lang/Number;Ljava/lang/Number;)Z
    .registers 9

    .line 3659
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3660
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v1

    .line 3662
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 3663
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v3

    .line 3665
    instance-of v4, p0, Ljava/math/BigDecimal;

    if-eqz v4, :cond_26

    .line 3666
    move-object v4, p0

    check-cast v4, Ljava/math/BigDecimal;

    if-eqz v3, :cond_26

    .line 3669
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_26
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_4f

    if-eqz v3, :cond_3b

    .line 3675
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-nez v2, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v4, 0x0

    :goto_3a
    return v4

    .line 3678
    :cond_3b
    instance-of v6, p1, Ljava/math/BigInteger;

    if-eqz v6, :cond_4f

    .line 3679
    move-object p1, p0

    check-cast p1, Ljava/math/BigInteger;

    .line 3680
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    .line 3682
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4f
    if-eqz v3, :cond_64

    .line 3687
    instance-of v6, p0, Ljava/math/BigInteger;

    if-eqz v6, :cond_64

    .line 3688
    check-cast p0, Ljava/math/BigInteger;

    .line 3689
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    .line 3691
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 3696
    :cond_64
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath;->isDouble(Ljava/lang/Class;)Z

    move-result v0

    .line 3697
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONPath;->isDouble(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v0, :cond_70

    if-nez v2, :cond_78

    :cond_70
    if-eqz v0, :cond_74

    if-nez v3, :cond_78

    :cond_74
    if-eqz v2, :cond_87

    if-eqz v1, :cond_87

    .line 3700
    :cond_78
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpl-double v2, v0, p0

    if-nez v2, :cond_85

    goto :goto_86

    :cond_85
    const/4 v4, 0x0

    :goto_86
    return v4

    :cond_87
    return v5
.end method

.method public static eval(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 611
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 612
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static extract(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 708
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p0, p1, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath;->extract(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs extract(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .registers 5

    .line 699
    sget-object p4, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget p4, p4, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr p3, p4

    .line 700
    new-instance p4, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-direct {p4, p0, p2, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 701
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p0

    .line 702
    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson/JSONPath;->extract(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;

    move-result-object p0

    .line 703
    iget-object p1, p4, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    return-object p0
.end method

.method protected static isDouble(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 3708
    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_b

    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method protected static isInt(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 3712
    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static keySet(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "*>;"
        }
    .end annotation

    .line 629
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 630
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 631
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->evalKeySet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static paths(Ljava/lang/Object;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 712
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static paths(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/serializer/SerializeConfig;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 716
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 717
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "/"

    .line 719
    invoke-static {v0, v1, v2, p0, p1}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    return-object v1
.end method

.method private static paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/serializer/SerializeConfig;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_3

    return-void

    .line 728
    :cond_3
    invoke-interface {p0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    .line 730
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 731
    const-class v2, Ljava/lang/String;

    if-eq v0, v2, :cond_31

    const-class v2, Ljava/lang/Boolean;

    if-eq v0, v2, :cond_31

    const-class v2, Ljava/lang/Character;

    if-eq v0, v2, :cond_31

    const-class v2, Ljava/util/UUID;

    if-eq v0, v2, :cond_31

    .line 735
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_31

    instance-of v0, p3, Ljava/lang/Number;

    if-nez v0, :cond_31

    instance-of v0, p3, Ljava/util/Date;

    if-eqz v0, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 v0, 0x0

    goto :goto_32

    :cond_31
    :goto_31
    const/4 v0, 0x1

    :goto_32
    if-nez v0, :cond_35

    return-void

    .line 745
    :cond_35
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    instance-of v0, p3, Ljava/util/Map;

    const-string v2, "/"

    if-eqz v0, :cond_83

    .line 748
    check-cast p3, Ljava/util/Map;

    .line 750
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_48
    :goto_48
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 751
    check-cast v0, Ljava/util/Map$Entry;

    .line 752
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 754
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_48

    .line 755
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_70

    :cond_68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_70
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 756
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v1, v0, p4}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    goto :goto_48

    :cond_82
    return-void

    .line 762
    :cond_83
    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_bc

    .line 763
    check-cast p3, Ljava/util/Collection;

    .line 766
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_8d
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bb

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 767
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_ab

    :cond_a3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_ab
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 768
    invoke-static {p0, p1, v3, v0, p4}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8d

    :cond_bb
    return-void

    .line 775
    :cond_bc
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 777
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_f5

    .line 778
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    :goto_ca
    if-ge v1, v0, :cond_f4

    .line 781
    invoke-static {p3, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 783
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_dc

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_e4

    :cond_dc
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_e4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 784
    invoke-static {p0, p1, v4, v3, p4}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_ca

    :cond_f4
    return-void

    .line 790
    :cond_f5
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_165

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_102

    goto :goto_165

    .line 794
    :cond_102
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    .line 795
    instance-of v1, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v1, :cond_165

    .line 796
    check-cast v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 799
    :try_start_10c
    invoke-virtual {v0, p3}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 800
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_118
    :goto_118
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 801
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 803
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_118

    .line 804
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_144

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_13f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_153

    :cond_144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13f

    .line 805
    :goto_153
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v1, v0, p4}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_15a} :catch_15c

    goto :goto_118

    :cond_15b
    return-void

    :catch_15c
    move-exception p0

    .line 809
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "toJSON error"

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_165
    :goto_165
    return-void
.end method

.method public static read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 686
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 688
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 687
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static remove(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 2

    .line 659
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 660
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static varargs reserveToArray(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    .line 4197
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    if-eqz p1, :cond_22

    .line 4199
    array-length v1, p1

    if-nez v1, :cond_b

    goto :goto_22

    .line 4203
    :cond_b
    array-length v1, p1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_22

    aget-object v3, p1, v2

    .line 4204
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v3

    .line 4205
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 4207
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4208
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_22
    :goto_22
    return-object v0
.end method

.method public static varargs reserveToObject(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .registers 9

    if-eqz p1, :cond_31

    .line 4215
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_31

    .line 4219
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 4220
    array-length v2, p1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_30

    aget-object v4, p1, v3

    .line 4221
    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v4

    .line 4222
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 4223
    iget-object v5, v4, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v6, v5

    sub-int/2addr v6, v1

    aget-object v5, v5, v6

    .line 4224
    instance-of v5, v5, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v5, :cond_2d

    .line 4225
    invoke-virtual {v4, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2a

    goto :goto_2d

    .line 4229
    :cond_2a
    invoke-virtual {v4, v0, v5}, Lcom/alibaba/fastjson/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_2d
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_30
    return-object v0

    :cond_31
    :goto_31
    return-object p0
.end method

.method public static set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 654
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 655
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static size(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 2

    .line 616
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object p1

    .line 617
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 618
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/JSONPath;->evalSize(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public varargs arrayAdd(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 9

    if-eqz p2, :cond_b4

    .line 354
    array-length v0, p2

    if-nez v0, :cond_7

    goto/16 :goto_b4

    :cond_7
    if-nez p1, :cond_a

    return-void

    .line 362
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, p1

    const/4 v2, 0x0

    .line 366
    :goto_11
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v5, v4

    if-ge v2, v5, :cond_27

    .line 367
    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_1c

    move-object v0, v3

    .line 370
    :cond_1c
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    aget-object v4, v4, v2

    invoke-interface {v4, p0, p1, v3}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_27
    if-eqz v3, :cond_9b

    .line 379
    instance-of p1, v3, Ljava/util/Collection;

    if-eqz p1, :cond_3b

    .line 380
    check-cast v3, Ljava/util/Collection;

    .line 381
    array-length p1, p2

    :goto_30
    if-ge v1, p1, :cond_3a

    aget-object v0, p2, v1

    .line 382
    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_3a
    return-void

    .line 387
    :cond_3b
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 390
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_84

    .line 391
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 392
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    array-length v4, p2

    add-int/2addr v4, v2

    invoke-static {p1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .line 394
    invoke-static {v3, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    :goto_56
    array-length v3, p2

    if-ge v1, v3, :cond_63

    add-int v3, v2, v1

    .line 396
    aget-object v4, p2, v1

    invoke-static {p1, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 404
    :cond_63
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-object p2, p2, v1

    .line 405
    instance-of v1, p2, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v1, :cond_74

    .line 406
    check-cast p2, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 407
    invoke-virtual {p2, p0, v0, p1}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 411
    :cond_74
    instance-of v1, p2, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz v1, :cond_7e

    .line 412
    check-cast p2, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    invoke-virtual {p2, p0, v0, p1}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    .line 416
    :cond_7e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 401
    :cond_84
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported array put operation. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 376
    :cond_9b
    new-instance p1, Lcom/alibaba/fastjson/JSONPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "value not found in path "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b4
    :goto_b4
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 205
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    move-object v2, p1

    const/4 v1, 0x0

    .line 208
    :goto_9
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v4, v3

    if-ge v1, v4, :cond_2a

    .line 210
    aget-object v3, v3, v1

    invoke-interface {v3, p0, p1, v2}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_17

    return v0

    .line 215
    :cond_17
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-ne v3, v4, :cond_26

    instance-of v4, v2, Ljava/util/List;

    if-eqz v4, :cond_26

    .line 216
    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_26
    add-int/lit8 v1, v1, 0x1

    move-object v2, v3

    goto :goto_9

    :cond_2a
    const/4 p1, 0x1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    .line 225
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    if-ne p1, p2, :cond_8

    return v0

    :cond_8
    const/4 v1, 0x0

    if-nez p1, :cond_c

    return v1

    .line 235
    :cond_c
    instance-of v2, p1, Ljava/lang/Iterable;

    if-eqz v2, :cond_28

    .line 236
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 237
    :cond_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 238
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 239
    invoke-static {v2, p2}, Lcom/alibaba/fastjson/JSONPath;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    return v0

    :cond_27
    return v1

    .line 247
    :cond_28
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/JSONPath;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected deepGetPropertyValues(Ljava/lang/Object;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3601
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3603
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 3608
    :try_start_a
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_f

    goto :goto_3c

    :catch_f
    move-exception p1

    .line 3610
    new-instance p2, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jsonpath error, path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 3612
    :cond_29
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_34

    .line 3613
    check-cast p1, Ljava/util/Map;

    .line 3614
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    goto :goto_3c

    .line 3615
    :cond_34
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_3b

    .line 3616
    check-cast p1, Ljava/util/Collection;

    goto :goto_3c

    :cond_3b
    const/4 p1, 0x0

    :goto_3c
    if-eqz p1, :cond_62

    .line 3620
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 3621
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_59

    goto :goto_5d

    .line 3624
    :cond_59
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/fastjson/JSONPath;->deepGetPropertyValues(Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_42

    .line 3622
    :cond_5d
    :goto_5d
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42

    :cond_61
    return-void

    .line 3630
    :cond_62
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto :goto_6d

    :goto_6c
    throw p1

    :goto_6d
    goto :goto_6c
.end method

.method protected deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "getFieldValue error."

    if-nez p1, :cond_5

    return-void

    .line 3880
    :cond_5
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_4d

    .line 3881
    check-cast p1, Ljava/util/Map;

    .line 3883
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3884
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 3886
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3887
    instance-of v0, v1, Ljava/util/Collection;

    if-eqz v0, :cond_37

    .line 3888
    check-cast v1, Ljava/util/Collection;

    invoke-interface {p3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_13

    .line 3890
    :cond_37
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_3b
    if-eqz v1, :cond_13

    .line 3895
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_48

    goto :goto_13

    .line 3899
    :cond_48
    invoke-virtual {p0, v1, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_13

    :cond_4c
    return-void

    .line 3905
    :cond_4d
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_71

    .line 3906
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 3907
    :goto_57
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 3908
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3909
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6c

    goto :goto_57

    .line 3912
    :cond_6c
    invoke-virtual {p0, v0, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_57

    :cond_70
    return-void

    .line 3917
    :cond_71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3919
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    if-eqz v1, :cond_ee

    .line 3922
    :try_start_7b
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v2
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7f} :catch_cc

    if-eqz v2, :cond_b5

    .line 3925
    :try_start_81
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValueDirect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3926
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_88
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_81 .. :try_end_88} :catch_9f
    .catch Ljava/lang/IllegalAccessException; {:try_start_81 .. :try_end_88} :catch_89
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_88} :catch_cc

    return-void

    :catch_89
    move-exception p1

    .line 3930
    :try_start_8a
    new-instance p3, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_9f
    move-exception p1

    .line 3928
    new-instance p3, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 3934
    :cond_b5
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3935
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_bd
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cb

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3936
    invoke-virtual {p0, v0, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_ca} :catch_cc

    goto :goto_bd

    :cond_cb
    return-void

    :catch_cc
    move-exception p1

    .line 3940
    new-instance p3, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jsonpath error, path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", segement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 3944
    :cond_ee
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_105

    .line 3945
    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    .line 3947
    :goto_f5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_105

    .line 3948
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 3949
    invoke-virtual {p0, v1, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f5

    :cond_105
    return-void
.end method

.method protected deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V
    .registers 14

    if-nez p1, :cond_3

    return-void

    .line 3960
    :cond_3
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_31

    .line 3961
    check-cast p1, Ljava/util/Map;

    .line 3963
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3964
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3965
    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 3969
    :cond_16
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 3970
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/JSONPath;->deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_1e

    :cond_30
    return-void

    .line 3975
    :cond_31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3977
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v1

    if-eqz v1, :cond_86

    .line 3980
    :try_start_3b
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 3982
    invoke-virtual {v1, p1, p5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 3986
    :cond_45
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v0

    .line 3987
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getObjectFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3988
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_51
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 3989
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/JSONPath;->deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_62} :catch_64

    goto :goto_51

    :cond_63
    return-void

    :catch_64
    move-exception p1

    .line 3993
    new-instance p3, Lcom/alibaba/fastjson/JSONPathException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "jsonpath error, path "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", segement "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 3997
    :cond_86
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_a1

    .line 3998
    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    .line 4000
    :goto_8d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a1

    .line 4001
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, p0

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    .line 4002
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson/JSONPath;->deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    :cond_a1
    return-void
.end method

.method public eval(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 108
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v0, 0x0

    move-object v1, p1

    .line 111
    :goto_9
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v3, v2

    if-ge v0, v3, :cond_17

    .line 112
    aget-object v2, v2, v0

    .line 113
    invoke-interface {v2, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_17
    return-object v1
.end method

.method evalKeySet(Ljava/lang/Object;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 4170
    :cond_4
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_f

    .line 4172
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 4175
    :cond_f
    instance-of v1, p1, Ljava/util/Collection;

    if-nez v1, :cond_4c

    instance-of v1, p1, [Ljava/lang/Object;

    if-nez v1, :cond_4c

    .line 4176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_4c

    .line 4180
    :cond_22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    if-nez v1, :cond_2d

    return-object v0

    .line 4186
    :cond_2d
    :try_start_2d
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldNames(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_31} :catch_32

    return-object p1

    :catch_32
    move-exception p1

    .line 4188
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evalKeySet error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4c
    :goto_4c
    return-object v0
.end method

.method evalSize(Ljava/lang/Object;)I
    .registers 5

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    .line 4128
    :cond_4
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_f

    .line 4129
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    return p1

    .line 4132
    :cond_f
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_19

    .line 4133
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    array-length p1, p1

    return p1

    .line 4136
    :cond_19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 4137
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 4140
    :cond_28
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_47

    const/4 v0, 0x0

    .line 4143
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_37
    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_37

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_46
    return v0

    .line 4151
    :cond_47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    if-nez v1, :cond_52

    return v0

    .line 4158
    :cond_52
    :try_start_52
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getSize(Ljava/lang/Object;)I

    move-result p1
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_56} :catch_57

    return p1

    :catch_57
    move-exception p1

    .line 4160
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evalSize error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_72

    :goto_71
    throw v0

    :goto_72
    goto :goto_71
.end method

.method public extract(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 123
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 125
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath;->hasRefSegment:Z

    if-eqz v1, :cond_14

    .line 126
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 130
    :cond_14
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v2, v1

    if-nez v2, :cond_1e

    .line 131
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 134
    :cond_1e
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    .line 135
    instance-of v2, v1, Lcom/alibaba/fastjson/JSONPath$TypeSegment;

    if-nez v2, :cond_ae

    instance-of v2, v1, Lcom/alibaba/fastjson/JSONPath$FloorSegment;

    if-nez v2, :cond_ae

    instance-of v1, v1, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;

    if-eqz v1, :cond_31

    goto/16 :goto_ae

    :cond_31
    const/4 v1, 0x0

    move-object v4, v0

    const/4 v2, 0x0

    .line 143
    :goto_34
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v6, v5

    if-ge v2, v6, :cond_ab

    .line 144
    aget-object v6, v5, v2

    .line 145
    array-length v5, v5

    sub-int/2addr v5, v3

    if-ne v2, v5, :cond_41

    const/4 v5, 0x1

    goto :goto_42

    :cond_41
    const/4 v5, 0x0

    :goto_42
    if-eqz v4, :cond_51

    .line 147
    iget-object v7, v4, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    if-eqz v7, :cond_51

    .line 148
    iget-object v5, v4, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    invoke-interface {v6, p0, v0, v5}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    goto :goto_a8

    :cond_51
    if-nez v5, :cond_9e

    .line 155
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    add-int/lit8 v7, v2, 0x1

    aget-object v5, v5, v7

    .line 156
    instance-of v7, v6, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v7, :cond_7f

    move-object v7, v6

    check-cast v7, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 157
    # getter for: Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z
    invoke-static {v7}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->access$100(Lcom/alibaba/fastjson/JSONPath$PropertySegment;)Z

    move-result v7

    if-eqz v7, :cond_7f

    instance-of v7, v5, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-nez v7, :cond_9e

    instance-of v7, v5, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;

    if-nez v7, :cond_9e

    instance-of v7, v5, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;

    if-nez v7, :cond_9e

    instance-of v7, v5, Lcom/alibaba/fastjson/JSONPath$SizeSegment;

    if-nez v7, :cond_9e

    instance-of v7, v5, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-nez v7, :cond_9e

    instance-of v7, v5, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    if-eqz v7, :cond_7f

    goto :goto_9e

    .line 166
    :cond_7f
    instance-of v7, v5, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz v7, :cond_8d

    move-object v7, v5

    check-cast v7, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    .line 167
    # getter for: Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->index:I
    invoke-static {v7}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->access$200(Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;)I

    move-result v7

    if-gez v7, :cond_8d

    goto :goto_9e

    .line 169
    :cond_8d
    instance-of v5, v5, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    if-eqz v5, :cond_92

    goto :goto_9e

    .line 171
    :cond_92
    instance-of v5, v6, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    if-eqz v5, :cond_97

    goto :goto_9e

    .line 173
    :cond_97
    instance-of v5, v6, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;

    if-eqz v5, :cond_9c

    goto :goto_9e

    :cond_9c
    const/4 v5, 0x0

    goto :goto_9f

    :cond_9e
    :goto_9e
    const/4 v5, 0x1

    .line 182
    :goto_9f
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$Context;

    invoke-direct {v7, v4, v5}, Lcom/alibaba/fastjson/JSONPath$Context;-><init>(Lcom/alibaba/fastjson/JSONPath$Context;Z)V

    .line 183
    invoke-interface {v6, p0, p1, v7}, Lcom/alibaba/fastjson/JSONPath$Segment;->extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V

    move-object v4, v7

    :goto_a8
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 186
    :cond_ab
    iget-object p1, v4, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    return-object p1

    .line 139
    :cond_ae
    :goto_ae
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p1

    .line 138
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getArrayItem(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 3453
    :cond_4
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_2d

    .line 3454
    check-cast p1, Ljava/util/List;

    if-ltz p2, :cond_18

    .line 3457
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_17

    .line 3458
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_17
    return-object v0

    .line 3462
    :cond_18
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_2c

    .line 3463
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2c
    return-object v0

    .line 3469
    :cond_2d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 3470
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ltz p2, :cond_45

    if-ge p2, v1, :cond_44

    .line 3474
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_44
    return-object v0

    .line 3478
    :cond_45
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v1, :cond_51

    add-int/2addr v1, p2

    .line 3479
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_51
    return-object v0

    .line 3485
    :cond_52
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_6b

    .line 3486
    check-cast p1, Ljava/util/Map;

    .line 3487
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6a

    .line 3489
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_6a
    return-object v0

    .line 3494
    :cond_6b
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_87

    .line 3495
    check-cast p1, Ljava/util/Collection;

    const/4 v1, 0x0

    .line 3497
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_76
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, p2, :cond_83

    return-object v2

    :cond_83
    add-int/lit8 v1, v1, 0x1

    goto :goto_76

    :cond_86
    return-object v0

    :cond_87
    if-nez p2, :cond_8a

    return-object p1

    .line 3510
    :cond_8a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto :goto_91

    :goto_90
    throw p1

    :goto_91
    goto :goto_90
.end method

.method protected getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;"
        }
    .end annotation

    .line 4114
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object p1

    .line 4115
    instance-of v0, p1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v0, :cond_d

    .line 4116
    check-cast p1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return-object p1
.end method

.method protected getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;"
        }
    .end annotation

    .line 4103
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object p1

    .line 4104
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v0, :cond_d

    .line 4105
    check-cast p1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return-object p1
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 818
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    return-object v0
.end method

.method protected getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 3723
    :cond_4
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3725
    :try_start_8
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_f

    :catch_f
    :cond_f
    move-object v2, p1

    .line 3732
    nop

    instance-of p1, v2, Ljava/util/Map;

    const-wide v3, -0x15eea8c0e50a614bL    # -8.49505883430448E202

    const-wide v5, 0x4dea9618e618ae3cL    # 2.239892812106928E67

    if-eqz p1, :cond_38

    .line 3733
    check-cast v2, Ljava/util/Map;

    .line 3734
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_37

    cmp-long p2, v5, p3

    if-eqz p2, :cond_2f

    cmp-long p2, v3, p3

    if-nez p2, :cond_37

    .line 3737
    :cond_2f
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_37
    return-object p1

    .line 3743
    :cond_38
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 3745
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    if-eqz v1, :cond_6c

    const/4 v6, 0x0

    move-object v3, p2

    move-wide v4, p3

    .line 3748
    :try_start_45
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;JZ)Ljava/lang/Object;

    move-result-object p1
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_49} :catch_4a

    return-object p1

    :catch_4a
    move-exception p1

    .line 3750
    new-instance p3, Lcom/alibaba/fastjson/JSONPathException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "jsonpath error, path "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", segement "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 3754
    :cond_6c
    instance-of p1, v2, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz p1, :cond_d3

    .line 3755
    check-cast v2, Ljava/util/List;

    cmp-long p1, v5, p3

    if-eqz p1, :cond_ca

    cmp-long p1, v3, p3

    if-nez p1, :cond_7c

    goto :goto_ca

    .line 3763
    :cond_7c
    :goto_7c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_c3

    .line 3764
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_97

    if-nez v0, :cond_93

    .line 3769
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 3771
    :cond_93
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c0

    .line 3775
    :cond_97
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object p1

    .line 3776
    instance-of v3, p1, Ljava/util/Collection;

    if-eqz v3, :cond_b0

    .line 3777
    check-cast p1, Ljava/util/Collection;

    if-nez v0, :cond_ac

    .line 3779
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 3781
    :cond_ac
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_c0

    :cond_b0
    if-eqz p1, :cond_c0

    if-nez v0, :cond_bd

    .line 3784
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 3786
    :cond_bd
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c0
    :goto_c0
    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    :cond_c3
    if-nez v0, :cond_c9

    .line 3791
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_c9
    return-object v0

    .line 3758
    :cond_ca
    :goto_ca
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 3797
    :cond_d3
    instance-of p1, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_112

    .line 3798
    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    cmp-long p1, v5, p3

    if-eqz p1, :cond_10c

    cmp-long p1, v3, p3

    if-nez p1, :cond_e4

    goto :goto_10c

    .line 3804
    :cond_e4
    new-instance p1, Lcom/alibaba/fastjson/JSONArray;

    array-length v0, v2

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 3806
    :goto_ea
    array-length v0, v2

    if-ge v1, v0, :cond_10b

    .line 3807
    aget-object v0, v2, v1

    if-ne v0, v2, :cond_f5

    .line 3811
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_108

    .line 3815
    :cond_f5
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 3816
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_103

    .line 3817
    check-cast v0, Ljava/util/Collection;

    .line 3818
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_108

    :cond_103
    if-eqz v0, :cond_108

    .line 3820
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_108
    :goto_108
    add-int/lit8 v1, v1, 0x1

    goto :goto_ea

    :cond_10b
    return-object p1

    .line 3801
    :cond_10c
    :goto_10c
    array-length p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 3827
    :cond_112
    instance-of p1, v2, Ljava/lang/Enum;

    if-eqz p1, :cond_139

    .line 3831
    move-object p1, v2

    check-cast p1, Ljava/lang/Enum;

    const-wide v3, -0x3b435245719ce47aL    # -1.3543099103600943E23

    cmp-long p2, v3, p3

    if-nez p2, :cond_127

    .line 3833
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_127
    const-wide v3, -0xe14383dfcdd03deL    # -5.788733405278088E240

    cmp-long p2, v3, p3

    if-nez p2, :cond_139

    .line 3837
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 3841
    :cond_139
    instance-of p1, v2, Ljava/util/Calendar;

    if-eqz p1, :cond_1b4

    .line 3849
    check-cast v2, Ljava/util/Calendar;

    const-wide p1, 0x7c64634977425edcL

    cmp-long v1, p1, p3

    if-nez v1, :cond_152

    const/4 p1, 0x1

    .line 3851
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_152
    const-wide p1, -0xb423c6c9050a95bL

    cmp-long v1, p1, p3

    if-nez v1, :cond_165

    const/4 p1, 0x2

    .line 3854
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_165
    const-wide p1, -0x3572c6e70ba870e3L    # -1.3667045267075351E51

    cmp-long v1, p1, p3

    if-nez v1, :cond_178

    const/4 p1, 0x5

    .line 3857
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_178
    const-wide p1, 0x407efecc7eb5764fL    # 495.924925526463

    cmp-long v1, p1, p3

    if-nez v1, :cond_18c

    const/16 p1, 0xb

    .line 3860
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_18c
    const-wide p1, 0x5bb2f9bdf2fad1e9L    # 5.387565597711505E133

    cmp-long v1, p1, p3

    if-nez v1, :cond_1a0

    const/16 p1, 0xc

    .line 3863
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1a0
    const-wide p1, -0x5b667a10b311df43L

    cmp-long v1, p1, p3

    if-nez v1, :cond_1b4

    const/16 p1, 0xd

    .line 3866
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1b4
    return-object v0
.end method

.method protected getPropertyValues(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 3576
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3578
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 3582
    :try_start_e
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_13

    return-object p1

    :catch_13
    move-exception p1

    .line 3584
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jsonpath error, path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 3588
    :cond_2d
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_38

    .line 3589
    check-cast p1, Ljava/util/Map;

    .line 3590
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 3593
    :cond_38
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_3f

    .line 3594
    check-cast p1, Ljava/util/Collection;

    return-object p1

    .line 3597
    :cond_3f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected init()V
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    if-eqz v0, :cond_5

    return-void

    .line 75
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/fastjson/JSONPath$Segment;

    const/4 v1, 0x0

    .line 76
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    goto :goto_2d

    .line 78
    :cond_1a
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->explain()[Lcom/alibaba/fastjson/JSONPath$Segment;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 80
    # getter for: Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->hasRefSegment:Z
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->access$000(Lcom/alibaba/fastjson/JSONPath$JSONPathParser;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath;->hasRefSegment:Z

    :goto_2d
    return-void
.end method

.method public isRef()Z
    .registers 5

    const/4 v0, 0x0

    .line 86
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v1, 0x0

    .line 87
    :goto_5
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v2, v2

    if-ge v1, v2, :cond_1f

    .line 88
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    aget-object v2, v2, v1

    .line 89
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 90
    const-class v3, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eq v2, v3, :cond_1c

    const-class v3, Lcom/alibaba/fastjson/JSONPath$PropertySegment;
    :try_end_18
    .catch Lcom/alibaba/fastjson/JSONPathException; {:try_start_1 .. :try_end_18} :catch_20

    if-ne v2, v3, :cond_1b

    goto :goto_1c

    :cond_1b
    return v0

    :cond_1c
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1f
    const/4 v0, 0x1

    :catch_20
    return v0
.end method

.method public keySet(Ljava/lang/Object;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "*>;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 276
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v0, 0x0

    move-object v1, p1

    .line 279
    :goto_9
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v3, v2

    if-ge v0, v3, :cond_17

    .line 280
    aget-object v2, v2, v0

    invoke-interface {v2, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 283
    :cond_17
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->evalKeySet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public patchAdd(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    .line 291
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v3, 0x0

    move-object v0, p1

    .line 295
    :goto_b
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v5, v4

    if-ge v3, v5, :cond_32

    .line 297
    aget-object v2, v4, v3

    .line 298
    invoke-interface {v2, p0, p1, v0}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2d

    .line 299
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_2d

    .line 300
    instance-of v5, v2, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v5, :cond_2d

    .line 301
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 302
    check-cast v2, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    invoke-virtual {v2, p0, v0, v4}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    move-object v2, v0

    move-object v0, v4

    goto :goto_b

    :cond_32
    if-nez p3, :cond_3e

    .line 309
    instance-of p1, v0, Ljava/util/Collection;

    if-eqz p1, :cond_3e

    .line 310
    check-cast v0, Ljava/util/Collection;

    .line 311
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3e
    if-eqz v0, :cond_82

    if-nez p3, :cond_82

    .line 318
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 320
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p3

    if-eqz p3, :cond_62

    .line 321
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p3

    .line 322
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    add-int/lit8 v3, p3, 0x1

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .line 324
    invoke-static {v0, v1, p1, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    invoke-static {p1, p3, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move-object p2, p1

    goto :goto_82

    .line 328
    :cond_62
    const-class p3, Ljava/util/Map;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_6b

    goto :goto_82

    .line 331
    :cond_6b
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsupported array put operation. "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 337
    :cond_82
    :goto_82
    iget-object p1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length p3, p1

    add-int/lit8 p3, p3, -0x1

    aget-object p1, p1, p3

    .line 338
    instance-of p3, p1, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz p3, :cond_93

    .line 339
    check-cast p1, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 340
    invoke-virtual {p1, p0, v2, p2}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 344
    :cond_93
    instance-of p3, p1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz p3, :cond_9d

    .line 345
    check-cast p1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    invoke-virtual {p1, p0, v2, p2}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    .line 349
    :cond_9d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto :goto_a4

    :goto_a3
    throw p1

    :goto_a4
    goto :goto_a3
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 424
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v1, 0x0

    .line 429
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    move-object v5, p1

    const/4 v3, 0x0

    .line 430
    :goto_11
    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v7, v6

    if-ge v3, v7, :cond_8f

    .line 431
    array-length v7, v6

    sub-int/2addr v7, v4

    if-ne v3, v7, :cond_1d

    move-object v1, v5

    goto/16 :goto_8f

    .line 435
    :cond_1d
    aget-object v7, v6, v3

    .line 436
    array-length v6, v6

    add-int/lit8 v6, v6, -0x2

    if-ne v3, v6, :cond_85

    instance-of v6, v2, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    if-eqz v6, :cond_85

    instance-of v6, v7, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v6, :cond_85

    .line 440
    move-object v6, v2

    check-cast v6, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    .line 442
    instance-of v8, v5, Ljava/util/List;

    if-eqz v8, :cond_65

    .line 443
    check-cast v7, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 444
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    .line 446
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3c
    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 447
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 448
    invoke-virtual {v7, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 449
    instance-of v2, v1, Ljava/lang/Iterable;

    if-eqz v2, :cond_52

    .line 450
    invoke-virtual {v6, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_3c

    .line 451
    :cond_52
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_3c

    .line 452
    # getter for: Lcom/alibaba/fastjson/JSONPath$FilterSegment;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;
    invoke-static {v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->access$300(Lcom/alibaba/fastjson/JSONPath$FilterSegment;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v2

    invoke-interface {v2, p0, p1, v5, v1}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 453
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_3c

    :cond_64
    return v4

    .line 458
    :cond_65
    instance-of v8, v5, Ljava/util/Map;

    if-eqz v8, :cond_85

    .line 459
    move-object v8, v7

    check-cast v8, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 460
    invoke-virtual {v8, p0, p1, v5}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_73

    return v0

    .line 464
    :cond_73
    instance-of v10, v9, Ljava/util/Map;

    if-eqz v10, :cond_85

    .line 465
    # getter for: Lcom/alibaba/fastjson/JSONPath$FilterSegment;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;
    invoke-static {v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->access$300(Lcom/alibaba/fastjson/JSONPath$FilterSegment;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v6

    invoke-interface {v6, p0, p1, v5, v9}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 466
    invoke-virtual {v8, p0, v5}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    return v4

    .line 472
    :cond_85
    invoke-interface {v7, p0, p1, v5}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_8c

    goto :goto_8f

    :cond_8c
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_8f
    :goto_8f
    if-nez v1, :cond_92

    return v0

    .line 483
    :cond_92
    instance-of v3, v2, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v3, :cond_cc

    .line 484
    check-cast v2, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 486
    instance-of p1, v1, Ljava/util/Collection;

    if-eqz p1, :cond_c7

    .line 487
    iget-object p1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v3, p1

    if-le v3, v4, :cond_c7

    .line 488
    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    aget-object p1, p1, v3

    .line 489
    instance-of v3, p1, Lcom/alibaba/fastjson/JSONPath$RangeSegment;

    if-nez v3, :cond_ae

    instance-of p1, p1, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;

    if-eqz p1, :cond_c7

    .line 490
    :cond_ae
    check-cast v1, Ljava/util/Collection;

    .line 492
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b4
    :goto_b4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 493
    invoke-virtual {v2, p0, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    const/4 v0, 0x1

    goto :goto_b4

    :cond_c6
    return v0

    .line 502
    :cond_c7
    invoke-virtual {v2, p0, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 505
    :cond_cc
    instance-of v0, v2, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz v0, :cond_d7

    .line 506
    check-cast v2, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    invoke-virtual {v2, p0, v1}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 509
    :cond_d7
    instance-of v0, v2, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    if-eqz v0, :cond_e2

    .line 510
    check-cast v2, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    .line 511
    invoke-virtual {v2, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 514
    :cond_e2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto :goto_e9

    :goto_e8
    throw p1

    :goto_e9
    goto :goto_e8
.end method

.method public removeArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;I)Z
    .registers 5

    .line 3547
    instance-of p1, p2, Ljava/util/List;

    if-eqz p1, :cond_21

    .line 3548
    check-cast p2, Ljava/util/List;

    const/4 p1, 0x0

    if-ltz p3, :cond_14

    .line 3550
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_10

    return p1

    .line 3553
    :cond_10
    invoke-interface {p2, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1f

    .line 3555
    :cond_14
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p3

    if-gez v0, :cond_1c

    return p1

    .line 3561
    :cond_1c
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_1f
    const/4 p1, 0x1

    return p1

    .line 3566
    :cond_21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 3567
    new-instance p2, Lcom/alibaba/fastjson/JSONPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsupported set operation."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected removePropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Z
    .registers 9

    .line 4051
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    .line 4052
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    if-eqz p3, :cond_28

    .line 4056
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4057
    invoke-virtual {p0, v0, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->removePropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Z

    goto :goto_1a

    :cond_28
    return v1

    .line 4064
    :cond_29
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 4067
    instance-of v3, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    const/4 v4, 0x0

    if-eqz v3, :cond_3b

    .line 4068
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    goto :goto_3c

    :cond_3b
    move-object v0, v4

    :goto_3c
    if-eqz v0, :cond_65

    .line 4072
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 4076
    invoke-virtual {v0, p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_49

    :cond_48
    const/4 v1, 0x0

    :goto_49
    if-eqz p3, :cond_64

    .line 4081
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValues(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    .line 4082
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_60

    goto :goto_53

    .line 4086
    :cond_60
    invoke-virtual {p0, v0, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->removePropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Z

    goto :goto_53

    :cond_64
    return v1

    :cond_65
    if-eqz p3, :cond_68

    return v2

    .line 4097
    :cond_68
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto :goto_6f

    :goto_6e
    throw p1

    :goto_6f
    goto :goto_6e
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x1

    .line 518
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .registers 12

    const/4 p3, 0x0

    if-nez p1, :cond_4

    return p3

    .line 526
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v0, 0x0

    move-object v2, p1

    move-object v3, v0

    const/4 v1, 0x0

    .line 530
    :goto_b
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v5, v4

    const/4 v6, 0x1

    if-ge v1, v5, :cond_86

    .line 537
    aget-object v3, v4, v1

    .line 538
    invoke-interface {v3, p0, p1, v2}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_81

    .line 541
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v5, v4

    sub-int/2addr v5, v6

    if-ge v1, v5, :cond_24

    add-int/lit8 v5, v1, 0x1

    .line 542
    aget-object v4, v4, v5

    goto :goto_25

    :cond_24
    move-object v4, v0

    .line 546
    :goto_25
    instance-of v5, v4, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v5, :cond_61

    .line 549
    instance-of v4, v3, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v4, :cond_4b

    .line 550
    move-object v4, v3

    check-cast v4, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    # getter for: Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyName:Ljava/lang/String;
    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->access$400(Lcom/alibaba/fastjson/JSONPath$PropertySegment;)Ljava/lang/String;

    move-result-object v4

    .line 551
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 552
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v5

    if-eqz v5, :cond_4b

    .line 554
    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v4

    .line 555
    iget-object v4, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 556
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v5

    goto :goto_4d

    :cond_4b
    move-object v4, v0

    move-object v5, v4

    :goto_4d
    if-eqz v5, :cond_5b

    .line 562
    iget-object v7, v5, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v7, :cond_5a

    .line 563
    invoke-virtual {v5, v0, v4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_6c

    :cond_5a
    return p3

    .line 568
    :cond_5b
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_6c

    .line 570
    :cond_61
    instance-of v4, v4, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz v4, :cond_6b

    .line 571
    new-instance v4, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    goto :goto_6c

    :cond_6b
    move-object v4, v0

    :goto_6c
    if-eqz v4, :cond_87

    .line 575
    instance-of v5, v3, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v5, :cond_78

    .line 576
    check-cast v3, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 577
    invoke-virtual {v3, p0, v2, v4}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_81

    .line 580
    :cond_78
    instance-of v5, v3, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz v5, :cond_87

    .line 581
    check-cast v3, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    .line 582
    invoke-virtual {v3, p0, v2, v4}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_81
    :goto_81
    add-int/lit8 v1, v1, 0x1

    move-object v3, v2

    move-object v2, v4

    goto :goto_b

    :cond_86
    move-object v2, v3

    :cond_87
    if-nez v2, :cond_8a

    return p3

    .line 596
    :cond_8a
    iget-object p1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length p3, p1

    sub-int/2addr p3, v6

    aget-object p1, p1, p3

    .line 597
    instance-of p3, p1, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz p3, :cond_9a

    .line 598
    check-cast p1, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 599
    invoke-virtual {p1, p0, v2, p2}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    return v6

    .line 603
    :cond_9a
    instance-of p3, p1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz p3, :cond_a5

    .line 604
    check-cast p1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    invoke-virtual {p1, p0, v2, p2}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 607
    :cond_a5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto :goto_ac

    :goto_ab
    throw p1

    :goto_ac
    goto :goto_ab
.end method

.method public setArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;ILjava/lang/Object;)Z
    .registers 7

    .line 3515
    instance-of p1, p2, Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p1, :cond_16

    .line 3516
    check-cast p2, Ljava/util/List;

    if-ltz p3, :cond_d

    .line 3518
    invoke-interface {p2, p3, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 3520
    :cond_d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, p3

    invoke-interface {p2, p1, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_15
    return v0

    .line 3525
    :cond_16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 3526
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 3527
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    if-ltz p3, :cond_2c

    if-ge p3, p1, :cond_36

    .line 3531
    invoke-static {p2, p3, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_36

    .line 3534
    :cond_2c
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, p1, :cond_36

    add-int/2addr p1, p3

    .line 3535
    invoke-static {p2, p1, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_36
    :goto_36
    return v0

    .line 3542
    :cond_37
    new-instance p2, Lcom/alibaba/fastjson/JSONPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unsupported set operation."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected setPropertyValue(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)Z
    .registers 14

    .line 4010
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 4011
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 4015
    :cond_b
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2b

    .line 4016
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_22

    goto :goto_15

    :cond_22
    move-object v2, p0

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    .line 4020
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson/JSONPath;->setPropertyValue(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)Z

    goto :goto_15

    :cond_2a
    return v1

    .line 4025
    :cond_2b
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object p2

    const/4 v0, 0x0

    .line 4028
    instance-of v2, p2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v2, :cond_3d

    .line 4029
    move-object v0, p2

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    :cond_3d
    if-eqz v0, :cond_61

    .line 4033
    invoke-virtual {v0, p3, p4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(J)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object p2

    if-nez p2, :cond_47

    const/4 p1, 0x0

    return p1

    :cond_47
    if-eqz p5, :cond_5d

    .line 4038
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    iget-object p4, p2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object p4, p4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-eq p3, p4, :cond_5d

    .line 4039
    iget-object p3, p2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object p3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    iget-object p4, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {p5, p3, p4}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p5

    .line 4042
    :cond_5d
    invoke-virtual {p2, p1, p5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    .line 4046
    :cond_61
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto :goto_68

    :goto_67
    throw p1

    :goto_68
    goto :goto_67
.end method

.method public size(Ljava/lang/Object;)I
    .registers 6

    if-nez p1, :cond_4

    const/4 p1, -0x1

    return p1

    .line 255
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v0, 0x0

    move-object v1, p1

    .line 258
    :goto_9
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v3, v2

    if-ge v0, v3, :cond_17

    .line 259
    aget-object v2, v2, v0

    invoke-interface {v2, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 262
    :cond_17
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->evalSize(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public toJSONString()Ljava/lang/String;
    .registers 2

    .line 4193
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
