.class Lcom/alibaba/fastjson/JSONPath$WildCardSegment;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WildCardSegment"
.end annotation


# static fields
.field public static final instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

.field public static final instance_deep:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;


# instance fields
.field private deep:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 2598
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;-><init>(Z)V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    .line 2599
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;-><init>(Z)V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->instance_deep:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    .line 2594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2595
    iput-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->deep:Z

    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2602
    iget-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->deep:Z

    if-nez p2, :cond_9

    .line 2603
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValues(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 2606
    :cond_9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2607
    invoke-virtual {p1, p3, p2}, Lcom/alibaba/fastjson/JSONPath;->deepGetPropertyValues(Ljava/lang/Object;Ljava/util/List;)V

    return-object p2
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .registers 5

    .line 2612
    iget-boolean v0, p3, Lcom/alibaba/fastjson/JSONPath$Context;->eval:Z

    if-eqz v0, :cond_37

    .line 2613
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p2

    .line 2614
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->deep:Z

    if-eqz v0, :cond_17

    .line 2615
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2616
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson/JSONPath;->deepGetPropertyValues(Ljava/lang/Object;Ljava/util/List;)V

    .line 2617
    iput-object v0, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    return-void

    .line 2621
    :cond_17
    instance-of p1, p2, Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_30

    .line 2622
    check-cast p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->values()Ljava/util/Collection;

    move-result-object p1

    .line 2623
    new-instance p2, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p2, v0}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 2624
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 2625
    iput-object p2, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    return-void

    .line 2627
    :cond_30
    instance-of p1, p2, Lcom/alibaba/fastjson/JSONArray;

    if-eqz p1, :cond_37

    .line 2628
    iput-object p2, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    return-void

    .line 2633
    :cond_37
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "TODO"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
