.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$WmeF4FSG11lhdpp1uUaeYLQqWCU;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$WmeF4FSG11lhdpp1uUaeYLQqWCU;->f$0:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$WmeF4FSG11lhdpp1uUaeYLQqWCU;->f$0:Z

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$setSkipSilenceEnabled$11(ZLcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method
