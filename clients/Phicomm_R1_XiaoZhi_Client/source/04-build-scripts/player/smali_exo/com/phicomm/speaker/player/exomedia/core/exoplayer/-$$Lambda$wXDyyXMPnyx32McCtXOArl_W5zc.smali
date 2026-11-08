.class public final synthetic Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$wXDyyXMPnyx32McCtXOArl_W5zc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/ExoPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ExoPlayer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$wXDyyXMPnyx32McCtXOArl_W5zc;->f$0:Lcom/google/android/exoplayer2/ExoPlayer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/-$$Lambda$wXDyyXMPnyx32McCtXOArl_W5zc;->f$0:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->release()V

    return-void
.end method
