.class public final Lcom/google/android/exoplayer2/decoder/CryptoInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;
    }
.end annotation


# instance fields
.field public clearBlocks:I

.field public encryptedBlocks:I

.field private final frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

.field public iv:[B

.field public key:[B

.field public mode:I

.field public numBytesOfClearData:[I

.field public numBytesOfEncryptedData:[I

.field public numSubSamples:I

.field private final patternHolder:Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    .line 84
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_19

    new-instance v0, Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;

    iget-object v2, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lcom/google/android/exoplayer2/decoder/CryptoInfo$1;)V

    move-object v1, v0

    :cond_19
    iput-object v1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->patternHolder:Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;

    return-void
.end method


# virtual methods
.method public getFrameworkCryptoInfo()Landroid/media/MediaCodec$CryptoInfo;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public increaseClearDataFirstSubSampleBy(I)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_10

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 150
    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    .line 151
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iput-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 153
    :cond_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    return-void
.end method

.method public set(I[I[I[B[BIII)V
    .registers 10

    .line 99
    iput p1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numSubSamples:I

    .line 100
    iput-object p2, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    .line 101
    iput-object p3, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    .line 102
    iput-object p4, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->key:[B

    .line 103
    iput-object p5, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    .line 104
    iput p6, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->mode:I

    .line 105
    iput p7, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->encryptedBlocks:I

    .line 106
    iput p8, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->clearBlocks:I

    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iput p1, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 110
    iget-object p1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iput-object p2, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 111
    iget-object p1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iput-object p3, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 112
    iget-object p1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iput-object p4, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 113
    iget-object p1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iput-object p5, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 114
    iget-object p1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iput p6, p1, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 115
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_39

    .line 116
    iget-object p1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->patternHolder:Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;

    # invokes: Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;->set(II)V
    invoke-static {p1, p7, p8}, Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;->access$100(Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;II)V

    :cond_39
    return-void
.end method
