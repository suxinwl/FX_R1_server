.class public final Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Track"
.end annotation


# static fields
.field private static final DEFAULT_MAX_CLL:I = 0x3e8

.field private static final DEFAULT_MAX_FALL:I = 0xc8

.field private static final DISPLAY_UNIT_PIXELS:I = 0x0

.field private static final MAX_CHROMATICITY:I = 0xc350


# instance fields
.field public audioBitDepth:I

.field private blockAddIdType:I

.field public channelCount:I

.field public codecDelayNs:J

.field public codecId:Ljava/lang/String;

.field public codecPrivate:[B

.field public colorRange:I

.field public colorSpace:I

.field public colorTransfer:I

.field public cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

.field public defaultSampleDurationNs:I

.field public displayHeight:I

.field public displayUnit:I

.field public displayWidth:I

.field public dolbyVisionConfigBytes:[B

.field public drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field public flagDefault:Z

.field public flagForced:Z

.field public hasColorInfo:Z

.field public hasContentEncryption:Z

.field public height:I

.field private language:Ljava/lang/String;

.field public maxBlockAdditionId:I

.field public maxContentLuminance:I

.field public maxFrameAverageLuminance:I

.field public maxMasteringLuminance:F

.field public minMasteringLuminance:F

.field public nalUnitLengthFieldLength:I

.field public name:Ljava/lang/String;

.field public number:I

.field public output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public primaryBChromaticityX:F

.field public primaryBChromaticityY:F

.field public primaryGChromaticityX:F

.field public primaryGChromaticityY:F

.field public primaryRChromaticityX:F

.field public primaryRChromaticityY:F

.field public projectionData:[B

.field public projectionPosePitch:F

.field public projectionPoseRoll:F

.field public projectionPoseYaw:F

.field public projectionType:I

.field public sampleRate:I

.field public sampleStrippedBytes:[B

.field public seekPreRollNs:J

.field public stereoMode:I

.field public trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

.field public type:I

.field public whitePointChromaticityX:F

.field public whitePointChromaticityY:F

.field public width:I


# direct methods
.method protected constructor <init>()V
    .registers 5

    .line 1972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1997
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 1998
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 1999
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 2000
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    const/4 v1, 0x0

    .line 2001
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    .line 2002
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    const/4 v2, 0x0

    .line 2003
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    .line 2004
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 2005
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    const/4 v2, 0x0

    .line 2006
    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 2007
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 2008
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    .line 2009
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    .line 2010
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    .line 2011
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    const/16 v1, 0x3e8

    .line 2012
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    const/16 v1, 0xc8

    .line 2013
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 2014
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    .line 2015
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    .line 2016
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    .line 2017
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    .line 2018
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    .line 2019
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    .line 2020
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    .line 2021
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    .line 2022
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    .line 2023
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    const/4 v1, 0x1

    .line 2027
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 2028
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    const/16 v0, 0x1f40

    .line 2029
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    const-wide/16 v2, 0x0

    .line 2030
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    .line 2031
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    .line 2036
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    const-string v0, "eng"

    .line 2037
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;)V
    .registers 1

    .line 1972
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->assertOutputInitialized()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;)I
    .registers 1

    .line 1972
    iget p0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->blockAddIdType:I

    return p0
.end method

.method static synthetic access$202(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;I)I
    .registers 2

    .line 1972
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->blockAddIdType:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1972
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;Z)Z
    .registers 2

    .line 1972
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->samplesHaveSupplementalData(Z)Z

    move-result p0

    return p0
.end method

.method private assertOutputInitialized()V
    .registers 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 2542
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getCodecPrivate(Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "codecPrivate"
        }
    .end annotation

    .line 2547
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-eqz v0, :cond_5

    return-object v0

    .line 2548
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing CodecPrivate for codec "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1
.end method

.method private getHdrStaticInfo()[B
    .registers 6

    .line 2378
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_40

    goto/16 :goto_c4

    :cond_40
    const/16 v0, 0x19

    new-array v0, v0, [B

    .line 2392
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 2393
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2394
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    const v3, 0x47435000    # 50000.0f

    mul-float v2, v2, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2395
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2396
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2397
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2398
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2399
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2400
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2401
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2402
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2403
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2404
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2405
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-object v0

    :cond_c4
    :goto_c4
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseFourCcPrivate(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 2420
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 2421
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v2

    const-wide/32 v4, 0x58564944

    cmp-long v0, v2, v4

    if-nez v0, :cond_19

    .line 2423
    new-instance p0, Landroid/util/Pair;

    const-string v0, "video/divx"

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_19
    const-wide/32 v4, 0x33363248

    cmp-long v0, v2, v4

    if-nez v0, :cond_28

    .line 2425
    new-instance p0, Landroid/util/Pair;

    const-string v0, "video/3gpp"

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_28
    const-wide/32 v4, 0x31435657

    cmp-long v0, v2, v4

    if-nez v0, :cond_72

    .line 2429
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    .line 2430
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p0

    .line 2431
    :goto_39
    array-length v2, p0

    add-int/lit8 v2, v2, -0x4

    if-ge v0, v2, :cond_6b

    .line 2432
    aget-byte v2, p0, v0

    if-nez v2, :cond_68

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    if-nez v2, :cond_68

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_68

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p0, v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_68

    .line 2437
    array-length v2, p0

    invoke-static {p0, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 2438
    new-instance v0, Landroid/util/Pair;

    const-string v2, "video/wvc1"

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_6b
    const-string p0, "Failed to find FourCC VC1 initialization data"

    .line 2441
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
    :try_end_72
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_72} :catch_81

    :cond_72
    const-string p0, "MatroskaExtractor"

    const-string v0, "Unknown FourCC. Setting mimeType to video/x-unknown"

    .line 2449
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2450
    new-instance p0, Landroid/util/Pair;

    const-string v0, "video/x-unknown"

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :catch_81
    const-string p0, "Error parsing FourCC private data"

    .line 2445
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    goto :goto_89

    :goto_88
    throw p0

    :goto_89
    goto :goto_88
.end method

.method private static parseMsAcmCodecPrivate(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 2517
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    return v1

    :cond_8
    const v2, 0xfffe

    const/4 v3, 0x0

    if-ne v0, v2, :cond_36

    const/16 v0, 0x18

    .line 2521
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 2522
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    # getter for: Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->access$700()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_34

    .line 2523
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    # getter for: Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->access$700()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6
    :try_end_2f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_2f} :catch_37

    cmp-long p0, v4, v6

    if-nez p0, :cond_34

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    return v1

    :cond_36
    return v3

    :catch_37
    const/4 p0, 0x0

    const-string v0, "Error parsing MS/ACM codec private"

    .line 2528
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static parseVorbisCodecPrivate([B)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const-string v0, "Error parsing vorbis codec private"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2462
    :try_start_4
    aget-byte v3, p0, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_68

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2468
    :goto_c
    aget-byte v7, p0, v5

    const/16 v8, 0xff

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_18

    add-int/lit16 v6, v6, 0xff

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_18
    add-int/lit8 v7, v5, 0x1

    .line 2472
    aget-byte v5, p0, v5

    and-int/2addr v5, v8

    add-int/2addr v6, v5

    const/4 v5, 0x0

    .line 2475
    :goto_1f
    aget-byte v9, p0, v7

    and-int/2addr v9, v8

    if-ne v9, v8, :cond_29

    add-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_29
    add-int/lit8 v9, v7, 0x1

    .line 2479
    aget-byte v7, p0, v7

    and-int/2addr v7, v8

    add-int/2addr v5, v7

    .line 2481
    aget-byte v7, p0, v9

    if-ne v7, v3, :cond_63

    .line 2485
    new-array v3, v6, [B

    .line 2486
    invoke-static {p0, v9, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v6

    .line 2488
    aget-byte v6, p0, v9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5e

    add-int/2addr v9, v5

    .line 2493
    aget-byte v5, p0, v9

    const/4 v6, 0x5

    if-ne v5, v6, :cond_59

    .line 2497
    array-length v5, p0

    sub-int/2addr v5, v9

    new-array v5, v5, [B

    .line 2498
    array-length v6, p0

    sub-int/2addr v6, v9

    invoke-static {p0, v9, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2499
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2500
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2501
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 2494
    :cond_59
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 2489
    :cond_5e
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 2482
    :cond_63
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 2463
    :cond_68
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
    :try_end_6d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_6d} :catch_6d

    .line 2504
    :catch_6d
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    goto :goto_73

    :goto_72
    throw p0

    :goto_73
    goto :goto_72
.end method

.method private samplesHaveSupplementalData(Z)Z
    .registers 4

    .line 2365
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v1, "A_OPUS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return p1

    .line 2371
    :cond_b
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxBlockAdditionId:I

    if-lez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method


# virtual methods
.method public initializeOutput(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;I)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "this.output"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "codecId"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2052
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v5, 0x20

    const/4 v7, 0x4

    const/16 v8, 0x8

    const/4 v10, 0x0

    sparse-switch v2, :sswitch_data_570

    goto/16 :goto_18e

    :sswitch_13
    const-string v2, "A_OPUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0xc

    goto/16 :goto_18f

    :sswitch_1f
    const-string v2, "A_FLAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0x16

    goto/16 :goto_18f

    :sswitch_2b
    const-string v2, "A_EAC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0x11

    goto/16 :goto_18f

    :sswitch_37
    const-string v2, "V_MPEG2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/4 v1, 0x3

    goto/16 :goto_18f

    :sswitch_42
    const-string v2, "S_TEXT/UTF8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0x1b

    goto/16 :goto_18f

    :sswitch_4e
    const-string v2, "S_TEXT/WEBVTT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0x1d

    goto/16 :goto_18f

    :sswitch_5a
    const-string v2, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0x8

    goto/16 :goto_18f

    :sswitch_66
    const-string v2, "S_TEXT/ASS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0x1c

    goto/16 :goto_18f

    :sswitch_72
    const-string v2, "A_PCM/INT/LIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0x18

    goto/16 :goto_18f

    :sswitch_7e
    const-string v2, "A_PCM/INT/BIG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0x19

    goto/16 :goto_18f

    :sswitch_8a
    const-string v2, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0x1a

    goto/16 :goto_18f

    :sswitch_96
    const-string v2, "A_DTS/EXPRESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0x14

    goto/16 :goto_18f

    :sswitch_a2
    const-string v2, "V_THEORA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0xa

    goto/16 :goto_18f

    :sswitch_ae
    const-string v2, "S_HDMV/PGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0x1f

    goto/16 :goto_18f

    :sswitch_ba
    const-string v2, "V_VP9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/4 v1, 0x1

    goto/16 :goto_18f

    :sswitch_c5
    const-string v2, "V_VP8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/4 v1, 0x0

    goto/16 :goto_18f

    :sswitch_d0
    const-string v2, "V_AV1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/4 v1, 0x2

    goto/16 :goto_18f

    :sswitch_db
    const-string v2, "A_DTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0x13

    goto/16 :goto_18f

    :sswitch_e7
    const-string v2, "A_AC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0x10

    goto/16 :goto_18f

    :sswitch_f3
    const-string v2, "A_AAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0xd

    goto/16 :goto_18f

    :sswitch_ff
    const-string v2, "A_DTS/LOSSLESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0x15

    goto/16 :goto_18f

    :sswitch_10b
    const-string v2, "S_VOBSUB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0x1e

    goto/16 :goto_18f

    :sswitch_117
    const-string v2, "V_MPEG4/ISO/AVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/4 v1, 0x7

    goto/16 :goto_18f

    :sswitch_122
    const-string v2, "V_MPEG4/ISO/ASP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/4 v1, 0x5

    goto/16 :goto_18f

    :sswitch_12d
    const-string v2, "S_DVBSUB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0x20

    goto :goto_18f

    :sswitch_138
    const-string v2, "V_MS/VFW/FOURCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0x9

    goto :goto_18f

    :sswitch_143
    const-string v2, "A_MPEG/L3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0xf

    goto :goto_18f

    :sswitch_14e
    const-string v2, "A_MPEG/L2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0xe

    goto :goto_18f

    :sswitch_159
    const-string v2, "A_VORBIS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0xb

    goto :goto_18f

    :sswitch_164
    const-string v2, "A_TRUEHD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0x12

    goto :goto_18f

    :sswitch_16f
    const-string v2, "A_MS/ACM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0x17

    goto :goto_18f

    :sswitch_17a
    const-string v2, "V_MPEG4/ISO/SP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/4 v1, 0x4

    goto :goto_18f

    :sswitch_184
    const-string v2, "V_MPEG4/ISO/AP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    const/4 v1, 0x6

    goto :goto_18f

    :cond_18e
    :goto_18e
    const/4 v1, -0x1

    :goto_18f
    const-string v2, "application/dvbsubs"

    const-string v12, "application/pgs"

    const-string v13, "application/vobsub"

    const-string v14, "text/vtt"

    const-string v15, "text/x-ssa"

    const-string v3, "application/x-subrip"

    const/16 v16, 0x1000

    const-string v6, ". Setting mimeType to "

    const-string v17, "audio/raw"

    const-string v11, "MatroskaExtractor"

    const-string v9, "audio/x-unknown"

    packed-switch v1, :pswitch_data_5f6

    const-string v1, "Unrecognized codec identifier."

    const/4 v2, 0x0

    .line 2241
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1

    :pswitch_1b0
    new-array v1, v7, [B

    .line 2237
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v10, v1, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2238
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object/from16 v17, v2

    goto/16 :goto_3d7

    :pswitch_1c3
    move-object/from16 v17, v12

    goto/16 :goto_3d6

    .line 2228
    :pswitch_1c7
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object/from16 v17, v13

    goto/16 :goto_3d7

    :pswitch_1d5
    move-object/from16 v17, v14

    goto/16 :goto_3d6

    .line 2221
    :pswitch_1d9
    # getter for: Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->access$500()[B

    move-result-object v1

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object/from16 v17, v15

    goto/16 :goto_3d7

    :pswitch_1eb
    move-object/from16 v17, v3

    goto/16 :goto_3d6

    .line 2203
    :pswitch_1ef
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    if-ne v1, v5, :cond_1f7

    const/4 v1, 0x0

    const/4 v4, 0x4

    goto/16 :goto_3d8

    .line 2208
    :cond_1f7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported floating point PCM bit depth: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b9

    .line 2186
    :pswitch_215
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    if-ne v1, v8, :cond_21d

    const/4 v1, 0x0

    const/4 v4, 0x3

    goto/16 :goto_3d8

    :cond_21d
    const/16 v5, 0x10

    if-ne v1, v5, :cond_228

    const/high16 v7, 0x10000000

    const/4 v1, 0x0

    const/high16 v4, 0x10000000

    goto/16 :goto_3d8

    .line 2193
    :cond_228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported big endian PCM bit depth: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b9

    .line 2172
    :pswitch_246
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v7

    if-nez v7, :cond_26b

    .line 2176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported little endian PCM bit depth: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b9

    :cond_26b
    move v4, v7

    const/4 v1, 0x0

    goto/16 :goto_3d8

    .line 2153
    :pswitch_26f
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseMsAcmCodecPrivate(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v1

    if-eqz v1, :cond_2a5

    .line 2154
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v7

    if-nez v7, :cond_26b

    .line 2158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported PCM bit depth: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b9

    .line 2167
    :cond_2a5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2b9
    move-object/from16 v17, v9

    goto/16 :goto_3d6

    .line 2149
    :pswitch_2bd
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v17, "audio/flac"

    goto/16 :goto_3d7

    :pswitch_2cb
    const-string v17, "audio/vnd.dts.hd"

    goto/16 :goto_3d6

    :pswitch_2cf
    const-string v17, "audio/vnd.dts"

    goto/16 :goto_3d6

    .line 2138
    :pswitch_2d3
    new-instance v1, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    const-string v17, "audio/true-hd"

    goto/16 :goto_3d6

    :pswitch_2de
    const-string v17, "audio/eac3"

    goto/16 :goto_3d6

    :pswitch_2e2
    const-string v17, "audio/ac3"

    goto/16 :goto_3d6

    :pswitch_2e6
    const-string v17, "audio/mpeg"

    goto :goto_2eb

    :pswitch_2e9
    const-string v17, "audio/mpeg-L2"

    :goto_2eb
    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x1000

    goto/16 :goto_3da

    .line 2114
    :pswitch_2f2
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2115
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v5}, Lcom/google/android/exoplayer2/audio/AacUtil;->parseAudioSpecificConfig([B)Lcom/google/android/exoplayer2/audio/AacUtil$Config;

    move-result-object v5

    .line 2118
    iget v6, v5, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->sampleRateHz:I

    iput v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 2119
    iget v6, v5, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->channelCount:I

    iput v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 2120
    iget-object v5, v5, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->codecs:Ljava/lang/String;

    const-string v17, "audio/mp4a-latm"

    goto/16 :goto_3bc

    :pswitch_310
    const/16 v16, 0x1680

    .line 2105
    new-instance v1, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2106
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2108
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    invoke-virtual {v6, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 2107
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2110
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 2109
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "audio/opus"

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x1680

    goto/16 :goto_3da

    :pswitch_357
    const/16 v16, 0x2000

    .line 2100
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseVorbisCodecPrivate([B)Ljava/util/List;

    move-result-object v1

    const-string v17, "audio/vorbis"

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x2000

    goto/16 :goto_3da

    :pswitch_36b
    const-string v17, "video/x-unknown"

    goto :goto_3d6

    .line 2087
    :pswitch_36e
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 2088
    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseFourCcPrivate(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v1

    .line 2089
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v17, v4

    check-cast v17, Ljava/lang/String;

    .line 2090
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    goto :goto_3d7

    .line 2081
    :pswitch_388
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Lcom/google/android/exoplayer2/video/HevcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/HevcConfig;

    move-result-object v1

    .line 2082
    iget-object v4, v1, Lcom/google/android/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 2083
    iget v5, v1, Lcom/google/android/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 2084
    iget-object v5, v1, Lcom/google/android/exoplayer2/video/HevcConfig;->codecs:Ljava/lang/String;

    const-string v17, "video/hevc"

    goto :goto_3bb

    .line 2074
    :pswitch_3a2
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Lcom/google/android/exoplayer2/video/AvcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;

    move-result-object v1

    .line 2075
    iget-object v4, v1, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 2076
    iget v5, v1, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 2077
    iget-object v5, v1, Lcom/google/android/exoplayer2/video/AvcConfig;->codecs:Ljava/lang/String;

    const-string v17, "video/avc"

    :goto_3bb
    move-object v1, v4

    :goto_3bc
    const/4 v4, -0x1

    goto :goto_3d9

    .line 2069
    :pswitch_3be
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-nez v1, :cond_3c4

    const/4 v1, 0x0

    goto :goto_3c8

    .line 2070
    :cond_3c4
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_3c8
    const-string v17, "video/mp4v-es"

    goto :goto_3d7

    :pswitch_3cb
    const-string v17, "video/mpeg2"

    goto :goto_3d6

    :pswitch_3ce
    const-string v17, "video/av01"

    goto :goto_3d6

    :pswitch_3d1
    const-string v17, "video/x-vnd.on2.vp9"

    goto :goto_3d6

    :pswitch_3d4
    const-string v17, "video/x-vnd.on2.vp8"

    :goto_3d6
    const/4 v1, 0x0

    :goto_3d7
    const/4 v4, -0x1

    :goto_3d8
    const/4 v5, 0x0

    :goto_3d9
    const/4 v6, -0x1

    .line 2245
    :goto_3da
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->dolbyVisionConfigBytes:[B

    if-eqz v8, :cond_3ed

    .line 2247
    new-instance v9, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v9, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 2248
    invoke-static {v9}, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/DolbyVisionConfig;

    move-result-object v8

    if-eqz v8, :cond_3ed

    .line 2250
    iget-object v5, v8, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->codecs:Ljava/lang/String;

    const-string v17, "video/dolby-vision"

    :cond_3ed
    move-object/from16 v8, v17

    .line 2256
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    or-int/2addr v9, v10

    .line 2257
    iget-boolean v11, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    if-eqz v11, :cond_3f8

    const/4 v11, 0x2

    goto :goto_3f9

    :cond_3f8
    const/4 v11, 0x0

    :goto_3f9
    or-int/2addr v9, v11

    .line 2260
    new-instance v11, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v11}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 2263
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_417

    .line 2265
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 2266
    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 2267
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 2268
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    const/4 v3, 0x1

    goto/16 :goto_523

    .line 2269
    :cond_417
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f5

    .line 2271
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    if-nez v2, :cond_433

    .line 2272
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_428

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    :cond_428
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 2273
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    if-ne v2, v3, :cond_430

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    :cond_430
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    goto :goto_434

    :cond_433
    const/4 v3, -0x1

    :goto_434
    const/high16 v2, -0x40800000    # -1.0f

    .line 2276
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    if-eq v4, v3, :cond_449

    iget v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    if-eq v12, v3, :cond_449

    .line 2277
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    mul-int v2, v2, v4

    int-to-float v2, v2

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    mul-int v4, v4, v12

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 2280
    :cond_449
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    if-eqz v4, :cond_45e

    .line 2281
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getHdrStaticInfo()[B

    move-result-object v4

    .line 2282
    new-instance v7, Lcom/google/android/exoplayer2/video/ColorInfo;

    iget v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    iget v13, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    iget v14, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    invoke-direct {v7, v12, v13, v14, v4}, Lcom/google/android/exoplayer2/video/ColorInfo;-><init>(III[B)V

    move-object v4, v7

    goto :goto_45f

    :cond_45e
    const/4 v4, 0x0

    .line 2286
    :goto_45f
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    if-eqz v7, :cond_47f

    # getter for: Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->access$600()Ljava/util/Map;

    move-result-object v7

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-interface {v7, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_47f

    .line 2287
    # getter for: Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->access$600()Ljava/util/Map;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2289
    :cond_47f
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    if-nez v7, :cond_4cf

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    const/4 v12, 0x0

    .line 2290
    invoke-static {v7, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_4cf

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 2291
    invoke-static {v7, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_4cf

    .line 2293
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    invoke-static {v7, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_49d

    goto :goto_4d0

    .line 2295
    :cond_49d
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v10, 0x42b40000    # 90.0f

    invoke-static {v7, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_4aa

    const/16 v10, 0x5a

    goto :goto_4d0

    .line 2297
    :cond_4aa
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v10, -0x3ccc0000    # -180.0f

    invoke-static {v7, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_4cc

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v10, 0x43340000    # 180.0f

    .line 2298
    invoke-static {v7, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_4bf

    goto :goto_4cc

    .line 2300
    :cond_4bf
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v10, -0x3d4c0000    # -90.0f

    invoke-static {v7, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_4cf

    const/16 v10, 0x10e

    goto :goto_4d0

    :cond_4cc
    :goto_4cc
    const/16 v10, 0xb4

    goto :goto_4d0

    :cond_4cf
    move v10, v3

    .line 2304
    :goto_4d0
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 2305
    invoke-virtual {v11, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 2306
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 2307
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setPixelWidthHeightRatio(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 2308
    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/Format$Builder;->setRotationDegrees(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 2309
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setProjectionData([B)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 2310
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setStereoMode(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 2311
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setColorInfo(Lcom/google/android/exoplayer2/video/ColorInfo;)Lcom/google/android/exoplayer2/Format$Builder;

    const/4 v3, 0x2

    goto :goto_523

    .line 2312
    :cond_4f5
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_522

    .line 2313
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_522

    .line 2314
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_522

    .line 2315
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_522

    .line 2316
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_522

    .line 2317
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51a

    goto :goto_522

    :cond_51a
    const-string v1, "Unexpected MIME type."

    const/4 v2, 0x0

    .line 2320
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1

    :cond_522
    :goto_522
    const/4 v3, 0x3

    .line 2324
    :goto_523
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    if-eqz v2, :cond_538

    # getter for: Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->access$600()Ljava/util/Map;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_538

    .line 2325
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    :cond_538
    move/from16 v2, p2

    .line 2330
    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 2331
    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 2332
    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    .line 2333
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 2334
    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setSelectionFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 2335
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 2336
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 2337
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 2338
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 2340
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    move-object/from16 v4, p1

    invoke-interface {v4, v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 2341
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    return-void

    :sswitch_data_570
    .sparse-switch
        -0x7ce7f5de -> :sswitch_184
        -0x7ce7f3b0 -> :sswitch_17a
        -0x76567dc0 -> :sswitch_16f
        -0x6a615338 -> :sswitch_164
        -0x672350af -> :sswitch_159
        -0x585f4fce -> :sswitch_14e
        -0x585f4fcd -> :sswitch_143
        -0x51dc40b2 -> :sswitch_138
        -0x37a9c464 -> :sswitch_12d
        -0x2016c535 -> :sswitch_122
        -0x2016c4e5 -> :sswitch_117
        -0x19552dbd -> :sswitch_10b
        -0x1538b2ba -> :sswitch_ff
        0x3c02325 -> :sswitch_f3
        0x3c02353 -> :sswitch_e7
        0x3c030c5 -> :sswitch_db
        0x4e81333 -> :sswitch_d0
        0x4e86155 -> :sswitch_c5
        0x4e86156 -> :sswitch_ba
        0x5e8da3e -> :sswitch_ae
        0x1a8350d6 -> :sswitch_a2
        0x2056f406 -> :sswitch_96
        0x25e26ee2 -> :sswitch_8a
        0x2b45174d -> :sswitch_7e
        0x2b453ce4 -> :sswitch_72
        0x2c0618eb -> :sswitch_66
        0x32fdf009 -> :sswitch_5a
        0x3e4ca2d8 -> :sswitch_4e
        0x54c61e47 -> :sswitch_42
        0x6bd6c624 -> :sswitch_37
        0x7446132a -> :sswitch_2b
        0x7446b0a6 -> :sswitch_1f
        0x744ad97d -> :sswitch_13
    .end sparse-switch

    :pswitch_data_5f6
    .packed-switch 0x0
        :pswitch_3d4
        :pswitch_3d1
        :pswitch_3ce
        :pswitch_3cb
        :pswitch_3be
        :pswitch_3be
        :pswitch_3be
        :pswitch_3a2
        :pswitch_388
        :pswitch_36e
        :pswitch_36b
        :pswitch_357
        :pswitch_310
        :pswitch_2f2
        :pswitch_2e9
        :pswitch_2e6
        :pswitch_2e2
        :pswitch_2de
        :pswitch_2d3
        :pswitch_2cf
        :pswitch_2cf
        :pswitch_2cb
        :pswitch_2bd
        :pswitch_26f
        :pswitch_246
        :pswitch_215
        :pswitch_1ef
        :pswitch_1eb
        :pswitch_1d9
        :pswitch_1d5
        :pswitch_1c7
        :pswitch_1c3
        :pswitch_1b0
    .end packed-switch
.end method

.method public outputPendingSampleMetadata()V
    .registers 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 2347
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    if-eqz v0, :cond_b

    .line 2348
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->outputPendingSampleMetadata(Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    :cond_b
    return-void
.end method

.method public reset()V
    .registers 2

    .line 2354
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    if-eqz v0, :cond_7

    .line 2355
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->reset()V

    :cond_7
    return-void
.end method
