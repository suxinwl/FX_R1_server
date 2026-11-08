.class abstract Lcom/google/android/exoplayer2/text/cea/CeaDecoder;
.super Ljava/lang/Object;
.source "CeaDecoder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/SubtitleDecoder;


# static fields
.field private static final NUM_INPUT_BUFFERS:I = 0xa

.field private static final NUM_OUTPUT_BUFFERS:I = 0x2


# instance fields
.field private final availableInputBuffers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final availableOutputBuffers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private dequeuedInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

.field private playbackPositionUs:J

.field private final queuedInputBuffers:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/LinkedList;

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1c

    .line 47
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/LinkedList;

    new-instance v2, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 49
    :cond_1c
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/LinkedList;

    .line 50
    const/4 v0, 0x0

    :goto_24
    const/4 v1, 0x2

    if-ge v0, v1, :cond_34

    .line 51
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/LinkedList;

    new-instance v2, Lcom/google/android/exoplayer2/text/cea/CeaOutputBuffer;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/text/cea/CeaOutputBuffer;-><init>(Lcom/google/android/exoplayer2/text/cea/CeaDecoder;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 53
    :cond_34
    new-instance v1, Ljava/util/PriorityQueue;

    invoke-direct {v1}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    .line 54
    return-void
.end method

.method private releaseInputBuffer(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
    .registers 3
    .param p1, "inputBuffer"    # Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    .prologue
    .line 130
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->clear()V

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method


# virtual methods
.method protected abstract createSubtitle()Lcom/google/android/exoplayer2/text/Subtitle;
.end method

.method protected abstract decode(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
.end method

.method public dequeueInputBuffer()Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 68
    const/4 v0, 0x0

    .line 71
    :goto_11
    return-object v0

    .line 66
    :cond_12
    const/4 v0, 0x0

    goto :goto_5

    .line 70
    :cond_14
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    goto :goto_11
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->dequeueInputBuffer()Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public dequeueOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 89
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 126
    :cond_9
    :goto_9
    return-object v0

    .line 123
    .local v6, "inputBuffer":Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
    :cond_a
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->releaseInputBuffer(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V

    .line 95
    .end local v6    # "inputBuffer":Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
    :cond_d
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    .line 96
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->timeUs:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->playbackPositionUs:J

    cmp-long v1, v4, v8

    if-gtz v1, :cond_9

    .line 97
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    .line 101
    .restart local v6    # "inputBuffer":Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->isEndOfStream()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 102
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 103
    .local v0, "outputBuffer":Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->addFlag(I)V

    .line 104
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->releaseInputBuffer(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V

    goto :goto_9

    .line 108
    .end local v0    # "outputBuffer":Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    :cond_43
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->decode(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V

    .line 111
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->isNewSubtitleDataAvailable()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 114
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->createSubtitle()Lcom/google/android/exoplayer2/text/Subtitle;

    move-result-object v3

    .line 115
    .local v3, "subtitle":Lcom/google/android/exoplayer2/text/Subtitle;
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->isDecodeOnly()Z

    move-result v1

    if-nez v1, :cond_a

    .line 116
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 117
    .restart local v0    # "outputBuffer":Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    iget-wide v1, v6, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->timeUs:J

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->setContent(JLcom/google/android/exoplayer2/text/Subtitle;J)V

    .line 118
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->releaseInputBuffer(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V

    goto :goto_9
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .registers 3

    .prologue
    .line 141
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->playbackPositionUs:J

    .line 142
    :goto_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->releaseInputBuffer(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V

    goto :goto_4

    .line 145
    :cond_18
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    if-eqz v0, :cond_24

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->releaseInputBuffer(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    .line 149
    :cond_24
    return-void
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected abstract isNewSubtitleDataAvailable()Z
.end method

.method public queueInputBuffer(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
    .registers 3
    .param p1, "inputBuffer"    # Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    if-ne p1, v0, :cond_15

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 77
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->releaseInputBuffer(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V

    .line 84
    :goto_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    .line 85
    return-void

    .line 76
    :cond_15
    const/4 v0, 0x0

    goto :goto_5

    .line 82
    :cond_17
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    check-cast p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public release()V
    .registers 1

    .prologue
    .line 154
    return-void
.end method

.method protected releaseOutputBuffer(Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;)V
    .registers 3
    .param p1, "outputBuffer"    # Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->clear()V

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public setPositionUs(J)V
    .registers 4
    .param p1, "positionUs"    # J

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->playbackPositionUs:J

    .line 62
    return-void
.end method
