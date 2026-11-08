.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayer$Builder$UfNhi5bAKlTuSeYvTW5x0IpHOLI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/source/MediaSource$Factory;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayer$Builder$UfNhi5bAKlTuSeYvTW5x0IpHOLI;->f$0:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayer$Builder$UfNhi5bAKlTuSeYvTW5x0IpHOLI;->f$0:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->lambda$setMediaSourceFactory$17(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object v0

    return-object v0
.end method
