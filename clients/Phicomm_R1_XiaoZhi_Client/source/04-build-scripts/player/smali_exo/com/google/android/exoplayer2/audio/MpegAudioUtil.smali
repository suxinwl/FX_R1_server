.class public final Lcom/google/android/exoplayer2/audio/MpegAudioUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;
    }
.end annotation


# static fields
.field private static final BITRATE_V1_L1:[I

.field private static final BITRATE_V1_L2:[I

.field private static final BITRATE_V1_L3:[I

.field private static final BITRATE_V2:[I

.field private static final BITRATE_V2_L1:[I

.field public static final MAX_FRAME_SIZE_BYTES:I = 0x1000

.field public static final MAX_RATE_BYTES_PER_SECOND:I = 0x9c40

.field private static final MIME_TYPE_BY_LAYER:[Ljava/lang/String;

.field private static final SAMPLES_PER_FRAME_L1:I = 0x180

.field private static final SAMPLES_PER_FRAME_L2:I = 0x480

.field private static final SAMPLES_PER_FRAME_L3_V1:I = 0x480

.field private static final SAMPLES_PER_FRAME_L3_V2:I = 0x240

.field private static final SAMPLING_RATE_V1:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "audio/mpeg-L1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "audio/mpeg-L2"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "audio/mpeg"

    aput-object v3, v1, v2

    .line 218
    sput-object v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    new-array v0, v0, [I

    .line 220
    fill-array-data v0, :array_42

    sput-object v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->SAMPLING_RATE_V1:[I

    const/16 v0, 0xe

    new-array v1, v0, [I

    .line 221
    fill-array-data v1, :array_4c

    sput-object v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V1_L1:[I

    new-array v1, v0, [I

    .line 225
    fill-array-data v1, :array_6c

    sput-object v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V2_L1:[I

    new-array v1, v0, [I

    .line 229
    fill-array-data v1, :array_8c

    sput-object v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V1_L2:[I

    new-array v1, v0, [I

    .line 233
    fill-array-data v1, :array_ac

    sput-object v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V1_L3:[I

    new-array v0, v0, [I

    .line 237
    fill-array-data v0, :array_cc

    sput-object v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V2:[I

    return-void

    nop

    :array_42
    .array-data 4
        0xac44
        0xbb80
        0x7d00
    .end array-data

    :array_4c
    .array-data 4
        0x7d00
        0xfa00
        0x17700
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x46500
        0x4e200
        0x55f00
        0x5dc00
        0x65900
        0x6d600
    .end array-data

    :array_6c
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
        0x2af80
        0x2ee00
        0x36b00
        0x3e800
    .end array-data

    :array_8c
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
        0x5dc00
    .end array-data

    :array_ac
    .array-data 4
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
    .end array-data

    :array_cc
    .array-data 4
        0x1f40
        0x3e80
        0x5dc0
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)Z
    .registers 1

    .line 23
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->isMagicPresent(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .registers 1

    .line 23
    sget-object v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[I
    .registers 1

    .line 23
    sget-object v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->SAMPLING_RATE_V1:[I

    return-object v0
.end method

.method static synthetic access$300(II)I
    .registers 2

    .line 23
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->getFrameSizeInSamples(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$400()[I
    .registers 1

    .line 23
    sget-object v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V1_L1:[I

    return-object v0
.end method

.method static synthetic access$500()[I
    .registers 1

    .line 23
    sget-object v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V2_L1:[I

    return-object v0
.end method

.method static synthetic access$600()[I
    .registers 1

    .line 23
    sget-object v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V1_L2:[I

    return-object v0
.end method

.method static synthetic access$700()[I
    .registers 1

    .line 23
    sget-object v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V1_L3:[I

    return-object v0
.end method

.method static synthetic access$800()[I
    .registers 1

    .line 23
    sget-object v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V2:[I

    return-object v0
.end method

.method public static getFrameSize(I)I
    .registers 8

    .line 116
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->isMagicPresent(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    ushr-int/lit8 v0, p0, 0x13

    const/4 v2, 0x3

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    return v1

    :cond_10
    ushr-int/lit8 v4, p0, 0x11

    and-int/2addr v4, v2

    if-nez v4, :cond_16

    return v1

    :cond_16
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_74

    if-ne v5, v6, :cond_20

    goto :goto_74

    :cond_20
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v2

    if-ne v6, v2, :cond_26

    return v1

    .line 141
    :cond_26
    sget-object v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->SAMPLING_RATE_V1:[I

    aget v1, v1, v6

    const/4 v6, 0x2

    if-ne v0, v6, :cond_30

    .line 144
    div-int/lit8 v1, v1, 0x2

    goto :goto_34

    :cond_30
    if-nez v0, :cond_34

    .line 147
    div-int/lit8 v1, v1, 0x4

    :cond_34
    :goto_34
    ushr-int/lit8 p0, p0, 0x9

    and-int/2addr p0, v3

    if-ne v4, v2, :cond_4d

    if-ne v0, v2, :cond_41

    .line 154
    sget-object v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V1_L1:[I

    sub-int/2addr v5, v3

    aget v0, v0, v5

    goto :goto_46

    :cond_41
    sget-object v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V2_L1:[I

    sub-int/2addr v5, v3

    aget v0, v0, v5

    :goto_46
    mul-int/lit8 v0, v0, 0xc

    .line 155
    div-int/2addr v0, v1

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x4

    return v0

    :cond_4d
    if-ne v0, v2, :cond_5d

    if-ne v4, v6, :cond_57

    .line 159
    sget-object v6, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V1_L2:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    goto :goto_62

    :cond_57
    sget-object v6, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V1_L3:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    goto :goto_62

    .line 162
    :cond_5d
    sget-object v6, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->BITRATE_V2:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    :goto_62
    const/16 v6, 0x90

    if-ne v0, v2, :cond_6b

    mul-int/lit16 v5, v5, 0x90

    .line 168
    div-int/2addr v5, v1

    add-int/2addr v5, p0

    return v5

    :cond_6b
    if-ne v4, v3, :cond_6f

    const/16 v6, 0x48

    :cond_6f
    mul-int v6, v6, v5

    .line 171
    div-int/2addr v6, v1

    add-int/2addr v6, p0

    return v6

    :cond_74
    :goto_74
    return v1
.end method

.method private static getFrameSizeInSamples(II)I
    .registers 5

    const/4 v0, 0x1

    const/16 v1, 0x480

    const/4 v2, 0x3

    if-eq p1, v0, :cond_15

    const/4 p0, 0x2

    if-eq p1, p0, :cond_14

    if-ne p1, v2, :cond_e

    const/16 p0, 0x180

    return p0

    .line 262
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_14
    return v1

    :cond_15
    if-ne p0, v2, :cond_18

    goto :goto_1a

    :cond_18
    const/16 v1, 0x240

    :goto_1a
    return v1
.end method

.method private static isMagicPresent(I)Z
    .registers 2

    const/high16 v0, -0x200000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static parseMpegAudioFrameSampleCount(I)I
    .registers 7

    .line 180
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->isMagicPresent(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    ushr-int/lit8 v0, p0, 0x13

    const/4 v2, 0x3

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    return v1

    :cond_10
    ushr-int/lit8 v3, p0, 0x11

    and-int/2addr v3, v2

    if-nez v3, :cond_16

    return v1

    :cond_16
    ushr-int/lit8 v4, p0, 0xc

    const/16 v5, 0xf

    and-int/2addr v4, v5

    ushr-int/lit8 p0, p0, 0xa

    and-int/2addr p0, v2

    if-eqz v4, :cond_2a

    if-eq v4, v5, :cond_2a

    if-ne p0, v2, :cond_25

    goto :goto_2a

    .line 201
    :cond_25
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->getFrameSizeInSamples(II)I

    move-result p0

    return p0

    :cond_2a
    :goto_2a
    return v1
.end method
