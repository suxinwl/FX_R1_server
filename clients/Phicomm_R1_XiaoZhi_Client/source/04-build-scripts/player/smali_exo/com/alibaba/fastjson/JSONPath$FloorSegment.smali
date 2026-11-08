.class Lcom/alibaba/fastjson/JSONPath$FloorSegment;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FloorSegment"
.end annotation


# static fields
.field public static final instance:Lcom/alibaba/fastjson/JSONPath$FloorSegment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2066
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$FloorSegment;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONPath$FloorSegment;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$FloorSegment;->instance:Lcom/alibaba/fastjson/JSONPath$FloorSegment;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 2065
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static floor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 2088
    :cond_4
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_18

    .line 2089
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 2092
    :cond_18
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_2b

    .line 2093
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 2096
    :cond_2b
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_39

    .line 2097
    check-cast p0, Ljava/math/BigDecimal;

    const/4 v0, 0x0

    .line 2098
    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {p0, v0, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 2101
    :cond_39
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_54

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_54

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_54

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_54

    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_4e

    goto :goto_54

    .line 2109
    :cond_4e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_54
    :goto_54
    return-object p0
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 2068
    instance-of p1, p3, Lcom/alibaba/fastjson/JSONArray;

    if-eqz p1, :cond_24

    .line 2069
    check-cast p3, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONArray;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    const/4 p2, 0x0

    .line 2070
    :goto_d
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_23

    .line 2071
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 2072
    invoke-static {p3}, Lcom/alibaba/fastjson/JSONPath$FloorSegment;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p3, :cond_20

    .line 2074
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_20
    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    :cond_23
    return-object p1

    .line 2080
    :cond_24
    invoke-static {p3}, Lcom/alibaba/fastjson/JSONPath$FloorSegment;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .registers 4

    .line 2113
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
