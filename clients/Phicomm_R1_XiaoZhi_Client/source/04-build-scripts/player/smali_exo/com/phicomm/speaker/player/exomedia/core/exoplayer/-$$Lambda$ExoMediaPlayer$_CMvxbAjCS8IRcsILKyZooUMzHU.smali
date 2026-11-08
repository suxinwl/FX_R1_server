.class public final synthetic Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$_CMvxbAjCS8IRcsILKyZooUMzHU;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/MediaItem;


# direct methods
.method public synthetic constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Lcom/google/android/exoplayer2/MediaItem;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$_CMvxbAjCS8IRcsILKyZooUMzHU;->f$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    iput-object p2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$_CMvxbAjCS8IRcsILKyZooUMzHU;->f$1:Lcom/google/android/exoplayer2/MediaItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$_CMvxbAjCS8IRcsILKyZooUMzHU;->f$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$_CMvxbAjCS8IRcsILKyZooUMzHU;->f$1:Lcom/google/android/exoplayer2/MediaItem;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->lambda$setMediaItem$1$ExoMediaPlayer(Lcom/google/android/exoplayer2/MediaItem;)V

    return-void
.end method
