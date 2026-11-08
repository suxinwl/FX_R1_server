.class Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;
.super Lcom/alibaba/fastjson/JSONPath$PropertyFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DoubleOpSegement"
.end annotation


# instance fields
.field private final op:Lcom/alibaba/fastjson/JSONPath$Operator;

.field private final value:D


# direct methods
.method public constructor <init>(Ljava/lang/String;ZDLcom/alibaba/fastjson/JSONPath$Operator;)V
    .registers 6

    .line 3068
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;-><init>(Ljava/lang/String;Z)V

    .line 3069
    iput-wide p3, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    .line 3070
    iput-object p5, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 8

    .line 3074
    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_8

    return p2

    .line 3080
    :cond_8
    instance-of p3, p1, Ljava/lang/Number;

    if-nez p3, :cond_d

    return p2

    .line 3084
    :cond_d
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p3

    .line 3086
    sget-object p1, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_52

    return p2

    .line 3098
    :pswitch_22
    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpg-double p1, p3, v1

    if-gez p1, :cond_29

    const/4 p2, 0x1

    :cond_29
    return p2

    .line 3096
    :pswitch_2a
    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpg-double p1, p3, v1

    if-gtz p1, :cond_31

    const/4 p2, 0x1

    :cond_31
    return p2

    .line 3094
    :pswitch_32
    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpl-double p1, p3, v1

    if-lez p1, :cond_39

    const/4 p2, 0x1

    :cond_39
    return p2

    .line 3092
    :pswitch_3a
    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpl-double p1, p3, v1

    if-ltz p1, :cond_41

    const/4 p2, 0x1

    :cond_41
    return p2

    .line 3090
    :pswitch_42
    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpl-double p1, p3, v1

    if-eqz p1, :cond_49

    const/4 p2, 0x1

    :cond_49
    return p2

    .line 3088
    :pswitch_4a
    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpl-double p1, p3, v1

    if-nez p1, :cond_51

    const/4 p2, 0x1

    :cond_51
    return p2

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_42
        :pswitch_3a
        :pswitch_32
        :pswitch_2a
        :pswitch_22
    .end packed-switch
.end method
