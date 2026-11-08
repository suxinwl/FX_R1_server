.class public Lcom/alibaba/fastjson/asm/ClassReader;
.super Ljava/lang/Object;


# instance fields
.field public final b:[B

.field public final header:I

.field private final items:[I

.field private final maxStringLength:I

.field private readAnnotations:Z

.field private final strings:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean p2, p0, Lcom/alibaba/fastjson/asm/ClassReader;->readAnnotations:Z

    .line 22
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 25
    :cond_e
    :goto_e
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_71

    .line 34
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 35
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/asm/ClassReader;->b:[B

    const/16 p1, 0x8

    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/alibaba/fastjson/asm/ClassReader;->items:[I

    .line 40
    array-length p1, p1

    .line 41
    new-array p2, p1, [Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/fastjson/asm/ClassReader;->strings:[Ljava/lang/String;

    const/16 p2, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_32
    if-ge v1, p1, :cond_6c

    .line 45
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassReader;->items:[I

    add-int/lit8 v4, p2, 0x1

    aput v4, v2, v1

    .line 47
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassReader;->b:[B

    aget-byte v2, v2, p2

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eq v2, v0, :cond_60

    const/16 v4, 0xf

    if-eq v2, v4, :cond_5e

    const/16 v4, 0x12

    if-eq v2, v4, :cond_69

    if-eq v2, v7, :cond_69

    if-eq v2, v6, :cond_69

    if-eq v2, v5, :cond_59

    const/4 v4, 0x6

    if-eq v2, v4, :cond_59

    packed-switch v2, :pswitch_data_78

    const/4 v5, 0x3

    goto :goto_69

    :cond_59
    const/16 v5, 0x9

    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    :cond_5e
    const/4 v5, 0x4

    goto :goto_69

    .line 66
    :cond_60
    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v5, v2, 0x3

    if-le v5, v3, :cond_69

    move v3, v5

    :cond_69
    :goto_69
    :pswitch_69
    add-int/2addr p2, v5

    add-int/2addr v1, v0

    goto :goto_32

    .line 79
    :cond_6c
    iput v3, p0, Lcom/alibaba/fastjson/asm/ClassReader;->maxStringLength:I

    .line 81
    iput p2, p0, Lcom/alibaba/fastjson/asm/ClassReader;->header:I

    return-void

    :cond_71
    if-lez v1, :cond_e

    .line 31
    invoke-virtual {p2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_e

    nop

    :pswitch_data_78
    .packed-switch 0x9
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_69
    .end packed-switch
.end method

.method private getAttributes()I
    .registers 5

    .line 165
    iget v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->header:I

    add-int/lit8 v1, v0, 0x8

    add-int/lit8 v0, v0, 0x6

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 167
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    :goto_11
    if-lez v0, :cond_2c

    add-int/lit8 v2, v1, 0x8

    .line 168
    invoke-direct {p0, v2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    :goto_19
    if-lez v2, :cond_27

    add-int/lit8 v3, v1, 0xc

    .line 169
    invoke-direct {p0, v3}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    :cond_27
    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_2c
    add-int/lit8 v1, v1, 0x2

    .line 174
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    :goto_32
    if-lez v0, :cond_4d

    add-int/lit8 v2, v1, 0x8

    .line 175
    invoke-direct {p0, v2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    :goto_3a
    if-lez v2, :cond_48

    add-int/lit8 v3, v1, 0xc

    .line 176
    invoke-direct {p0, v3}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_3a

    :cond_48
    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_32

    :cond_4d
    add-int/lit8 v1, v1, 0x2

    return v1
.end method

.method private readInt(I)I
    .registers 5

    .line 283
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->b:[B

    .line 284
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x3

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    return p1
.end method

.method private readMethod(Lcom/alibaba/fastjson/asm/TypeCollector;[CI)I
    .registers 13

    .line 190
    invoke-direct {p0, p3}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, p3, 0x2

    .line 191
    invoke-direct {p0, v1, p2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p3, 0x4

    .line 192
    invoke-direct {p0, v2, p2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p3, 0x6

    .line 197
    invoke-direct {p0, v3}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 p3, p3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1a
    if-lez v3, :cond_35

    .line 200
    invoke-direct {p0, p3, p2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, p3, 0x2

    .line 201
    invoke-direct {p0, v7}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v7

    add-int/lit8 p3, p3, 0x6

    const-string v8, "Code"

    .line 205
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    move v5, p3

    :cond_31
    add-int/2addr p3, v7

    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 220
    :cond_35
    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/fastjson/asm/TypeCollector;->visitMethod(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodCollector;

    move-result-object p1

    if-eqz p1, :cond_c9

    if-eqz v5, :cond_c9

    add-int/lit8 v0, v5, 0x4

    .line 223
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v0

    .line 230
    invoke-direct {p0, v5}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v5, v5, 0x2

    :goto_4c
    if-lez v0, :cond_53

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_4c

    .line 239
    :cond_53
    invoke-direct {p0, v5}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v5, v5, 0x2

    const/4 v1, 0x0

    :goto_5a
    if-lez v0, :cond_82

    .line 242
    invoke-direct {p0, v5, p2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocalVariableTable"

    .line 243
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    add-int/lit8 v2, v5, 0x6

    move v4, v2

    goto :goto_76

    :cond_6c
    const-string v3, "LocalVariableTypeTable"

    .line 245
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    add-int/lit8 v1, v5, 0x6

    :cond_76
    :goto_76
    add-int/lit8 v2, v5, 0x2

    .line 248
    invoke-direct {p0, v2}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    add-int/2addr v5, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_5a

    :cond_82
    if-eqz v4, :cond_c9

    if-eqz v1, :cond_ad

    .line 255
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, 0x2

    .line 257
    new-array v2, v0, [I

    :goto_90
    if-lez v0, :cond_ad

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v1, 0x6

    .line 259
    aput v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v1, 0x8

    .line 260
    invoke-direct {p0, v3}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    .line 261
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v1, v1, 0xa

    goto :goto_90

    .line 265
    :cond_ad
    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    :goto_b3
    if-lez v0, :cond_c9

    add-int/lit8 v1, v4, 0x8

    .line 268
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v2, v4, 0x4

    .line 269
    invoke-direct {p0, v2, p2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodCollector;->visitLocalVariable(Ljava/lang/String;I)V

    add-int/lit8 v4, v4, 0xa

    add-int/lit8 v0, v0, -0x1

    goto :goto_b3

    :cond_c9
    return p3
.end method

.method private readUTF(II[C)Ljava/lang/String;
    .registers 13

    add-int/2addr p2, p1

    .line 300
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->b:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_7
    if-ge p1, p2, :cond_49

    add-int/lit8 v5, p1, 0x1

    .line 306
    aget-byte p1, v0, p1

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_2b

    if-eq v3, v7, :cond_1e

    if-eq v3, v6, :cond_16

    goto :goto_47

    :cond_16
    shl-int/lit8 v3, v4, 0x6

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v3

    :goto_1b
    int-to-char v4, p1

    const/4 v3, 0x1

    goto :goto_47

    :cond_1e
    add-int/lit8 v3, v2, 0x1

    shl-int/lit8 v6, v4, 0x6

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v6

    int-to-char p1, p1

    .line 322
    aput-char p1, p3, v2

    move v2, v3

    const/4 v3, 0x0

    goto :goto_47

    :cond_2b
    and-int/lit16 p1, p1, 0xff

    const/16 v8, 0x80

    if-ge p1, v8, :cond_38

    add-int/lit8 v6, v2, 0x1

    int-to-char p1, p1

    .line 311
    aput-char p1, p3, v2

    move v2, v6

    goto :goto_47

    :cond_38
    const/16 v3, 0xe0

    if-ge p1, v3, :cond_43

    const/16 v3, 0xbf

    if-le p1, v3, :cond_43

    and-int/lit8 p1, p1, 0x1f

    goto :goto_1b

    :cond_43
    and-int/lit8 p1, p1, 0xf

    int-to-char v4, p1

    const/4 v3, 0x2

    :goto_47
    move p1, v5

    goto :goto_7

    .line 332
    :cond_49
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method

.method private readUTF8(I[C)Ljava/lang/String;
    .registers 6

    .line 289
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    .line 290
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->strings:[Ljava/lang/String;

    aget-object v1, v0, p1

    if-eqz v1, :cond_b

    return-object v1

    .line 294
    :cond_b
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassReader;->items:[I

    aget v1, v1, p1

    add-int/lit8 v2, v1, 0x2

    .line 295
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    invoke-direct {p0, v2, v1, p2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF(II[C)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    return-object p2
.end method

.method private readUnsignedShort(I)I
    .registers 4

    .line 278
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->b:[B

    .line 279
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    return p1
.end method


# virtual methods
.method public accept(Lcom/alibaba/fastjson/asm/TypeCollector;)V
    .registers 10

    .line 85
    iget v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->maxStringLength:I

    new-array v0, v0, [C

    .line 91
    iget-boolean v1, p0, Lcom/alibaba/fastjson/asm/ClassReader;->readAnnotations:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    .line 92
    invoke-direct {p0}, Lcom/alibaba/fastjson/asm/ClassReader;->getAttributes()I

    move-result v1

    .line 93
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    :goto_11
    if-lez v3, :cond_30

    add-int/lit8 v4, v1, 0x2

    .line 94
    invoke-direct {p0, v4, v0}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    const-string v5, "RuntimeVisibleAnnotations"

    .line 95
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    add-int/lit8 v1, v1, 0x8

    goto :goto_31

    :cond_24
    add-int/lit8 v4, v1, 0x4

    .line 99
    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    :cond_30
    const/4 v1, 0x0

    .line 104
    :goto_31
    iget v3, p0, Lcom/alibaba/fastjson/asm/ClassReader;->header:I

    add-int/lit8 v4, v3, 0x6

    .line 105
    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v3, v3, 0x8

    :goto_3b
    if-ge v2, v4, :cond_42

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 111
    :cond_42
    invoke-direct {p0, v3}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v4, v3, 0x2

    move v5, v4

    :goto_49
    if-lez v2, :cond_64

    add-int/lit8 v6, v5, 0x6

    .line 114
    invoke-direct {p0, v6}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v5, v5, 0x8

    :goto_53
    if-lez v6, :cond_61

    add-int/lit8 v7, v5, 0x2

    .line 117
    invoke-direct {p0, v7}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x6

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_53

    :cond_61
    add-int/lit8 v2, v2, -0x1

    goto :goto_49

    .line 120
    :cond_64
    invoke-direct {p0, v5}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v5, v5, 0x2

    :goto_6a
    if-lez v2, :cond_85

    add-int/lit8 v6, v5, 0x6

    .line 123
    invoke-direct {p0, v6}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v5, v5, 0x8

    :goto_74
    if-lez v6, :cond_82

    add-int/lit8 v7, v5, 0x2

    .line 126
    invoke-direct {p0, v7}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x6

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_74

    :cond_82
    add-int/lit8 v2, v2, -0x1

    goto :goto_6a

    .line 130
    :cond_85
    invoke-direct {p0, v5}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v5, v5, 0x2

    :goto_8b
    if-lez v2, :cond_99

    add-int/lit8 v6, v5, 0x2

    .line 133
    invoke-direct {p0, v6}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, -0x1

    goto :goto_8b

    :cond_99
    if-eqz v1, :cond_ad

    .line 137
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x2

    :goto_a1
    if-lez v2, :cond_ad

    .line 138
    invoke-direct {p0, v1, v0}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 139
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/asm/TypeCollector;->visitAnnotation(Ljava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_a1

    .line 144
    :cond_ad
    invoke-direct {p0, v3}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    :goto_b1
    if-lez v1, :cond_cc

    add-int/lit8 v2, v4, 0x6

    .line 147
    invoke-direct {p0, v2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v4, v4, 0x8

    :goto_bb
    if-lez v2, :cond_c9

    add-int/lit8 v3, v4, 0x2

    .line 150
    invoke-direct {p0, v3}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v4, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_bb

    :cond_c9
    add-int/lit8 v1, v1, -0x1

    goto :goto_b1

    .line 155
    :cond_cc
    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v4, v4, 0x2

    :goto_d2
    if-lez v1, :cond_db

    .line 159
    invoke-direct {p0, p1, v0, v4}, Lcom/alibaba/fastjson/asm/ClassReader;->readMethod(Lcom/alibaba/fastjson/asm/TypeCollector;[CI)I

    move-result v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_d2

    :cond_db
    return-void
.end method
