.class public final Lcom/google/android/exoplayer2/video/DolbyVisionConfig;
.super Ljava/lang/Object;


# instance fields
.field public final codecs:Ljava/lang/String;

.field public final level:I

.field public final profile:I


# direct methods
.method private constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->profile:I

    .line 61
    iput p2, p0, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->level:I

    .line 62
    iput-object p3, p0, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->codecs:Ljava/lang/String;

    return-void
.end method

.method public static parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/DolbyVisionConfig;
    .registers 5

    const/4 v0, 0x2

    .line 34
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 35
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x5

    shl-int/2addr v0, v2

    .line 37
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    shr-int/lit8 p0, p0, 0x3

    and-int/lit8 p0, p0, 0x1f

    or-int/2addr p0, v0

    const/4 v0, 0x4

    if-eq v1, v0, :cond_30

    if-eq v1, v2, :cond_30

    const/4 v0, 0x7

    if-ne v1, v0, :cond_20

    goto :goto_30

    :cond_20
    const/16 v0, 0x8

    if-ne v1, v0, :cond_27

    const-string v0, "hev1"

    goto :goto_32

    :cond_27
    const/16 v0, 0x9

    if-ne v1, v0, :cond_2e

    const-string v0, "avc3"

    goto :goto_32

    :cond_2e
    const/4 p0, 0x0

    return-object p0

    :cond_30
    :goto_30
    const-string v0, "dvhe"

    .line 48
    :goto_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    if-ge p0, v3, :cond_47

    goto :goto_49

    :cond_47
    const-string v0, "."

    :goto_49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v2, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;

    invoke-direct {v2, v1, p0, v0}, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;-><init>(IILjava/lang/String;)V

    return-object v2
.end method
