.class Lcom/alibaba/fastjson/JSONPath$RangeSegment;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RangeSegment"
.end annotation


# instance fields
.field private final end:I

.field private final start:I

.field private final step:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 2713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2714
    iput p1, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;->start:I

    .line 2715
    iput p2, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;->end:I

    .line 2716
    iput p3, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;->step:I

    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 2720
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$SizeSegment;->instance:Lcom/alibaba/fastjson/JSONPath$SizeSegment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson/JSONPath$SizeSegment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2721
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;->start:I

    if-ltz v0, :cond_f

    goto :goto_10

    :cond_f
    add-int/2addr v0, p2

    .line 2722
    :goto_10
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;->end:I

    if-ltz v1, :cond_15

    goto :goto_16

    :cond_15
    add-int/2addr v1, p2

    :goto_16
    sub-int v2, v1, v0

    .line 2724
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;->step:I

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_22

    const/4 p1, 0x0

    return-object p1

    .line 2729
    :cond_22
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_27
    if-gt v0, v1, :cond_36

    if-ge v0, p2, :cond_36

    .line 2731
    invoke-virtual {p1, p3, v0}, Lcom/alibaba/fastjson/JSONPath;->getArrayItem(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 2732
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2730
    iget v2, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;->step:I

    add-int/2addr v0, v2

    goto :goto_27

    :cond_36
    return-object v3
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .registers 4

    .line 2738
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
