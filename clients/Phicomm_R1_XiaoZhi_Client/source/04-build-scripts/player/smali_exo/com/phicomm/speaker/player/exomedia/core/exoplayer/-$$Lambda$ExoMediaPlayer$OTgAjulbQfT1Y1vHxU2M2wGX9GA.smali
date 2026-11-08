.class public final synthetic Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$OTgAjulbQfT1Y1vHxU2M2wGX9GA;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$OTgAjulbQfT1Y1vHxU2M2wGX9GA;->f$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    iput-wide p2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$OTgAjulbQfT1Y1vHxU2M2wGX9GA;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$OTgAjulbQfT1Y1vHxU2M2wGX9GA;->f$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-wide v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$ExoMediaPlayer$OTgAjulbQfT1Y1vHxU2M2wGX9GA;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->lambda$seekTo$8$ExoMediaPlayer(J)V

    return-void
.end method
