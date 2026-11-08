.class public final synthetic Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$gUTdTmBKEIqlt5DyamOp1jWO9sw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/MediaItem;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Lcom/google/android/exoplayer2/MediaItem;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$gUTdTmBKEIqlt5DyamOp1jWO9sw;->f$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    iput-object p2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$gUTdTmBKEIqlt5DyamOp1jWO9sw;->f$1:Lcom/google/android/exoplayer2/MediaItem;

    iput-wide p3, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$gUTdTmBKEIqlt5DyamOp1jWO9sw;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$gUTdTmBKEIqlt5DyamOp1jWO9sw;->f$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$gUTdTmBKEIqlt5DyamOp1jWO9sw;->f$1:Lcom/google/android/exoplayer2/MediaItem;

    iget-wide v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$gUTdTmBKEIqlt5DyamOp1jWO9sw;->f$2:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->lambda$setMediaItem$2$ExoMediaPlayer(Lcom/google/android/exoplayer2/MediaItem;J)V

    return-void
.end method
