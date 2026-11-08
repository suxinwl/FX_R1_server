.class public final synthetic Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$dZSZXT3smrx9pgZrzF_ZyYCR0Ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$dZSZXT3smrx9pgZrzF_ZyYCR0Ak;->f$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    iput-boolean p2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$dZSZXT3smrx9pgZrzF_ZyYCR0Ak;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$dZSZXT3smrx9pgZrzF_ZyYCR0Ak;->f$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-boolean v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$dZSZXT3smrx9pgZrzF_ZyYCR0Ak;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->lambda$setPlayWhenReady$7$ExoMediaPlayer(Z)V

    return-void
.end method
