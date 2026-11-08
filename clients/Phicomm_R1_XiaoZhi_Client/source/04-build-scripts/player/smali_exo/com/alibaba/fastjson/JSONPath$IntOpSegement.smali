.class Lcom/alibaba/fastjson/JSONPath$IntOpSegement;
.super Lcom/alibaba/fastjson/JSONPath$PropertyFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntOpSegement"
.end annotation


# instance fields
.field private final op:Lcom/alibaba/fastjson/JSONPath$Operator;

.field private final value:J

.field private valueDecimal:Ljava/math/BigDecimal;

.field private valueDouble:Ljava/lang/Double;

.field private valueFloat:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZJLcom/alibaba/fastjson/JSONPath$Operator;)V
    .registers 6

    .line 2922
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;-><init>(Ljava/lang/String;Z)V

    .line 2923
    iput-wide p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    .line 2924
    iput-object p5, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9

    .line 2928
    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_8

    return p2

    .line 2934
    :cond_8
    instance-of p3, p1, Ljava/lang/Number;

    if-nez p3, :cond_d

    return p2

    .line 2938
    :cond_d
    instance-of p3, p1, Ljava/math/BigDecimal;

    const/4 p4, 0x1

    if-eqz p3, :cond_4c

    .line 2939
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueDecimal:Ljava/math/BigDecimal;

    if-nez p3, :cond_1e

    .line 2940
    iget-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueDecimal:Ljava/math/BigDecimal;

    .line 2943
    :cond_1e
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueDecimal:Ljava/math/BigDecimal;

    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p3, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    .line 2944
    sget-object p3, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result v0

    aget p3, p3, v0

    packed-switch p3, :pswitch_data_10e

    return p2

    :pswitch_34
    if-lez p1, :cond_37

    const/4 p2, 0x1

    :cond_37
    return p2

    :pswitch_38
    if-ltz p1, :cond_3b

    const/4 p2, 0x1

    :cond_3b
    return p2

    :pswitch_3c
    if-gez p1, :cond_3f

    const/4 p2, 0x1

    :cond_3f
    return p2

    :pswitch_40
    if-gtz p1, :cond_43

    const/4 p2, 0x1

    :cond_43
    return p2

    :pswitch_44
    if-eqz p1, :cond_47

    const/4 p2, 0x1

    :cond_47
    return p2

    :pswitch_48
    if-nez p1, :cond_4b

    const/4 p2, 0x1

    :cond_4b
    return p2

    .line 2962
    :cond_4c
    instance-of p3, p1, Ljava/lang/Float;

    if-eqz p3, :cond_8b

    .line 2963
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueFloat:Ljava/lang/Float;

    if-nez p3, :cond_5d

    .line 2964
    iget-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    long-to-float p3, v0

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueFloat:Ljava/lang/Float;

    .line 2967
    :cond_5d
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueFloat:Ljava/lang/Float;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p3, p1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result p1

    .line 2968
    sget-object p3, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result v0

    aget p3, p3, v0

    packed-switch p3, :pswitch_data_11e

    return p2

    :pswitch_73
    if-lez p1, :cond_76

    const/4 p2, 0x1

    :cond_76
    return p2

    :pswitch_77
    if-ltz p1, :cond_7a

    const/4 p2, 0x1

    :cond_7a
    return p2

    :pswitch_7b
    if-gez p1, :cond_7e

    const/4 p2, 0x1

    :cond_7e
    return p2

    :pswitch_7f
    if-gtz p1, :cond_82

    const/4 p2, 0x1

    :cond_82
    return p2

    :pswitch_83
    if-eqz p1, :cond_86

    const/4 p2, 0x1

    :cond_86
    return p2

    :pswitch_87
    if-nez p1, :cond_8a

    const/4 p2, 0x1

    :cond_8a
    return p2

    .line 2986
    :cond_8b
    instance-of p3, p1, Ljava/lang/Double;

    if-eqz p3, :cond_ca

    .line 2987
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueDouble:Ljava/lang/Double;

    if-nez p3, :cond_9c

    .line 2988
    iget-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueDouble:Ljava/lang/Double;

    .line 2991
    :cond_9c
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueDouble:Ljava/lang/Double;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p3, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p1

    .line 2992
    sget-object p3, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result v0

    aget p3, p3, v0

    packed-switch p3, :pswitch_data_12e

    return p2

    :pswitch_b2
    if-lez p1, :cond_b5

    const/4 p2, 0x1

    :cond_b5
    return p2

    :pswitch_b6
    if-ltz p1, :cond_b9

    const/4 p2, 0x1

    :cond_b9
    return p2

    :pswitch_ba
    if-gez p1, :cond_bd

    const/4 p2, 0x1

    :cond_bd
    return p2

    :pswitch_be
    if-gtz p1, :cond_c1

    const/4 p2, 0x1

    :cond_c1
    return p2

    :pswitch_c2
    if-eqz p1, :cond_c5

    const/4 p2, 0x1

    :cond_c5
    return p2

    :pswitch_c6
    if-nez p1, :cond_c9

    const/4 p2, 0x1

    :cond_c9
    return p2

    .line 3010
    :cond_ca
    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v0

    .line 3012
    sget-object p1, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result p3

    aget p1, p1, p3

    packed-switch p1, :pswitch_data_13e

    return p2

    .line 3024
    :pswitch_de
    iget-wide v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_e5

    const/4 p2, 0x1

    :cond_e5
    return p2

    .line 3022
    :pswitch_e6
    iget-wide v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_ed

    const/4 p2, 0x1

    :cond_ed
    return p2

    .line 3020
    :pswitch_ee
    iget-wide v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_f5

    const/4 p2, 0x1

    :cond_f5
    return p2

    .line 3018
    :pswitch_f6
    iget-wide v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_fd

    const/4 p2, 0x1

    :cond_fd
    return p2

    .line 3016
    :pswitch_fe
    iget-wide v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_105

    const/4 p2, 0x1

    :cond_105
    return p2

    .line 3014
    :pswitch_106
    iget-wide v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_10d

    const/4 p2, 0x1

    :cond_10d
    return p2

    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_87
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
        :pswitch_77
        :pswitch_73
    .end packed-switch

    :pswitch_data_12e
    .packed-switch 0x1
        :pswitch_c6
        :pswitch_c2
        :pswitch_be
        :pswitch_ba
        :pswitch_b6
        :pswitch_b2
    .end packed-switch

    :pswitch_data_13e
    .packed-switch 0x1
        :pswitch_106
        :pswitch_fe
        :pswitch_f6
        :pswitch_ee
        :pswitch_e6
        :pswitch_de
    .end packed-switch
.end method
