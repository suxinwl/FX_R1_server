.class Lcom/alibaba/fastjson/JSONPath$StringOpSegement;
.super Lcom/alibaba/fastjson/JSONPath$PropertyFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringOpSegement"
.end annotation


# instance fields
.field private final op:Lcom/alibaba/fastjson/JSONPath$Operator;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V
    .registers 5

    .line 3289
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;-><init>(Ljava/lang/String;Z)V

    .line 3290
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->value:Ljava/lang/String;

    .line 3291
    iput-object p4, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    .line 3295
    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3297
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object p3, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne p2, p3, :cond_11

    .line 3298
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->value:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3299
    :cond_11
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object p3, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    const/4 p4, 0x1

    if-ne p2, p3, :cond_20

    .line 3300
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->value:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, p4

    return p1

    :cond_20
    const/4 p2, 0x0

    if-nez p1, :cond_24

    return p2

    .line 3307
    :cond_24
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->value:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    .line 3308
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->GE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne p3, v0, :cond_39

    if-gtz p1, :cond_37

    goto :goto_38

    :cond_37
    const/4 p4, 0x0

    :goto_38
    return p4

    .line 3310
    :cond_39
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->GT:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne p3, v0, :cond_44

    if-gez p1, :cond_42

    goto :goto_43

    :cond_42
    const/4 p4, 0x0

    :goto_43
    return p4

    .line 3312
    :cond_44
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne p3, v0, :cond_4f

    if-ltz p1, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 p4, 0x0

    :goto_4e
    return p4

    .line 3314
    :cond_4f
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LT:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne p3, v0, :cond_5a

    if-lez p1, :cond_58

    goto :goto_59

    :cond_58
    const/4 p4, 0x0

    :goto_59
    return p4

    :cond_5a
    return p2
.end method
