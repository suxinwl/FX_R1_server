.class public final Lcom/google/android/exoplayer2/audio/AacUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AacUtil$AacAudioObjectType;,
        Lcom/google/android/exoplayer2/audio/AacUtil$Config;
    }
.end annotation


# static fields
.field public static final AAC_ELD_MAX_RATE_BYTES_PER_SECOND:I = 0x1f40

.field public static final AAC_HE_AUDIO_SAMPLE_COUNT:I = 0x800

.field public static final AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND:I = 0x3e80

.field public static final AAC_HE_V2_MAX_RATE_BYTES_PER_SECOND:I = 0x1b58

.field public static final AAC_LC_AUDIO_SAMPLE_COUNT:I = 0x400

.field public static final AAC_LC_MAX_RATE_BYTES_PER_SECOND:I = 0x186a0

.field public static final AAC_LD_AUDIO_SAMPLE_COUNT:I = 0x200

.field public static final AAC_XHE_AUDIO_SAMPLE_COUNT:I = 0x400

.field public static final AAC_XHE_MAX_RATE_BYTES_PER_SECOND:I = 0x3e800

.field public static final AUDIO_OBJECT_TYPE_AAC_ELD:I = 0x17

.field public static final AUDIO_OBJECT_TYPE_AAC_ER_BSAC:I = 0x16

.field public static final AUDIO_OBJECT_TYPE_AAC_LC:I = 0x2

.field public static final AUDIO_OBJECT_TYPE_AAC_PS:I = 0x1d

.field public static final AUDIO_OBJECT_TYPE_AAC_SBR:I = 0x5

.field public static final AUDIO_OBJECT_TYPE_AAC_XHE:I = 0x2a

.field private static final AUDIO_OBJECT_TYPE_ESCAPE:I = 0x1f

.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_CONFIGURATION_INVALID:I = -0x1

.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

.field private static final AUDIO_SPECIFIC_CONFIG_FREQUENCY_INDEX_ARBITRARY:I = 0xf

.field private static final AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

.field private static final CODECS_STRING_PREFIX:Ljava/lang/String; = "mp4a.40."

