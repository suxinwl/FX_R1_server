.class public Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;
.super Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;


# static fields
.field public static final COLORSPACE_BT2020:I = 0x3

.field public static final COLORSPACE_BT601:I = 0x1

.field public static final COLORSPACE_BT709:I = 0x2

.field public static final COLORSPACE_UNKNOWN:I


# instance fields
.field public colorspace:I

.field public data:Ljava/nio/ByteBuffer;

.field public decoderPrivate:I

.field public format:Lcom/google/android/exoplayer2/Format;

.field public height:I

.field public mode:I

.field private final owner:Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner<",
            "Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public supplementalData:Ljava/nio/ByteBuffer;

.field public width:I

.field public yuvPlanes:[Ljava/nio/ByteBuffer;

.field public yuvStrides:[I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner<",
            "Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->owner:Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner;

    return-void
.end method

.method private static isSafeToMultiply(II)Z
    .registers 3

    if-ltz p0, :cond_e

    if-ltz p1, :cond_e

    if-lez p1, :cond_c

    const v0, 0x7fffffff

    .line 168
    div-int/2addr v0, p1

    if-ge p0, v0, :cond_e

    :cond_c
    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method


# virtual methods
.method public init(JILjava/nio/ByteBuffer;)V
    .registers 5

    .line 83
    iput-wide p1, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->timeUs:J

    .line 84
    iput p3, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->mode:I

    if-eqz p4, :cond_3b

    .line 85
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-eqz p1, :cond_3b

    const/high16 p1, 0x10000000

    .line 86
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->addFlag(I)V

    .line 87
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    .line 88
    iget-object p2, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_26

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    if-ge p2, p1, :cond_20

    goto :goto_26

    .line 91
    :cond_20
    iget-object p1, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_2c

    .line 89
    :cond_26
    :goto_26
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    .line 93
    :goto_2c
    iget-object p1, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 94
    iget-object p1, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 p1, 0x0

    .line 95
    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3e

    :cond_3b
    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    :goto_3e
    return-void
.end method

.method public initForPrivateFrame(II)V
    .registers 3

    .line 159
    iput p1, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->width:I

    .line 160
    iput p2, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->height:I

    return-void
.end method

.method public initForYuvFrame(IIIII)Z
    .registers 12

    .line 107
    iput p1, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->width:I

    .line 108
    iput p2, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->height:I

    .line 109
    iput p5, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->colorspace:I

    int-to-long v0, p2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    .line 110
    div-long/2addr v0, v2

    long-to-int p1, v0

    .line 111
    invoke-static {p3, p2}, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->isSafeToMultiply(II)Z

    move-result p5

    const/4 v0, 0x0

    if-eqz p5, :cond_91

    invoke-static {p4, p1}, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->isSafeToMultiply(II)Z

    move-result p5

    if-nez p5, :cond_1d

    goto/16 :goto_91

    :cond_1d
    mul-int p2, p2, p3

    mul-int p1, p1, p4

    mul-int/lit8 p5, p1, 0x2

    add-int/2addr p5, p2

    const/4 v1, 0x2

    .line 117
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->isSafeToMultiply(II)Z

    move-result v2

    if-eqz v2, :cond_91

    if-ge p5, p2, :cond_2e

    goto :goto_91

    .line 122
    :cond_2e
    iget-object v2, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_44

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, p5, :cond_39

    goto :goto_44

    .line 125
    :cond_39
    iget-object v2, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 126
    iget-object v2, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_4a

    .line 123
    :cond_44
    :goto_44
    invoke-static {p5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p5

    iput-object p5, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 129
    :goto_4a
    iget-object p5, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    const/4 v2, 0x3

    if-nez p5, :cond_53

    new-array p5, v2, [Ljava/nio/ByteBuffer;

    .line 130
    iput-object p5, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 133
    :cond_53
    iget-object p5, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 134
    iget-object v3, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 137
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 138
    aget-object v4, v3, v0

    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 139
    invoke-virtual {p5, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 140
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 141
    aget-object v4, v3, v5

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    add-int/2addr p2, p1

    .line 142
    invoke-virtual {p5, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 143
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p2

    aput-object p2, v3, v1

    .line 144
    aget-object p2, v3, v1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 145
    iget-object p1, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    if-nez p1, :cond_88

    new-array p1, v2, [I

    .line 146
    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    .line 148
    :cond_88
    iget-object p1, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    aput p3, p1, v0

    .line 149
    aput p4, p1, v5

    .line 150
    aput p4, p1, v1

    return v5

    :cond_91
    :goto_91
    return v0
.end method

.method public release()V
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/VideoDecoderOutputBuffer;->owner:Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner;->releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;)V

    return-void
.end method
