.class public Lcom/alibaba/fastjson/asm/MethodWriter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/asm/MethodVisitor;


# instance fields
.field private access:I

.field private code:Lcom/alibaba/fastjson/asm/ByteVector;

.field final cw:Lcom/alibaba/fastjson/asm/ClassWriter;

.field private final desc:I

.field exceptionCount:I

.field exceptions:[I

.field private maxLocals:I

.field private maxStack:I

.field private final name:I

.field next:Lcom/alibaba/fastjson/asm/MethodWriter;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance p5, Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-direct {p5}, Lcom/alibaba/fastjson/asm/ByteVector;-><init>()V

    iput-object p5, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    .line 103
    iget-object p5, p1, Lcom/alibaba/fastjson/asm/ClassWriter;->firstMethod:Lcom/alibaba/fastjson/asm/MethodWriter;

    if-nez p5, :cond_11

    .line 104
    iput-object p0, p1, Lcom/alibaba/fastjson/asm/ClassWriter;->firstMethod:Lcom/alibaba/fastjson/asm/MethodWriter;

    goto :goto_15

    .line 106
    :cond_11
    iget-object p5, p1, Lcom/alibaba/fastjson/asm/ClassWriter;->lastMethod:Lcom/alibaba/fastjson/asm/MethodWriter;

    iput-object p0, p5, Lcom/alibaba/fastjson/asm/MethodWriter;->next:Lcom/alibaba/fastjson/asm/MethodWriter;

    .line 108
    :goto_15
    iput-object p0, p1, Lcom/alibaba/fastjson/asm/ClassWriter;->lastMethod:Lcom/alibaba/fastjson/asm/MethodWriter;

    .line 109
    iput-object p1, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->cw:Lcom/alibaba/fastjson/asm/ClassWriter;

    .line 110
    iput p2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->access:I

    .line 111
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->name:I

    .line 112
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->desc:I

    if-eqz p6, :cond_47

    .line 114
    array-length p2, p6

    if-lez p2, :cond_47

    .line 115
    array-length p2, p6

    iput p2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->exceptionCount:I

    .line 116
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->exceptions:[I

    const/4 p2, 0x0

    .line 117
    :goto_34
    iget p3, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->exceptionCount:I

    if-ge p2, p3, :cond_47

    .line 118
    iget-object p3, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->exceptions:[I

    aget-object p4, p6, p2

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object p4

    iget p4, p4, Lcom/alibaba/fastjson/asm/Item;->index:I

    aput p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_34

    :cond_47
    return-void
.end method


# virtual methods
.method final getSize()I
    .registers 5

    .line 267
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    const/16 v1, 0x8

    if-lez v0, :cond_19

    .line 268
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->cw:Lcom/alibaba/fastjson/asm/ClassWriter;

    const-string v2, "Code"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x12

    add-int/lit8 v0, v0, 0x0

    add-int/2addr v0, v1

    goto :goto_1b

    :cond_19
    const/16 v0, 0x8

    .line 271
    :goto_1b
    iget v2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->exceptionCount:I

    if-lez v2, :cond_2c

    .line 272
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->cw:Lcom/alibaba/fastjson/asm/ClassWriter;

    const-string v3, "Exceptions"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 273
    iget v2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->exceptionCount:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_2c
    return v0
.end method

.method final put(Lcom/alibaba/fastjson/asm/ByteVector;)V
    .registers 6

    .line 285
    iget v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->access:I

    const v1, -0x60001

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->name:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->desc:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 287
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    const/4 v1, 0x0

    if-lez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 290
    :goto_1f
    iget v2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->exceptionCount:I

    if-lez v2, :cond_25

    add-int/lit8 v0, v0, 0x1

    .line 294
    :cond_25
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 295
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    if-lez v0, :cond_68

    .line 296
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0xc

    add-int/2addr v0, v1

    .line 297
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->cw:Lcom/alibaba/fastjson/asm/ClassWriter;

    const-string v3, "Code"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 298
    iget v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->maxStack:I

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v0

    iget v2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->maxLocals:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 299
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget-object v2, v2, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    iget-object v3, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v3, v3, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    invoke-virtual {v0, v2, v1, v3}, Lcom/alibaba/fastjson/asm/ByteVector;->putByteArray([BII)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 300
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 302
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 304
    :cond_68
    iget v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->exceptionCount:I

    if-lez v0, :cond_94

    .line 305
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->cw:Lcom/alibaba/fastjson/asm/ClassWriter;

    const-string v2, "Exceptions"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v0

    iget v2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->exceptionCount:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 306
    iget v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->exceptionCount:I

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 307
    :goto_86
    iget v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->exceptionCount:I

    if-ge v1, v0, :cond_94

    .line 308
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->exceptions:[I

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    add-int/lit8 v1, v1, 0x1

    goto :goto_86

    :cond_94
    return-void
.end method

.method public visitEnd()V
    .registers 1

    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 172
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->cw:Lcom/alibaba/fastjson/asm/ClassWriter;

    invoke-virtual {v0, p2, p3, p4}, Lcom/alibaba/fastjson/asm/ClassWriter;->newFieldItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object p2

    .line 175
    iget-object p3, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget p2, p2, Lcom/alibaba/fastjson/asm/Item;->index:I

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    return-void
.end method

.method public visitIincInsn(II)V
    .registers 5

    .line 236
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/asm/ByteVector;->put11(II)Lcom/alibaba/fastjson/asm/ByteVector;

    return-void
.end method

.method public visitInsn(I)V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;

    return-void
.end method

.method public visitIntInsn(II)V
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/asm/ByteVector;->put11(II)Lcom/alibaba/fastjson/asm/ByteVector;

    return-void
.end method

.method public visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V
    .registers 7

    .line 198
    iget v0, p2, Lcom/alibaba/fastjson/asm/Label;->status:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_18

    iget v0, p2, Lcom/alibaba/fastjson/asm/Label;->position:I

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v1, v1, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    sub-int/2addr v0, v1

    const/16 v1, -0x8000

    if-lt v0, v1, :cond_12

    goto :goto_18

    .line 199
    :cond_12
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 206
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 208
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v1, v0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/16 v3, 0xc8

    if-ne p1, v3, :cond_28

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    invoke-virtual {p2, p0, v0, v1, v2}, Lcom/alibaba/fastjson/asm/Label;->put(Lcom/alibaba/fastjson/asm/MethodWriter;Lcom/alibaba/fastjson/asm/ByteVector;IZ)V

    return-void
.end method

.method public visitLabel(Lcom/alibaba/fastjson/asm/Label;)V
    .registers 4

    .line 214
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget-object v1, v1, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    invoke-virtual {p1, p0, v0, v1}, Lcom/alibaba/fastjson/asm/Label;->resolve(Lcom/alibaba/fastjson/asm/MethodWriter;I[B)V

    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .registers 5

    .line 218
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->cw:Lcom/alibaba/fastjson/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newConstItem(Ljava/lang/Object;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object p1

    .line 221
    iget v0, p1, Lcom/alibaba/fastjson/asm/Item;->index:I

    .line 222
    iget v1, p1, Lcom/alibaba/fastjson/asm/Item;->type:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_27

    iget p1, p1, Lcom/alibaba/fastjson/asm/Item;->type:I

    const/4 v1, 0x6

    if-ne p1, v1, :cond_13

    goto :goto_27

    :cond_13
    const/16 p1, 0x100

    if-lt v0, p1, :cond_1f

    .line 225
    iget-object p1, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    const/16 v1, 0x13

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    goto :goto_2e

    .line 227
    :cond_1f
    iget-object p1, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    const/16 v1, 0x12

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->put11(II)Lcom/alibaba/fastjson/asm/ByteVector;

    goto :goto_2e

    .line 223
    :cond_27
    :goto_27
    iget-object p1, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    const/16 v1, 0x14

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    :goto_2e
    return-void
.end method

.method public visitMaxs(II)V
    .registers 3

    .line 241
    iput p1, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->maxStack:I

    .line 242
    iput p2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->maxLocals:I

    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x0

    const/16 v1, 0xb9

    if-ne p1, v1, :cond_7

    const/4 v2, 0x1

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    .line 180
    :goto_8
    iget-object v3, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->cw:Lcom/alibaba/fastjson/asm/ClassWriter;

    invoke-virtual {v3, p2, p3, p4, v2}, Lcom/alibaba/fastjson/asm/ClassWriter;->newMethodItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/fastjson/asm/Item;

    move-result-object p2

    .line 181
    iget p3, p2, Lcom/alibaba/fastjson/asm/Item;->intVal:I

    if-eqz v2, :cond_28

    if-nez p3, :cond_1a

    .line 186
    invoke-static {p4}, Lcom/alibaba/fastjson/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result p3

    .line 187
    iput p3, p2, Lcom/alibaba/fastjson/asm/Item;->intVal:I

    .line 189
    :cond_1a
    iget-object p1, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget p2, p2, Lcom/alibaba/fastjson/asm/Item;->index:I

    invoke-virtual {p1, v1, p2}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object p1

    shr-int/lit8 p2, p3, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->put11(II)Lcom/alibaba/fastjson/asm/ByteVector;

    goto :goto_2f

    .line 191
    :cond_28
    iget-object p3, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget p2, p2, Lcom/alibaba/fastjson/asm/Item;->index:I

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    :goto_2f
    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .registers 4

    .line 165
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->cw:Lcom/alibaba/fastjson/asm/ClassWriter;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object p2

    .line 168
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget p2, p2, Lcom/alibaba/fastjson/asm/Item;->index:I

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    return-void
.end method

.method public visitVarInsn(II)V
    .registers 5

    const/4 v0, 0x4

    if-ge p2, v0, :cond_1e

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_1e

    const/16 v0, 0x36

    if-ge p1, v0, :cond_12

    add-int/lit8 p1, p1, -0x15

    shl-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1a

    goto :goto_17

    :cond_12
    sub-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x3b

    :goto_17
    add-int/2addr p1, p2

    .line 156
    iget-object p2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;

    goto :goto_33

    :cond_1e
    const/16 v0, 0x100

    if-lt p2, v0, :cond_2e

    .line 158
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    goto :goto_33

    .line 160
    :cond_2e
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/asm/ByteVector;->put11(II)Lcom/alibaba/fastjson/asm/ByteVector;

    :goto_33
    return-void
.end method
