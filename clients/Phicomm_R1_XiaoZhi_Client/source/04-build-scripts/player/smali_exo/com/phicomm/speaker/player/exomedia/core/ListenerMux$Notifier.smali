.class public abstract Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Notifier"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferUpdated(I)V
    .registers 2

    return-void
.end method

.method public abstract onExoPlayerError(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Ljava/lang/Exception;)V
.end method

.method public abstract onMediaPlaybackEnded()V
.end method

.method public onPrepared()V
    .registers 1

    return-void
.end method

.method public onPreviewImageStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onSeekComplete()V
    .registers 1

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .registers 5

    return-void
.end method

.method public abstract shouldNotifyCompletion(J)Z
.end method
