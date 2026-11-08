.class public Lcom/google/android/exoplayer2/text/SubtitleExtractor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/SubtitleExtractor$State;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x400

.field private static final STATE_CREATED:I = 0x0

.field private static final STATE_EXTRACTING:I = 0x2

.field private static final STATE_FINISHED:I = 0x4

.field private static final STATE_INITIALIZED:I = 0x1

.field private static final STATE_RELEASED:I = 0x5

.field private static final STATE_SEEKING:I = 0x3


# instance fields
.field private bytesRead:I

.field private final cueEncoder:Lcom/google/android/exoplayer2/text/CueEncoder;

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private final format:Lcom/google/android/exoplayer2/Format;

.field private final samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ">;"
        }
    .end annotation
.end field

.field private seekTimeUs:J

.field private state:I

.field private final subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

.field private final timestamps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/SubtitleDecoder;Lcom/google/android/exoplayer2/Format;)V
    .registers 4

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 97
    new-instance p1, Lcom/google/android/exoplayer2/text/CueEncoder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/text/CueEncoder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->cueEncoder:Lcom/google/android/exoplayer2/text/CueEncoder;

    .line 98
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 101
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    const-string v0, "text/x-exoplayer-cues"

    .line 102
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    iget-object p2, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 103
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->format:Lcom/google/android/exoplayer2/Format;

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->timestamps:Ljava/util/List;

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->samples:Ljava/util/List;

    const/4 p1, 0x0

    .line 107
    iput p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 108
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->seekTimeUs:J

    return-void
.end method

.method private decode()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    :goto_8
    const-wide/16 v1, 0x5

    if-nez v0, :cond_18

    .line 217
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 218
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    goto :goto_8

    .line 220
    :cond_18
    iget v3, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->ensureSpaceForWrite(I)V

    .line 221
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    iget v5, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 222
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 223
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    :goto_3f
    if-nez v0, :cond_4d

    .line 226
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 227
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    goto :goto_3f

    .line 229
    :cond_4d
    :goto_4d
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getEventTimeCount()I

    move-result v1

    if-ge v6, v1, :cond_7b

    .line 230
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getCues(J)Ljava/util/List;

    move-result-object v1

    .line 231
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->cueEncoder:Lcom/google/android/exoplayer2/text/CueEncoder;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/text/CueEncoder;->encode(Ljava/util/List;)[B

    move-result-object v1

    .line 232
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->timestamps:Ljava/util/List;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->samples:Ljava/util/List;

    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4d

    .line 235
    :cond_7b
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->release()V
    :try_end_7e
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_7e} :catch_87
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_7e} :catch_7f

    return-void

    :catch_7f
    move-exception v0

    const-string v1, "SubtitleDecoder failed."

    .line 240
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 237
    :catch_87
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 238
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    goto :goto_95

    :goto_94
    throw v0

    :goto_95
    goto :goto_94
.end method

.method private readFromInput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    if-ne v0, v1, :cond_11

    .line 200
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    add-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->ensureCapacity(I)V

    .line 202
    :cond_11
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 203
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v2

    iget v3, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    sub-int/2addr v2, v3

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2e

    .line 205
    iget v2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    .line 207
    :cond_2e
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3f

    .line 208
    iget p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    int-to-long v4, p1

    cmp-long p1, v4, v2

    if-eqz p1, :cond_41

    :cond_3f
    if-ne v0, v1, :cond_43

    :cond_41
    const/4 p1, 0x1

    goto :goto_44

    :cond_43
    const/4 p1, 0x0

    :goto_44
    return p1
.end method

.method private skipInput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_13

    .line 192
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v0

    goto :goto_15

    :cond_13
    const/16 v0, 0x400

    .line 190
    :goto_15
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skip(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method private writeToOutput()V
    .registers 12

    .line 245
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->timestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->samples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 247
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->seekTimeUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v0, v4

    if-nez v6, :cond_28

    const/4 v0, 0x0

    goto :goto_32

    :cond_28
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->timestamps:Ljava/util/List;

    .line 251
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 250
    invoke-static {v4, v0, v3, v3}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result v0

    .line 252
    :goto_32
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->samples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_66

    .line 253
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->samples:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 254
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 255
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    array-length v8, v3

    .line 256
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v3, v1, v8}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 257
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->timestamps:Ljava/util/List;

    .line 258
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 257
    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_66
    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .registers 9

    .line 121
    iget v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 122
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 v0, 0x3

    .line 123
    invoke-interface {p1, v2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 124
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 125
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;

    new-array v3, v1, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    new-array v6, v1, [J

    aput-wide v4, v6, v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v3, v6, v4, v5}, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;-><init>([J[JJ)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 130
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->format:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 131
    iput v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget p2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_b

    const/4 v2, 0x5

    if-eq p2, v2, :cond_b

    const/4 p2, 0x1

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    :goto_c
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 137
    iget p2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v2, 0x2

    if-ne p2, v0, :cond_32

    .line 138
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 139
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_29

    .line 140
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v0

    goto :goto_2b

    :cond_29
    const/16 v0, 0x400

    .line 138
    :goto_2b
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 142
    iput v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    .line 143
    iput v2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    .line 145
    :cond_32
    iget p2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v0, 0x4

    if-ne p2, v2, :cond_45

    .line 146
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->readFromInput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_45

    .line 148
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->decode()V

    .line 149
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->writeToOutput()V

    .line 150
    iput v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    .line 153
    :cond_45
    iget p2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v2, 0x3

    if-ne p2, v2, :cond_55

    .line 154
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->skipInput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 156
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->writeToOutput()V

    .line 157
    iput v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    .line 160
    :cond_55
    iget p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    if-ne p1, v0, :cond_5b

    const/4 p1, -0x1

    return p1

    :cond_5b
    return v1
.end method

.method public release()V
    .registers 3

    .line 181
    iget v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    return-void

    .line 184
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->release()V

    .line 185
    iput v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    return-void
.end method

.method public seek(JJ)V
    .registers 6

    .line 168
    iget p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 p2, 0x1

    if-eqz p1, :cond_a

    const/4 v0, 0x5

    if-eq p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 169
    iput-wide p3, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->seekTimeUs:J

    .line 170
    iget p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_17

    .line 171
    iput p2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    .line 173
    :cond_17
    iget p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1f

    const/4 p1, 0x3

    .line 174
    iput p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    :cond_1f
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
