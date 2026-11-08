.class final Lcom/google/common/collect/Count;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private value:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/google/common/collect/Count;->value:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .registers 3

    .line 39
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/Count;->value:I

    return-void
.end method

.method public addAndGet(I)I
    .registers 3

    .line 43
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    instance-of v0, p1, Lcom/google/common/collect/Count;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/google/common/collect/Count;

    iget p1, p1, Lcom/google/common/collect/Count;->value:I

    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    if-ne p1, v0, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public get()I
    .registers 2

    .line 35
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public getAndSet(I)I
    .registers 3

    .line 51
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    .line 52
    iput p1, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public set(I)V
    .registers 2

    .line 47
    iput p1, p0, Lcom/google/common/collect/Count;->value:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 68
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
