.class public abstract Lcom/google/android/exoplayer2/metadata/SimpleMetadataDecoder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/MetadataDecoder;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode(Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 4

    .line 31
    iget-object v0, p1, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 32
    :goto_1d
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 34
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->isDecodeOnly()Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 p1, 0x0

    goto :goto_2c

    :cond_28
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/metadata/SimpleMetadataDecoder;->decode(Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    :goto_2c
    return-object p1
.end method

.method protected abstract decode(Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;
.end method
