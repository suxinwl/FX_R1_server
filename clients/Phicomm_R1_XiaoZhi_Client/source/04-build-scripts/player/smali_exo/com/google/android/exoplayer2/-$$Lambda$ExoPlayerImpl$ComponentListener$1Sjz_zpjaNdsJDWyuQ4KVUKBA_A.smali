.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$ComponentListener$1Sjz_zpjaNdsJDWyuQ4KVUKBA_A;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$ComponentListener$1Sjz_zpjaNdsJDWyuQ4KVUKBA_A;->f$0:I

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$ComponentListener$1Sjz_zpjaNdsJDWyuQ4KVUKBA_A;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$ComponentListener$1Sjz_zpjaNdsJDWyuQ4KVUKBA_A;->f$0:I

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$ComponentListener$1Sjz_zpjaNdsJDWyuQ4KVUKBA_A;->f$1:Z

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->lambda$onStreamVolumeChanged$7(IZLcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method
