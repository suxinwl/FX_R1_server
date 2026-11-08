.class public abstract Lcom/google/android/exoplayer2/NoSampleRenderer;
.super Ljava/lang/Object;
.source "NoSampleRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Renderer;
.implements Lcom/google/android/exoplayer2/RendererCapabilities;


# instance fields
.field private configuration:Lcom/google/android/exoplayer2/RendererConfiguration;

.field private index:I

.field private state:I

.field private stream:Lcom/google/android/exoplayer2/source/SampleStream;

.field private streamIsFinal:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final disable()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 153
    iget v2, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->state:I

    if-ne v2, v0, :cond_14

    :goto_6
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 154
    iput v1, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->state:I

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    .line 156
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->streamIsFinal:Z

    .line 157
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/NoSampleRenderer;->onDisabled()V

    .line 158
    return-void

    :cond_14
    move v0, v1

    .line 153
    goto :goto_6
.end method

.method public final enable(Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JZJ)V
    .registers 11
    .param p1, "configuration"    # Lcom/google/android/exoplayer2/RendererConfiguration;
    .param p2, "formats"    # [Lcom/google/android/exoplayer2/Format;
    .param p3, "stream"    # Lcom/google/android/exoplayer2/source/SampleStream;
    .param p4, "positionUs"    # J
    .param p6, "joining"    # Z
    .param p7, "offsetUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 79
    iget v0, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->state:I

    if-nez v0, :cond_17

    move v0, v1

    :goto_6
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 80
    iput-object p1, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->configuration:Lcom/google/android/exoplayer2/RendererConfiguration;

    .line 81
    iput v1, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->state:I

    .line 82
    invoke-virtual {p0, p6}, Lcom/google/android/exoplayer2/NoSampleRenderer;->onEnabled(Z)V

    .line 83
    invoke-virtual {p0, p2, p3, p7, p8}, Lcom/google/android/exoplayer2/NoSampleRenderer;->replaceStream([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;J)V

    .line 84
    invoke-virtual {p0, p4, p5, p6}, Lcom/google/android/exoplayer2/NoSampleRenderer;->onPositionReset(JZ)V

    .line 85
    return-void

    .line 79
    :cond_17
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final getCapabilities()Lcom/google/android/exoplayer2/RendererCapabilities;
    .registers 1

    .prologue
    .line 42
    return-object p0
.end method

.method protected final getConfiguration()Lcom/google/android/exoplayer2/RendererConfiguration;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->configuration:Lcom/google/android/exoplayer2/RendererConfiguration;

    return-object v0
.end method

.method protected final getIndex()I
    .registers 2

    .prologue
    .line 275
    iget v0, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->index:I

    return v0
.end method

.method public getMediaClock()Lcom/google/android/exoplayer2/util/MediaClock;
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getState()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->state:I

    return v0
.end method

.method public final getStream()Lcom/google/android/exoplayer2/source/SampleStream;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    return-object v0
.end method

.method public final getTrackType()I
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x5

    return v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .registers 3
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 187
    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .registers 2

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public final isCurrentStreamFinal()Z
    .registers 2

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->streamIsFinal:Z

    return v0
.end method

.method public isEnded()Z
    .registers 2

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public isReady()Z
    .registers 2

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public final maybeThrowStreamError()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    return-void
.end method

.method protected onDisabled()V
    .registers 1

    .prologue
    .line 260
    return-void
.end method

.method protected onEnabled(Z)V
    .registers 2
    .param p1, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 201
    return-void
.end method

.method protected onPositionReset(JZ)V
    .registers 4
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 229
    return-void
.end method

.method protected onRendererOffsetChanged(J)V
    .registers 3
    .param p1, "offsetUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 214
    return-void
.end method

.method protected onStarted()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 240
    return-void
.end method

.method protected onStopped()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 251
    return-void
.end method

.method public final replaceStream([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;J)V
    .registers 6
    .param p1, "formats"    # [Lcom/google/android/exoplayer2/Format;
    .param p2, "stream"    # Lcom/google/android/exoplayer2/source/SampleStream;
    .param p3, "offsetUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->streamIsFinal:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 110
    iput-object p2, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    .line 111
    invoke-virtual {p0, p3, p4}, Lcom/google/android/exoplayer2/NoSampleRenderer;->onRendererOffsetChanged(J)V

    .line 112
    return-void

    .line 109
    :cond_e
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final resetPosition(J)V
    .registers 4
    .param p1, "positionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->streamIsFinal:Z

    .line 141
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/NoSampleRenderer;->onPositionReset(JZ)V

    .line 142
    return-void
.end method

.method public final setCurrentStreamFinal()V
    .registers 2

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->streamIsFinal:Z

    .line 127
    return-void
.end method

.method public final setIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->index:I

    .line 48
    return-void
.end method

.method public final start()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 89
    iget v1, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->state:I

    if-ne v1, v0, :cond_f

    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 90
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->state:I

    .line 91
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/NoSampleRenderer;->onStarted()V

    .line 92
    return-void

    .line 89
    :cond_f
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final stop()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 146
    iget v0, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_10

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 147
    iput v1, p0, Lcom/google/android/exoplayer2/NoSampleRenderer;->state:I

    .line 148
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/NoSampleRenderer;->onStopped()V

    .line 149
    return-void

    .line 146
    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .registers 3
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method
