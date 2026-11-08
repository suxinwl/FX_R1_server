.class public Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;
.super Ljava/lang/Object;
.source "NativeAudioPlayer.java"

# interfaces
.implements Lcom/phicomm/speaker/player/exomedia/core/api/AudioPlayerApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer$InternalListeners;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeMediaPlayer"


# instance fields
.field protected final context:Landroid/content/Context;

.field protected currentBufferPercent:I

.field protected internalListeners:Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer$InternalListeners;

.field protected listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

.field protected final mediaPlayer:Landroid/media/MediaPlayer;

.field protected requestedSeek:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer$InternalListeners;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer$InternalListeners;-><init>(Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->internalListeners:Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer$InternalListeners;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->currentBufferPercent:I

    .line 57
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->context:Landroid/content/Context;

    .line 59
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->internalListeners:Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 61
    return-void
.end method


# virtual methods
.method public getAudioSessionId()I
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getAvailableTracks()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBufferedPercent()I
    .registers 2

    .prologue
    .line 170
    iget v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->currentBufferPercent:I

    return v0
.end method

.method public getCurrentPosition()J
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_f

    .line 162
    :cond_c
    const-wide/16 v0, 0x0

    .line 165
    :goto_e
    return-wide v0

    :cond_f
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    goto :goto_e
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_f

    .line 153
    :cond_c
    const-wide/16 v0, 0x0

    .line 156
    :goto_e
    return-wide v0

    :cond_f
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    goto :goto_e
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onMediaPrepared()V
    .registers 5

    .prologue
    .line 226
    iget-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->requestedSeek:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 227
    iget-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->requestedSeek:J

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->seekTo(J)V

    .line 229
    :cond_d
    return-void
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 129
    return-void
.end method

.method public prepareAsync()V
    .registers 2

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 90
    :goto_5
    return-void

    .line 87
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public release()V
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 176
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 95
    return-void
.end method

.method public restart()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 138
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->isPrepared()Z

    move-result v1

    if-nez v1, :cond_e

    .line 147
    :cond_d
    :goto_d
    return v0

    .line 142
    :cond_e
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 143
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 145
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->setNotifiedCompleted(Z)V

    .line 147
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public seekTo(J)V
    .registers 6
    .param p1, "milliseconds"    # J

    .prologue
    .line 104
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 105
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->requestedSeek:J

    .line 110
    :goto_16
    return-void

    .line 108
    :cond_17
    iput-wide p1, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->requestedSeek:J

    goto :goto_16
.end method

.method public setAudioStreamType(I)V
    .registers 3
    .param p1, "streamType"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 191
    return-void
.end method

.method public setDataSource(Landroid/net/Uri;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->setDataSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 66
    return-void
.end method

.method public setDataSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .prologue
    .line 71
    const-wide/16 v2, 0x0

    :try_start_2
    iput-wide v2, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->requestedSeek:J

    .line 72
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    .line 76
    :goto_b
    return-void

    .line 73
    :catch_c
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NativeMediaPlayer"

    const-string v2, "MediaPlayer: error setting data source"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V
    .registers 2
    .param p1, "drmCallback"    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    .prologue
    .line 81
    return-void
.end method

.method public setListenerMux(Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;)V
    .registers 3
    .param p1, "listenerMux"    # Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    .line 217
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 218
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 219
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 220
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 221
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 222
    return-void
.end method

.method public setPlaybackSpeed(F)Z
    .registers 3
    .param p1, "speed"    # F

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public setTrack(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;I)V
    .registers 3
    .param p1, "trackType"    # Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;
    .param p2, "trackIndex"    # I

    .prologue
    .line 206
    return-void
.end method

.method public setVolume(FF)V
    .registers 4
    .param p1, "left"    # F
    .param p2, "right"    # F

    .prologue
    .line 99
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 100
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 196
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 121
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    if-eqz v0, :cond_f

    .line 122
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->listenerMux:Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;->setNotifiedCompleted(Z)V

    .line 124
    :cond_f
    return-void
.end method

.method public stopPlayback()V
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 134
    return-void
.end method

.method public trackSelectionAvailable()Z
    .registers 2

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method
