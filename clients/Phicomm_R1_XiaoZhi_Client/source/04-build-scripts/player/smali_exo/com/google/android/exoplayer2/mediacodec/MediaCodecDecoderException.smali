.class public Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;
.super Lcom/google/android/exoplayer2/decoder/DecoderException;


# instance fields
.field public final codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

.field public final diagnosticInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)V
    .registers 6

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decoder failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez p2, :cond_f

    move-object v2, v1

    goto :goto_11

    :cond_f
    iget-object v2, p2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    :goto_11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/decoder/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 36
    sget p2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_27

    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;->getDiagnosticInfoV21(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    :cond_27
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;->diagnosticInfo:Ljava/lang/String;

    return-void
.end method

.method private static getDiagnosticInfoV21(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 2

    .line 42
    instance-of v0, p0, Landroid/media/MediaCodec$CodecException;

    if-eqz v0, :cond_b

    .line 43
    check-cast p0, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p0}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method
