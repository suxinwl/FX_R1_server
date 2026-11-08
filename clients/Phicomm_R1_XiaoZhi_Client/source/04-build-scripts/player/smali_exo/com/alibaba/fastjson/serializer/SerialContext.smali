.class public Lcom/alibaba/fastjson/serializer/SerialContext;
.super Ljava/lang/Object;


# instance fields
.field public final features:I

.field public final fieldName:Ljava/lang/Object;

.field public final object:Ljava/lang/Object;

.field public final parent:Lcom/alibaba/fastjson/serializer/SerialContext;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V
    .registers 6

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->parent:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 12
    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->object:Ljava/lang/Object;

    .line 13
    iput-object p3, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->fieldName:Ljava/lang/Object;

    .line 14
    iput p4, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->features:I

    return-void
.end method


# virtual methods
.method public getFieldName()Ljava/lang/Object;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->fieldName:Ljava/lang/Object;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getParent()Lcom/alibaba/fastjson/serializer/SerialContext;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->parent:Lcom/alibaba/fastjson/serializer/SerialContext;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 104
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerialContext;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->parent:Lcom/alibaba/fastjson/serializer/SerialContext;

    if-nez v0, :cond_7

    const-string v0, "$"

    return-object v0

    .line 21
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerialContext;->toString(Ljava/lang/StringBuilder;)V

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .registers 14

    .line 28
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->parent:Lcom/alibaba/fastjson/serializer/SerialContext;

    if-nez v0, :cond_b

    const/16 v0, 0x24

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_b6

    .line 31
    :cond_b
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/SerialContext;->toString(Ljava/lang/StringBuilder;)V

    .line 32
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->fieldName:Ljava/lang/Object;

    if-nez v0, :cond_19

    const-string v0, ".null"

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b6

    .line 34
    :cond_19
    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_34

    const/16 v0, 0x5b

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->fieldName:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_b6

    :cond_34
    const/16 v0, 0x2e

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->fieldName:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 43
    :goto_41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x7a

    const/16 v5, 0x80

    const/16 v6, 0x5a

    const/16 v7, 0x61

    const/16 v8, 0x39

    const/16 v9, 0x41

    const/16 v10, 0x30

    if-ge v2, v3, :cond_6c

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v10, :cond_5d

    if-le v3, v8, :cond_67

    :cond_5d
    if-lt v3, v9, :cond_61

    if-le v3, v6, :cond_67

    :cond_61
    if-lt v3, v7, :cond_65

    if-le v3, v4, :cond_67

    :cond_65
    if-le v3, v5, :cond_6a

    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_6a
    const/4 v2, 0x1

    goto :goto_6d

    :cond_6c
    const/4 v2, 0x0

    :goto_6d
    if-eqz v2, :cond_b3

    .line 53
    :goto_6f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_b6

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_87

    .line 56
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ad

    :cond_87
    if-lt v2, v10, :cond_8b

    if-le v2, v8, :cond_95

    :cond_8b
    if-lt v2, v9, :cond_8f

    if-le v2, v6, :cond_95

    :cond_8f
    if-lt v2, v7, :cond_93

    if-le v2, v4, :cond_95

    :cond_93
    if-le v2, v5, :cond_99

    .line 60
    :cond_95
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b0

    :cond_99
    const/16 v11, 0x22

    if-ne v2, v11, :cond_a7

    .line 63
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ad

    .line 67
    :cond_a7
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    :goto_ad
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_b0
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 73
    :cond_b3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b6
    :goto_b6
    return-void
.end method
