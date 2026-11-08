.class public final Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final listener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V
    .registers 3

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_c

    .line 168
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    .line 169
    iput-object p2, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    return-void
.end method


# virtual methods
.method public decoderInitialized(Ljava/lang/String;JJ)V
    .registers 15

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    .line 183
    new-instance v8, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$Y232CA7hogfrRJjYu2VeUSxg0VQ;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$Y232CA7hogfrRJjYu2VeUSxg0VQ;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_11
    return-void
.end method

.method public decoderReleased(Ljava/lang/String;)V
    .registers 4

    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 243
    new-instance v1, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$r7DF8RZ9ts5IAikfXNf1G4rlSuw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$r7DF8RZ9ts5IAikfXNf1G4rlSuw;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 4

    .line 249
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 251
    new-instance v1, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$WrYrl2koktWBYKOQMkK-LTzobgM;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$WrYrl2koktWBYKOQMkK-LTzobgM;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_f
    return-void
.end method

.method public droppedFrames(IJ)V
    .registers 6

    .line 209
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 210
    new-instance v1, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$wpJzum9Nim-WREQi3I6t6RZgGzs;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$wpJzum9Nim-WREQi3I6t6RZgGzs;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public enabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 4

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 175
    new-instance v1, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$Zf6ofdxzBBJ5SL288lE0HglRj8g;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$Zf6ofdxzBBJ5SL288lE0HglRj8g;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public inputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .registers 5

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 199
    new-instance v1, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$oz-eisA2q_FTDGJOEtiN_azfdhs;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$oz-eisA2q_FTDGJOEtiN_azfdhs;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public synthetic lambda$decoderInitialized$1$VideoRendererEventListener$EventDispatcher(Ljava/lang/String;JJ)V
    .registers 13

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 186
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic lambda$decoderReleased$7$VideoRendererEventListener$EventDispatcher(Ljava/lang/String;)V
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoDecoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$disabled$8$VideoRendererEventListener$EventDispatcher(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 3

    .line 253
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 254
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic lambda$droppedFrames$3$VideoRendererEventListener$EventDispatcher(IJ)V
    .registers 5

    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onDroppedFrames(IJ)V

    return-void
.end method

.method public synthetic lambda$enabled$0$VideoRendererEventListener$EventDispatcher(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic lambda$inputFormatChanged$2$VideoRendererEventListener$EventDispatcher(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .registers 4

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public synthetic lambda$renderedFirstFrame$6$VideoRendererEventListener$EventDispatcher(Ljava/lang/Object;J)V
    .registers 5

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onRenderedFirstFrame(Ljava/lang/Object;J)V

    return-void
.end method

.method public synthetic lambda$reportVideoFrameProcessingOffset$4$VideoRendererEventListener$EventDispatcher(JI)V
    .registers 5

    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    .line 220
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoFrameProcessingOffset(JI)V

    return-void
.end method

.method public synthetic lambda$videoCodecError$9$VideoRendererEventListener$EventDispatcher(Ljava/lang/Exception;)V
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic lambda$videoSizeChanged$5$VideoRendererEventListener$EventDispatcher(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method

.method public renderedFirstFrame(Ljava/lang/Object;)V
    .registers 6

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 235
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 236
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$Gr6P1oobvWfpa08JnYPlgwGJOqg;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$Gr6P1oobvWfpa08JnYPlgwGJOqg;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Object;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method

.method public reportVideoFrameProcessingOffset(JI)V
    .registers 6

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 217
    new-instance v1, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$MLUD7MV-bQM2tX9qfDFRcp0NSW4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$MLUD7MV-bQM2tX9qfDFRcp0NSW4;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public videoCodecError(Ljava/lang/Exception;)V
    .registers 4

    .line 261
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 262
    new-instance v1, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$DDpu4v7f8Rdz56XlbPf3o_vRhRw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$DDpu4v7f8Rdz56XlbPf3o_vRhRw;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public videoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .registers 4

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 227
    new-instance v1, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$uOX2lwgNixiR1dirTUw2koFk5kY;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$uOX2lwgNixiR1dirTUw2koFk5kY;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/video/VideoSize;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method
