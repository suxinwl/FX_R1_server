.class public Lcom/alibaba/fastjson/asm/ByteVector;
.super Ljava/lang/Object;


# instance fields
.field public data:[B

.field public length:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 54
    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    return-void
.end method

.method private enlarge(I)V
    .registers 5

    .line 226
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 227
    iget v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/2addr v1, p1

    if-le v0, v1, :cond_b

    goto :goto_c

    :cond_b
    move v0, v1

    .line 228
    :goto_c
    new-array p1, v0, [B

    .line 229
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    iget v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    iput-object p1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    return-void
.end method


# virtual methods
.method put11(II)Lcom/alibaba/fastjson/asm/ByteVector;
    .registers 6

    .line 92
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x2

    .line 93
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_d

    const/4 v1, 0x2

    .line 94
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    .line 96
    :cond_d
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    int-to-byte p1, p1

    .line 97
    aput-byte p1, v1, v0

    add-int/lit8 p1, v2, 0x1

    int-to-byte p2, p2

    .line 98
    aput-byte p2, v1, v2

    .line 99
    iput p1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    return-object p0
.end method

.method public put12(II)Lcom/alibaba/fastjson/asm/ByteVector;
    .registers 6

    .line 131
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x3

    .line 132
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_d

    const/4 v1, 0x3

    .line 133
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    .line 135
    :cond_d
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    int-to-byte p1, p1

    .line 136
    aput-byte p1, v1, v0

    add-int/lit8 p1, v2, 0x1

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    .line 137
    aput-byte v0, v1, v2

    add-int/lit8 v0, p1, 0x1

    int-to-byte p2, p2

    .line 138
    aput-byte p2, v1, p1

    .line 139
    iput v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;
    .registers 5

    .line 74
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x1

    .line 75
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_d

    const/4 v2, 0x1

    .line 76
    invoke-direct {p0, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    .line 78
    :cond_d
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    .line 79
    iput v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putByteArray([BII)Lcom/alibaba/fastjson/asm/ByteVector;
    .registers 6

    .line 209
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v1, v1

    if-le v0, v1, :cond_b

    .line 210
    invoke-direct {p0, p3}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    :cond_b
    if-eqz p1, :cond_14

    .line 213
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    iget v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    :cond_14
    iget p1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;
    .registers 6

    .line 151
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x4

    .line 152
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_d

    const/4 v1, 0x4

    .line 153
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    .line 155
    :cond_d
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    .line 156
    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    .line 157
    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    .line 158
    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte p1, p1

    .line 159
    aput-byte p1, v1, v2

    .line 160
    iput v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
    .registers 6

    .line 111
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x2

    .line 112
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_d

    const/4 v1, 0x2

    .line 113
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    .line 115
    :cond_d
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    .line 116
    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte p1, p1

    .line 117
    aput-byte p1, v1, v2

    .line 118
    iput v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putUTF8(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/ByteVector;
    .registers 8

    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 173
    iget v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    .line 174
    iget-object v3, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v3, v3

    if-le v2, v3, :cond_13

    add-int/lit8 v2, v0, 0x2

    .line 175
    invoke-direct {p0, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    .line 177
    :cond_13
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    .line 184
    aput-byte v4, v2, v1

    add-int/lit8 v1, v3, 0x1

    int-to-byte v4, v0

    .line 185
    aput-byte v4, v2, v3

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v0, :cond_47

    .line 187
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_2f

    const/16 v5, 0x7f

    if-le v4, v5, :cond_38

    :cond_2f
    const/16 v5, 0x4e00

    if-lt v4, v5, :cond_41

    const v5, 0x9fff

    if-gt v4, v5, :cond_41

    :cond_38
    add-int/lit8 v5, v1, 0x1

    int-to-byte v4, v4

    .line 189
    aput-byte v4, v2, v1

    add-int/lit8 v3, v3, 0x1

    move v1, v5

    goto :goto_22

    .line 191
    :cond_41
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 194
    :cond_47
    iput v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    return-object p0
.end method
