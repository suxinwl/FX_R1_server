.class public Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
.super Lcom/google/android/exoplayer2/decoder/Buffer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer$BufferReplacementMode;,
        Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer$InsufficientCapacityException;
    }
.end annotation


# static fields
.field public static final BUFFER_REPLACEMENT_MODE_DIRECT:I = 0x2

.field public static final BUFFER_REPLACEMENT_MODE_DISABLED:I = 0x0

.field public static final BUFFER_REPLACEMENT_MODE_NORMAL:I = 0x1


# instance fields
.field private final bufferReplacementMode:I

.field public final cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

.field public data:Ljava/nio/ByteBuffer;

.field public format:Lcom/google/android/exoplayer2/Format;

.field private final paddingSize:I

.field public supplementalData:Ljava/nio/ByteBuffer;

.field public timeUs:J

.field public waitingForKeys:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "goog.exo.decoder"

    .line 36
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 139
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/Buffer;-><init>()V

    .line 140
    new-instance v0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/decoder/CryptoInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    .line 141
    iput p1, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->bufferReplacementMode:I

    .line 142
    iput p2, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->paddingSize:I

    return-void
.end method

.method private createReplacementByteBuffer(I)Ljava/nio/ByteBuffer;
    .registers 4

    .line 232
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->bufferReplacementMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 233
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_a
    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 235
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 237
    :cond_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_18

    const/4 v0, 0x0

    goto :goto_1c

    :cond_18
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 238
    :goto_1c
    new-instance v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer$InsufficientCapacityException;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer$InsufficientCapacityException;-><init>(II)V

    throw v1
.end method

.method public static newNoDataInstance()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .registers 2

    .line 117
    new-instance v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 221
    invoke-super {p0}, Lcom/google/android/exoplayer2/decoder/Buffer;->clear()V

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_a

    .line 223
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 225
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_11

    .line 226
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_11
    const/4 v0, 0x0

    .line 228
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->waitingForKeys:Z

    return-void
.end method

.method public ensureSpaceForWrite(I)V
    .registers 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "data"
        }
    .end annotation

    .line 174
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->paddingSize:I

    add-int/2addr p1, v0

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_e

    .line 177
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->createReplacementByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    return-void

    .line 181
    :cond_e
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    .line 182
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr p1, v2

    if-lt v1, p1, :cond_1c

    .line 185
    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    return-void

    .line 189
    :cond_1c
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->createReplacementByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 190
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    if-lez v2, :cond_2f

    .line 193
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 194
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 197
    :cond_2f
    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final flip()V
    .registers 2

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_7

    .line 212
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 214
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_e

    .line 215
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_e
    return-void
.end method

.method public final isEncrypted()Z
    .registers 2

    const/high16 v0, 0x40000000    # 2.0f

    .line 202
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public resetSupplementalData(I)V
    .registers 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "supplementalData"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_b

    goto :goto_11

    .line 156
    :cond_b
    iget-object p1, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_17

    .line 154
    :cond_11
    :goto_11
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    :goto_17
    return-void
.end method
