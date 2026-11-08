.class Lcom/alibaba/fastjson/JSONPath$MaxSegment;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MaxSegment"
.end annotation


# static fields
.field public static final instance:Lcom/alibaba/fastjson/JSONPath$MaxSegment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2119
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$MaxSegment;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONPath$MaxSegment;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$MaxSegment;->instance:Lcom/alibaba/fastjson/JSONPath$MaxSegment;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 2117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 2123
    instance-of p1, p3, Ljava/util/Collection;

    if-eqz p1, :cond_24

    .line 2124
    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    .line 2125
    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_23

    .line 2126
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_18

    goto :goto_b

    :cond_18
    if-nez p2, :cond_1b

    goto :goto_21

    .line 2133
    :cond_1b
    invoke-static {p2, p3}, Lcom/alibaba/fastjson/JSONPath;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_b

    :goto_21
    move-object p2, p3

    goto :goto_b

    :cond_23
    return-object p2

    .line 2138
    :cond_24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto :goto_2b

    :goto_2a
    throw p1

    :goto_2b
    goto :goto_2a
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .registers 4

    .line 2145
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
