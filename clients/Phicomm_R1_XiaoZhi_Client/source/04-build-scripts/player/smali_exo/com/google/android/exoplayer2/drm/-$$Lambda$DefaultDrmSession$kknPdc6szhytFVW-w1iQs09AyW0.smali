.class public final synthetic Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSession$kknPdc6szhytFVW-w1iQs09AyW0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Exception;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSession$kknPdc6szhytFVW-w1iQs09AyW0;->f$0:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSession$kknPdc6szhytFVW-w1iQs09AyW0;->f$0:Ljava/lang/Exception;

    check-cast p1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->lambda$onError$1(Ljava/lang/Exception;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    return-void
.end method
