.class public final Lcom/alibaba/fastjson/serializer/SerializeWriter;
.super Ljava/io/Writer;


# static fields
.field private static BUFFER_THRESHOLD:I

.field private static final VALUE_FALSE:[C

.field private static final VALUE_TRUE:[C

.field private static final bufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field

.field private static final bytesBufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field static final nonDirectFeatures:I


# instance fields
.field protected beanToArray:Z

.field protected browserSecure:Z

.field protected buf:[C

.field protected count:I

.field protected disableCircularReferenceDetect:Z

.field protected features:I

.field protected keySeperator:C

.field protected maxBufSize:I

.field protected notWriteDefaultValue:Z

.field protected quoteFieldNames:Z

.field protected sepcialBits:J

.field protected sortField:Z

.field protected useSingleQuotes:Z

.field protected writeDirect:Z

.field protected writeEnumUsingName:Z

.field protected writeEnumUsingToString:Z

.field protected writeNonStringValueAsString:Z

.field private final writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    .line 38
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    const-string v0, ":true"

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->VALUE_TRUE:[C

    const-string v0, ":false"

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->VALUE_FALSE:[C

    const/high16 v0, 0x20000

    .line 41
    sput v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->BUFFER_THRESHOLD:I

    :try_start_22
    const-string v0, "fastjson.serializer_buffer_threshold"

    .line 45
    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_40

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_40

    const/high16 v1, 0x10000

    if-gt v0, v1, :cond_40

    mul-int/lit16 v0, v0, 0x400

    .line 49
    sput v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->BUFFER_THRESHOLD:I
    :try_end_40
    .catchall {:try_start_22 .. :try_end_40} :catchall_40

    .line 175
    :catchall_40
    :cond_40
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/lit8 v0, v0, 0x0

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreErrorGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sput v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->nonDirectFeatures:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 87
    check-cast v0, Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 4

    .line 91
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->EMPTY:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .registers 5

    .line 148
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    const/4 v0, -0x1

    .line 81
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    .line 149
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-lez p2, :cond_12

    .line 154
    new-array p1, p2, [C

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 156
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->computeFeatures()V

    return-void

    .line 152
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative initial size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor <init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .registers 6

    .line 108
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    const/4 v0, -0x1

    .line 81
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    .line 109
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 111
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-eqz p1, :cond_1b

    .line 114
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_21

    :cond_1b
    const/16 p1, 0x800

    new-array p1, p1, [C

    .line 116
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 120
    :goto_21
    array-length p1, p3

    const/4 v0, 0x0

    :goto_23
    if-ge v0, p1, :cond_2f

    aget-object v1, p3, v0

    .line 121
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 123
    :cond_2f
    iput p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->computeFeatures()V

    return-void
.end method

.method public varargs constructor <init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .registers 4

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .registers 3

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void
.end method

.method private encodeToUTF8(Ljava/io/OutputStream;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 451
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_1e

    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 455
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 459
    :cond_1e
    array-length v2, v1

    if-ge v2, v0, :cond_24

    .line 460
    new-array v0, v0, [B

    goto :goto_25

    :cond_24
    move-object v0, v1

    .line 463
    :goto_25
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v0}, Lcom/alibaba/fastjson/util/IOUtils;->encodeUTF8([CII[B)I

    move-result v2

    .line 464
    invoke-virtual {p1, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    if-eq v0, v1, :cond_3d

    .line 466
    array-length p1, v0

    sget v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->BUFFER_THRESHOLD:I

    if-gt p1, v1, :cond_3d

    .line 467
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3d
    return v2
.end method

.method private encodeToUTF8Bytes()[B
    .registers 6

    .line 474
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 475
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_1e

    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 479
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 483
    :cond_1e
    array-length v2, v1

    if-ge v2, v0, :cond_24

    .line 484
    new-array v0, v0, [B

    goto :goto_25

    :cond_24
    move-object v0, v1

    .line 487
    :goto_25
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v0}, Lcom/alibaba/fastjson/util/IOUtils;->encodeUTF8([CII[B)I

    move-result v2

    .line 488
    new-array v3, v2, [B

    .line 489
    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eq v0, v1, :cond_3f

    .line 491
    array-length v1, v0

    sget v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->BUFFER_THRESHOLD:I

    if-gt v1, v2, :cond_3f

    .line 492
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3f
    return-object v3
.end method

.method private writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2151
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_8

    .line 2152
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 2154
    :cond_8
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void
.end method

.method private writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2406
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    .line 2408
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 2409
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 2410
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v6, v6

    const/16 v7, 0x5c

    const/16 v8, 0x3a

    const/4 v9, 0x0

    const/16 v10, 0x27

    if-le v4, v6, :cond_6d

    .line 2411
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v6, :cond_6a

    if-nez v3, :cond_2b

    .line 2413
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2414
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2415
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    :cond_2b
    const/4 v4, 0x0

    :goto_2c
    if-ge v4, v3, :cond_3d

    .line 2421
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 2422
    array-length v11, v2

    if-ge v6, v11, :cond_3a

    aget-byte v6, v2, v6

    if-eqz v6, :cond_3a

    goto :goto_3e

    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_3d
    const/4 v5, 0x0

    :goto_3e
    if-eqz v5, :cond_43

    .line 2429
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_43
    :goto_43
    if-ge v9, v3, :cond_61

    .line 2432
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 2433
    array-length v6, v2

    if-ge v4, v6, :cond_5b

    aget-byte v6, v2, v4

    if-eqz v6, :cond_5b

    .line 2434
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2435
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v6, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_5e

    .line 2437
    :cond_5b
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_5e
    add-int/lit8 v9, v9, 0x1

    goto :goto_43

    :cond_61
    if-eqz v5, :cond_66

    .line 2441
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2443
    :cond_66
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 2447
    :cond_6a
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_6d
    if-nez v3, :cond_94

    .line 2451
    iget v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v1, 0x3

    .line 2452
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v2, v3, :cond_7d

    add-int/lit8 v1, v1, 0x3

    .line 2453
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2455
    :cond_7d
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v10, v1, v2

    add-int/lit8 v2, v3, 0x1

    .line 2456
    iput v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v10, v1, v3

    add-int/lit8 v3, v2, 0x1

    .line 2457
    iput v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v8, v1, v2

    return-void

    .line 2461
    :cond_94
    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v11, v6, v3

    .line 2464
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {v1, v9, v3, v12, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 2465
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move v1, v6

    const/4 v3, 0x0

    :goto_a1
    if-ge v1, v11, :cond_10b

    .line 2470
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v13, v12, v1

    .line 2471
    array-length v14, v2

    if-ge v13, v14, :cond_108

    aget-byte v14, v2, v13

    if-eqz v14, :cond_108

    if-nez v3, :cond_e6

    add-int/lit8 v4, v4, 0x3

    .line 2474
    array-length v3, v12

    if-le v4, v3, :cond_b8

    .line 2475
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2477
    :cond_b8
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2479
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v1, 0x1

    add-int/lit8 v14, v1, 0x3

    sub-int v15, v11, v1

    sub-int/2addr v15, v5

    invoke-static {v3, v12, v3, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2480
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v3, v9, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2481
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v10, v1, v6

    .line 2482
    aput-char v7, v1, v12

    add-int/lit8 v3, v12, 0x1

    .line 2483
    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v12, v12, v13

    aput-char v12, v1, v3

    add-int/lit8 v11, v11, 0x2

    .line 2485
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v12, v12, -0x2

    aput-char v10, v1, v12

    move v1, v3

    const/4 v3, 0x1

    goto :goto_108

    :cond_e6
    add-int/lit8 v4, v4, 0x1

    .line 2490
    array-length v12, v12

    if-le v4, v12, :cond_ee

    .line 2491
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2493
    :cond_ee
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2495
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v14, v1, 0x1

    add-int/lit8 v15, v1, 0x2

    sub-int v9, v11, v1

    invoke-static {v12, v14, v12, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2496
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v7, v9, v1

    .line 2497
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v1, v1, v13

    aput-char v1, v9, v14

    add-int/lit8 v11, v11, 0x1

    move v1, v14

    :cond_108
    :goto_108
    add-int/2addr v1, v5

    const/4 v9, 0x0

    goto :goto_a1

    .line 2503
    :cond_10b
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    sub-int/2addr v4, v5

    aput-char v8, v1, v4

    return-void
.end method


# virtual methods
.method public append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .registers 2

    .line 334
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .registers 4

    if-nez p1, :cond_5

    const-string p1, "null"

    goto :goto_9

    .line 322
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_9
    const/4 v0, 0x0

    .line 323
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .registers 4

    if-nez p1, :cond_4

    const-string p1, "null"

    .line 328
    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 329
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .registers 4

    .line 511
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-lez v0, :cond_b

    .line 512
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 514
    :cond_b
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v0

    sget v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->BUFFER_THRESHOLD:I

    if-gt v1, v2, :cond_17

    .line 515
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_17
    const/4 v0, 0x0

    .line 518
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    return-void
.end method

.method protected computeFeatures()V
    .registers 5

    .line 187
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    .line 188
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    .line 189
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sortField:Z

    .line 190
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->disableCircularReferenceDetect:Z

    .line 191
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_45

    const/4 v0, 0x1

    goto :goto_46

    :cond_45
    const/4 v0, 0x0

    :goto_46
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beanToArray:Z

    .line 192
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_53

    const/4 v0, 0x1

    goto :goto_54

    :cond_53
    const/4 v0, 0x0

    :goto_54
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNonStringValueAsString:Z

    .line 193
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_61

    const/4 v0, 0x1

    goto :goto_62

    :cond_61
    const/4 v0, 0x0

    :goto_62
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->notWriteDefaultValue:Z

    .line 194
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_6f

    const/4 v0, 0x1

    goto :goto_70

    :cond_6f
    const/4 v0, 0x0

    :goto_70
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    .line 195
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_7d

    const/4 v0, 0x1

    goto :goto_7e

    :cond_7d
    const/4 v0, 0x0

    :goto_7e
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    .line 197
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v0, :cond_95

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->nonDirectFeatures:I

    and-int/2addr v0, v3

    if-nez v0, :cond_95

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beanToArray:Z

    if-nez v0, :cond_93

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    if-eqz v0, :cond_95

    :cond_93
    const/4 v0, 0x1

    goto :goto_96

    :cond_95
    const/4 v0, 0x0

    :goto_96
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeDirect:Z

    .line 202
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_9f

    const/16 v0, 0x27

    goto :goto_a1

    :cond_9f
    const/16 v0, 0x22

    :goto_a1
    iput-char v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    .line 204
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_ad

    goto :goto_ae

    :cond_ad
    const/4 v1, 0x0

    :goto_ae
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    if-eqz v1, :cond_b8

    const-wide v0, 0x50000304ffffffffL    # 2.3175490007226655E77

    goto :goto_cc

    .line 221
    :cond_b8
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c7

    const-wide v0, 0x8004ffffffffL

    goto :goto_cc

    :cond_c7
    const-wide v0, 0x4ffffffffL

    :goto_cc
    iput-wide v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    return-void
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .registers 4

    if-eqz p2, :cond_2f

    .line 161
    iget p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v0

    or-int/2addr p2, v0

    iput p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 163
    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne p1, p2, :cond_1d

    .line 164
    iget p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result p2

    xor-int/lit8 p2, p2, -0x1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_3a

    .line 165
    :cond_1d
    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne p1, p2, :cond_3a

    .line 166
    iget p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result p2

    xor-int/lit8 p2, p2, -0x1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_3a

    .line 169
    :cond_2f
    iget p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result p1

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 172
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->computeFeatures()V

    return-void
.end method

.method public expandCapacity(I)V
    .registers 5

    .line 299
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_29

    if-ge p1, v0, :cond_8

    goto :goto_29

    .line 300
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serialize exceeded MAX_OUTPUT_LENGTH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", minimumCapacity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v0

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_35

    goto :goto_36

    :cond_35
    move p1, v1

    .line 308
    :goto_36
    new-array p1, p1, [C

    .line 309
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    sget v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->BUFFER_THRESHOLD:I

    if-ge v0, v1, :cond_5e

    .line 312
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    if-eqz v0, :cond_57

    .line 313
    array-length v0, v0

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-ge v0, v1, :cond_5e

    .line 314
    :cond_57
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 318
    :cond_5e
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    return-void
.end method

.method public flush()V
    .registers 5

    .line 2507
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_5

    return-void

    .line 2512
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 2513
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_12} :catch_15

    .line 2517
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void

    :catch_15
    move-exception v0

    .line 2515
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBufferLength()I
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    return v0
.end method

.method public getMaxBufSize()I
    .registers 2

    .line 129
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3

    .line 239
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method public isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .registers 3

    .line 235
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public isNotWriteDefaultValue()Z
    .registers 2

    .line 231
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->notWriteDefaultValue:Z

    return v0
.end method

.method public isSortField()Z
    .registers 2

    .line 227
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sortField:Z

    return v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 2524
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public setMaxBufSize(I)V
    .registers 4

    .line 133
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-lt p1, v0, :cond_8

    .line 137
    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    return-void

    .line 134
    :cond_8
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "must > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .registers 2

    .line 499
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return v0
.end method

.method public toBytes(Ljava/lang/String;)[B
    .registers 3

    if-eqz p1, :cond_10

    const-string v0, "UTF-8"

    .line 431
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_10

    .line 433
    :cond_b
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_12

    .line 431
    :cond_10
    :goto_10
    sget-object p1, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    :goto_12
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method

.method public toBytes(Ljava/nio/charset/Charset;)[B
    .registers 6

    .line 437
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_1c

    .line 441
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    if-ne p1, v0, :cond_d

    .line 442
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->encodeToUTF8Bytes()[B

    move-result-object p1

    return-object p1

    .line 444
    :cond_d
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1

    .line 438
    :cond_1c
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "writer not null"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toCharArray()[C
    .registers 5

    .line 407
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_f

    .line 411
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    new-array v1, v0, [C

    .line 412
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 408
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toCharArrayForSpringWebSocket()[C
    .registers 6

    .line 421
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_14

    .line 425
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v0, -0x2

    new-array v1, v1, [C

    .line 426
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v3, 0x1

    const/4 v4, 0x0

    add-int/lit8 v0, v0, -0x2

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 422
    :cond_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 503
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public write(I)V
    .registers 5

    .line 246
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 247
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v0, v2, :cond_15

    .line 248
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v2, :cond_11

    .line 249
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_15

    .line 251
    :cond_11
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    goto :goto_16

    :cond_15
    :goto_15
    move v1, v0

    .line 255
    :goto_16
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-char p1, p1

    aput-char p1, v0, v2

    .line 256
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_6

    .line 523
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    :cond_6
    const/4 v0, 0x0

    .line 527
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 8

    .line 346
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, p3

    .line 347
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_2e

    .line 348
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_10

    .line 349
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_2e

    .line 352
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v1, v2

    add-int v3, p2, v1

    .line 353
    invoke-virtual {p1, p2, v3, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 354
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length p2, p2

    iput p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 355
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    sub-int/2addr p3, v1

    .line 358
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length p2, p2

    if-gt p3, p2, :cond_2c

    move v0, p3

    move p2, v3

    goto :goto_2e

    :cond_2c
    move p2, v3

    goto :goto_10

    :cond_2e
    :goto_2e
    add-int/2addr p3, p2

    .line 362
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, p2, p3, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 363
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public write(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1617
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "[]"

    .line 1618
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void

    .line 1622
    :cond_c
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1624
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v4, v0

    const/4 v3, 0x0

    :goto_15
    const/16 v5, 0x5d

    if-ge v3, v1, :cond_c1

    .line 1625
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v7, 0x22

    const/4 v8, 0x1

    if-nez v6, :cond_26

    const/4 v11, 0x1

    goto :goto_4a

    .line 1631
    :cond_26
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2c
    if-ge v10, v9, :cond_4a

    .line 1632
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x20

    if-lt v11, v12, :cond_43

    const/16 v12, 0x7e

    if-gt v11, v12, :cond_43

    if-eq v11, v7, :cond_43

    const/16 v12, 0x5c

    if-ne v11, v12, :cond_41

    goto :goto_43

    :cond_41
    const/4 v11, 0x0

    goto :goto_44

    :cond_43
    :goto_43
    const/4 v11, 0x1

    :goto_44
    if-eqz v11, :cond_47

    goto :goto_4a

    :cond_47
    add-int/lit8 v10, v10, 0x1

    goto :goto_2c

    :cond_4a
    :goto_4a
    const/16 v9, 0x2c

    const/16 v10, 0x5b

    if-eqz v11, :cond_79

    .line 1643
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1644
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v0, 0x0

    .line 1645
    :goto_56
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_75

    .line 1646
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_67

    .line 1648
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_67
    if-nez v1, :cond_6f

    const-string v1, "null"

    .line 1652
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_72

    .line 1654
    :cond_6f
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    :goto_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 1657
    :cond_75
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 1661
    :cond_79
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x3

    .line 1662
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v8

    if-ne v3, v11, :cond_89

    add-int/lit8 v5, v5, 0x1

    .line 1665
    :cond_89
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v8, v8

    if-le v5, v8, :cond_93

    .line 1666
    iput v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1667
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_93
    if-nez v3, :cond_9c

    .line 1671
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v4, 0x1

    aput-char v10, v5, v4

    goto :goto_a2

    .line 1673
    :cond_9c
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v4, 0x1

    aput-char v9, v5, v4

    .line 1675
    :goto_a2
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v8, 0x1

    aput-char v7, v4, v8

    .line 1676
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {v6, v2, v4, v8, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 1677
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v5, v4

    .line 1678
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v5, 0x1

    aput-char v7, v4, v5

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto/16 :goto_15

    .line 1680
    :cond_c1
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v4, 0x1

    aput-char v5, p1, v4

    .line 1681
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public write(Z)V
    .registers 2

    if-eqz p1, :cond_8

    const-string p1, "true"

    .line 1739
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_d

    :cond_8
    const-string p1, "false"

    .line 1741
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    :goto_d
    return-void
.end method

.method public write([CII)V
    .registers 7

    if-ltz p2, :cond_44

    .line 267
    array-length v0, p1

    if-gt p2, v0, :cond_44

    if-ltz p3, :cond_44

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_44

    if-ltz v0, :cond_44

    if-nez p3, :cond_11

    return-void

    .line 277
    :cond_11
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, p3

    .line 278
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_3a

    .line 279
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_21

    .line 280
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_3a

    .line 283
    :cond_21
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v1, v2

    .line 284
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 286
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    .line 289
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-gt p3, v0, :cond_21

    move v0, p3

    .line 293
    :cond_3a
    :goto_3a
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void

    .line 272
    :cond_44
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_4b

    :goto_4a
    throw p1

    :goto_4b
    goto :goto_4a
.end method

.method public writeByteArray([B)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 556
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 557
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeHex([B)V

    return-void

    .line 561
    :cond_12
    array-length v2, v1

    .line 562
    iget-boolean v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v3, :cond_1a

    const/16 v3, 0x27

    goto :goto_1c

    :cond_1a
    const/16 v3, 0x22

    :goto_1c
    if-nez v2, :cond_2b

    .line 564
    iget-boolean v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v1, :cond_25

    const-string v1, "\'\'"

    goto :goto_27

    :cond_25
    const-string v1, "\"\""

    .line 565
    :goto_27
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void

    .line 569
    :cond_2b
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    .line 572
    div-int/lit8 v5, v2, 0x3

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, v2, -0x1

    .line 573
    div-int/lit8 v7, v6, 0x3

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x2

    shl-int/2addr v7, v8

    .line 575
    iget v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v7, v9

    add-int/2addr v7, v8

    .line 577
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v10, v10

    const/16 v11, 0x3d

    const/4 v12, 0x0

    if-le v7, v10, :cond_c4

    .line 578
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v10, :cond_c1

    .line 579
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v7, 0x0

    :goto_4d
    if-ge v7, v5, :cond_8b

    add-int/lit8 v9, v7, 0x1

    .line 583
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v7, v9

    add-int/lit8 v9, v10, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v7, v10

    ushr-int/lit8 v10, v7, 0x12

    and-int/lit8 v10, v10, 0x3f

    .line 586
    aget-char v10, v4, v10

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v10, v7, 0xc

    and-int/lit8 v10, v10, 0x3f

    .line 587
    aget-char v10, v4, v10

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v10, v7, 0x6

    and-int/lit8 v10, v10, 0x3f

    .line 588
    aget-char v10, v4, v10

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    and-int/lit8 v7, v7, 0x3f

    .line 589
    aget-char v7, v4, v7

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    move v7, v9

    goto :goto_4d

    :cond_8b
    sub-int/2addr v2, v5

    if-lez v2, :cond_bd

    .line 596
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0xa

    if-ne v2, v8, :cond_9c

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v12, v1, 0x2

    :cond_9c
    or-int v1, v5, v12

    shr-int/lit8 v5, v1, 0xc

    .line 599
    aget-char v5, v4, v5

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    .line 600
    aget-char v5, v4, v5

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    if-ne v2, v8, :cond_b5

    and-int/lit8 v1, v1, 0x3f

    .line 601
    aget-char v1, v4, v1

    goto :goto_b7

    :cond_b5
    const/16 v1, 0x3d

    :goto_b7
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 602
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 605
    :cond_bd
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 608
    :cond_c1
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 610
    :cond_c4
    iput v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 611
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v9, 0x1

    aput-char v3, v10, v9

    const/4 v9, 0x0

    :goto_cd
    if-ge v9, v5, :cond_111

    add-int/lit8 v10, v9, 0x1

    .line 616
    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    add-int/lit8 v14, v10, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    add-int/lit8 v10, v14, 0x1

    aget-byte v14, v1, v14

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v9, v14

    .line 619
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v13, 0x1

    ushr-int/lit8 v16, v9, 0x12

    and-int/lit8 v16, v16, 0x3f

    aget-char v16, v4, v16

    aput-char v16, v14, v13

    add-int/lit8 v13, v15, 0x1

    ushr-int/lit8 v16, v9, 0xc

    and-int/lit8 v16, v16, 0x3f

    .line 620
    aget-char v16, v4, v16

    aput-char v16, v14, v15

    add-int/lit8 v15, v13, 0x1

    ushr-int/lit8 v16, v9, 0x6

    and-int/lit8 v16, v16, 0x3f

    .line 621
    aget-char v16, v4, v16

    aput-char v16, v14, v13

    add-int/lit8 v13, v15, 0x1

    and-int/lit8 v9, v9, 0x3f

    .line 622
    aget-char v9, v4, v9

    aput-char v9, v14, v15

    move v9, v10

    goto :goto_cd

    :cond_111
    sub-int/2addr v2, v5

    if-lez v2, :cond_14b

    .line 629
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0xa

    if-ne v2, v8, :cond_122

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v12, v1, 0x2

    :cond_122
    or-int v1, v5, v12

    .line 632
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v7, -0x5

    shr-int/lit8 v9, v1, 0xc

    aget-char v9, v4, v9

    aput-char v9, v5, v6

    add-int/lit8 v6, v7, -0x4

    ushr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    .line 633
    aget-char v9, v4, v9

    aput-char v9, v5, v6

    add-int/lit8 v6, v7, -0x3

    if-ne v2, v8, :cond_141

    and-int/lit8 v1, v1, 0x3f

    .line 634
    aget-char v1, v4, v1

    goto :goto_143

    :cond_141
    const/16 v1, 0x3d

    :goto_143
    aput-char v1, v5, v6

    .line 635
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v7, -0x2

    aput-char v11, v1, v2

    .line 637
    :cond_14b
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v7, -0x1

    aput-char v3, v1, v7

    return-void
.end method

.method public writeDouble(DZ)V
    .registers 7

    .line 691
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_55

    .line 692
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_55

    .line 697
    :cond_d
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x18

    .line 698
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    const/16 v2, 0x44

    if-le v0, v1, :cond_3a

    .line 699
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_20

    .line 700
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_3a

    .line 702
    :cond_20
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/RyuDouble;->toString(D)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 703
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    if-eqz p3, :cond_39

    .line 705
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 706
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_39
    return-void

    .line 712
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v0, v1}, Lcom/alibaba/fastjson/util/RyuDouble;->toString(D[CI)I

    move-result p1

    .line 713
    iget p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-eqz p3, :cond_54

    .line 715
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 716
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_54
    return-void

    .line 693
    :cond_55
    :goto_55
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void
.end method

.method public writeEnum(Ljava/lang/Enum;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    .line 722
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    :cond_6
    const/4 v0, 0x0

    .line 727
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-nez v1, :cond_14

    .line 728
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 729
    :cond_14
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-eqz v1, :cond_1c

    .line 730
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1c
    :goto_1c
    if-eqz v0, :cond_35

    .line 734
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p1

    if-eqz p1, :cond_29

    const/16 p1, 0x27

    goto :goto_2b

    :cond_29
    const/16 p1, 0x22

    .line 735
    :goto_2b
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 736
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3c

    .line 739
    :cond_35
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    :goto_3c
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 2366
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    return-void
.end method

.method public writeFieldName(Ljava/lang/String;Z)V
    .registers 13

    if-nez p1, :cond_8

    const-string p1, "null:"

    .line 2371
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void

    .line 2375
    :cond_8
    iget-boolean p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    const/16 v0, 0x3a

    if-eqz p2, :cond_1d

    .line 2376
    iget-boolean p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz p2, :cond_19

    .line 2377
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 2378
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_65

    .line 2380
    :cond_19
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V

    goto :goto_65

    .line 2383
    :cond_1d
    iget-boolean p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz p2, :cond_25

    .line 2384
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_65

    .line 2386
    :cond_25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_2f

    const/4 p2, 0x1

    goto :goto_30

    :cond_2f
    const/4 p2, 0x0

    :goto_30
    const/4 v3, 0x0

    .line 2387
    :goto_31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_58

    .line 2388
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x40

    if-ge v4, v5, :cond_4b

    .line 2389
    iget-wide v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    const-wide/16 v7, 0x1

    shl-long/2addr v7, v4

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_4f

    :cond_4b
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_51

    :cond_4f
    const/4 v4, 0x1

    goto :goto_52

    :cond_51
    const/4 v4, 0x0

    :goto_52
    if-eqz v4, :cond_55

    goto :goto_59

    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_58
    move v2, p2

    :goto_59
    if-eqz v2, :cond_5f

    .line 2396
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_65

    .line 2398
    :cond_5f
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 2399
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_65
    return-void
.end method

.method public writeFieldNameDirect(Ljava/lang/String;)V
    .registers 8

    .line 1599
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1600
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x3

    .line 1602
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_11

    .line 1603
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1606
    :cond_11
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v2, 0x1

    .line 1608
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v5, 0x22

    aput-char v5, v4, v2

    const/4 v2, 0x0

    .line 1609
    invoke-virtual {p1, v2, v0, v4, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1611
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1612
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v1, -0x2

    aput-char v5, p1, v0

    add-int/lit8 v1, v1, -0x1

    const/16 v0, 0x3a

    .line 1613
    aput-char v0, p1, v1

    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;C)V
    .registers 4

    .line 1686
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1687
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    if-nez p3, :cond_e

    const-string p1, "\u0000"

    .line 1689
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_15

    .line 1691
    :cond_e
    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    :goto_15
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;D)V
    .registers 5

    .line 1833
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1834
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1835
    invoke-virtual {p0, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeDouble(DZ)V

    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;F)V
    .registers 4

    .line 1827
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1828
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1829
    invoke-virtual {p0, p3, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFloat(FZ)V

    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;I)V
    .registers 9

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_63

    .line 1746
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v0, :cond_9

    goto :goto_63

    :cond_9
    if-gez p3, :cond_13

    neg-int v0, p3

    .line 1753
    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_13
    invoke-static {p3}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    .line 1755
    :goto_17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1756
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v0

    .line 1757
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-le v2, v0, :cond_37

    .line 1758
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_34

    .line 1759
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1760
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1761
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    return-void

    .line 1764
    :cond_34
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1767
    :cond_37
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1768
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1770
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v2, v0

    add-int p1, v0, v1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v0, 0x1

    .line 1774
    iget-char v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v4, v2, v3

    const/4 v3, 0x0

    add-int/lit8 v0, v0, 0x2

    .line 1776
    invoke-virtual {p2, v3, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 1778
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, p1, 0x1

    iget-char v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v1, p2, v0

    add-int/lit8 p1, p1, 0x2

    const/16 v0, 0x3a

    .line 1779
    aput-char v0, p2, p1

    .line 1781
    iget p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p3, p1, p2}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    return-void

    .line 1747
    :cond_63
    :goto_63
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1748
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1749
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;J)V
    .registers 10

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p3, v0

    if-eqz v2, :cond_73

    .line 1785
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v0, :cond_73

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 1787
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_73

    :cond_15
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-gez v2, :cond_23

    neg-long v0, p3

    .line 1795
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_23
    invoke-static {p3, p4}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    .line 1797
    :goto_27
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1798
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v0

    .line 1799
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-le v2, v0, :cond_47

    .line 1800
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_44

    .line 1801
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1802
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1803
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    return-void

    .line 1806
    :cond_44
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1809
    :cond_47
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1810
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1812
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v2, v0

    add-int p1, v0, v1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v0, 0x1

    .line 1816
    iget-char v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v4, v2, v3

    const/4 v3, 0x0

    add-int/lit8 v0, v0, 0x2

    .line 1818
    invoke-virtual {p2, v3, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 1820
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, p1, 0x1

    iget-char v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v1, p2, v0

    add-int/lit8 p1, p1, 0x2

    const/16 v0, 0x3a

    .line 1821
    aput-char v0, p2, p1

    .line 1823
    iget p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p3, p4, p1, p2}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    return-void

    .line 1789
    :cond_73
    :goto_73
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1790
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1791
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/Enum;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    if-nez p3, :cond_c

    .line 2135
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2136
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 2137
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 2141
    :cond_c
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-nez v0, :cond_1c

    .line 2142
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 2143
    :cond_1c
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-eqz v0, :cond_28

    .line 2144
    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 2146
    :cond_28
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    :goto_2f
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1839
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v0, :cond_31

    .line 1840
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_18

    .line 1841
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1842
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    if-nez p3, :cond_14

    .line 1844
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_40

    .line 1846
    :cond_14
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_40

    .line 1849
    :cond_18
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1850
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 p1, 0x3a

    .line 1851
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    const/4 p1, 0x0

    .line 1852
    invoke-virtual {p0, p3, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_40

    .line 1854
    :cond_2d
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuoteCheck(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 1858
    :cond_31
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1859
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    if-nez p3, :cond_3d

    .line 1861
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_40

    .line 1863
    :cond_3d
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    :goto_40
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/math/BigDecimal;)V
    .registers 4

    .line 2159
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2160
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    if-nez p3, :cond_c

    .line 2162
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_2c

    .line 2164
    :cond_c
    invoke-virtual {p3}, Ljava/math/BigDecimal;->scale()I

    move-result p1

    .line 2165
    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteBigDecimalAsPlain:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p2

    if-eqz p2, :cond_25

    const/16 p2, -0x64

    if-lt p1, p2, :cond_25

    const/16 p2, 0x64

    if-ge p1, p2, :cond_25

    .line 2166
    invoke-virtual {p3}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    goto :goto_29

    .line 2167
    :cond_25
    invoke-virtual {p3}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2165
    :goto_29
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;Z)V
    .registers 10

    .line 1696
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v0, :cond_e

    .line 1697
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1698
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1699
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    return-void

    :cond_e
    const/4 v0, 0x4

    const/4 v1, 0x5

    if-eqz p3, :cond_14

    const/4 v2, 0x4

    goto :goto_15

    :cond_14
    const/4 v2, 0x5

    .line 1704
    :goto_15
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 1705
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    add-int/2addr v4, v0

    add-int/2addr v4, v2

    .line 1706
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-le v4, v0, :cond_39

    .line 1707
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_36

    .line 1708
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1709
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    const/16 p1, 0x3a

    .line 1710
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1711
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    return-void

    .line 1714
    :cond_36
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1717
    :cond_39
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1718
    iput v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1720
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v2, v0

    add-int p1, v0, v3

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v4, v0, 0x1

    .line 1724
    iget-char v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v5, v2, v4

    add-int/lit8 v0, v0, 0x2

    const/4 v4, 0x0

    .line 1726
    invoke-virtual {p2, v4, v3, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 1728
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, p1, 0x1

    iget-char v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v2, p2, v0

    if-eqz p3, :cond_63

    .line 1731
    sget-object p3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->VALUE_TRUE:[C

    add-int/lit8 p1, p1, 0x2

    invoke-static {p3, v4, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6b

    .line 1733
    :cond_63
    sget-object p3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->VALUE_FALSE:[C

    add-int/lit8 p1, p1, 0x2

    const/4 v0, 0x6

    invoke-static {p3, v4, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_6b
    return-void
.end method

.method public writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 2092
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2095
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2097
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int v3, v0, v2

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    .line 2100
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    const/16 v4, 0x3a

    const/4 v5, 0x0

    if-le v1, v3, :cond_28

    .line 2101
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_25

    .line 2102
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2103
    invoke-virtual {p0, p2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 2104
    invoke-virtual {p0, p3, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    return-void

    .line 2107
    :cond_25
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2110
    :cond_28
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char p1, v3, v6

    add-int/lit8 p1, v6, 0x2

    add-int v7, p1, v0

    add-int/lit8 v6, v6, 0x1

    const/16 v8, 0x22

    .line 2115
    aput-char v8, v3, v6

    .line 2116
    invoke-virtual {p2, v5, v0, v3, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 2118
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2120
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v8, p1, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 p2, v7, 0x1

    .line 2123
    aput-char v4, p1, v7

    add-int/lit8 v0, p2, 0x1

    .line 2124
    aput-char v8, p1, p2

    .line 2127
    invoke-virtual {p3, v5, v2, p1, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 2128
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 p2, p2, -0x1

    aput-char v8, p1, p2

    return-void
.end method

.method public writeFieldValueStringWithDoubleQuoteCheck(CLjava/lang/String;Ljava/lang/String;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1869
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 1872
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-nez v2, :cond_13

    add-int/lit8 v6, v3, 0x8

    add-int/2addr v4, v6

    const/4 v6, 0x4

    goto :goto_1c

    .line 1878
    :cond_13
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    add-int v7, v3, v6

    add-int/lit8 v7, v7, 0x6

    add-int/2addr v4, v7

    .line 1882
    :goto_1c
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v7, v7

    const/16 v8, 0x3a

    const/4 v9, 0x0

    if-le v4, v7, :cond_35

    .line 1883
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v7, :cond_32

    .line 1884
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1885
    invoke-virtual {v0, v1, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1886
    invoke-virtual {v0, v2, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    return-void

    .line 1889
    :cond_32
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1892
    :cond_35
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char p1, v7, v10

    add-int/lit8 v11, v10, 0x2

    add-int v12, v11, v3

    const/4 v13, 0x1

    add-int/2addr v10, v13

    const/16 v14, 0x22

    .line 1897
    aput-char v14, v7, v10

    .line 1898
    invoke-virtual {v1, v9, v3, v7, v11}, Ljava/lang/String;->getChars(II[CI)V

    .line 1900
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1902
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v14, v1, v12

    add-int/2addr v12, v13

    add-int/lit8 v3, v12, 0x1

    .line 1905
    aput-char v8, v1, v12

    const/16 v7, 0x75

    if-nez v2, :cond_6a

    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x6e

    .line 1908
    aput-char v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    .line 1909
    aput-char v7, v1, v2

    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x6c

    .line 1910
    aput-char v4, v1, v3

    .line 1911
    aput-char v4, v1, v2

    return-void

    :cond_6a
    add-int/lit8 v8, v3, 0x1

    .line 1915
    aput-char v14, v1, v3

    add-int v3, v8, v6

    .line 1920
    invoke-virtual {v2, v9, v6, v1, v8}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v1, -0x1

    move v6, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v15, -0x1

    :goto_79
    const/16 v5, 0x2029

    const/16 v9, 0x2028

    const/16 v14, 0x5c

    if-ge v6, v3, :cond_e9

    .line 1928
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v7, v7, v6

    const/16 v13, 0x5d

    if-lt v7, v13, :cond_9f

    const/16 v13, 0x7f

    if-lt v7, v13, :cond_df

    if-eq v7, v9, :cond_95

    if-eq v7, v5, :cond_95

    const/16 v5, 0xa0

    if-ge v7, v5, :cond_df

    :cond_95
    if-ne v12, v1, :cond_98

    move v12, v6

    :cond_98
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v4, v4, 0x4

    :cond_9c
    move v15, v6

    :goto_9d
    move v11, v7

    goto :goto_df

    :cond_9f
    const/16 v5, 0x40

    if-ge v7, v5, :cond_b1

    .line 1947
    iget-wide v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    const-wide/16 v18, 0x1

    shl-long v18, v18, v7

    and-long v1, v1, v18

    const-wide/16 v18, 0x0

    cmp-long v5, v1, v18

    if-nez v5, :cond_b3

    :cond_b1
    if-ne v7, v14, :cond_b5

    :cond_b3
    const/4 v1, 0x1

    goto :goto_b6

    :cond_b5
    const/4 v1, 0x0

    :goto_b6
    if-eqz v1, :cond_de

    add-int/lit8 v10, v10, 0x1

    const/16 v1, 0x28

    if-eq v7, v1, :cond_d6

    const/16 v1, 0x29

    if-eq v7, v1, :cond_d6

    const/16 v1, 0x3c

    if-eq v7, v1, :cond_d6

    const/16 v1, 0x3e

    if-eq v7, v1, :cond_d6

    .line 1953
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v1, v1

    if-ge v7, v1, :cond_d8

    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v1, v1, v7

    const/4 v2, 0x4

    if-ne v1, v2, :cond_d8

    :cond_d6
    add-int/lit8 v4, v4, 0x4

    :cond_d8
    const/4 v1, -0x1

    if-ne v12, v1, :cond_9c

    move v12, v6

    move v15, v12

    goto :goto_9d

    :cond_de
    const/4 v1, -0x1

    :cond_df
    :goto_df
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p3

    const/16 v7, 0x75

    const/4 v13, 0x1

    const/16 v14, 0x22

    goto :goto_79

    :cond_e9
    if-lez v10, :cond_343

    add-int/2addr v4, v10

    .line 1971
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v4, v1, :cond_f4

    .line 1972
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1974
    :cond_f4
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v1, 0x1

    if-ne v10, v1, :cond_210

    const/16 v2, 0x30

    const/16 v4, 0x32

    if-ne v11, v9, :cond_122

    add-int/lit8 v5, v15, 0x1

    add-int/lit8 v6, v15, 0x6

    sub-int/2addr v3, v15

    sub-int/2addr v3, v1

    .line 1981
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v7, v5, v7, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1982
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v14, v3, v15

    const/16 v6, 0x75

    .line 1983
    aput-char v6, v3, v5

    add-int/2addr v5, v1

    .line 1984
    aput-char v4, v3, v5

    add-int/2addr v5, v1

    .line 1985
    aput-char v2, v3, v5

    add-int/2addr v5, v1

    .line 1986
    aput-char v4, v3, v5

    add-int/2addr v5, v1

    const/16 v2, 0x38

    .line 1987
    aput-char v2, v3, v5

    goto/16 :goto_343

    :cond_122
    if-ne v11, v5, :cond_147

    add-int/lit8 v5, v15, 0x1

    add-int/lit8 v6, v15, 0x6

    sub-int/2addr v3, v15

    sub-int/2addr v3, v1

    .line 1992
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v7, v5, v7, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1993
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v14, v3, v15

    const/16 v6, 0x75

    .line 1994
    aput-char v6, v3, v5

    add-int/2addr v5, v1

    .line 1995
    aput-char v4, v3, v5

    add-int/2addr v5, v1

    .line 1996
    aput-char v2, v3, v5

    add-int/2addr v5, v1

    .line 1997
    aput-char v4, v3, v5

    add-int/2addr v5, v1

    const/16 v1, 0x39

    .line 1998
    aput-char v1, v3, v5

    goto/16 :goto_343

    :cond_147
    const/16 v1, 0x28

    if-eq v11, v1, :cond_1c6

    const/16 v1, 0x29

    if-eq v11, v1, :cond_1c6

    const/16 v1, 0x3c

    if-eq v11, v1, :cond_1c6

    const/16 v1, 0x3e

    if-ne v11, v1, :cond_158

    goto :goto_1c6

    .line 2015
    :cond_158
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v1, v1

    if-ge v11, v1, :cond_1ae

    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v1, v1, v11

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1ae

    add-int/lit8 v1, v15, 0x1

    add-int/lit8 v2, v15, 0x6

    sub-int/2addr v3, v15

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 2020
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v4, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2023
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v14, v2, v15

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x75

    .line 2024
    aput-char v4, v2, v1

    add-int/lit8 v1, v3, 0x1

    .line 2025
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v11, 0xc

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v2, v3

    .line 2026
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v1, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v11, 0x8

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v2, v1

    .line 2027
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v3, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v11, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 2028
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v4, v11, 0xf

    aget-char v3, v3, v4

    aput-char v3, v1, v2

    goto/16 :goto_343

    :cond_1ae
    add-int/lit8 v1, v15, 0x1

    add-int/lit8 v2, v15, 0x2

    sub-int/2addr v3, v15

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 2033
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v4, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2034
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v14, v2, v15

    .line 2035
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v3, v3, v11

    aput-char v3, v2, v1

    goto/16 :goto_343

    :cond_1c6
    :goto_1c6
    add-int/lit8 v1, v15, 0x1

    add-int/lit8 v2, v15, 0x6

    sub-int/2addr v3, v15

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 2004
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v4, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2007
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v14, v2, v15

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x75

    .line 2008
    aput-char v4, v2, v1

    add-int/lit8 v1, v3, 0x1

    .line 2009
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v11, 0xc

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v2, v3

    .line 2010
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v1, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v11, 0x8

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v2, v1

    .line 2011
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v3, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v11, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 2012
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v4, v11, 0xf

    aget-char v3, v3, v4

    aput-char v3, v1, v2

    goto/16 :goto_343

    :cond_210
    if-le v10, v1, :cond_343

    sub-int v1, v12, v8

    .line 2041
    :goto_214
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_343

    move-object/from16 v2, p3

    .line 2042
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2044
    iget-boolean v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    if-eqz v4, :cond_27c

    const/16 v4, 0x28

    const/16 v6, 0x29

    const/16 v7, 0x3c

    if-eq v3, v4, :cond_235

    if-eq v3, v6, :cond_235

    const/16 v8, 0x3e

    if-eq v3, v7, :cond_237

    if-ne v3, v8, :cond_284

    goto :goto_237

    :cond_235
    const/16 v8, 0x3e

    .line 2048
    :cond_237
    :goto_237
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v12, 0x1

    aput-char v14, v10, v12

    add-int/lit8 v12, v11, 0x1

    const/16 v13, 0x75

    .line 2049
    aput-char v13, v10, v11

    add-int/lit8 v11, v12, 0x1

    .line 2050
    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v15, v3, 0xc

    and-int/lit8 v15, v15, 0xf

    aget-char v13, v13, v15

    aput-char v13, v10, v12

    .line 2051
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v11, 0x1

    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v15, v3, 0x8

    and-int/lit8 v15, v15, 0xf

    aget-char v13, v13, v15

    aput-char v13, v10, v11

    .line 2052
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v12, 0x1

    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v15, v3, 0x4

    and-int/lit8 v15, v15, 0xf

    aget-char v13, v13, v15

    aput-char v13, v10, v12

    .line 2053
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v11, 0x1

    sget-object v13, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v13, v3

    aput-char v3, v10, v11

    const/4 v13, 0x4

    :goto_278
    const/16 v15, 0x75

    goto/16 :goto_33f

    :cond_27c
    const/16 v4, 0x28

    const/16 v6, 0x29

    const/16 v7, 0x3c

    const/16 v8, 0x3e

    .line 2055
    :cond_284
    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v10, v10

    if-ge v3, v10, :cond_28f

    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v10, v10, v3

    if-nez v10, :cond_29b

    :cond_28f
    const/16 v10, 0x2f

    if-ne v3, v10, :cond_2f0

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2057
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v10

    if-eqz v10, :cond_2f0

    .line 2058
    :cond_29b
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v12, 0x1

    aput-char v14, v10, v12

    .line 2059
    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v10, v10, v3

    const/4 v13, 0x4

    if-ne v10, v13, :cond_2e5

    .line 2060
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v11, 0x1

    const/16 v15, 0x75

    aput-char v15, v10, v11

    add-int/lit8 v11, v12, 0x1

    .line 2061
    sget-object v15, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v16, v3, 0xc

    and-int/lit8 v16, v16, 0xf

    aget-char v15, v15, v16

    aput-char v15, v10, v12

    .line 2062
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v11, 0x1

    sget-object v15, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v16, v3, 0x8

    and-int/lit8 v16, v16, 0xf

    aget-char v15, v15, v16

    aput-char v15, v10, v11

    .line 2063
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v12, 0x1

    sget-object v15, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v16, v3, 0x4

    and-int/lit8 v16, v16, 0xf

    aget-char v15, v15, v16

    aput-char v15, v10, v12

    .line 2064
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v11, 0x1

    sget-object v15, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v15, v3

    aput-char v3, v10, v11

    goto :goto_278

    .line 2067
    :cond_2e5
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v11, 0x1

    sget-object v15, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v3, v15, v3

    aput-char v3, v10, v11

    goto :goto_278

    :cond_2f0
    const/4 v13, 0x4

    if-eq v3, v9, :cond_2ff

    if-ne v3, v5, :cond_2f6

    goto :goto_2ff

    .line 2080
    :cond_2f6
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v12, 0x1

    aput-char v3, v10, v12

    move v12, v11

    goto/16 :goto_278

    .line 2072
    :cond_2ff
    :goto_2ff
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v12, 0x1

    aput-char v14, v10, v12

    add-int/lit8 v12, v11, 0x1

    const/16 v15, 0x75

    .line 2073
    aput-char v15, v10, v11

    add-int/lit8 v11, v12, 0x1

    .line 2074
    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v17, v3, 0xc

    and-int/lit8 v17, v17, 0xf

    aget-char v16, v16, v17

    aput-char v16, v10, v12

    .line 2075
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v11, 0x1

    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v17, v3, 0x8

    and-int/lit8 v17, v17, 0xf

    aget-char v16, v16, v17

    aput-char v16, v10, v11

    .line 2076
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v12, 0x1

    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v17, v3, 0x4

    and-int/lit8 v17, v17, 0xf

    aget-char v16, v16, v17

    aput-char v16, v10, v12

    .line 2077
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v11, 0x1

    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v16, v3

    aput-char v3, v10, v11

    :goto_33f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_214

    .line 2088
    :cond_343
    :goto_343
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/16 v3, 0x22

    aput-char v3, v1, v2

    return-void
.end method

.method public writeFloat(FZ)V
    .registers 6

    cmpl-float v0, p1, p1

    if-nez v0, :cond_59

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_59

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, p1, v0

    if-nez v0, :cond_11

    goto :goto_59

    .line 666
    :cond_11
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0xf

    .line 667
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    const/16 v2, 0x46

    if-le v0, v1, :cond_3e

    .line 668
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_24

    .line 669
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_3e

    .line 671
    :cond_24
    invoke-static {p1}, Lcom/alibaba/fastjson/util/RyuFloat;->toString(F)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 672
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    if-eqz p2, :cond_3d

    .line 674
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 675
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_3d
    return-void

    .line 681
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson/util/RyuFloat;->toString(F[CI)I

    move-result p1

    .line 682
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-eqz p2, :cond_5c

    .line 684
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 685
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_5c

    .line 664
    :cond_59
    :goto_59
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :cond_5c
    :goto_5c
    return-void
.end method

.method public writeHex([B)V
    .registers 12

    .line 641
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    .line 642
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_10

    .line 643
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 646
    :cond_10
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v3, 0x78

    aput-char v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 647
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v1, 0x27

    aput-char v1, v0, v2

    const/4 v0, 0x0

    .line 649
    :goto_25
    array-length v2, p1

    if-ge v0, v2, :cond_5d

    .line 650
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 656
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v6, 0x30

    const/16 v7, 0x37

    const/16 v8, 0xa

    if-ge v3, v8, :cond_43

    const/16 v9, 0x30

    goto :goto_45

    :cond_43
    const/16 v9, 0x37

    :goto_45
    add-int/2addr v3, v9

    int-to-char v3, v3

    aput-char v3, v4, v5

    .line 657
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-ge v2, v8, :cond_54

    goto :goto_56

    :cond_54
    const/16 v6, 0x37

    :goto_56
    add-int/2addr v2, v6

    int-to-char v2, v2

    aput-char v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 659
    :cond_5d
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v1, p1, v0

    return-void
.end method

.method public writeInt(I)V
    .registers 5

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_a

    const-string p1, "-2147483648"

    .line 532
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void

    :cond_a
    if-gez p1, :cond_14

    neg-int v0, p1

    .line 536
    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_14
    invoke-static {p1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    .line 538
    :goto_18
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v1, v0

    .line 539
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_32

    .line 540
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v2, :cond_28

    .line 541
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_32

    .line 543
    :cond_28
    new-array v1, v0, [C

    .line 544
    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/4 p1, 0x0

    .line 545
    invoke-virtual {p0, v1, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    return-void

    .line 550
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 552
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public writeLong(J)V
    .registers 9

    .line 752
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 753
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_26

    const-wide v3, 0x1fffffffffffffL

    cmp-long v0, p1, v3

    if-gtz v0, :cond_24

    const-wide v3, -0x1fffffffffffffL

    cmp-long v0, p1, v3

    if-gez v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, p1, v3

    if-nez v5, :cond_3b

    if-eqz v0, :cond_35

    const-string p1, "\"-9223372036854775808\""

    .line 758
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_3a

    :cond_35
    const-string p1, "-9223372036854775808"

    .line 760
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    :goto_3a
    return-void

    :cond_3b
    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-gez v5, :cond_48

    neg-long v3, p1

    .line 765
    invoke-static {v3, v4}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_4c

    :cond_48
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v3

    .line 767
    :goto_4c
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v1, v3

    if-eqz v0, :cond_53

    add-int/lit8 v1, v1, 0x2

    .line 769
    :cond_53
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v4, v4

    const/16 v5, 0x22

    if-le v1, v4, :cond_77

    .line 770
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v4, :cond_62

    .line 771
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_77

    .line 773
    :cond_62
    new-array v1, v3, [C

    .line 774
    invoke-static {p1, p2, v3, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    if-eqz v0, :cond_73

    .line 776
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 777
    invoke-virtual {p0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    .line 778
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_76

    .line 780
    :cond_73
    invoke-virtual {p0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    :goto_76
    return-void

    :cond_77
    :goto_77
    if-eqz v0, :cond_89

    .line 787
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v5, v0, v2

    add-int/lit8 v2, v1, -0x1

    .line 788
    invoke-static {p1, p2, v2, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 789
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v5, p1, v2

    goto :goto_8e

    .line 791
    :cond_89
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, p2, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 794
    :goto_8e
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public writeLongAndChar(JC)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 747
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 748
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void
.end method

.method public writeNull()V
    .registers 2

    const-string v0, "null"

    .line 798
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeNull(II)V
    .registers 4

    and-int v0, p1, p2

    if-nez v0, :cond_d

    .line 806
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v0, p2

    if-nez v0, :cond_d

    .line 808
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 811
    :cond_d
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_24

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    sget v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    and-int/2addr p1, v0

    if-nez p1, :cond_24

    .line 814
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 818
    :cond_24
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-ne p2, p1, :cond_30

    const-string p1, "[]"

    .line 819
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_57

    .line 820
    :cond_30
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-ne p2, p1, :cond_3c

    const-string p1, ""

    .line 821
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_57

    .line 822
    :cond_3c
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-ne p2, p1, :cond_48

    const-string p1, "false"

    .line 823
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_57

    .line 824
    :cond_48
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-ne p2, p1, :cond_54

    const/16 p1, 0x30

    .line 825
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_57

    .line 827
    :cond_54
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :goto_57
    return-void
.end method

.method public writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .registers 3

    .line 802
    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(II)V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .registers 3

    .line 2182
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_8

    .line 2183
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto :goto_c

    :cond_8
    const/4 v0, 0x0

    .line 2185
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    :goto_c
    return-void
.end method

.method public writeString(Ljava/lang/String;C)V
    .registers 4

    .line 2173
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_b

    .line 2174
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 2175
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_e

    .line 2177
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    :goto_e
    return-void
.end method

.method public writeString([C)V
    .registers 3

    .line 2190
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_8

    .line 2191
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote([C)V

    goto :goto_11

    .line 2193
    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    const/4 p1, 0x0

    .line 2194
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    :goto_11
    return-void
.end method

.method public writeStringWithDoubleQuote(Ljava/lang/String;C)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-nez v1, :cond_11

    .line 833
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    if-eqz v2, :cond_10

    .line 835
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_10
    return-void

    .line 840
    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 841
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    if-eqz v2, :cond_1e

    add-int/lit8 v4, v4, 0x1

    .line 846
    :cond_1e
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    const/16 v6, 0x3e

    const/16 v7, 0x3c

    const/16 v8, 0x29

    const/16 v9, 0x28

    const/16 v14, 0x22

    const/16 v15, 0xc

    const/16 v12, 0x8

    const/16 v10, 0x75

    const/16 v13, 0x5c

    const/4 v11, 0x1

    if-le v4, v5, :cond_17c

    .line 847
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v5, :cond_179

    .line 848
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v3, 0x0

    .line 850
    :goto_3e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_170

    .line 851
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 853
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-eqz v5, :cond_8a

    if-eq v4, v9, :cond_58

    if-eq v4, v8, :cond_58

    if-eq v4, v7, :cond_58

    if-ne v4, v6, :cond_8a

    .line 855
    :cond_58
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 856
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 857
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v16, v4, 0xc

    and-int/lit8 v16, v16, 0xf

    aget-char v5, v5, v16

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 858
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v16, v4, 0x8

    and-int/lit8 v16, v16, 0xf

    aget-char v5, v5, v16

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 859
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v16, v4, 0x4

    and-int/lit8 v16, v16, 0xf

    aget-char v5, v5, v16

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 860
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_16a

    .line 865
    :cond_8a
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-eqz v5, :cond_110

    if-eq v4, v12, :cond_105

    if-eq v4, v15, :cond_105

    const/16 v5, 0xa

    if-eq v4, v5, :cond_105

    const/16 v5, 0xd

    if-eq v4, v5, :cond_105

    const/16 v5, 0x9

    if-eq v4, v5, :cond_105

    if-eq v4, v14, :cond_105

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_105

    if-ne v4, v13, :cond_ab

    goto :goto_105

    :cond_ab
    const/16 v5, 0x20

    if-ge v4, v5, :cond_d0

    .line 880
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 881
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v5, 0x30

    .line 882
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 883
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 884
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v4, v4, 0x2

    aget-char v5, v5, v4

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 885
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    add-int/2addr v4, v11

    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_16a

    :cond_d0
    const/16 v5, 0x7f

    if-lt v4, v5, :cond_167

    .line 890
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 891
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 892
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v16, v4, 0xc

    and-int/lit8 v16, v16, 0xf

    aget-char v5, v5, v16

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 893
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v16, v4, 0x8

    and-int/lit8 v16, v16, 0xf

    aget-char v5, v5, v16

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 894
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v16, v4, 0x4

    and-int/lit8 v16, v16, 0xf

    aget-char v5, v5, v16

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 895
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_16a

    .line 874
    :cond_105
    :goto_105
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 875
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_16a

    .line 899
    :cond_110
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v5, v5

    if-ge v4, v5, :cond_11b

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v5, v5, v4

    if-nez v5, :cond_127

    :cond_11b
    const/16 v5, 0x2f

    if-ne v4, v5, :cond_167

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 901
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-eqz v5, :cond_167

    .line 902
    :cond_127
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 903
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v5, v5, v4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_15f

    .line 904
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 905
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v4, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 906
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 907
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 908
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_16a

    .line 910
    :cond_15f
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_16a

    .line 916
    :cond_167
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_16a
    add-int/lit8 v3, v3, 0x1

    const/16 v6, 0x3e

    goto/16 :goto_3e

    .line 919
    :cond_170
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    if-eqz v2, :cond_178

    .line 921
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_178
    return-void

    .line 925
    :cond_179
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 928
    :cond_17c
    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    add-int v7, v6, v3

    .line 931
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v14, v8, v5

    const/4 v5, 0x0

    .line 932
    invoke-virtual {v1, v5, v3, v8, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 934
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 936
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    const/4 v8, -0x1

    if-eqz v3, :cond_2b8

    move v1, v6

    :goto_196
    if-ge v1, v7, :cond_1c8

    .line 940
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v3, v3, v1

    if-eq v3, v14, :cond_1c2

    const/16 v5, 0x2f

    if-eq v3, v5, :cond_1c2

    if-ne v3, v13, :cond_1a5

    goto :goto_1c2

    :cond_1a5
    if-eq v3, v12, :cond_1c2

    if-eq v3, v15, :cond_1c2

    const/16 v5, 0xa

    if-eq v3, v5, :cond_1c2

    const/16 v5, 0xd

    if-eq v3, v5, :cond_1c2

    const/16 v5, 0x9

    if-ne v3, v5, :cond_1b6

    goto :goto_1c2

    :cond_1b6
    const/16 v5, 0x20

    if-ge v3, v5, :cond_1bd

    :goto_1ba
    add-int/lit8 v4, v4, 0x5

    goto :goto_1c4

    :cond_1bd
    const/16 v5, 0x7f

    if-lt v3, v5, :cond_1c5

    goto :goto_1ba

    :cond_1c2
    :goto_1c2
    add-int/lit8 v4, v4, 0x1

    :goto_1c4
    move v8, v1

    :cond_1c5
    add-int/lit8 v1, v1, 0x1

    goto :goto_196

    .line 973
    :cond_1c8
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v4, v1, :cond_1d0

    .line 974
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 976
    :cond_1d0
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    :goto_1d2
    if-lt v8, v6, :cond_2a2

    .line 979
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v3, v1, v8

    if-eq v3, v12, :cond_286

    if-eq v3, v15, :cond_286

    const/16 v4, 0xa

    if-eq v3, v4, :cond_286

    const/16 v4, 0xd

    if-eq v3, v4, :cond_286

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1ea

    goto/16 :goto_286

    :cond_1ea
    if-eq v3, v14, :cond_273

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_273

    if-ne v3, v13, :cond_1f4

    goto/16 :goto_273

    :cond_1f4
    const/16 v4, 0x20

    if-ge v3, v4, :cond_22a

    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v5, v8, 0x6

    sub-int v9, v7, v8

    sub-int/2addr v9, v11

    .line 1006
    invoke-static {v1, v4, v1, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1007
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v1, v8

    .line 1008
    aput-char v10, v1, v4

    add-int/lit8 v4, v8, 0x2

    const/16 v5, 0x30

    .line 1009
    aput-char v5, v1, v4

    add-int/lit8 v4, v8, 0x3

    .line 1010
    aput-char v5, v1, v4

    add-int/lit8 v4, v8, 0x4

    .line 1011
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v3, v3, 0x2

    aget-char v5, v5, v3

    aput-char v5, v1, v4

    .line 1012
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v8, 0x5

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    add-int/2addr v3, v11

    aget-char v3, v5, v3

    aput-char v3, v1, v4

    :goto_227
    add-int/lit8 v7, v7, 0x5

    goto :goto_29e

    :cond_22a
    const/16 v4, 0x7f

    if-lt v3, v4, :cond_29e

    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v5, v8, 0x6

    sub-int v9, v7, v8

    sub-int/2addr v9, v11

    .line 1018
    invoke-static {v1, v4, v1, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1019
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v1, v8

    .line 1020
    aput-char v10, v1, v4

    add-int/lit8 v4, v8, 0x2

    .line 1021
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v3, 0xc

    and-int/lit8 v9, v9, 0xf

    aget-char v5, v5, v9

    aput-char v5, v1, v4

    .line 1022
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v8, 0x3

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v3, 0x8

    and-int/lit8 v9, v9, 0xf

    aget-char v5, v5, v9

    aput-char v5, v1, v4

    .line 1023
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v8, 0x4

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v3, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v5, v5, v9

    aput-char v5, v1, v4

    .line 1024
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v8, 0x5

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    aput-char v3, v1, v4

    goto :goto_227

    .line 998
    :cond_273
    :goto_273
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v5, v8, 0x2

    sub-int v9, v7, v8

    sub-int/2addr v9, v11

    invoke-static {v1, v4, v1, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 999
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v1, v8

    .line 1000
    aput-char v3, v1, v4

    goto :goto_29c

    .line 987
    :cond_286
    :goto_286
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v5, v8, 0x2

    sub-int v9, v7, v8

    sub-int/2addr v9, v11

    invoke-static {v1, v4, v1, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 988
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v1, v8

    .line 989
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v3, v5, v3

    aput-char v3, v1, v4

    :goto_29c
    add-int/lit8 v7, v7, 0x1

    :cond_29e
    :goto_29e
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_1d2

    :cond_2a2
    if-eqz v2, :cond_2b0

    .line 1030
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v3, -0x2

    aput-char v14, v1, v4

    sub-int/2addr v3, v11

    .line 1031
    aput-char v2, v1, v3

    goto :goto_2b7

    .line 1033
    :cond_2b0
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v2, v11

    aput-char v14, v1, v2

    :goto_2b7
    return-void

    :cond_2b8
    move v3, v6

    const/4 v5, -0x1

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v19, -0x1

    :goto_2be
    const/16 v14, 0x2028

    if-ge v3, v7, :cond_32e

    .line 1045
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v10, v10, v3

    const/16 v11, 0x5d

    if-lt v10, v11, :cond_2e3

    const/16 v11, 0x7f

    if-lt v10, v11, :cond_326

    if-eq v10, v14, :cond_2d8

    const/16 v14, 0x2029

    if-eq v10, v14, :cond_2d8

    const/16 v14, 0xa0

    if-ge v10, v14, :cond_326

    :cond_2d8
    if-ne v5, v8, :cond_2db

    move v5, v3

    :cond_2db
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v4, v4, 0x4

    :cond_2df
    move/from16 v19, v3

    :goto_2e1
    move v15, v10

    goto :goto_326

    :cond_2e3
    const/16 v11, 0x7f

    const/16 v14, 0x40

    if-ge v10, v14, :cond_2f7

    .line 1064
    iget-wide v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    const-wide/16 v20, 0x1

    shl-long v20, v20, v10

    and-long v8, v8, v20

    const-wide/16 v20, 0x0

    cmp-long v14, v8, v20

    if-nez v14, :cond_2f9

    :cond_2f7
    if-ne v10, v13, :cond_2fb

    :cond_2f9
    const/4 v8, 0x1

    goto :goto_2fc

    :cond_2fb
    const/4 v8, 0x0

    :goto_2fc
    if-eqz v8, :cond_325

    add-int/lit8 v12, v12, 0x1

    const/16 v8, 0x28

    if-eq v10, v8, :cond_31c

    const/16 v8, 0x29

    if-eq v10, v8, :cond_31c

    const/16 v8, 0x3c

    if-eq v10, v8, :cond_31c

    const/16 v8, 0x3e

    if-eq v10, v8, :cond_31c

    .line 1070
    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v8, v8

    if-ge v10, v8, :cond_31e

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v8, v8, v10

    const/4 v9, 0x4

    if-ne v8, v9, :cond_31e

    :cond_31c
    add-int/lit8 v4, v4, 0x4

    :cond_31e
    const/4 v8, -0x1

    if-ne v5, v8, :cond_2df

    move v5, v3

    move/from16 v19, v5

    goto :goto_2e1

    :cond_325
    const/4 v8, -0x1

    :cond_326
    :goto_326
    add-int/lit8 v3, v3, 0x1

    const/16 v9, 0x28

    const/16 v10, 0x75

    const/4 v11, 0x1

    goto :goto_2be

    :cond_32e
    if-lez v12, :cond_595

    add-int/2addr v4, v12

    .line 1088
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v4, v3, :cond_339

    .line 1089
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1091
    :cond_339
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x1

    if-ne v12, v3, :cond_45a

    const/16 v1, 0x32

    if-ne v15, v14, :cond_368

    add-int/lit8 v4, v19, 0x1

    add-int/lit8 v5, v19, 0x6

    sub-int v7, v7, v19

    sub-int/2addr v7, v3

    .line 1099
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v6, v4, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1100
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v5, v19

    const/16 v6, 0x75

    .line 1101
    aput-char v6, v5, v4

    add-int/2addr v4, v3

    .line 1102
    aput-char v1, v5, v4

    add-int/2addr v4, v3

    const/16 v6, 0x30

    .line 1103
    aput-char v6, v5, v4

    add-int/2addr v4, v3

    .line 1104
    aput-char v1, v5, v4

    add-int/2addr v4, v3

    const/16 v1, 0x38

    .line 1105
    aput-char v1, v5, v4

    goto/16 :goto_595

    :cond_368
    const/16 v4, 0x2029

    if-ne v15, v4, :cond_392

    add-int/lit8 v4, v19, 0x1

    add-int/lit8 v5, v19, 0x6

    sub-int v7, v7, v19

    sub-int/2addr v7, v3

    .line 1112
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v6, v4, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1113
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v5, v19

    const/16 v6, 0x75

    .line 1114
    aput-char v6, v5, v4

    add-int/2addr v4, v3

    .line 1115
    aput-char v1, v5, v4

    add-int/2addr v4, v3

    const/16 v6, 0x30

    .line 1116
    aput-char v6, v5, v4

    add-int/2addr v4, v3

    .line 1117
    aput-char v1, v5, v4

    add-int/2addr v4, v3

    const/16 v1, 0x39

    .line 1118
    aput-char v1, v5, v4

    goto/16 :goto_595

    :cond_392
    const/16 v1, 0x28

    if-eq v15, v1, :cond_413

    const/16 v1, 0x29

    if-eq v15, v1, :cond_413

    const/16 v1, 0x3c

    if-eq v15, v1, :cond_413

    const/16 v1, 0x3e

    if-ne v15, v1, :cond_3a3

    goto :goto_413

    .line 1135
    :cond_3a3
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v1, v1

    if-ge v15, v1, :cond_3fa

    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v1, v1, v15

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3fa

    add-int/lit8 v1, v19, 0x1

    add-int/lit8 v3, v19, 0x6

    sub-int v7, v7, v19

    const/4 v4, 0x1

    sub-int/2addr v7, v4

    .line 1140
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v4, v1, v4, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1143
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v3, v19

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x75

    .line 1144
    aput-char v5, v3, v1

    add-int/lit8 v1, v4, 0x1

    .line 1145
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v15, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    .line 1146
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v15, 0x8

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v1

    .line 1147
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v4, 0x1

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v15, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    .line 1148
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v5, v15, 0xf

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    goto/16 :goto_595

    :cond_3fa
    add-int/lit8 v1, v19, 0x1

    add-int/lit8 v3, v19, 0x2

    sub-int v7, v7, v19

    const/4 v4, 0x1

    sub-int/2addr v7, v4

    .line 1153
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v4, v1, v4, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1154
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v3, v19

    .line 1155
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v4, v15

    aput-char v4, v3, v1

    goto/16 :goto_595

    :cond_413
    :goto_413
    add-int/lit8 v1, v19, 0x1

    add-int/lit8 v3, v19, 0x6

    sub-int v7, v7, v19

    const/4 v4, 0x1

    sub-int/2addr v7, v4

    .line 1124
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v5, v1, v5, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1125
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v3, v19

    const/16 v5, 0x75

    .line 1126
    aput-char v5, v3, v1

    add-int/2addr v1, v4

    .line 1129
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v15, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v1

    .line 1130
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v1, v4

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v15, 0x8

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v1

    .line 1131
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v1, v4

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v15, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v1

    .line 1132
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v1, v4

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v6, v15, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v1

    goto/16 :goto_595

    :cond_45a
    const/4 v4, 0x1

    if-le v12, v4, :cond_595

    sub-int v3, v5, v6

    .line 1161
    :goto_45f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_595

    .line 1162
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1164
    iget-boolean v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    if-eqz v6, :cond_4c8

    const/16 v6, 0x28

    const/16 v7, 0x29

    const/16 v8, 0x3c

    if-eq v4, v6, :cond_47e

    if-eq v4, v7, :cond_47e

    const/16 v9, 0x3e

    if-eq v4, v8, :cond_480

    if-ne v4, v9, :cond_4d0

    goto :goto_480

    :cond_47e
    const/16 v9, 0x3e

    .line 1168
    :cond_480
    :goto_480
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v5, 0x1

    aput-char v13, v10, v5

    add-int/lit8 v5, v11, 0x1

    const/16 v12, 0x75

    .line 1169
    aput-char v12, v10, v11

    add-int/lit8 v11, v5, 0x1

    .line 1170
    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v15, v4, 0xc

    and-int/lit8 v15, v15, 0xf

    aget-char v12, v12, v15

    aput-char v12, v10, v5

    .line 1171
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v11, 0x1

    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v15, v4, 0x8

    and-int/lit8 v15, v15, 0xf

    aget-char v12, v12, v15

    aput-char v12, v5, v11

    .line 1172
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v10, 0x1

    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v15, v4, 0x4

    and-int/lit8 v15, v15, 0xf

    aget-char v12, v12, v15

    aput-char v12, v5, v10

    .line 1173
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v11, 0x1

    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v12, v4

    aput-char v4, v5, v11

    move v5, v10

    const/16 v10, 0x2f

    const/4 v11, 0x4

    :goto_4c4
    const/16 v16, 0x75

    goto/16 :goto_591

    :cond_4c8
    const/16 v6, 0x28

    const/16 v7, 0x29

    const/16 v8, 0x3c

    const/16 v9, 0x3e

    .line 1175
    :cond_4d0
    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v10, v10

    if-ge v4, v10, :cond_4df

    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v10, v10, v4

    if-nez v10, :cond_4dc

    goto :goto_4df

    :cond_4dc
    const/16 v10, 0x2f

    goto :goto_4eb

    :cond_4df
    :goto_4df
    const/16 v10, 0x2f

    if-ne v4, v10, :cond_541

    sget-object v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1177
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v11

    if-eqz v11, :cond_541

    .line 1178
    :goto_4eb
    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v5, 0x1

    aput-char v13, v11, v5

    .line 1179
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v5, v5, v4

    const/4 v11, 0x4

    if-ne v5, v11, :cond_535

    .line 1180
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v12, 0x1

    const/16 v16, 0x75

    aput-char v16, v5, v12

    add-int/lit8 v12, v15, 0x1

    .line 1181
    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v17, v4, 0xc

    and-int/lit8 v17, v17, 0xf

    aget-char v16, v16, v17

    aput-char v16, v5, v15

    .line 1182
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v12, 0x1

    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v17, v4, 0x8

    and-int/lit8 v17, v17, 0xf

    aget-char v16, v16, v17

    aput-char v16, v5, v12

    .line 1183
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v15, 0x1

    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v17, v4, 0x4

    and-int/lit8 v17, v17, 0xf

    aget-char v16, v16, v17

    aput-char v16, v5, v15

    .line 1184
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v12, 0x1

    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v16, v4

    aput-char v4, v5, v12

    goto :goto_53f

    .line 1187
    :cond_535
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v12, 0x1

    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v16, v4

    aput-char v4, v5, v12

    :goto_53f
    move v5, v15

    goto :goto_4c4

    :cond_541
    const/4 v11, 0x4

    if-eq v4, v14, :cond_550

    const/16 v12, 0x2029

    if-ne v4, v12, :cond_549

    goto :goto_550

    .line 1200
    :cond_549
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v5, 0x1

    aput-char v4, v12, v5

    goto :goto_53f

    .line 1192
    :cond_550
    :goto_550
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v5, 0x1

    aput-char v13, v12, v5

    add-int/lit8 v5, v15, 0x1

    const/16 v16, 0x75

    .line 1193
    aput-char v16, v12, v15

    add-int/lit8 v15, v5, 0x1

    .line 1194
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v18, v4, 0xc

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v12, v5

    .line 1195
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v15, 0x1

    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v18, v4, 0x8

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v5, v15

    .line 1196
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v12, 0x1

    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v18, v4, 0x4

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v5, v12

    .line 1197
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v15, 0x1

    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v17, v4

    aput-char v4, v5, v15

    move v5, v12

    :goto_591
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_45f

    :cond_595
    :goto_595
    if-eqz v2, :cond_5a6

    .line 1208
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v3, -0x2

    const/16 v5, 0x22

    aput-char v5, v1, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 1209
    aput-char v2, v1, v3

    goto :goto_5b0

    :cond_5a6
    const/4 v4, 0x1

    const/16 v5, 0x22

    .line 1211
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v2, v4

    aput-char v5, v1, v2

    :goto_5b0
    return-void
.end method

.method public writeStringWithDoubleQuote([CC)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-nez v1, :cond_11

    .line 1217
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    if-eqz v2, :cond_10

    .line 1219
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_10
    return-void

    .line 1224
    :cond_11
    array-length v3, v1

    .line 1225
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    if-eqz v2, :cond_1b

    add-int/lit8 v4, v4, 0x1

    .line 1230
    :cond_1b
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    const/16 v6, 0x3e

    const/16 v7, 0x3c

    const/16 v8, 0x29

    const/16 v9, 0x28

    const/16 v14, 0x22

    const/16 v15, 0xc

    const/16 v12, 0x8

    const/16 v10, 0x75

    const/16 v13, 0x5c

    const/4 v11, 0x1

    if-le v4, v5, :cond_174

    .line 1231
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v5, :cond_171

    .line 1232
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v3, 0x0

    .line 1234
    :goto_3b
    array-length v4, v1

    if-ge v3, v4, :cond_168

    .line 1235
    aget-char v4, v1, v3

    .line 1237
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-eqz v5, :cond_82

    if-eq v4, v9, :cond_50

    if-eq v4, v8, :cond_50

    if-eq v4, v7, :cond_50

    if-ne v4, v6, :cond_82

    .line 1243
    :cond_50
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1244
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1245
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v16, v4, 0xc

    and-int/lit8 v16, v16, 0xf

    aget-char v5, v5, v16

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1246
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v16, v4, 0x8

    and-int/lit8 v16, v16, 0xf

    aget-char v5, v5, v16

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1247
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v16, v4, 0x4

    and-int/lit8 v16, v16, 0xf

    aget-char v5, v5, v16

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1248
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_162

    .line 1253
    :cond_82
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-eqz v5, :cond_108

    if-eq v4, v12, :cond_fd

    if-eq v4, v15, :cond_fd

    const/16 v5, 0xa

    if-eq v4, v5, :cond_fd

    const/16 v5, 0xd

    if-eq v4, v5, :cond_fd

    const/16 v5, 0x9

    if-eq v4, v5, :cond_fd

    if-eq v4, v14, :cond_fd

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_fd

    if-ne v4, v13, :cond_a3

    goto :goto_fd

    :cond_a3
    const/16 v5, 0x20

    if-ge v4, v5, :cond_c8

    .line 1268
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1269
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v5, 0x30

    .line 1270
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1271
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1272
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v4, v4, 0x2

    aget-char v5, v5, v4

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1273
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    add-int/2addr v4, v11

    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_162

    :cond_c8
    const/16 v5, 0x7f

    if-lt v4, v5, :cond_15f

    .line 1278
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1279
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1280
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v16, v4, 0xc

    and-int/lit8 v16, v16, 0xf

    aget-char v5, v5, v16

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1281
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v16, v4, 0x8

    and-int/lit8 v16, v16, 0xf

    aget-char v5, v5, v16

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1282
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v16, v4, 0x4

    and-int/lit8 v16, v16, 0xf

    aget-char v5, v5, v16

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1283
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_162

    .line 1262
    :cond_fd
    :goto_fd
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1263
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_162

    .line 1287
    :cond_108
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v5, v5

    if-ge v4, v5, :cond_113

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v5, v5, v4

    if-nez v5, :cond_11f

    :cond_113
    const/16 v5, 0x2f

    if-ne v4, v5, :cond_15f

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1289
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-eqz v5, :cond_15f

    .line 1290
    :cond_11f
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1291
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v5, v5, v4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_157

    .line 1292
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1293
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v4, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1294
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1295
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1296
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_162

    .line 1298
    :cond_157
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_162

    .line 1304
    :cond_15f
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_162
    add-int/lit8 v3, v3, 0x1

    const/16 v6, 0x3e

    goto/16 :goto_3b

    .line 1307
    :cond_168
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    if-eqz v2, :cond_170

    .line 1309
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_170
    return-void

    .line 1313
    :cond_171
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1316
    :cond_174
    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v3, v6

    .line 1319
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v14, v7, v5

    .line 1321
    array-length v5, v1

    const/4 v8, 0x0

    invoke-static {v1, v8, v7, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1323
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1325
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    const/4 v7, -0x1

    if-eqz v5, :cond_2b0

    move v1, v6

    :goto_18e
    if-ge v1, v3, :cond_1c0

    .line 1329
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v5, v5, v1

    if-eq v5, v14, :cond_1ba

    const/16 v8, 0x2f

    if-eq v5, v8, :cond_1ba

    if-ne v5, v13, :cond_19d

    goto :goto_1ba

    :cond_19d
    if-eq v5, v12, :cond_1ba

    if-eq v5, v15, :cond_1ba

    const/16 v8, 0xa

    if-eq v5, v8, :cond_1ba

    const/16 v8, 0xd

    if-eq v5, v8, :cond_1ba

    const/16 v8, 0x9

    if-ne v5, v8, :cond_1ae

    goto :goto_1ba

    :cond_1ae
    const/16 v8, 0x20

    if-ge v5, v8, :cond_1b5

    :goto_1b2
    add-int/lit8 v4, v4, 0x5

    goto :goto_1bc

    :cond_1b5
    const/16 v8, 0x7f

    if-lt v5, v8, :cond_1bd

    goto :goto_1b2

    :cond_1ba
    :goto_1ba
    add-int/lit8 v4, v4, 0x1

    :goto_1bc
    move v7, v1

    :cond_1bd
    add-int/lit8 v1, v1, 0x1

    goto :goto_18e

    .line 1362
    :cond_1c0
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v4, v1, :cond_1c8

    .line 1363
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1365
    :cond_1c8
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    :goto_1ca
    if-lt v7, v6, :cond_29a

    .line 1368
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v4, v1, v7

    if-eq v4, v12, :cond_27e

    if-eq v4, v15, :cond_27e

    const/16 v5, 0xa

    if-eq v4, v5, :cond_27e

    const/16 v5, 0xd

    if-eq v4, v5, :cond_27e

    const/16 v5, 0x9

    if-ne v4, v5, :cond_1e2

    goto/16 :goto_27e

    :cond_1e2
    if-eq v4, v14, :cond_26b

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_26b

    if-ne v4, v13, :cond_1ec

    goto/16 :goto_26b

    :cond_1ec
    const/16 v5, 0x20

    if-ge v4, v5, :cond_222

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v8, v7, 0x6

    sub-int v9, v3, v7

    sub-int/2addr v9, v11

    .line 1393
    invoke-static {v1, v5, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1394
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v1, v7

    .line 1395
    aput-char v10, v1, v5

    add-int/lit8 v5, v7, 0x2

    const/16 v8, 0x30

    .line 1396
    aput-char v8, v1, v5

    add-int/lit8 v5, v7, 0x3

    .line 1397
    aput-char v8, v1, v5

    add-int/lit8 v5, v7, 0x4

    .line 1398
    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v4, v4, 0x2

    aget-char v8, v8, v4

    aput-char v8, v1, v5

    .line 1399
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v7, 0x5

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    add-int/2addr v4, v11

    aget-char v4, v8, v4

    aput-char v4, v1, v5

    :goto_21f
    add-int/lit8 v3, v3, 0x5

    goto :goto_296

    :cond_222
    const/16 v5, 0x7f

    if-lt v4, v5, :cond_296

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v8, v7, 0x6

    sub-int v9, v3, v7

    sub-int/2addr v9, v11

    .line 1405
    invoke-static {v1, v5, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1406
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v1, v7

    .line 1407
    aput-char v10, v1, v5

    add-int/lit8 v5, v7, 0x2

    .line 1408
    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v4, 0xc

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    aput-char v8, v1, v5

    .line 1409
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v7, 0x3

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v4, 0x8

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    aput-char v8, v1, v5

    .line 1410
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v7, 0x4

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v4, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    aput-char v8, v1, v5

    .line 1411
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v7, 0x5

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v8, v4

    aput-char v4, v1, v5

    goto :goto_21f

    .line 1385
    :cond_26b
    :goto_26b
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v8, v7, 0x2

    sub-int v9, v3, v7

    sub-int/2addr v9, v11

    invoke-static {v1, v5, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1386
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v1, v7

    .line 1387
    aput-char v4, v1, v5

    goto :goto_294

    .line 1375
    :cond_27e
    :goto_27e
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v8, v7, 0x2

    sub-int v9, v3, v7

    sub-int/2addr v9, v11

    invoke-static {v1, v5, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1376
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v1, v7

    .line 1377
    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v8, v4

    aput-char v4, v1, v5

    :goto_294
    add-int/lit8 v3, v3, 0x1

    :cond_296
    :goto_296
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1ca

    :cond_29a
    if-eqz v2, :cond_2a8

    .line 1417
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v3, -0x2

    aput-char v14, v1, v4

    sub-int/2addr v3, v11

    .line 1418
    aput-char v2, v1, v3

    goto :goto_2af

    .line 1420
    :cond_2a8
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v2, v11

    aput-char v14, v1, v2

    :goto_2af
    return-void

    :cond_2b0
    move v5, v6

    const/4 v8, -0x1

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v19, -0x1

    :goto_2b6
    const/16 v14, 0x2028

    if-ge v5, v3, :cond_332

    .line 1432
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v10, v10, v5

    const/16 v11, 0x5d

    if-lt v10, v11, :cond_2df

    const/16 v11, 0x7f

    if-lt v10, v11, :cond_2dd

    if-eq v10, v14, :cond_2d0

    const/16 v14, 0x2029

    if-eq v10, v14, :cond_2d0

    const/16 v14, 0xa0

    if-ge v10, v14, :cond_2dd

    :cond_2d0
    if-ne v8, v7, :cond_2d3

    move v8, v5

    :cond_2d3
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v4, v4, 0x4

    move/from16 v19, v5

    move v7, v8

    move v15, v10

    :goto_2db
    const/4 v8, -0x1

    goto :goto_32a

    :cond_2dd
    move v7, v8

    goto :goto_2db

    :cond_2df
    const/16 v11, 0x7f

    const/16 v14, 0x40

    move/from16 v20, v8

    if-ge v10, v14, :cond_2f5

    .line 1451
    iget-wide v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    const-wide/16 v21, 0x1

    shl-long v21, v21, v10

    and-long v7, v7, v21

    const-wide/16 v21, 0x0

    cmp-long v14, v7, v21

    if-nez v14, :cond_2f7

    :cond_2f5
    if-ne v10, v13, :cond_2f9

    :cond_2f7
    const/4 v7, 0x1

    goto :goto_2fa

    :cond_2f9
    const/4 v7, 0x0

    :goto_2fa
    if-eqz v7, :cond_327

    add-int/lit8 v12, v12, 0x1

    if-eq v10, v9, :cond_318

    const/16 v7, 0x29

    if-eq v10, v7, :cond_318

    const/16 v7, 0x3c

    if-eq v10, v7, :cond_318

    const/16 v7, 0x3e

    if-eq v10, v7, :cond_318

    .line 1457
    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v7, v7

    if-ge v10, v7, :cond_31a

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v7, v7, v10

    const/4 v8, 0x4

    if-ne v7, v8, :cond_31a

    :cond_318
    add-int/lit8 v4, v4, 0x4

    :cond_31a
    move/from16 v7, v20

    const/4 v8, -0x1

    if-ne v7, v8, :cond_323

    move v7, v5

    move/from16 v19, v7

    goto :goto_325

    :cond_323
    move/from16 v19, v5

    :goto_325
    move v15, v10

    goto :goto_32a

    :cond_327
    move/from16 v7, v20

    goto :goto_2db

    :goto_32a
    add-int/lit8 v5, v5, 0x1

    move v8, v7

    const/4 v7, -0x1

    const/16 v10, 0x75

    const/4 v11, 0x1

    goto :goto_2b6

    :cond_332
    move v7, v8

    if-lez v12, :cond_58f

    add-int/2addr v4, v12

    .line 1475
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    if-le v4, v5, :cond_33e

    .line 1476
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1478
    :cond_33e
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v4, 0x1

    if-ne v12, v4, :cond_45d

    const/16 v1, 0x32

    if-ne v15, v14, :cond_36d

    add-int/lit8 v5, v19, 0x1

    add-int/lit8 v6, v19, 0x6

    sub-int v3, v3, v19

    sub-int/2addr v3, v4

    .line 1485
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v7, v5, v7, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1486
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v3, v19

    const/16 v6, 0x75

    .line 1487
    aput-char v6, v3, v5

    add-int/2addr v5, v4

    .line 1488
    aput-char v1, v3, v5

    add-int/2addr v5, v4

    const/16 v6, 0x30

    .line 1489
    aput-char v6, v3, v5

    add-int/2addr v5, v4

    .line 1490
    aput-char v1, v3, v5

    add-int/2addr v5, v4

    const/16 v1, 0x38

    .line 1491
    aput-char v1, v3, v5

    goto/16 :goto_58f

    :cond_36d
    const/16 v5, 0x2029

    if-ne v15, v5, :cond_397

    add-int/lit8 v5, v19, 0x1

    add-int/lit8 v6, v19, 0x6

    sub-int v3, v3, v19

    sub-int/2addr v3, v4

    .line 1496
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v7, v5, v7, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1497
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v3, v19

    const/16 v6, 0x75

    .line 1498
    aput-char v6, v3, v5

    add-int/2addr v5, v4

    .line 1499
    aput-char v1, v3, v5

    add-int/2addr v5, v4

    const/16 v6, 0x30

    .line 1500
    aput-char v6, v3, v5

    add-int/2addr v5, v4

    .line 1501
    aput-char v1, v3, v5

    add-int/2addr v5, v4

    const/16 v1, 0x39

    .line 1502
    aput-char v1, v3, v5

    goto/16 :goto_58f

    :cond_397
    if-eq v15, v9, :cond_416

    const/16 v1, 0x29

    if-eq v15, v1, :cond_416

    const/16 v1, 0x3c

    if-eq v15, v1, :cond_416

    const/16 v1, 0x3e

    if-ne v15, v1, :cond_3a6

    goto :goto_416

    .line 1518
    :cond_3a6
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v1, v1

    if-ge v15, v1, :cond_3fd

    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v1, v1, v15

    const/4 v4, 0x4

    if-ne v1, v4, :cond_3fd

    add-int/lit8 v1, v19, 0x1

    add-int/lit8 v4, v19, 0x6

    sub-int v3, v3, v19

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    .line 1523
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v5, v1, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1526
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v3, v19

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x75

    .line 1527
    aput-char v5, v3, v1

    add-int/lit8 v1, v4, 0x1

    .line 1528
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v15, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    .line 1529
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v15, 0x8

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v1

    .line 1530
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v4, 0x1

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v15, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    .line 1531
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v5, v15, 0xf

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    goto/16 :goto_58f

    :cond_3fd
    add-int/lit8 v1, v19, 0x1

    add-int/lit8 v4, v19, 0x2

    sub-int v3, v3, v19

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    .line 1536
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v5, v1, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1537
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v3, v19

    .line 1538
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v4, v15

    aput-char v4, v3, v1

    goto/16 :goto_58f

    :cond_416
    :goto_416
    add-int/lit8 v1, v19, 0x1

    add-int/lit8 v4, v19, 0x6

    sub-int v3, v3, v19

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    .line 1507
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v6, v1, v6, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1508
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v13, v3, v19

    const/16 v4, 0x75

    .line 1509
    aput-char v4, v3, v1

    add-int/2addr v1, v5

    .line 1512
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v15, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v4, v4, v6

    aput-char v4, v3, v1

    .line 1513
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v1, v5

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v15, 0x8

    and-int/lit8 v6, v6, 0xf

    aget-char v4, v4, v6

    aput-char v4, v3, v1

    .line 1514
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v1, v5

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v15, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v4, v4, v6

    aput-char v4, v3, v1

    .line 1515
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v1, v5

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v6, v15, 0xf

    aget-char v4, v4, v6

    aput-char v4, v3, v1

    goto/16 :goto_58f

    :cond_45d
    const/4 v5, 0x1

    if-le v12, v5, :cond_58f

    sub-int v8, v7, v6

    .line 1544
    :goto_462
    array-length v3, v1

    if-ge v8, v3, :cond_58f

    .line 1545
    aget-char v3, v1, v8

    .line 1547
    iget-boolean v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    if-eqz v4, :cond_4c4

    const/16 v4, 0x29

    const/16 v5, 0x3c

    if-eq v3, v9, :cond_47a

    if-eq v3, v4, :cond_47a

    const/16 v6, 0x3e

    if-eq v3, v5, :cond_47c

    if-ne v3, v6, :cond_4ca

    goto :goto_47c

    :cond_47a
    const/16 v6, 0x3e

    .line 1551
    :cond_47c
    :goto_47c
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v7, 0x1

    aput-char v13, v10, v7

    add-int/lit8 v7, v11, 0x1

    const/16 v12, 0x75

    .line 1552
    aput-char v12, v10, v11

    add-int/lit8 v11, v7, 0x1

    .line 1553
    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v15, v3, 0xc

    and-int/lit8 v15, v15, 0xf

    aget-char v12, v12, v15

    aput-char v12, v10, v7

    .line 1554
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v11, 0x1

    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v15, v3, 0x8

    and-int/lit8 v15, v15, 0xf

    aget-char v12, v12, v15

    aput-char v12, v7, v11

    .line 1555
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v10, 0x1

    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v15, v3, 0x4

    and-int/lit8 v15, v15, 0xf

    aget-char v12, v12, v15

    aput-char v12, v7, v10

    .line 1556
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v11, 0x1

    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v12, v3

    aput-char v3, v7, v11

    move v7, v10

    const/16 v10, 0x2f

    const/4 v11, 0x4

    :goto_4c0
    const/16 v16, 0x75

    goto/16 :goto_58b

    :cond_4c4
    const/16 v4, 0x29

    const/16 v5, 0x3c

    const/16 v6, 0x3e

    .line 1558
    :cond_4ca
    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v10, v10

    if-ge v3, v10, :cond_4d9

    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v10, v10, v3

    if-nez v10, :cond_4d6

    goto :goto_4d9

    :cond_4d6
    const/16 v10, 0x2f

    goto :goto_4e5

    :cond_4d9
    :goto_4d9
    const/16 v10, 0x2f

    if-ne v3, v10, :cond_53b

    sget-object v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1560
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v11

    if-eqz v11, :cond_53b

    .line 1561
    :goto_4e5
    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v7, 0x1

    aput-char v13, v11, v7

    .line 1562
    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v7, v7, v3

    const/4 v11, 0x4

    if-ne v7, v11, :cond_52f

    .line 1563
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v12, 0x1

    const/16 v16, 0x75

    aput-char v16, v7, v12

    add-int/lit8 v12, v15, 0x1

    .line 1564
    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v17, v3, 0xc

    and-int/lit8 v17, v17, 0xf

    aget-char v16, v16, v17

    aput-char v16, v7, v15

    .line 1565
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v12, 0x1

    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v17, v3, 0x8

    and-int/lit8 v17, v17, 0xf

    aget-char v16, v16, v17

    aput-char v16, v7, v12

    .line 1566
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v15, 0x1

    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v17, v3, 0x4

    and-int/lit8 v17, v17, 0xf

    aget-char v16, v16, v17

    aput-char v16, v7, v15

    .line 1567
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v12, 0x1

    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v16, v3

    aput-char v3, v7, v12

    goto :goto_539

    .line 1570
    :cond_52f
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v12, 0x1

    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v3, v16, v3

    aput-char v3, v7, v12

    :goto_539
    move v7, v15

    goto :goto_4c0

    :cond_53b
    const/4 v11, 0x4

    if-eq v3, v14, :cond_54a

    const/16 v12, 0x2029

    if-ne v3, v12, :cond_543

    goto :goto_54a

    .line 1583
    :cond_543
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v7, 0x1

    aput-char v3, v12, v7

    goto :goto_539

    .line 1575
    :cond_54a
    :goto_54a
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v7, 0x1

    aput-char v13, v12, v7

    add-int/lit8 v7, v15, 0x1

    const/16 v16, 0x75

    .line 1576
    aput-char v16, v12, v15

    add-int/lit8 v15, v7, 0x1

    .line 1577
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v18, v3, 0xc

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v12, v7

    .line 1578
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v15, 0x1

    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v18, v3, 0x8

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v7, v15

    .line 1579
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v12, 0x1

    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v18, v3, 0x4

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v7, v12

    .line 1580
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v15, 0x1

    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v17, v3

    aput-char v3, v7, v15

    move v7, v12

    :goto_58b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_462

    :cond_58f
    :goto_58f
    if-eqz v2, :cond_5a0

    .line 1591
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v3, -0x2

    const/16 v5, 0x22

    aput-char v5, v1, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 1592
    aput-char v2, v1, v3

    goto :goto_5aa

    :cond_5a0
    const/4 v4, 0x1

    const/16 v5, 0x22

    .line 1594
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v2, v4

    aput-char v5, v1, v2

    :goto_5aa
    return-void
.end method

.method protected writeStringWithSingleQuote(Ljava/lang/String;)V
    .registers 14

    const/4 v0, 0x0

    if-nez p1, :cond_1b

    .line 2200
    iget p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v1, 0x4

    add-int/2addr p1, v1

    .line 2201
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le p1, v2, :cond_f

    .line 2202
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2204
    :cond_f
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const-string v4, "null"

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 2205
    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void

    .line 2209
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2210
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x2

    .line 2211
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    const/16 v4, 0x2f

    const/16 v5, 0xd

    const/16 v6, 0x5c

    const/16 v7, 0x27

    if-le v2, v3, :cond_6b

    .line 2212
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_68

    .line 2213
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2214
    :goto_38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_64

    .line 2215
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-le v1, v5, :cond_57

    if-eq v1, v6, :cond_57

    if-eq v1, v7, :cond_57

    if-ne v1, v4, :cond_53

    .line 2216
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2217
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_53

    goto :goto_57

    .line 2221
    :cond_53
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_61

    .line 2218
    :cond_57
    :goto_57
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2219
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 2224
    :cond_64
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 2227
    :cond_68
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2230
    :cond_6b
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v3, 0x1

    add-int v9, v8, v1

    .line 2233
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v7, v10, v3

    .line 2234
    invoke-virtual {p1, v0, v1, v10, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 2235
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 p1, -0x1

    move v3, v8

    const/4 v1, 0x0

    :goto_7d
    if-ge v3, v9, :cond_9a

    .line 2241
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v10, v10, v3

    if-le v10, v5, :cond_93

    if-eq v10, v6, :cond_93

    if-eq v10, v7, :cond_93

    if-ne v10, v4, :cond_97

    .line 2242
    sget-object v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2243
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v11

    if-eqz v11, :cond_97

    :cond_93
    add-int/lit8 v0, v0, 0x1

    move p1, v3

    move v1, v10

    :cond_97
    add-int/lit8 v3, v3, 0x1

    goto :goto_7d

    :cond_9a
    add-int/2addr v2, v0

    .line 2251
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v2, v3, :cond_a3

    .line 2252
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2254
    :cond_a3
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_be

    .line 2257
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p1, 0x2

    sub-int/2addr v9, p1

    sub-int/2addr v9, v2

    invoke-static {v0, v3, v0, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2258
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v6, v0, p1

    .line 2259
    sget-object p1, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char p1, p1, v1

    aput-char p1, v0, v3

    goto :goto_10a

    :cond_be
    if-le v0, v2, :cond_10a

    .line 2261
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v10, p1, 0x2

    sub-int v11, v9, p1

    sub-int/2addr v11, v2

    invoke-static {v0, v3, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2262
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v6, v0, p1

    .line 2263
    sget-object p1, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char p1, p1, v1

    aput-char p1, v0, v3

    add-int/2addr v9, v2

    add-int/lit8 v3, v3, -0x2

    :goto_d9
    if-lt v3, v8, :cond_10a

    .line 2266
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char p1, p1, v3

    if-le p1, v5, :cond_ef

    if-eq p1, v6, :cond_ef

    if-eq p1, v7, :cond_ef

    if-ne p1, v4, :cond_107

    .line 2268
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2269
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_107

    .line 2270
    :cond_ef
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v10, v3, 0x2

    sub-int v11, v9, v3

    sub-int/2addr v11, v2

    invoke-static {v0, v1, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2271
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v6, v0, v3

    .line 2272
    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char p1, v10, p1

    aput-char p1, v0, v1

    add-int/lit8 v9, v9, 0x1

    :cond_107
    add-int/lit8 v3, v3, -0x1

    goto :goto_d9

    .line 2278
    :cond_10a
    :goto_10a
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v0, v2

    aput-char v7, p1, v0

    return-void
.end method

.method protected writeStringWithSingleQuote([C)V
    .registers 14

    const/4 v0, 0x0

    if-nez p1, :cond_1b

    .line 2283
    iget p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v1, 0x4

    add-int/2addr p1, v1

    .line 2284
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le p1, v2, :cond_f

    .line 2285
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2287
    :cond_f
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const-string v4, "null"

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 2288
    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void

    .line 2292
    :cond_1b
    array-length v1, p1

    .line 2293
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x2

    .line 2294
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    const/16 v4, 0x2f

    const/16 v5, 0xd

    const/16 v6, 0x5c

    const/16 v7, 0x27

    if-le v2, v3, :cond_63

    .line 2295
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_60

    .line 2296
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2297
    :goto_35
    array-length v1, p1

    if-ge v0, v1, :cond_5c

    .line 2298
    aget-char v1, p1, v0

    if-le v1, v5, :cond_4f

    if-eq v1, v6, :cond_4f

    if-eq v1, v7, :cond_4f

    if-ne v1, v4, :cond_4b

    .line 2299
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2300
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_4b

    goto :goto_4f

    .line 2304
    :cond_4b
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_59

    .line 2301
    :cond_4f
    :goto_4f
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2302
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 2307
    :cond_5c
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 2310
    :cond_60
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2313
    :cond_63
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v3, 0x1

    add-int/2addr v1, v8

    .line 2316
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v7, v9, v3

    .line 2318
    array-length v3, p1

    invoke-static {p1, v0, v9, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2319
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 p1, -0x1

    move v9, v8

    const/4 v3, 0x0

    :goto_75
    if-ge v9, v1, :cond_92

    .line 2325
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v10, v10, v9

    if-le v10, v5, :cond_8b

    if-eq v10, v6, :cond_8b

    if-eq v10, v7, :cond_8b

    if-ne v10, v4, :cond_8f

    .line 2326
    sget-object v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2327
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v11

    if-eqz v11, :cond_8f

    :cond_8b
    add-int/lit8 v0, v0, 0x1

    move p1, v9

    move v3, v10

    :cond_8f
    add-int/lit8 v9, v9, 0x1

    goto :goto_75

    :cond_92
    add-int/2addr v2, v0

    .line 2335
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v2, v9, :cond_9b

    .line 2336
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2338
    :cond_9b
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b6

    .line 2341
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v5, p1, 0x2

    sub-int/2addr v1, p1

    sub-int/2addr v1, v2

    invoke-static {v0, v4, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2342
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v6, v0, p1

    .line 2343
    sget-object p1, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char p1, p1, v3

    aput-char p1, v0, v4

    goto :goto_102

    :cond_b6
    if-le v0, v2, :cond_102

    .line 2345
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, p1, 0x1

    add-int/lit8 v10, p1, 0x2

    sub-int v11, v1, p1

    sub-int/2addr v11, v2

    invoke-static {v0, v9, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2346
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v6, v0, p1

    .line 2347
    sget-object p1, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char p1, p1, v3

    aput-char p1, v0, v9

    add-int/2addr v1, v2

    add-int/lit8 v9, v9, -0x2

    :goto_d1
    if-lt v9, v8, :cond_102

    .line 2350
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char p1, p1, v9

    if-le p1, v5, :cond_e7

    if-eq p1, v6, :cond_e7

    if-eq p1, v7, :cond_e7

    if-ne p1, v4, :cond_ff

    .line 2352
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2353
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 2354
    :cond_e7
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v9, 0x1

    add-int/lit8 v10, v9, 0x2

    sub-int v11, v1, v9

    sub-int/2addr v11, v2

    invoke-static {v0, v3, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2355
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v6, v0, v9

    .line 2356
    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char p1, v10, p1

    aput-char p1, v0, v3

    add-int/lit8 v1, v1, 0x1

    :cond_ff
    add-int/lit8 v9, v9, -0x1

    goto :goto_d1

    .line 2362
    :cond_102
    :goto_102
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v0, v2

    aput-char v7, p1, v0

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeToEx(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I

    return-void
.end method

.method public writeTo(Ljava/io/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_d

    .line 376
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v1, 0x0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    return-void

    .line 374
    :cond_d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "writer not null"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeToEx(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_20

    .line 392
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    if-ne p2, v0, :cond_d

    .line 393
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->encodeToUTF8(Ljava/io/OutputStream;)I

    move-result p1

    return p1

    .line 395
    :cond_d
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 396
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 397
    array-length p1, p2

    return p1

    .line 389
    :cond_20
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "writer not null"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
