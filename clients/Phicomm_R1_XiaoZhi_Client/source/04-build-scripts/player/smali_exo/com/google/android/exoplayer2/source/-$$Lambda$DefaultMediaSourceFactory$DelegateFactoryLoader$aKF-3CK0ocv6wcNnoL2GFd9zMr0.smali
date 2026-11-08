.class public final synthetic Lcom/google/android/exoplayer2/source/-$$Lambda$DefaultMediaSourceFactory$DelegateFactoryLoader$aKF-3CK0ocv6wcNnoL2GFd9zMr0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$DefaultMediaSourceFactory$DelegateFactoryLoader$aKF-3CK0ocv6wcNnoL2GFd9zMr0;->f$0:Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$DefaultMediaSourceFactory$DelegateFactoryLoader$aKF-3CK0ocv6wcNnoL2GFd9zMr0;->f$0:Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->lambda$maybeLoadSupplier$4$DefaultMediaSourceFactory$DelegateFactoryLoader()Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object v0

    return-object v0
.end method
