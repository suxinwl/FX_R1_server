.class Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiIndexSegment"
.end annotation


# instance fields
.field private final indexes:[I


# direct methods
.method public constructor <init>([I)V
    .registers 2

    .line 2671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2672
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;->indexes:[I

    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 2676
    new-instance p2, Lcom/alibaba/fastjson/JSONArray;

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;->indexes:[I

    array-length v0, v0

    invoke-direct {p2, v0}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    const/4 v0, 0x0

    .line 2677
    :goto_9
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;->indexes:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1a

    .line 2678
    aget v1, v1, v0

    invoke-virtual {p1, p3, v1}, Lcom/alibaba/fastjson/JSONPath;->getArrayItem(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 2679
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1a
    return-object p2
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .registers 7

    .line 2685
    iget-boolean p1, p3, Lcom/alibaba/fastjson/JSONPath$Context;->eval:Z

    if-eqz p1, :cond_35

    .line 2686
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p1

    .line 2687
    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_35

    .line 2688
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;->indexes:[I

    array-length v0, p2

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 2689
    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2690
    aget p2, v1, v2

    const/4 v0, 0x1

    if-ltz p2, :cond_1b

    const/4 v2, 0x1

    .line 2692
    :cond_1b
    check-cast p1, Ljava/util/List;

    if-eqz v2, :cond_35

    .line 2694
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v0

    :goto_24
    if-ltz p2, :cond_32

    .line 2695
    invoke-static {v1, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_2f

    .line 2696
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2f
    add-int/lit8 p2, p2, -0x1

    goto :goto_24

    .line 2699
    :cond_32
    iput-object p1, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    return-void

    .line 2704
    :cond_35
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto :goto_3c

    :goto_3b
    throw p1

    :goto_3c
    goto :goto_3b
.end method
