.class Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;
.super Ljava/lang/Object;
.source "ExoMediaPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
.implements Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
.implements Lcom/google/android/exoplayer2/text/TextOutput;
.implements Lcom/google/android/exoplayer2/metadata/MetadataOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;)V
    .registers 2

    .prologue
    .line 663
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;
    .param p2, "x1"    # Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$1;

    .prologue
    .line 663
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;-><init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .registers 6
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .prologue
    .line 687
    return-void
.end method

.method public onAudioDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 4
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .prologue
    .line 676
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    const/4 v1, 0x0

    # setter for: Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->audioSessionId:I
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->access$802(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;I)I

    .line 677
    return-void
.end method

.method public onAudioEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 2
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .prologue
    .line 672
    return-void
.end method

.method public onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .registers 2
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    .line 692
    return-void
.end method

.method public onAudioSessionId(I)V
    .registers 3
    .param p1, "sessionId"    # I

    .prologue
    .line 681
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    # setter for: Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->audioSessionId:I
    invoke-static {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->access$802(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;I)I

    .line 682
    return-void
.end method

.method public onAudioSinkUnderrun(IJJ)V
    .registers 12
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .prologue
    .line 696
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    # getter for: Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->internalErrorListener:Lcom/phicomm/speaker/player/exomedia/core/listener/InternalErrorListener;
    invoke-static {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->access$700(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/phicomm/speaker/player/exomedia/core/listener/InternalErrorListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 697
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    # getter for: Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->internalErrorListener:Lcom/phicomm/speaker/player/exomedia/core/listener/InternalErrorListener;
    invoke-static {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->access$700(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/phicomm/speaker/player/exomedia/core/listener/InternalErrorListener;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/phicomm/speaker/player/exomedia/core/listener/InternalErrorListener;->onAudioSinkUnderrun(IJJ)V

    .line 699
    :cond_14
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 747
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    # getter for: Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->captionListener:Lcom/phicomm/speaker/player/exomedia/core/listener/CaptionListener;
    invoke-static {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->access$1100(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/phicomm/speaker/player/exomedia/core/listener/CaptionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 748
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    # getter for: Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->captionListener:Lcom/phicomm/speaker/player/exomedia/core/listener/CaptionListener;
    invoke-static {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->access$1100(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/phicomm/speaker/player/exomedia/core/listener/CaptionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/listener/CaptionListener;->onCues(Ljava/util/List;)V

    .line 750
    :cond_11
    return-void
.end method

.method public onDroppedFrames(IJ)V
    .registers 4
    .param p1, "count"    # I
    .param p2, "elapsedMs"    # J

    .prologue
    .line 724
    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .registers 3
    .param p1, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    # getter for: Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->metadataListener:Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;
    invoke-static {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->access$1000(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 741
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    # getter for: Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->metadataListener:Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;
    invoke-static {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->access$1000(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/listener/MetadataListener;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 743
    :cond_11
    return-void
.end method

.method public onRenderedFirstFrame(Landroid/view/Surface;)V
    .registers 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 736
    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .registers 6
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .prologue
    .line 714
    return-void
.end method

.method public onVideoDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 2
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .prologue
    .line 709
    return-void
.end method

.method public onVideoEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 2
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .prologue
    .line 704
    return-void
.end method

.method public onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .registers 2
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    .line 719
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .registers 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 728
    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    # getter for: Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->access$900(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;

    .line 729
    .local v1, "listener":Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;->onVideoSizeChanged(IIIF)V

    goto :goto_a

    .line 731
    .end local v1    # "listener":Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;
    :cond_1a
    return-void
.end method
