.class public Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# instance fields
.field private final actualTypeArguments:[Ljava/lang/reflect/Type;

.field private final ownerType:Ljava/lang/reflect/Type;

.field private final rawType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .registers 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    .line 15
    iput-object p2, p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    .line 16
    iput-object p3, p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_41

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_41

    .line 37
    :cond_12
    check-cast p1, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    .line 40
    iget-object v2, p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    iget-object v3, p1, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    return v1

    .line 41
    :cond_1f
    iget-object v2, p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    if-eqz v2, :cond_2c

    iget-object v3, p1, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_30

    :cond_2c
    iget-object v2, p1, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    if-eqz v2, :cond_31

    :goto_30
    return v1

    .line 42
    :cond_31
    iget-object v2, p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    if-eqz v2, :cond_3c

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_40

    :cond_3c
    if-nez p1, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v0, 0x0

    :goto_40
    return v0

    :cond_41
    :goto_41
    return v1
.end method

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 48
    iget-object v0, p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    .line 49
    iget-object v2, p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 50
    iget-object v2, p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_22
    add-int/2addr v0, v1

    return v0
.end method
