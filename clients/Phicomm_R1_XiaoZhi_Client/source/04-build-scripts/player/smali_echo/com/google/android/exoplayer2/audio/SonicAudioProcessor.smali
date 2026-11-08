.class public final Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;
.super Ljava/lang/Object;
.source "SonicAudioProcessor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioProcessor;


# static fields
.field private static final CLOSE_THRESHOLD:F = 0.01f

.field public static final MAXIMUM_PITCH:F = 8.0f

.field public static final MAXIMUM_SPEED:F = 8.0f

.field public static final MINIMUM_PITCH:F = 0.1f

.field public static final MINIMUM_SPEED:F = 0.1f

.field private static final MIN_BYTES_FOR_SPEEDUP_CALCULATION:I = 0x400

.field public static final SAMPLE_RATE_NO_CHANGE:I = -0x1


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private channelCount:I

.field private inputBytes:J

.field private inputEnded:Z

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private outputBytes:J

.field private outputSampleRateHz:I

.field private pendingOutputSampleRateHz:I

.field private pitch:F

.field private sampleRateHz:I

.field private shortBuffer:Ljava/nio/ShortBuffer;

.field private sonic:Lcom/google/android/exoplayer2/audio/Sonic;

.field private speed:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, -0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    .line 84
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    .line 85
    iput v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->channelCount:I

    .line 86
    iput v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sampleRateHz:I

    .line 87
    iput v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputSampleRateHz:I

    .line 88
    sget-object v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 90
    sget-object v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 91
    iput v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputSampleRateHz:I

    .line 92
    return-void
.end method


# virtual methods
.method public configure(III)Z
    .registers 7
    .param p1, "sampleRateHz"    # I
    .param p2, "channelCount"    # I
    .param p3, "encoding"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v1, 0x2

    if-eq p3, v1, :cond_9

    .line 151
    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v1

    .line 153
    :cond_9
    iget v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputSampleRateHz:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1d

    move v0, p1

    .line 155
    .local v0, "outputSampleRateHz":I
    :goto_f
    iget v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sampleRateHz:I

    if-ne v1, p1, :cond_20

    iget v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->channelCount:I

    if-ne v1, p2, :cond_20

    iget v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputSampleRateHz:I

    if-ne v1, v0, :cond_20

    .line 157
    const/4 v1, 0x0

    .line 162
    :goto_1c
    return v1

    .line 153
    .end local v0    # "outputSampleRateHz":I
    :cond_1d
    iget v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputSampleRateHz:I

    goto :goto_f

    .line 159
    .restart local v0    # "outputSampleRateHz":I
    :cond_20
    iput p1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sampleRateHz:I

    .line 160
    iput p2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->channelCount:I

    .line 161
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputSampleRateHz:I

    .line 162
    const/4 v1, 0x1

    goto :goto_1c
.end method

.method public flush()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 231
    new-instance v0, Lcom/google/android/exoplayer2/audio/Sonic;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sampleRateHz:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->channelCount:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    iget v4, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    iget v5, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputSampleRateHz:I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/Sonic;-><init>(IIFFI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    .line 232
    sget-object v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 233
    iput-wide v6, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    .line 234
    iput-wide v6, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputEnded:Z

    .line 236
    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .registers 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 220
    .local v0, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 221
    return-object v0
.end method

.method public getOutputChannelCount()I
    .registers 2

    .prologue
    .line 173
    iget v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->channelCount:I

    return v0
.end method

.method public getOutputEncoding()I
    .registers 2

    .prologue
    .line 178
    const/4 v0, 0x2

    return v0
.end method

.method public getOutputSampleRateHz()I
    .registers 2

    .prologue
    .line 183
    iget v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputSampleRateHz:I

    return v0
.end method

.method public isActive()Z
    .registers 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3c23d70a    # 0.01f

    .line 167
    iget v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-gez v0, :cond_21

    iget v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-gez v0, :cond_21

    iget v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputSampleRateHz:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sampleRateHz:I

    if-eq v0, v1, :cond_23

    :cond_21
    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public isEnded()Z
    .registers 2

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputEnded:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/Sonic;->getSamplesAvailable()I

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public queueEndOfStream()V
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/Sonic;->queueEndOfStream()V

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputEnded:Z

    .line 215
    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .registers 10
    .param p1, "inputBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 188
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 189
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    .line 190
    .local v2, "shortBuffer":Ljava/nio/ShortBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 191
    .local v0, "inputSize":I
    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    .line 192
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/audio/Sonic;->queueInput(Ljava/nio/ShortBuffer;)V

    .line 193
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 195
    .end local v0    # "inputSize":I
    .end local v2    # "shortBuffer":Ljava/nio/ShortBuffer;
    :cond_21
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/audio/Sonic;->getSamplesAvailable()I

    move-result v3

    iget v4, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->channelCount:I

    mul-int/2addr v3, v4

    mul-int/lit8 v1, v3, 0x2

    .line 196
    .local v1, "outputSize":I
    if-lez v1, :cond_62

    .line 197
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v1, :cond_63

    .line 198
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 199
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 204
    :goto_4c
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/audio/Sonic;->getOutput(Ljava/nio/ShortBuffer;)V

    .line 205
    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    .line 206
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 207
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 209
    :cond_62
    return-void

    .line 201
    :cond_63
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 202
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_4c
.end method

.method public reset()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, -0x1

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    .line 241
    sget-object v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 243
    sget-object v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 244
    iput v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->channelCount:I

    .line 245
    iput v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sampleRateHz:I

    .line 246
    iput v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputSampleRateHz:I

    .line 247
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    .line 248
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputEnded:Z

    .line 250
    iput v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputSampleRateHz:I

    .line 251
    return-void
.end method

.method public scaleDurationForSpeedup(J)J
    .registers 10
    .param p1, "duration"    # J

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2a

    .line 138
    iget v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputSampleRateHz:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sampleRateHz:I

    if-ne v0, v1, :cond_18

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    move-wide v0, p1

    .line 139
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    .line 143
    :goto_17
    return-wide v0

    .line 139
    :cond_18
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    iget v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputSampleRateHz:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    iget v4, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sampleRateHz:I

    int-to-long v4, v4

    mul-long/2addr v4, v0

    move-wide v0, p1

    .line 140
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    goto :goto_17

    .line 143
    :cond_2a
    iget v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    float-to-double v0, v0

    long-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-long v0, v0

    goto :goto_17
.end method

.method public setOutputSampleRateHz(I)V
    .registers 2
    .param p1, "sampleRateHz"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputSampleRateHz:I

    .line 126
    return-void
.end method

.method public setPitch(F)F
    .registers 4
    .param p1, "pitch"    # F

    .prologue
    .line 112
    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    .line 113
    return p1
.end method

.method public setSpeed(F)F
    .registers 4
    .param p1, "speed"    # F

    .prologue
    .line 101
    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    .line 102
    iget v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    return v0
.end method
