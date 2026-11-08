.class public Lcom/alibaba/fastjson/JSONPath$FilterSegment;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterSegment"
.end annotation


# instance fields
.field private final filter:Lcom/alibaba/fastjson/JSONPath$Filter;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V
    .registers 2

    .line 3354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3355
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/fastjson/JSONPath$FilterSegment;)Lcom/alibaba/fastjson/JSONPath$Filter;
    .registers 1

    .line 3349
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    return-object p0
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return-object v0

    .line 3364
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 3366
    instance-of v2, p3, Ljava/lang/Iterable;

    if-eqz v2, :cond_2b

    .line 3367
    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3368
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 3369
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3371
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    invoke-interface {v3, p1, p2, p3, v2}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 3372
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_2a
    return-object v1

    .line 3379
    :cond_2b
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    invoke-interface {v1, p1, p2, p3, p3}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    return-object p3

    :cond_34
    return-object v0
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .registers 4

    .line 3387
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p2

    .line 3388
    invoke-virtual {p0, p1, p2, p2}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    return-void
.end method

.method public remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return v0

    .line 3396
    :cond_4
    instance-of v1, p3, Ljava/lang/Iterable;

    if-eqz v1, :cond_27

    .line 3397
    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3398
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 3399
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3401
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    invoke-interface {v2, p1, p2, p3, v1}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3402
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    :cond_25
    const/4 p1, 0x1

    return p1

    :cond_27
    return v0
.end method
