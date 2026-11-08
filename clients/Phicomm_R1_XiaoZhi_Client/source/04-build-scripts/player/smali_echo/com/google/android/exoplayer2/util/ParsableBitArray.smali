.class public final Lcom/google/android/exoplayer2/util/ParsableBitArray;
.super Ljava/lang/Object;
.source "ParsableBitArray.java"


# instance fields
.field private bitOffset:I

.field private byteLimit:I

.field private byteOffset:I

.field public data:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "data"    # [B

    .prologue
    .line 42
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([BI)V

    .line 43
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    .line 53
    iput p2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    .line 54
    return-void
.end method

.method private assertValidOffset()V
    .registers 3

    .prologue
    .line 268
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    if-ltz v0, :cond_19

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    if-lt v0, v1, :cond_14

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    if-ne v0, v1, :cond_19

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_19

    :cond_14
    const/4 v0, 0x1

    :goto_15
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 270
    return-void

    .line 268
    :cond_19
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public bitsLeft()I
    .registers 3

    .prologue
    .line 93
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public byteAlign()V
    .registers 2

    .prologue
    .line 229
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_5

    .line 235
    :goto_4
    return-void

    .line 232
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 233
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 234
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    goto :goto_4
.end method

.method public getBytePosition()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 110
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    return v0

    .line 109
    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getPosition()I
    .registers 3

    .prologue
    .line 100
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public readBit()Z
    .registers 5

    .prologue
    .line 157
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v1, v1, v2

    const/16 v2, 0x80

    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    shr-int/2addr v2, v3

    and-int/2addr v1, v2

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    .line 158
    .local v0, "returnValue":Z
    :goto_f
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 159
    return v0

    .line 157
    .end local v0    # "returnValue":Z
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public readBits(I)I
    .registers 8
    .param p1, "numBits"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x0

    .line 169
    if-nez p1, :cond_7

    move v0, v1

    .line 185
    :goto_6
    return v0

    .line 172
    :cond_7
    const/4 v0, 0x0

    .line 173
    .local v0, "returnValue":I
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 174
    :goto_d
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-le v2, v5, :cond_28

    .line 175
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 176
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    goto :goto_d

    .line 178
    :cond_28
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    rsub-int/lit8 v3, v3, 0x8

    shr-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 179
    const/4 v2, -0x1

    rsub-int/lit8 v3, p1, 0x20

    ushr-int/2addr v2, v3

    and-int/2addr v0, v2

    .line 180
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-ne v2, v5, :cond_47

    .line 181
    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 182
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 184
    :cond_47
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    goto :goto_6
.end method

.method public readBits([BII)V
    .registers 13
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "numBits"    # I

    .prologue
    const/16 v8, 0x8

    .line 199
    shr-int/lit8 v4, p3, 0x3

    add-int v3, p2, v4

    .line 200
    .local v3, "to":I
    move v1, p2

    .local v1, "i":I
    :goto_7
    if-ge v1, v3, :cond_2f

    .line 201
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v4, v4, v5

    iget v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    shl-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    .line 202
    aget-byte v4, p1, v1

    iget-object v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v6, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    iget v6, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    rsub-int/lit8 v6, v6, 0x8

    shr-int/2addr v5, v6

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 205
    :cond_2f
    and-int/lit8 v0, p3, 0x7

    .line 206
    .local v0, "bitsLeft":I
    if-nez v0, :cond_34

    .line 223
    :goto_33
    return-void

    .line 209
    :cond_34
    aget-byte v4, p1, v3

    const/16 v5, 0xff

    shr-int/2addr v5, v0

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 210
    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v4, v0

    if-le v4, v8, :cond_5e

    .line 212
    aget-byte v4, p1, v3

    iget-object v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v6, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    iget v6, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    shl-int/2addr v5, v6

    int-to-byte v5, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 213
    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v4, v4, -0x8

    iput v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 215
    :cond_5e
    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 216
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    iget v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    rsub-int/lit8 v5, v5, 0x8

    shr-int v2, v4, v5

    .line 217
    .local v2, "lastDataByteTrailingBits":I
    aget-byte v4, p1, v3

    rsub-int/lit8 v5, v0, 0x8

    shl-int v5, v2, v5

    int-to-byte v5, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 218
    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-ne v4, v8, :cond_89

    .line 219
    const/4 v4, 0x0

    iput v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 220
    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 222
    :cond_89
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    goto :goto_33
.end method

.method public readBytes([BII)V
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 248
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 249
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 251
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    .line 252
    return-void

    .line 248
    :cond_18
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public reset(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 4
    .param p1, "parsableByteArray"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 72
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->reset([BI)V

    .line 73
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 74
    return-void
.end method

.method public reset([B)V
    .registers 3
    .param p1, "data"    # [B

    .prologue
    .line 62
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->reset([BI)V

    .line 63
    return-void
.end method

.method public reset([BI)V
    .registers 4
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .prologue
    const/4 v0, 0x0

    .line 83
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    .line 84
    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 85
    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 86
    iput p2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    .line 87
    return-void
.end method

.method public setPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 119
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 120
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 121
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    .line 122
    return-void
.end method

.method public skipBit()V
    .registers 3

    .prologue
    .line 128
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_13

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 130
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 132
    :cond_13
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    .line 133
    return-void
.end method

.method public skipBits(I)V
    .registers 5
    .param p1, "numBits"    # I

    .prologue
    .line 141
    div-int/lit8 v0, p1, 0x8

    .line 142
    .local v0, "numBytes":I
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 143
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    mul-int/lit8 v2, v0, 0x8

    sub-int v2, p1, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 144
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    const/4 v2, 0x7

    if-le v1, v2, :cond_21

    .line 145
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 146
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 148
    :cond_21
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    .line 149
    return-void
.end method

.method public skipBytes(I)V
    .registers 3
    .param p1, "length"    # I

    .prologue
    .line 261
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 262
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 263
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    .line 264
    return-void

    .line 261
    :cond_11
    const/4 v0, 0x0

    goto :goto_5
.end method
