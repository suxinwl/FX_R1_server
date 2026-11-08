.class final Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SampleStreamImpl"
.end annotation


# static fields
.field private static final STREAM_STATE_END_OF_STREAM:I = 0x2

.field private static final STREAM_STATE_SEND_FORMAT:I = 0x0

.field private static final STREAM_STATE_SEND_SAMPLE:I = 0x1


# instance fields
.field private streamState:I

.field final synthetic this$0:Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;)V
    .registers 2

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$1;

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;-><init>(Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;)V

    return-void
.end method


# virtual methods
.method public isReady()Z
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    return v0
.end method

.method public maybeThrowError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->treatLoadErrorsAsEndOfStream:Z

    if-nez v0, :cond_d

    .line 220
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 222
    :cond_d
    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .registers 10
    .param p1, "formatHolder"    # Lcom/google/android/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .param p3, "requireFormat"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, -0x4

    .line 227
    iget v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    if-ne v1, v5, :cond_c

    .line 228
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 246
    :goto_b
    return v0

    .line 230
    :cond_c
    if-nez p3, :cond_12

    iget v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    if-nez v1, :cond_1c

    .line 231
    :cond_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->format:Lcom/google/android/exoplayer2/Format;

    iput-object v0, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    .line 232
    iput v4, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    .line 233
    const/4 v0, -0x5

    goto :goto_b

    .line 234
    :cond_1c
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    if-eqz v1, :cond_4b

    .line 235
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loadingSucceeded:Z

    if-eqz v1, :cond_47

    .line 236
    const-wide/16 v2, 0x0

    iput-wide v2, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 237
    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 238
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;

    iget v1, v1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->sampleSize:I

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 239
    iget-object v1, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->sampleData:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;

    iget v4, v4, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->sampleSize:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 243
    :goto_44
    iput v5, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    goto :goto_b

    .line 241
    :cond_47
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    goto :goto_44

    .line 246
    :cond_4b
    const/4 v0, -0x3

    goto :goto_b
.end method

.method public seekToUs(J)V
    .registers 5
    .param p1, "positionUs"    # J

    .prologue
    .line 207
    iget v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 208
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    .line 210
    :cond_8
    return-void
.end method

.method public skipData(J)I
    .registers 6
    .param p1, "positionUs"    # J

    .prologue
    const/4 v2, 0x2

    .line 251
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_f

    iget v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    if-eq v0, v2, :cond_f

    .line 252
    iput v2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    .line 253
    const/4 v0, 0x1

    .line 255
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
