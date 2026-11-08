.class Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;
.super Lcom/alibaba/fastjson/JSONPath$PropertyFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntObjInSegement"
.end annotation


# instance fields
.field private final not:Z

.field private final values:[Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z[Ljava/lang/Long;Z)V
    .registers 5

    .line 2853
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;-><init>(Ljava/lang/String;Z)V

    .line 2854
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->values:[Ljava/lang/Long;

    .line 2855
    iput-boolean p4, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9

    .line 2859
    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_1b

    .line 2862
    iget-object p1, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->values:[Ljava/lang/Long;

    array-length p3, p1

    :goto_a
    if-ge p2, p3, :cond_18

    aget-object p4, p1, p2

    if-nez p4, :cond_15

    .line 2864
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_15
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    .line 2868
    :cond_18
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    return p1

    .line 2871
    :cond_1b
    instance-of p3, p1, Ljava/lang/Number;

    if-eqz p3, :cond_3f

    .line 2872
    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide p3

    .line 2873
    iget-object p1, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->values:[Ljava/lang/Long;

    array-length v0, p1

    :goto_28
    if-ge p2, v0, :cond_3f

    aget-object v1, p1, p2

    if-nez v1, :cond_2f

    goto :goto_3c

    .line 2878
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, p3

    if-nez v3, :cond_3c

    .line 2879
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_3c
    :goto_3c
    add-int/lit8 p2, p2, 0x1

    goto :goto_28

    .line 2884
    :cond_3f
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    return p1
.end method
