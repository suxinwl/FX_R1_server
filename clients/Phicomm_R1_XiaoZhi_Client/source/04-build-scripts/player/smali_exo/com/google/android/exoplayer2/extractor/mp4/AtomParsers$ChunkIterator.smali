.class final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChunkIterator"
.end annotation


# instance fields
.field private final chunkOffsets:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final chunkOffsetsAreLongs:Z

.field public index:I

.field public final length:I

.field private nextSamplesPerChunkChangeIndex:I

.field public numSamples:I

.field public offset:J

.field private remainingSamplesPerChunkChanges:I

.field private final stsc:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1880
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->stsc:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1881
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsets:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1882
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsetsAreLongs:Z

    const/16 p3, 0xc

    .line 1883
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1884
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    .line 1885
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1886
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->remainingSamplesPerChunkChanges:I

    .line 1887
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_25

    goto :goto_26

    :cond_25
    const/4 p2, 0x0

    :goto_26
    const-string p1, "first_chunk must be 1"

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    const/4 p1, -0x1

    .line 1888
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    return-void
.end method


# virtual methods
.method public moveNext()Z
    .registers 5

    .line 1892
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    if-ne v0, v2, :cond_c

    const/4 v0, 0x0

    return v0

    .line 1895
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsetsAreLongs:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsets:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1897
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    goto :goto_1d

    :cond_17
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsets:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1898
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    :goto_1d
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    .line 1899
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->nextSamplesPerChunkChangeIndex:I

    if-ne v0, v2, :cond_45

    .line 1900
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->stsc:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    .line 1901
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->stsc:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1902
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->remainingSamplesPerChunkChanges:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->remainingSamplesPerChunkChanges:I

    if-lez v0, :cond_42

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->stsc:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1904
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_43

    :cond_42
    const/4 v0, -0x1

    :goto_43
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->nextSamplesPerChunkChangeIndex:I

    :cond_45
    return v1
.end method
