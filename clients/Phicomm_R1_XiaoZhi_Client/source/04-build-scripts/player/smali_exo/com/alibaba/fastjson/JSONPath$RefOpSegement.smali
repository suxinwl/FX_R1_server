.class Lcom/alibaba/fastjson/JSONPath$RefOpSegement;
.super Lcom/alibaba/fastjson/JSONPath$PropertyFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RefOpSegement"
.end annotation


# instance fields
.field private final op:Lcom/alibaba/fastjson/JSONPath$Operator;

.field private final refSgement:Lcom/alibaba/fastjson/JSONPath$Segment;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/alibaba/fastjson/JSONPath$Segment;Lcom/alibaba/fastjson/JSONPath$Operator;)V
    .registers 5

    .line 3110
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;-><init>(Ljava/lang/String;Z)V

    .line 3111
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->refSgement:Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 3112
    iput-object p4, p0, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9

    .line 3116
    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const/4 p4, 0x0

    if-nez p3, :cond_8

    return p4

    .line 3122
    :cond_8
    instance-of v0, p3, Ljava/lang/Number;

    if-nez v0, :cond_d

    return p4

    .line 3126
    :cond_d
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->refSgement:Lcom/alibaba/fastjson/JSONPath$Segment;

    invoke-interface {v0, p1, p2, p2}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3128
    instance-of p2, p1, Ljava/lang/Integer;

    if-nez p2, :cond_23

    instance-of p2, p1, Ljava/lang/Long;

    if-nez p2, :cond_23

    instance-of p2, p1, Ljava/lang/Short;

    if-nez p2, :cond_23

    instance-of p2, p1, Ljava/lang/Byte;

    if-eqz p2, :cond_a7

    .line 3129
    :cond_23
    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide p1

    .line 3131
    instance-of v0, p3, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_6f

    instance-of v0, p3, Ljava/lang/Long;

    if-nez v0, :cond_6f

    instance-of v0, p3, Ljava/lang/Short;

    if-nez v0, :cond_6f

    instance-of v0, p3, Ljava/lang/Byte;

    if-eqz v0, :cond_3b

    goto :goto_6f

    .line 3148
    :cond_3b
    instance-of v0, p3, Ljava/math/BigDecimal;

    if-eqz v0, :cond_a7

    .line 3149
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    .line 3151
    check-cast p3, Ljava/math/BigDecimal;

    invoke-virtual {p1, p3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    .line 3152
    sget-object p2, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result p3

    aget p2, p2, p3

    packed-switch p2, :pswitch_data_ae

    return p4

    :pswitch_57
    if-lez p1, :cond_5a

    const/4 p4, 0x1

    :cond_5a
    return p4

    :pswitch_5b
    if-ltz p1, :cond_5e

    const/4 p4, 0x1

    :cond_5e
    return p4

    :pswitch_5f
    if-gez p1, :cond_62

    const/4 p4, 0x1

    :cond_62
    return p4

    :pswitch_63
    if-gtz p1, :cond_66

    const/4 p4, 0x1

    :cond_66
    return p4

    :pswitch_67
    if-eqz p1, :cond_6a

    const/4 p4, 0x1

    :cond_6a
    return p4

    :pswitch_6b
    if-nez p1, :cond_6e

    const/4 p4, 0x1

    :cond_6e
    return p4

    .line 3132
    :cond_6f
    :goto_6f
    check-cast p3, Ljava/lang/Number;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v2

    .line 3134
    sget-object p3, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result v0

    aget p3, p3, v0

    packed-switch p3, :pswitch_data_be

    goto :goto_a7

    :pswitch_83
    cmp-long p3, v2, p1

    if-gez p3, :cond_88

    const/4 p4, 0x1

    :cond_88
    return p4

    :pswitch_89
    cmp-long p3, v2, p1

    if-gtz p3, :cond_8e

    const/4 p4, 0x1

    :cond_8e
    return p4

    :pswitch_8f
    cmp-long p3, v2, p1

    if-lez p3, :cond_94

    const/4 p4, 0x1

    :cond_94
    return p4

    :pswitch_95
    cmp-long p3, v2, p1

    if-ltz p3, :cond_9a

    const/4 p4, 0x1

    :cond_9a
    return p4

    :pswitch_9b
    cmp-long p3, v2, p1

    if-eqz p3, :cond_a0

    const/4 p4, 0x1

    :cond_a0
    return p4

    :pswitch_a1
    cmp-long p3, v2, p1

    if-nez p3, :cond_a6

    const/4 p4, 0x1

    :cond_a6
    return p4

    .line 3171
    :cond_a7
    :goto_a7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_67
        :pswitch_63
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
    .end packed-switch

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_9b
        :pswitch_95
        :pswitch_8f
        :pswitch_89
        :pswitch_83
    .end packed-switch
.end method
