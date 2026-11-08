.class public final synthetic Lcom/google/android/exoplayer2/drm/DrmSessionManager$-CC;
.super Ljava/lang/Object;


# direct methods
.method public static $default$preacquireSession(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;
    .registers 3
    .param p0, "_this"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 150
    sget-object p1, Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;->EMPTY:Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;

    return-object p1
.end method

.method public static $default$prepare(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V
    .registers 1

    return-void
.end method

.method public static $default$release(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V
    .registers 1

    return-void
.end method

.method public static getDummyDrmSessionManager()Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    sget-object v0, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->DRM_UNSUPPORTED:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    return-object v0
.end method
