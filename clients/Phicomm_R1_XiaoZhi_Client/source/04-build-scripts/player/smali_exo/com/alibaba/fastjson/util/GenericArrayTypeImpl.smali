.class public Lcom/alibaba/fastjson/util/GenericArrayTypeImpl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/GenericArrayType;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final genericComponentType:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/alibaba/fastjson/util/GenericArrayTypeImpl;->genericComponentType:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 34
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_11

    .line 35
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .line 36
    iget-object v0, p0, Lcom/alibaba/fastjson/util/GenericArrayTypeImpl;->genericComponentType:Ljava/lang/reflect/Type;

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public getGenericComponentType()Ljava/lang/reflect/Type;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/alibaba/fastjson/util/GenericArrayTypeImpl;->genericComponentType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/alibaba/fastjson/util/GenericArrayTypeImpl;->genericComponentType:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 21
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/GenericArrayTypeImpl;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_17

    .line 24
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 26
    :cond_17
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1e
    const-string v0, "[]"

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
