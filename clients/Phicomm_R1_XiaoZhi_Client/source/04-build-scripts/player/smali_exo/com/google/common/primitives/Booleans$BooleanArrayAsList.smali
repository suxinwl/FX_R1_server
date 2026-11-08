.class Lcom/google/common/primitives/Booleans$BooleanArrayAsList;
.super Ljava/util/AbstractList;

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Booleans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BooleanArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[Z

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([Z)V
    .registers 4

    .line 335
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;-><init>([ZII)V

    return-void
.end method

.method constructor <init>([ZII)V
    .registers 4

    .line 338
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 339
    iput-object p1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    .line 340
    iput p2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    .line 341
    iput p3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 5

    .line 363
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    # invokes: Lcom/google/common/primitives/Booleans;->indexOf([ZZII)I
    invoke-static {v0, p1, v1, v2}, Lcom/google/common/primitives/Booleans;->access$000([ZZII)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 415
    :cond_4
    instance-of v1, p1, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    if-eqz v1, :cond_2e

    .line 416
    check-cast p1, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    .line 417
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v1

    .line 418
    invoke-virtual {p1}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_16

    return v3

    :cond_16
    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_2d

    .line 422
    iget-object v4, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v5, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr v5, v2

    aget-boolean v4, v4, v5

    iget-object v5, p1, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v6, p1, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr v6, v2

    aget-boolean v5, v5, v6

    if-eq v4, v5, :cond_2a

    return v3

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2d
    return v0

    .line 428
    :cond_2e
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Boolean;
    .registers 4

    .line 356
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 357
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-boolean p1, v0, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 327
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->get(I)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 4

    .line 434
    iget v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    const/4 v1, 0x1

    :goto_3
    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    if-ge v0, v2, :cond_15

    mul-int/lit8 v1, v1, 0x1f

    .line 435
    iget-object v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    aget-boolean v2, v2, v0

    invoke-static {v2}, Lcom/google/common/primitives/Booleans;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_15
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 5

    .line 370
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1a

    .line 371
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    # invokes: Lcom/google/common/primitives/Booleans;->indexOf([ZZII)I
    invoke-static {v0, p1, v1, v2}, Lcom/google/common/primitives/Booleans;->access$000([ZZII)I

    move-result p1

    if-ltz p1, :cond_1a

    .line 373
    iget v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    sub-int/2addr p1, v0

    return p1

    :cond_1a
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 5

    .line 382
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1a

    .line 383
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    # invokes: Lcom/google/common/primitives/Booleans;->lastIndexOf([ZZII)I
    invoke-static {v0, p1, v1, v2}, Lcom/google/common/primitives/Booleans;->access$100([ZZII)I

    move-result p1

    if-ltz p1, :cond_1a

    .line 385
    iget v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    sub-int/2addr p1, v0

    return p1

    :cond_1a
    const/4 p1, -0x1

    return p1
.end method

.method public set(ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 6

    .line 393
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 394
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int v2, v1, p1

    aget-boolean v2, v0, v2

    add-int/2addr v1, p1

    .line 396
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    aput-boolean p1, v0, v1

    .line 397
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 327
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->set(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 3

    .line 346
    iget v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 402
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v0

    .line 403
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    if-ne p1, p2, :cond_e

    .line 405
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 407
    :cond_e
    new-instance v0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    iget-object v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr p1, v2

    add-int/2addr v2, p2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;-><init>([ZII)V

    return-object v0
.end method

.method toBooleanArray()[Z
    .registers 6

    .line 452
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v0

    .line 453
    new-array v1, v0, [Z

    .line 454
    iget-object v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 443
    iget-object v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_16

    const-string v1, "[true"

    goto :goto_18

    :cond_16
    const-string v1, "[false"

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    :goto_1d
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    if-ge v1, v2, :cond_32

    .line 445
    iget-object v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_2c

    const-string v2, ", true"

    goto :goto_2e

    :cond_2c
    const-string v2, ", false"

    :goto_2e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_32
    const/16 v1, 0x5d

    .line 447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
