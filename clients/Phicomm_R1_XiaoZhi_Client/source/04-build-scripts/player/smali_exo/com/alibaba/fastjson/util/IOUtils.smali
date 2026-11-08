.class public Lcom/alibaba/fastjson/util/IOUtils;
.super Ljava/lang/Object;


# static fields
.field public static final ASCII_CHARS:[C

.field public static final CA:[C

.field public static final DEFAULT_PROPERTIES:Ljava/util/Properties;

.field public static final DIGITS:[C

.field static final DigitOnes:[C

.field static final DigitTens:[C

.field public static final FASTJSON_COMPATIBLEWITHFIELDNAME:Ljava/lang/String; = "fastjson.compatibleWithFieldName"

.field public static final FASTJSON_COMPATIBLEWITHJAVABEAN:Ljava/lang/String; = "fastjson.compatibleWithJavaBean"

.field public static final FASTJSON_PROPERTIES:Ljava/lang/String; = "fastjson.properties"

.field public static final IA:[I

.field public static final UTF8:Ljava/nio/charset/Charset;

.field static final digits:[C

.field public static final firstIdentifierFlags:[Z

.field public static final identifierFlags:[Z

.field public static final replaceChars:[C

.field static final sizeTable:[I

.field public static final specicalFlags_doubleQuotes:[B

.field public static final specicalFlags_doubleQuotesFlags:[Z

.field public static final specicalFlags_singleQuotes:[B

.field public static final specicalFlags_singleQuotesFlags:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 21

    .line 43
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DEFAULT_PROPERTIES:Ljava/util/Properties;

    const-string v0, "UTF-8"

    .line 44
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 45
    fill-array-data v0, :array_1d8

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    const/16 v0, 0x100

    new-array v1, v0, [Z

    .line 46
    sput-object v1, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    new-array v1, v0, [Z

    .line 47
    sput-object v1, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 49
    :goto_24
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    array-length v4, v3

    const/16 v5, 0x5a

    const/16 v6, 0x61

    const/16 v7, 0x41

    const/4 v8, 0x1

    if-ge v2, v4, :cond_52

    if-lt v2, v7, :cond_37

    if-gt v2, v5, :cond_37

    .line 51
    aput-boolean v8, v3, v2

    goto :goto_4e

    :cond_37
    if-lt v2, v6, :cond_42

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_42

    .line 53
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aput-boolean v8, v3, v2

    goto :goto_4e

    :cond_42
    const/16 v3, 0x5f

    if-eq v2, v3, :cond_4a

    const/16 v3, 0x24

    if-ne v2, v3, :cond_4e

    .line 55
    :cond_4a
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aput-boolean v8, v3, v2

    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    goto :goto_24

    :cond_52
    const/4 v2, 0x0

    .line 59
    :goto_53
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    array-length v4, v3

    if-ge v2, v4, :cond_83

    if-lt v2, v7, :cond_5f

    if-gt v2, v5, :cond_5f

    .line 61
    aput-boolean v8, v3, v2

    goto :goto_7f

    :cond_5f
    if-lt v2, v6, :cond_6a

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_6a

    .line 63
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v8, v3, v2

    goto :goto_7f

    :cond_6a
    const/16 v3, 0x5f

    if-ne v2, v3, :cond_73

    .line 65
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v8, v3, v2

    goto :goto_7f

    :cond_73
    const/16 v3, 0x30

    if-lt v2, v3, :cond_7f

    const/16 v3, 0x39

    if-gt v2, v3, :cond_7f

    .line 67
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v8, v3, v2

    :cond_7f
    :goto_7f
    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    goto :goto_53

    .line 72
    :cond_83
    :try_start_83
    invoke-static {}, Lcom/alibaba/fastjson/util/IOUtils;->loadPropertiesFromFile()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_86

    :catchall_86
    const/16 v2, 0xa1

    new-array v3, v2, [B

    .line 110
    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    new-array v4, v2, [B

    .line 111
    sput-object v4, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    new-array v5, v2, [Z

    .line 112
    sput-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotesFlags:[Z

    new-array v5, v2, [Z

    .line 113
    sput-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotesFlags:[Z

    const/16 v5, 0x5d

    new-array v5, v5, [C

    .line 115
    sput-object v5, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v5, 0x4

    aput-byte v5, v3, v1

    aput-byte v5, v3, v8

    const/4 v6, 0x2

    aput-byte v5, v3, v6

    const/4 v7, 0x3

    aput-byte v5, v3, v7

    aput-byte v5, v3, v5

    const/4 v9, 0x5

    aput-byte v5, v3, v9

    const/4 v10, 0x6

    aput-byte v5, v3, v10

    const/4 v11, 0x7

    aput-byte v5, v3, v11

    const/16 v12, 0x8

    aput-byte v8, v3, v12

    const/16 v13, 0x9

    aput-byte v8, v3, v13

    const/16 v14, 0xa

    aput-byte v8, v3, v14

    const/16 v15, 0xb

    aput-byte v5, v3, v15

    const/16 v16, 0xc

    aput-byte v8, v3, v16

    const/16 v17, 0xd

    aput-byte v8, v3, v17

    const/16 v18, 0x22

    aput-byte v8, v3, v18

    const/16 v19, 0x5c

    aput-byte v8, v3, v19

    aput-byte v5, v4, v1

    aput-byte v5, v4, v8

    aput-byte v5, v4, v6

    aput-byte v5, v4, v7

    aput-byte v5, v4, v5

    aput-byte v5, v4, v9

    aput-byte v5, v4, v10

    aput-byte v5, v4, v11

    aput-byte v8, v4, v12

    aput-byte v8, v4, v13

    aput-byte v8, v4, v14

    aput-byte v5, v4, v15

    aput-byte v8, v4, v16

    aput-byte v8, v4, v17

    aput-byte v8, v4, v19

    const/16 v3, 0x27

    aput-byte v8, v4, v3

    const/16 v4, 0xe

    :goto_f8
    const/16 v0, 0x1f

    if-gt v4, v0, :cond_107

    .line 152
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v5, v0, v4

    .line 153
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_f8

    :cond_107
    const/16 v0, 0x7f

    :goto_109
    const/16 v4, 0xa0

    if-ge v0, v4, :cond_118

    .line 157
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v5, v4, v0

    .line 158
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_109

    :cond_118
    const/4 v0, 0x0

    :goto_119
    if-ge v0, v2, :cond_13c

    .line 162
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotesFlags:[Z

    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v20, v20, v0

    if-eqz v20, :cond_126

    const/16 v20, 0x1

    goto :goto_128

    :cond_126
    const/16 v20, 0x0

    :goto_128
    aput-boolean v20, v4, v0

    .line 163
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotesFlags:[Z

    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aget-byte v20, v20, v0

    if-eqz v20, :cond_135

    const/16 v20, 0x1

    goto :goto_137

    :cond_135
    const/16 v20, 0x0

    :goto_137
    aput-boolean v20, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_119

    .line 166
    :cond_13c
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v2, 0x31

    .line 167
    aput-char v2, v0, v8

    const/16 v2, 0x32

    .line 168
    aput-char v2, v0, v6

    const/16 v2, 0x33

    .line 169
    aput-char v2, v0, v7

    const/16 v2, 0x34

    .line 170
    aput-char v2, v0, v5

    const/16 v2, 0x35

    .line 171
    aput-char v2, v0, v9

    const/16 v2, 0x36

    .line 172
    aput-char v2, v0, v10

    const/16 v2, 0x37

    .line 173
    aput-char v2, v0, v11

    const/16 v2, 0x62

    .line 174
    aput-char v2, v0, v12

    const/16 v2, 0x74

    .line 175
    aput-char v2, v0, v13

    const/16 v2, 0x6e

    .line 176
    aput-char v2, v0, v14

    const/16 v2, 0x76

    .line 177
    aput-char v2, v0, v15

    const/16 v2, 0x66

    .line 178
    aput-char v2, v0, v16

    const/16 v2, 0x72

    .line 179
    aput-char v2, v0, v17

    .line 180
    aput-char v18, v0, v18

    .line 181
    aput-char v3, v0, v3

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    .line 182
    aput-char v3, v0, v2

    .line 183
    aput-char v19, v0, v19

    const/16 v0, 0x60

    new-array v0, v0, [C

    .line 186
    fill-array-data v0, :array_1ec

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    const/16 v0, 0x24

    new-array v0, v0, [C

    .line 325
    fill-array-data v0, :array_250

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    const/16 v0, 0x64

    new-array v0, v0, [C

    .line 328
    fill-array-data v0, :array_278

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    const/16 v0, 0x64

    new-array v0, v0, [C

    .line 334
    fill-array-data v0, :array_2e0

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    new-array v0, v14, [I

    .line 340
    fill-array-data v0, :array_348

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->sizeTable:[I

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 379
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 380
    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    const/4 v2, -0x1

    .line 382
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 383
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    array-length v0, v0

    const/4 v2, 0x0

    :goto_1c3
    if-ge v2, v0, :cond_1d0

    .line 384
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    aget-char v4, v4, v2

    aput v2, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c3

    .line 385
    :cond_1d0
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    const/16 v2, 0x3d

    aput v1, v0, v2

    return-void

    nop

    :array_1d8
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1ec
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x31s
        0x30s
        0x32s
        0x30s
        0x33s
        0x30s
        0x34s
        0x30s
        0x35s
        0x30s
        0x36s
        0x30s
        0x37s
        0x30s
        0x38s
        0x30s
        0x39s
        0x30s
        0x41s
        0x30s
        0x42s
        0x30s
        0x43s
        0x30s
        0x44s
        0x30s
        0x45s
        0x30s
        0x46s
        0x31s
        0x30s
        0x31s
        0x31s
        0x31s
        0x32s
        0x31s
        0x33s
        0x31s
        0x34s
        0x31s
        0x35s
        0x31s
        0x36s
        0x31s
        0x37s
        0x31s
        0x38s
        0x31s
        0x39s
        0x31s
        0x41s
        0x31s
        0x42s
        0x31s
        0x43s
        0x31s
        0x44s
        0x31s
        0x45s
        0x31s
        0x46s
        0x32s
        0x30s
        0x32s
        0x31s
        0x32s
        0x32s
        0x32s
        0x33s
        0x32s
        0x34s
        0x32s
        0x35s
        0x32s
        0x36s
        0x32s
        0x37s
        0x32s
        0x38s
        0x32s
        0x39s
        0x32s
        0x41s
        0x32s
        0x42s
        0x32s
        0x43s
        0x32s
        0x44s
        0x32s
        0x45s
        0x32s
        0x46s
    .end array-data

    :array_250
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_278
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    :array_2e0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    :array_348
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 196
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static decode(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .registers 4

    const/4 v0, 0x1

    .line 353
    :try_start_1
    invoke-virtual {p0, p1, p2, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p1

    .line 355
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v0

    if-nez v0, :cond_e

    .line 356
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 359
    :cond_e
    invoke-virtual {p0, p2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p0

    .line 361
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 362
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_1b
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1b} :catch_1c

    :cond_1b
    return-void

    :catch_1c
    move-exception p0

    .line 367
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "utf8 decode error, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .registers 15

    .line 530
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    new-array p0, v1, [B

    return-object p0

    :cond_a
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1e

    .line 538
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_1e

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1e
    :goto_1e
    if-lez v2, :cond_2f

    .line 542
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_2f

    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 546
    :cond_2f
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3d

    const/4 v6, 0x1

    if-ne v4, v5, :cond_44

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_42

    const/4 v4, 0x2

    goto :goto_45

    :cond_42
    const/4 v4, 0x1

    goto :goto_45

    :cond_44
    const/4 v4, 0x0

    :goto_45
    sub-int v5, v2, v3

    add-int/2addr v5, v6

    const/16 v7, 0x4c

    if-le v0, v7, :cond_5a

    .line 548
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0xd

    if-ne v0, v7, :cond_57

    div-int/lit8 v0, v5, 0x4e

    goto :goto_58

    :cond_57
    const/4 v0, 0x0

    :goto_58
    shl-int/2addr v0, v6

    goto :goto_5b

    :cond_5a
    const/4 v0, 0x0

    :goto_5b
    sub-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x6

    shr-int/lit8 v5, v5, 0x3

    sub-int/2addr v5, v4

    .line 551
    new-array v7, v5, [B

    .line 555
    div-int/lit8 v8, v5, 0x3

    mul-int/lit8 v8, v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_69
    if-ge v9, v8, :cond_bf

    .line 557
    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget v3, v11, v3

    shl-int/lit8 v3, v3, 0x12

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v13, v12, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v11, v11, v12

    shl-int/lit8 v11, v11, 0xc

    or-int/2addr v3, v11

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v12, v13, 0x1

    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v11, v11, v13

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v3, v11

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v13, v12, 0x1

    .line 558
    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v11, v11, v12

    or-int/2addr v3, v11

    add-int/lit8 v11, v9, 0x1

    shr-int/lit8 v12, v3, 0x10

    int-to-byte v12, v12

    .line 561
    aput-byte v12, v7, v9

    add-int/lit8 v9, v11, 0x1

    shr-int/lit8 v12, v3, 0x8

    int-to-byte v12, v12

    .line 562
    aput-byte v12, v7, v11

    add-int/lit8 v11, v9, 0x1

    int-to-byte v3, v3

    .line 563
    aput-byte v3, v7, v9

    if-lez v0, :cond_bc

    add-int/lit8 v10, v10, 0x1

    const/16 v3, 0x13

    if-ne v10, v3, :cond_bc

    add-int/lit8 v13, v13, 0x2

    move v3, v13

    const/4 v10, 0x0

    goto :goto_bd

    :cond_bc
    move v3, v13

    :goto_bd
    move v9, v11

    goto :goto_69

    :cond_bf
    if-ge v9, v5, :cond_e8

    const/4 v0, 0x0

    :goto_c2
    sub-int v8, v2, v4

    if-gt v3, v8, :cond_d9

    .line 576
    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget v3, v8, v3

    mul-int/lit8 v8, v0, 0x6

    rsub-int/lit8 v8, v8, 0x12

    shl-int/2addr v3, v8

    or-int/2addr v1, v3

    add-int/2addr v0, v6

    move v3, v10

    goto :goto_c2

    :cond_d9
    const/16 p0, 0x10

    :goto_db
    if-ge v9, v5, :cond_e8

    add-int/lit8 v0, v9, 0x1

    shr-int v2, v1, p0

    int-to-byte v2, v2

    .line 579
    aput-byte v2, v7, v9

    add-int/lit8 p0, p0, -0x8

    move v9, v0

    goto :goto_db

    :cond_e8
    return-object v7
.end method

.method public static decodeBase64(Ljava/lang/String;II)[B
    .registers 15

    const/4 v0, 0x0

    if-nez p2, :cond_6

    new-array p0, v0, [B

    return-object p0

    :cond_6
    add-int v1, p1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_a
    if-ge p1, v1, :cond_19

    .line 467
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v3, v3, v4

    if-gez v3, :cond_19

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_19
    :goto_19
    if-lez v1, :cond_28

    .line 471
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v3, v3, v4

    if-gez v3, :cond_28

    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 475
    :cond_28
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_3c

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_3a

    const/4 v3, 0x2

    goto :goto_3d

    :cond_3a
    const/4 v3, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v3, 0x0

    :goto_3d
    sub-int v4, v1, p1

    add-int/2addr v4, v2

    const/16 v5, 0x4c

    if-le p2, v5, :cond_52

    .line 477
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v5, 0xd

    if-ne p2, v5, :cond_4f

    div-int/lit8 p2, v4, 0x4e

    goto :goto_50

    :cond_4f
    const/4 p2, 0x0

    :goto_50
    shl-int/2addr p2, v2

    goto :goto_53

    :cond_52
    const/4 p2, 0x0

    :goto_53
    sub-int/2addr v4, p2

    mul-int/lit8 v4, v4, 0x6

    shr-int/lit8 v4, v4, 0x3

    sub-int/2addr v4, v3

    .line 480
    new-array v5, v4, [B

    .line 484
    div-int/lit8 v6, v4, 0x3

    mul-int/lit8 v6, v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_61
    if-ge v7, v6, :cond_b7

    .line 486
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v10, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    aget p1, v9, p1

    shl-int/lit8 p1, p1, 0x12

    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v11, v10, 0x1

    .line 487
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    aget v9, v9, v10

    shl-int/lit8 v9, v9, 0xc

    or-int/2addr p1, v9

    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v10, v11, 0x1

    .line 488
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v9, v9, v11

    shl-int/lit8 v9, v9, 0x6

    or-int/2addr p1, v9

    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v11, v10, 0x1

    .line 489
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    aget v9, v9, v10

    or-int/2addr p1, v9

    add-int/lit8 v9, v7, 0x1

    shr-int/lit8 v10, p1, 0x10

    int-to-byte v10, v10

    .line 492
    aput-byte v10, v5, v7

    add-int/lit8 v7, v9, 0x1

    shr-int/lit8 v10, p1, 0x8

    int-to-byte v10, v10

    .line 493
    aput-byte v10, v5, v9

    add-int/lit8 v9, v7, 0x1

    int-to-byte p1, p1

    .line 494
    aput-byte p1, v5, v7

    if-lez p2, :cond_b4

    add-int/lit8 v8, v8, 0x1

    const/16 p1, 0x13

    if-ne v8, p1, :cond_b4

    add-int/lit8 v11, v11, 0x2

    move p1, v11

    const/4 v8, 0x0

    goto :goto_b5

    :cond_b4
    move p1, v11

    :goto_b5
    move v7, v9

    goto :goto_61

    :cond_b7
    if-ge v7, v4, :cond_e0

    const/4 p2, 0x0

    :goto_ba
    sub-int v6, v1, v3

    if-gt p1, v6, :cond_d1

    .line 507
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v8, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    aget p1, v6, p1

    mul-int/lit8 v6, p2, 0x6

    rsub-int/lit8 v6, v6, 0x12

    shl-int/2addr p1, v6

    or-int/2addr v0, p1

    add-int/2addr p2, v2

    move p1, v8

    goto :goto_ba

    :cond_d1
    const/16 p0, 0x10

    :goto_d3
    if-ge v7, v4, :cond_e0

    add-int/lit8 p1, v7, 0x1

    shr-int p2, v0, p0

    int-to-byte p2, p2

    .line 510
    aput-byte p2, v5, v7

    add-int/lit8 p0, p0, -0x8

    move v7, p1

    goto :goto_d3

    :cond_e0
    return-object v5
.end method

.method public static decodeBase64([CII)[B
    .registers 15

    const/4 v0, 0x0

    if-nez p2, :cond_6

    new-array p0, v0, [B

    return-object p0

    :cond_6
    add-int v1, p1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_a
    if-ge p1, v1, :cond_17

    .line 409
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    aget-char v4, p0, p1

    aget v3, v3, v4

    if-gez v3, :cond_17

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_17
    :goto_17
    if-lez v1, :cond_24

    .line 413
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    aget-char v4, p0, v1

    aget v3, v3, v4

    if-gez v3, :cond_24

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 417
    :cond_24
    aget-char v3, p0, v1

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_34

    add-int/lit8 v3, v1, -0x1

    aget-char v3, p0, v3

    if-ne v3, v4, :cond_32

    const/4 v3, 0x2

    goto :goto_35

    :cond_32
    const/4 v3, 0x1

    goto :goto_35

    :cond_34
    const/4 v3, 0x0

    :goto_35
    sub-int v4, v1, p1

    add-int/2addr v4, v2

    const/16 v5, 0x4c

    if-le p2, v5, :cond_48

    .line 419
    aget-char p2, p0, v5

    const/16 v5, 0xd

    if-ne p2, v5, :cond_45

    div-int/lit8 p2, v4, 0x4e

    goto :goto_46

    :cond_45
    const/4 p2, 0x0

    :goto_46
    shl-int/2addr p2, v2

    goto :goto_49

    :cond_48
    const/4 p2, 0x0

    :goto_49
    sub-int/2addr v4, p2

    mul-int/lit8 v4, v4, 0x6

    shr-int/lit8 v4, v4, 0x3

    sub-int/2addr v4, v3

    .line 422
    new-array v5, v4, [B

    .line 426
    div-int/lit8 v6, v4, 0x3

    mul-int/lit8 v6, v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_57
    if-ge v7, v6, :cond_9f

    .line 428
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v10, p1, 0x1

    aget-char p1, p0, p1

    aget p1, v9, p1

    shl-int/lit8 p1, p1, 0x12

    add-int/lit8 v11, v10, 0x1

    aget-char v10, p0, v10

    aget v10, v9, v10

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr p1, v10

    add-int/lit8 v10, v11, 0x1

    aget-char v11, p0, v11

    aget v11, v9, v11

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr p1, v11

    add-int/lit8 v11, v10, 0x1

    aget-char v10, p0, v10

    aget v9, v9, v10

    or-int/2addr p1, v9

    add-int/lit8 v9, v7, 0x1

    shr-int/lit8 v10, p1, 0x10

    int-to-byte v10, v10

    .line 431
    aput-byte v10, v5, v7

    add-int/lit8 v7, v9, 0x1

    shr-int/lit8 v10, p1, 0x8

    int-to-byte v10, v10

    .line 432
    aput-byte v10, v5, v9

    add-int/lit8 v9, v7, 0x1

    int-to-byte p1, p1

    .line 433
    aput-byte p1, v5, v7

    if-lez p2, :cond_9c

    add-int/lit8 v8, v8, 0x1

    const/16 p1, 0x13

    if-ne v8, p1, :cond_9c

    add-int/lit8 v11, v11, 0x2

    move p1, v11

    const/4 v8, 0x0

    goto :goto_9d

    :cond_9c
    move p1, v11

    :goto_9d
    move v7, v9

    goto :goto_57

    :cond_9f
    if-ge v7, v4, :cond_c6

    const/4 p2, 0x0

    :goto_a2
    sub-int v6, v1, v3

    if-gt p1, v6, :cond_b7

    .line 446
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v8, p1, 0x1

    aget-char p1, p0, p1

    aget p1, v6, p1

    mul-int/lit8 v6, p2, 0x6

    rsub-int/lit8 v6, v6, 0x12

    shl-int/2addr p1, v6

    or-int/2addr v0, p1

    add-int/2addr p2, v2

    move p1, v8

    goto :goto_a2

    :cond_b7
    const/16 p0, 0x10

    :goto_b9
    if-ge v7, v4, :cond_c6

    add-int/lit8 p1, v7, 0x1

    shr-int p2, v0, p0

    int-to-byte p2, p2

    .line 449
    aput-byte p2, v5, v7

    add-int/lit8 p0, p0, -0x8

    move v7, p1

    goto :goto_b9

    :cond_c6
    return-object v5
.end method

.method public static decodeUTF8([BII[C)I
    .registers 13

    add-int v0, p1, p2

    .line 657
    array-length v1, p3

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, p2, :cond_1b

    .line 660
    aget-byte v3, p0, p1

    if-ltz v3, :cond_1b

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, p1, 0x1

    .line 661
    aget-byte p1, p0, p1

    int-to-char p1, p1

    aput-char p1, p3, v2

    move v2, v3

    move p1, v4

    goto :goto_9

    :cond_1b
    :goto_1b
    if-ge p1, v0, :cond_e2

    add-int/lit8 p2, p1, 0x1

    .line 664
    aget-byte p1, p0, p1

    if-ltz p1, :cond_2b

    add-int/lit8 v3, v2, 0x1

    int-to-char p1, p1

    .line 667
    aput-char p1, p3, v2

    move p1, p2

    move v2, v3

    goto :goto_1b

    :cond_2b
    shr-int/lit8 v3, p1, 0x5

    const/4 v4, -0x2

    const/16 v5, 0x80

    const/4 v6, -0x1

    if-ne v3, v4, :cond_50

    and-int/lit8 v3, p1, 0x1e

    if-eqz v3, :cond_50

    if-ge p2, v0, :cond_4f

    add-int/lit8 v3, p2, 0x1

    .line 671
    aget-byte p2, p0, p2

    and-int/lit16 v4, p2, 0xc0

    if-eq v4, v5, :cond_42

    return v6

    :cond_42
    add-int/lit8 v4, v2, 0x1

    shl-int/lit8 p1, p1, 0x6

    xor-int/2addr p1, p2

    xor-int/lit16 p1, p1, 0xf80

    int-to-char p1, p1

    .line 675
    aput-char p1, p3, v2

    move p1, v3

    move v2, v4

    goto :goto_1b

    :cond_4f
    return v6

    :cond_50
    shr-int/lit8 v3, p1, 0x4

    if-ne v3, v4, :cond_92

    add-int/lit8 v3, p2, 0x1

    if-ge v3, v0, :cond_91

    .line 685
    aget-byte p2, p0, p2

    add-int/lit8 v4, v3, 0x1

    .line 686
    aget-byte v3, p0, v3

    const/16 v7, -0x20

    if-ne p1, v7, :cond_66

    and-int/lit16 v7, p2, 0xe0

    if-eq v7, v5, :cond_91

    :cond_66
    and-int/lit16 v7, p2, 0xc0

    if-ne v7, v5, :cond_91

    and-int/lit16 v7, v3, 0xc0

    if-eq v7, v5, :cond_6f

    goto :goto_91

    :cond_6f
    shl-int/lit8 p1, p1, 0xc

    shl-int/lit8 p2, p2, 0x6

    xor-int/2addr p1, p2

    const p2, -0x1e080

    xor-int/2addr p2, v3

    xor-int/2addr p1, p2

    int-to-char p1, p1

    const p2, 0xd800

    if-lt p1, p2, :cond_86

    const p2, 0xe000

    if-ge p1, p2, :cond_86

    const/4 p2, 0x1

    goto :goto_87

    :cond_86
    const/4 p2, 0x0

    :goto_87
    if-eqz p2, :cond_8a

    return v6

    :cond_8a
    add-int/lit8 p2, v2, 0x1

    .line 702
    aput-char p1, p3, v2

    move v2, p2

    move p1, v4

    goto :goto_1b

    :cond_91
    :goto_91
    return v6

    :cond_92
    shr-int/lit8 v3, p1, 0x3

    if-ne v3, v4, :cond_e1

    add-int/lit8 v3, p2, 0x2

    if-ge v3, v0, :cond_e1

    add-int/lit8 v3, p2, 0x1

    .line 711
    aget-byte p2, p0, p2

    add-int/lit8 v4, v3, 0x1

    .line 712
    aget-byte v3, p0, v3

    add-int/lit8 v7, v4, 0x1

    .line 713
    aget-byte v4, p0, v4

    shl-int/lit8 p1, p1, 0x12

    shl-int/lit8 v8, p2, 0xc

    xor-int/2addr p1, v8

    shl-int/lit8 v8, v3, 0x6

    xor-int/2addr p1, v8

    const v8, 0x381f80

    xor-int/2addr v8, v4

    xor-int/2addr p1, v8

    and-int/lit16 p2, p2, 0xc0

    if-ne p2, v5, :cond_e1

    and-int/lit16 p2, v3, 0xc0

    if-ne p2, v5, :cond_e1

    and-int/lit16 p2, v4, 0xc0

    if-ne p2, v5, :cond_e1

    const/high16 p2, 0x10000

    if-lt p1, p2, :cond_e1

    const/high16 p2, 0x110000

    if-lt p1, p2, :cond_c8

    goto :goto_e1

    :cond_c8
    add-int/lit8 p2, v2, 0x1

    ushr-int/lit8 v3, p1, 0xa

    const v4, 0xd7c0

    add-int/2addr v3, v4

    int-to-char v3, v3

    .line 729
    aput-char v3, p3, v2

    add-int/lit8 v2, p2, 0x1

    and-int/lit16 p1, p1, 0x3ff

    const v3, 0xdc00

    add-int/2addr p1, v3

    int-to-char p1, p1

    .line 730
    aput-char p1, p3, p2

    move p1, v7

    goto/16 :goto_1b

    :cond_e1
    :goto_e1
    return v6

    :cond_e2
    return v2
.end method

.method public static encodeUTF8([CII[B)I
    .registers 13

    add-int v0, p1, p2

    .line 588
    array-length v1, p3

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    add-int/2addr p2, v1

    :goto_9
    const/16 v2, 0x80

    if-ge v1, p2, :cond_1d

    .line 591
    aget-char v3, p0, p1

    if-ge v3, v2, :cond_1d

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, p1, 0x1

    .line 592
    aget-char p1, p0, p1

    int-to-byte p1, p1

    aput-byte p1, p3, v1

    move v1, v2

    move p1, v3

    goto :goto_9

    :cond_1d
    :goto_1d
    if-ge p1, v0, :cond_c9

    add-int/lit8 p2, p1, 0x1

    .line 596
    aget-char p1, p0, p1

    if-ge p1, v2, :cond_2d

    add-int/lit8 v3, v1, 0x1

    int-to-byte p1, p1

    .line 599
    aput-byte p1, p3, v1

    :goto_2a
    move p1, p2

    move v1, v3

    goto :goto_1d

    :cond_2d
    const/16 v3, 0x800

    if-ge p1, v3, :cond_43

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, p1, 0x6

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    .line 602
    aput-byte v4, p3, v1

    add-int/lit8 v1, v3, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v2

    int-to-byte p1, p1

    .line 603
    aput-byte p1, p3, v3

    goto :goto_7d

    :cond_43
    const v3, 0xd800

    const/16 v4, 0x3f

    if-lt p1, v3, :cond_ad

    const v5, 0xe000

    if-ge p1, v5, :cond_ad

    add-int/lit8 v6, p2, -0x1

    const v7, 0xdc00

    if-lt p1, v3, :cond_74

    if-ge p1, v7, :cond_74

    sub-int v3, v0, v6

    const/4 v8, 0x2

    if-ge v3, v8, :cond_5f

    const/4 p1, -0x1

    goto :goto_7f

    :cond_5f
    add-int/lit8 v6, v6, 0x1

    .line 611
    aget-char v3, p0, v6

    if-lt v3, v7, :cond_6f

    if-ge v3, v5, :cond_6f

    shl-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v3

    const v3, -0x35fdc00

    add-int/2addr p1, v3

    goto :goto_7f

    :cond_6f
    add-int/lit8 p1, v1, 0x1

    .line 617
    aput-byte v4, p3, v1

    goto :goto_7c

    :cond_74
    if-lt p1, v7, :cond_7f

    if-ge p1, v5, :cond_7f

    add-int/lit8 p1, v1, 0x1

    .line 624
    aput-byte v4, p3, v1

    :goto_7c
    move v1, p1

    :goto_7d
    move p1, p2

    goto :goto_1d

    :cond_7f
    :goto_7f
    if-gez p1, :cond_86

    add-int/lit8 p1, v1, 0x1

    .line 633
    aput-byte v4, p3, v1

    goto :goto_7c

    :cond_86
    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v5, p1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    .line 635
    aput-byte v5, p3, v1

    add-int/lit8 v1, v3, 0x1

    shr-int/lit8 v5, p1, 0xc

    and-int/2addr v5, v4

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 636
    aput-byte v5, p3, v3

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v5, p1, 0x6

    and-int/2addr v4, v5

    or-int/2addr v4, v2

    int-to-byte v4, v4

    .line 637
    aput-byte v4, p3, v1

    add-int/lit8 v1, v3, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v2

    int-to-byte p1, p1

    .line 638
    aput-byte p1, p3, v3

    add-int/lit8 p2, p2, 0x1

    move p1, v1

    goto :goto_7c

    :cond_ad
    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v5, p1, 0xc

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    .line 643
    aput-byte v5, p3, v1

    add-int/lit8 v1, v3, 0x1

    shr-int/lit8 v5, p1, 0x6

    and-int/2addr v4, v5

    or-int/2addr v4, v2

    int-to-byte v4, v4

    .line 644
    aput-byte v4, p3, v3

    add-int/lit8 v3, v1, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v2

    int-to-byte p1, p1

    .line 645
    aput-byte p1, p3, v1

    goto/16 :goto_2a

    :cond_c9
    return v1
.end method

.method public static firstIdentifier(C)Z
    .registers 3

    .line 372
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    array-length v1, v0

    if-ge p0, v1, :cond_b

    aget-boolean p0, v0, p0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static getChars(BI[C)V
    .registers 7

    if-gez p0, :cond_6

    const/16 v0, 0x2d

    neg-int p0, p0

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const v1, 0xcccd

    mul-int v1, v1, p0

    ushr-int/lit8 v1, v1, 0x13

    shl-int/lit8 v2, v1, 0x3

    shl-int/lit8 v3, v1, 0x1

    add-int/2addr v2, v3

    sub-int/2addr p0, v2

    add-int/lit8 p1, p1, -0x1

    .line 313
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char p0, v2, p0

    aput-char p0, p2, p1

    if-nez v1, :cond_25

    if-eqz v0, :cond_24

    add-int/lit8 p1, p1, -0x1

    .line 318
    aput-char v0, p2, p1

    :cond_24
    return-void

    :cond_25
    move p0, v1

    goto :goto_7
.end method

.method public static getChars(II[C)V
    .registers 7

    if-gez p0, :cond_6

    const/16 v0, 0x2d

    neg-int p0, p0

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const/high16 v1, 0x10000

    if-lt p0, v1, :cond_28

    .line 275
    div-int/lit8 v1, p0, 0x64

    shl-int/lit8 v2, v1, 0x6

    shl-int/lit8 v3, v1, 0x5

    add-int/2addr v2, v3

    shl-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    sub-int/2addr p0, v2

    add-int/lit8 p1, p1, -0x1

    .line 279
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v2, v2, p0

    aput-char v2, p2, p1

    add-int/lit8 p1, p1, -0x1

    .line 280
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char p0, v2, p0

    aput-char p0, p2, p1

    move p0, v1

    goto :goto_7

    :cond_28
    :goto_28
    const v1, 0xcccd

    mul-int v1, v1, p0

    ushr-int/lit8 v1, v1, 0x13

    shl-int/lit8 v2, v1, 0x3

    shl-int/lit8 v3, v1, 0x1

    add-int/2addr v2, v3

    sub-int/2addr p0, v2

    add-int/lit8 p1, p1, -0x1

    .line 288
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char p0, v2, p0

    aput-char p0, p2, p1

    if-nez v1, :cond_46

    if-eqz v0, :cond_45

    add-int/lit8 p1, p1, -0x1

    .line 293
    aput-char v0, p2, p1

    :cond_45
    return-void

    :cond_46
    move p0, v1

    goto :goto_28
.end method

.method public static getChars(JI[C)V
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_a

    const/16 v0, 0x2d

    neg-long p0, p0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const-wide/32 v1, 0x7fffffff

    cmp-long v3, p0, v1

    if-lez v3, :cond_35

    const-wide/16 v1, 0x64

    .line 226
    div-long v1, p0, v1

    const/4 v3, 0x6

    shl-long v3, v1, v3

    const/4 v5, 0x5

    shl-long v5, v1, v5

    add-long/2addr v3, v5

    const/4 v5, 0x2

    shl-long v5, v1, v5

    add-long/2addr v3, v5

    sub-long/2addr p0, v3

    long-to-int p1, p0

    add-int/lit8 p2, p2, -0x1

    .line 230
    sget-object p0, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char p0, p0, p1

    aput-char p0, p3, p2

    add-int/lit8 p2, p2, -0x1

    .line 231
    sget-object p0, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char p0, p0, p1

    aput-char p0, p3, p2

    move-wide p0, v1

    goto :goto_b

    :cond_35
    long-to-int p1, p0

    :goto_36
    const/high16 p0, 0x10000

    if-lt p1, p0, :cond_57

    .line 238
    div-int/lit8 p0, p1, 0x64

    shl-int/lit8 v1, p0, 0x6

    shl-int/lit8 v2, p0, 0x5

    add-int/2addr v1, v2

    shl-int/lit8 v2, p0, 0x2

    add-int/2addr v1, v2

    sub-int/2addr p1, v1

    add-int/lit8 p2, p2, -0x1

    .line 242
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v1, v1, p1

    aput-char v1, p3, p2

    add-int/lit8 p2, p2, -0x1

    .line 243
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char p1, v1, p1

    aput-char p1, p3, p2

    move p1, p0

    goto :goto_36

    :cond_57
    :goto_57
    const p0, 0xcccd

    mul-int p0, p0, p1

    ushr-int/lit8 p0, p0, 0x13

    shl-int/lit8 v1, p0, 0x3

    shl-int/lit8 v2, p0, 0x1

    add-int/2addr v1, v2

    sub-int/2addr p1, v1

    add-int/lit8 p2, p2, -0x1

    .line 251
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char p1, v1, p1

    aput-char p1, p3, p2

    if-nez p0, :cond_75

    if-eqz v0, :cond_74

    add-int/lit8 p2, p2, -0x1

    .line 256
    aput-char v0, p3, p2

    :cond_74
    return-void

    :cond_75
    move p1, p0

    goto :goto_57
.end method

.method public static getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 81
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_e

    .line 85
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DEFAULT_PROPERTIES:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public static isIdent(C)Z
    .registers 3

    .line 376
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    array-length v1, v0

    if-ge p0, v1, :cond_b

    aget-boolean p0, v0, p0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static isValidJsonpQueryParam(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_25

    .line 765
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_25

    .line 769
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_23

    .line 770
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_20

    .line 771
    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->isIdent(C)Z

    move-result v3

    if-nez v3, :cond_20

    return v0

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_23
    const/4 p0, 0x1

    return p0

    :cond_25
    :goto_25
    return v0
.end method

.method public static loadPropertiesFromFile()V
    .registers 2

    .line 89
    new-instance v0, Lcom/alibaba/fastjson/util/IOUtils$1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/IOUtils$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    if-eqz v0, :cond_15

    .line 102
    :try_start_d
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->DEFAULT_PROPERTIES:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 103
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_15} :catch_15

    :catch_15
    :cond_15
    return-void
.end method

.method public static readAll(Ljava/io/Reader;)Ljava/lang/String;
    .registers 6

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x800

    :try_start_7
    new-array v2, v1, [C

    :goto_9
    const/4 v3, 0x0

    .line 751
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/Reader;->read([CII)I

    move-result v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_19

    if-gez v4, :cond_15

    .line 761
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 755
    :cond_15
    :try_start_15
    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_9

    :catch_19
    move-exception p0

    .line 758
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "read string from reader error"

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23

    :goto_22
    throw v0

    :goto_23
    goto :goto_22
.end method

.method public static stringSize(I)I
    .registers 3

    const/4 v0, 0x0

    .line 345
    :goto_1
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->sizeTable:[I

    aget v1, v1, v0

    if-gt p0, v1, :cond_a

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static stringSize(J)I
    .registers 8

    const/4 v0, 0x1

    const-wide/16 v1, 0xa

    move-wide v3, v1

    :goto_4
    const/16 v5, 0x13

    if-ge v0, v5, :cond_12

    cmp-long v5, p0, v3

    if-gez v5, :cond_d

    return v0

    :cond_d
    mul-long v3, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_12
    return v5
.end method
