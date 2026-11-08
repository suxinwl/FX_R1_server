.class public final synthetic Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$_ce_q99EBNtK1PARsv1sviX6Ai0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/MediaItem;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Lcom/google/android/exoplayer2/MediaItem;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$_ce_q99EBNtK1PARsv1sviX6Ai0;->f$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    iput-object p2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$_ce_q99EBNtK1PARsv1sviX6Ai0;->f$1:Lcom/google/android/exoplayer2/MediaItem;

    iput-boolean p3, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$_ce_q99EBNtK1PARsv1sviX6Ai0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$_ce_q99EBNtK1PARsv1sviX6Ai0;->f$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$_ce_q99EBNtK1PARsv1sviX6Ai0;->f$1:Lcom/google/android/exoplayer2/MediaItem;

    iget-boolean v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$_ce_q99EBNtK1PARsv1sviX6Ai0;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->lambda$setMediaItem$3$ExoMediaPlayer(Lcom/google/android/exoplayer2/MediaItem;Z)V

    return-void
.end method
