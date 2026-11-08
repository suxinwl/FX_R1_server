.class public Lcom/alibaba/fastjson/asm/Label;
.super Ljava/lang/Object;


# static fields
.field static final FORWARD_REFERENCE_HANDLE_MASK:I = 0xfffffff

.field static final FORWARD_REFERENCE_TYPE_MASK:I = -0x10000000

.field static final FORWARD_REFERENCE_TYPE_SHORT:I = 0x10000000

.field static final FORWARD_REFERENCE_TYPE_WIDE:I = 0x20000000


# instance fields
.field inputStackTop:I

.field next:Lcom/alibaba/fastjson/asm/Label;

.field outputStackMax:I

.field position:I

.field private referenceCount:I

.field private srcAndRefPositions:[I

.field status:I

.field successor:Lcom/alibaba/fastjson/asm/Label;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addReference(III)V
    .registers 8

    .line 196
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    const/4 v1, 0x6

    if-nez v0, :cond_9

    new-array v0, v1, [I

    .line 197
    iput-object v0, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    .line 199
    :cond_9
    iget v0, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    array-length v3, v2

    if-lt v0, v3, :cond_1b

    .line 200
    array-length v0, v2

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 201
    array-length v1, v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iput-object v0, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    .line 204
    :cond_1b
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    iget v1, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    aput p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    .line 205
    iput p1, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    or-int p1, p2, p3

    aput p1, v0, v2

    return-void
.end method


# virtual methods
.method put(Lcom/alibaba/fastjson/asm/MethodWriter;Lcom/alibaba/fastjson/asm/ByteVector;IZ)V
    .registers 6

    .line 169
    iget p1, p0, Lcom/alibaba/fastjson/asm/Label;->status:I

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1f

    const/4 p1, -0x1

    if-eqz p4, :cond_14

    .line 171
    iget p4, p2, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    const/high16 v0, 0x20000000

    invoke-direct {p0, p3, p4, v0}, Lcom/alibaba/fastjson/asm/Label;->addReference(III)V

    .line 172
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;

    goto :goto_2e

    .line 174
    :cond_14
    iget p4, p2, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    const/high16 v0, 0x10000000

    invoke-direct {p0, p3, p4, v0}, Lcom/alibaba/fastjson/asm/Label;->addReference(III)V

    .line 175
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    goto :goto_2e

    :cond_1f
    if-eqz p4, :cond_28

    .line 179
    iget p1, p0, Lcom/alibaba/fastjson/asm/Label;->position:I

    sub-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;

    goto :goto_2e

    .line 181
    :cond_28
    iget p1, p0, Lcom/alibaba/fastjson/asm/Label;->position:I

    sub-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    :goto_2e
    return-void
.end method

.method resolve(Lcom/alibaba/fastjson/asm/MethodWriter;I[B)V
    .registers 8

    .line 224
    iget p1, p0, Lcom/alibaba/fastjson/asm/Label;->status:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/alibaba/fastjson/asm/Label;->status:I

    .line 225
    iput p2, p0, Lcom/alibaba/fastjson/asm/Label;->position:I

    const/4 p1, 0x0

    .line 227
    :goto_9
    iget v0, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    if-ge p1, v0, :cond_49

    .line 228
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    add-int/lit8 v1, p1, 0x1

    aget p1, v0, p1

    add-int/lit8 v2, v1, 0x1

    .line 229
    aget v0, v0, v1

    const v1, 0xfffffff

    and-int/2addr v1, v0

    sub-int p1, p2, p1

    const/high16 v3, -0x10000000

    and-int/2addr v0, v3

    const/high16 v3, 0x10000000

    if-ne v0, v3, :cond_2f

    add-int/lit8 v0, v1, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    .line 233
    aput-byte v3, p3, v1

    int-to-byte p1, p1

    .line 234
    aput-byte p1, p3, v0

    goto :goto_47

    :cond_2f
    add-int/lit8 v0, v1, 0x1

    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    .line 236
    aput-byte v3, p3, v1

    add-int/lit8 v1, v0, 0x1

    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    .line 237
    aput-byte v3, p3, v0

    add-int/lit8 v0, v1, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    .line 238
    aput-byte v3, p3, v1

    int-to-byte p1, p1

    .line 239
    aput-byte p1, p3, v0

    :goto_47
    move p1, v2

    goto :goto_9

    :cond_49
    return-void
.end method
