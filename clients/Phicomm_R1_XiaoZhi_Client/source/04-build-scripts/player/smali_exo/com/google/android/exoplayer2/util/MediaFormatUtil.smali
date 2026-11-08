.class public final Lcom/google/android/exoplayer2/util/MediaFormatUtil;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_MAX_BIT_RATE:Ljava/lang/String; = "max-bitrate"

.field public static final KEY_PCM_ENCODING_EXTENDED:Ljava/lang/String; = "exo-pcm-encoding-int"

.field public static final KEY_PIXEL_WIDTH_HEIGHT_RATIO_FLOAT:Ljava/lang/String; = "exo-pixel-width-height-ratio-float"

.field private static final MAX_POWER_OF_TWO_INT:I = 0x40000000


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMediaFormatFromFormat(Lcom/google/android/exoplayer2/Format;)Landroid/media/MediaFormat;
    .registers 5

    .line 76
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 77
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const-string v2, "bitrate"

    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 78
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    const-string v2, "max-bitrate"

    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 79
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    const-string v2, "channel-count"

    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 81
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetColorInfo(Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/video/ColorInfo;)V

    .line 83
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "mime"

    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetString(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    const-string v2, "codecs-string"

    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetString(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const-string v2, "frame-rate"

    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetFloat(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 86
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    const-string v2, "width"

    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 87
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    const-string v2, "height"

    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 89
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 90
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetPcmEncoding(Landroid/media/MediaFormat;I)V

    .line 91
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    const-string v2, "language"

    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetString(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    const-string v2, "max-input-size"

    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 93
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    const-string v2, "sample-rate"

    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 94
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    const-string v2, "caption-service-number"

    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 95
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    const-string v2, "rotation-degrees"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 97
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v2, v1, 0x4

    const-string v3, "is-autoselect"

    .line 98
    invoke-static {v0, v3, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->setBooleanAsInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    and-int/lit8 v2, v1, 0x1

    const-string v3, "is-default"

    .line 100
    invoke-static {v0, v3, v2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->setBooleanAsInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    and-int/lit8 v1, v1, 0x2

    const-string v2, "is-forced-subtitle"

    .line 101
    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->setBooleanAsInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 104
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    const-string v2, "encoder-delay"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 105
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    const-string v2, "encoder-padding"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 107
    iget p0, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetPixelAspectRatio(Landroid/media/MediaFormat;F)V

    return-object v0
.end method

.method public static maybeSetByteBuffer(Landroid/media/MediaFormat;Ljava/lang/String;[B)V
    .registers 3

    if-eqz p2, :cond_9

    .line 173
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_9
    return-void
.end method

.method public static maybeSetColorInfo(Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/video/ColorInfo;)V
    .registers 4

    if-eqz p1, :cond_1e

    .line 186
    iget v0, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    const-string v1, "color-transfer"

    invoke-static {p0, v1, v0}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 187
    iget v0, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    const-string v1, "color-standard"

    invoke-static {p0, v1, v0}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 188
    iget v0, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    const-string v1, "color-range"

    invoke-static {p0, v1, v0}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 189
    iget-object p1, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    const-string v0, "hdr-static-info"

    invoke-static {p0, v0, p1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetByteBuffer(Landroid/media/MediaFormat;Ljava/lang/String;[B)V

    :cond_1e
    return-void
.end method

.method public static maybeSetFloat(Landroid/media/MediaFormat;Ljava/lang/String;F)V
    .registers 4

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_9

    .line 160
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_9
    return-void
.end method

.method public static maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .registers 4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_6

    .line 146
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_6
    return-void
.end method

.method private static maybeSetPcmEncoding(Landroid/media/MediaFormat;I)V
    .registers 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return-void

    :cond_4
    const-string v0, "exo-pcm-encoding-int"

    .line 226
    invoke-static {p0, v0, p1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eqz p1, :cond_27

    const/high16 v3, 0x20000000

    if-eq p1, v3, :cond_24

    const/high16 v3, 0x30000000

    if-eq p1, v3, :cond_21

    if-eq p1, v2, :cond_1f

    if-eq p1, v1, :cond_1d

    if-eq p1, v0, :cond_28

    return-void

    :cond_1d
    const/4 v0, 0x3

    goto :goto_28

    :cond_1f
    const/4 v0, 0x2

    goto :goto_28

    :cond_21
    const/16 v0, 0x16

    goto :goto_28

    :cond_24
    const/16 v0, 0x15

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :cond_28
    :goto_28
    const-string p1, "pcm-encoding"

    .line 252
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method private static maybeSetPixelAspectRatio(Landroid/media/MediaFormat;F)V
    .registers 6

    const-string v0, "exo-pixel-width-height-ratio-float"

    .line 203
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    cmpg-float v3, p1, v1

    if-gez v3, :cond_16

    int-to-float v1, v0

    mul-float p1, p1, v1

    float-to-int p1, p1

    move v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_20

    :cond_16
    cmpl-float v1, p1, v1

    if-lez v1, :cond_1e

    int-to-float v1, v0

    div-float/2addr v1, p1

    float-to-int p1, v1

    goto :goto_20

    :cond_1e
    const/4 p1, 0x1

    const/4 v0, 0x1

    :goto_20
    const-string v1, "sar-width"

    .line 215
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "sar-height"

    .line 216
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public static maybeSetString(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    if-eqz p2, :cond_5

    .line 120
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private static setBooleanAsInt(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .registers 3

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_5

    :cond_4
    const/4 p2, 0x0

    .line 196
    :goto_5
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public static setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaFormat;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 131
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "csd-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_28
    return-void
.end method
