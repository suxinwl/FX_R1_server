.class public final synthetic Lcom/google/android/exoplayer2/drm/DrmSession$-CC;
.super Ljava/lang/Object;


# direct methods
.method public static $default$playClearSamplesWithoutKeys(Lcom/google/android/exoplayer2/drm/DrmSession;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static replaceSession(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .registers 3

    if-ne p0, p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 55
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->acquire(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_9
    if-eqz p0, :cond_e

    .line 58
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_e
    return-void
.end method