.field private static final TAG:Ljava/lang/String; = "AacUtil"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 93
    fill-array-data v0, :array_14

    sput-object v0, Lcom/google/android/exoplayer2/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 114
    fill-array-data v0, :array_32

    sput-object v0, Lcom/google/android/exoplayer2/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    return-void

    nop

    :array_14
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    :array_32
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        0x7
        0x8
        -0x1
        0x8
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAacLcAudioSpecificConfig(II)[B
    .registers 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 273
    :goto_4
    sget-object v4, Lcom/google/android/exoplayer2/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    array-length v5, v4

    if-ge v2, v5, :cond_11

    .line 274
    aget v4, v4, v2

    if-ne p0, v4, :cond_e

    move v3, v2

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_11
    const/4 v2, -0x1

    .line 279
    :goto_12
    sget-object v4, Lcom/google/android/exoplayer2/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    array-length v5, v4

    if-ge v0, v5, :cond_1f

    .line 280
    aget v4, v4, v0

    if-ne p1, v4, :cond_1c

    move v2, v0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1f
    if-eq p0, v1, :cond_29

    if-eq v2, v1, :cond_29

    const/4 p0, 0x2

    .line 288
    invoke-static {p0, v3, v2}, Lcom/google/android/exoplayer2/audio/AacUtil;->buildAudioSpecificConfig(III)[B

    move-result-object p0

    return-object p0

    .line 285
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sample rate or number of channels: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_49

    :goto_48
    throw v0

    :goto_49
    goto :goto_48
.end method

.method public static buildAudioSpecificConfig(III)[B
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [B

    shl-int/lit8 p0, p0, 0x3

    and-int/lit16 p0, p0, 0xf8

    shr-int/lit8 v1, p1, 0x1

    and-int/lit8 v1, v1, 0x7

    or-int/2addr p0, v1

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    shl-int/lit8 p0, p1, 0x7

    and-int/lit16 p0, p0, 0x80

    shl-int/lit8 p1, p2, 0x3

    and-int/lit8 p1, p1, 0x78

    or-int/2addr p0, p1

    int-to-byte p0, p0

    const/4 p1, 0x1

    aput-byte p0, v0, p1

    return-object v0
.end method

.method private static getAudioObjectType(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I
    .registers 3

    const/4 v0, 0x5

    .line 314
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_10

    const/4 v0, 0x6

    .line 316
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p0

    add-int/lit8 v0, p0, 0x20

    :cond_10
    return v0
.end method

.method private static getSamplingFrequency(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 331
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_10

    const/16 v0, 0x18

    .line 333
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p0

    goto :goto_18

    :cond_10
    const/16 p0, 0xd

    if-ge v0, p0, :cond_19

    .line 335
    sget-object p0, Lcom/google/android/exoplayer2/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    aget p0, p0, v0

    :goto_18
    return p0

    :cond_19
    const/4 p0, 0x0

    .line 337
    invoke-static {p0, p0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static parseAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;Z)Lcom/google/android/exoplayer2/audio/AacUtil$Config;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 200
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/AacUtil;->getAudioObjectType(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v0

    .line 201
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/AacUtil;->getSamplingFrequency(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v1

    const/4 v2, 0x4

    .line 202
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mp4a.40."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    if-eq v0, v5, :cond_25

    const/16 v5, 0x1d

    if-ne v0, v5, :cond_35

    .line 211
    :cond_25
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/AacUtil;->getSamplingFrequency(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v1

    .line 212
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/AacUtil;->getAudioObjectType(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v0

    const/16 v5, 0x16

    if-ne v0, v5, :cond_35

    .line 215
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    :cond_35
    if-eqz p1, :cond_8b

    const/4 p1, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v0, p1, :cond_65

    if-eq v0, v6, :cond_65

    if-eq v0, v5, :cond_65

    if-eq v0, v2, :cond_65

    const/4 p1, 0x6

    if-eq v0, p1, :cond_65

    const/4 p1, 0x7

    if-eq v0, p1, :cond_65

    const/16 p1, 0x11

    if-eq v0, p1, :cond_65

    packed-switch v0, :pswitch_data_9e

    .line 236
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported audio object type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 233
    :cond_65
    :pswitch_65
    invoke-static {p0, v0, v3}, Lcom/google/android/exoplayer2/audio/AacUtil;->parseGaSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;II)V

    packed-switch v0, :pswitch_data_ac

    :pswitch_6b
    goto :goto_8b

    .line 246
    :pswitch_6c
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p0

    if-eq p0, v6, :cond_75

    if-eq p0, v5, :cond_75

    goto :goto_8b

    .line 248
    :cond_75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported epConfig: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 257
    :cond_8b
    :goto_8b
    sget-object p0, Lcom/google/android/exoplayer2/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    aget p0, p0, v3

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_99

    .line 261
    new-instance p1, Lcom/google/android/exoplayer2/audio/AacUtil$Config;

    invoke-direct {p1, v1, p0, v4, v0}, Lcom/google/android/exoplayer2/audio/AacUtil$Config;-><init>(IILjava/lang/String;Lcom/google/android/exoplayer2/audio/AacUtil$1;)V

    return-object p1

    .line 259
    :cond_99
    invoke-static {v0, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :pswitch_data_9e
    .packed-switch 0x13
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
    .end packed-switch

    :pswitch_data_ac
    .packed-switch 0x11
        :pswitch_6c
        :pswitch_6b
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
    .end packed-switch
.end method

.method public static parseAudioSpecificConfig([B)Lcom/google/android/exoplayer2/audio/AacUtil$Config;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 183
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/audio/AacUtil;->parseAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;Z)Lcom/google/android/exoplayer2/audio/AacUtil$Config;

    move-result-object p0

    return-object p0
.end method

.method private static parseGaSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;II)V
    .registers 6

    .line 344
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "AacUtil"

    const-string v1, "Unexpected frameLengthFlag = 1"

    .line 346
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0xe

    .line 350
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 352
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz p2, :cond_4a

    const/4 p2, 0x6

    const/16 v1, 0x14

    const/4 v2, 0x3

    if-eq p1, p2, :cond_26

    if-ne p1, v1, :cond_29

    .line 357
    :cond_26
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_29
    if-eqz v0, :cond_49

    const/16 p2, 0x16

    if-ne p1, p2, :cond_34

    const/16 p2, 0x10

    .line 361
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_34
    const/16 p2, 0x11

    if-eq p1, p2, :cond_42

    const/16 p2, 0x13

    if-eq p1, p2, :cond_42

    if-eq p1, v1, :cond_42

    const/16 p2, 0x17

    if-ne p1, p2, :cond_45

    .line 369
    :cond_42
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_45
    const/4 p1, 0x1

    .line 371
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_49
    return-void

    .line 354
    :cond_4a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
