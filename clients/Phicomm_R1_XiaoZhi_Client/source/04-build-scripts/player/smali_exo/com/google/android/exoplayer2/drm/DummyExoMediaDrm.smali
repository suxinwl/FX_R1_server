.class public final Lcom/google/android/exoplayer2/drm/DummyExoMediaDrm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/drm/ExoMediaDrm;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/android/exoplayer2/drm/DummyExoMediaDrm;
    .registers 1

    .line 35
    new-instance v0, Lcom/google/android/exoplayer2/drm/DummyExoMediaDrm;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/DummyExoMediaDrm;-><init>()V

    return-object v0
.end method


# virtual methods
.method public acquire()V
    .registers 1

    return-void
.end method

.method public closeSession([B)V
    .registers 2

    return-void
.end method

.method public createCryptoConfig([B)Lcom/google/android/exoplayer2/decoder/CryptoConfig;
    .registers 2

    .line 149
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getCryptoType()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;"
        }
    .end annotation

    .line 70
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPropertyByteArray(Ljava/lang/String;)[B
    .registers 2

    .line 133
    sget-object p1, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    return-object p1
.end method

.method public getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string p1, ""

    return-object p1
.end method

.method public getProvisionRequest()Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;
    .registers 2

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public openSession()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaDrmException;
        }
    .end annotation

    .line 55
    new-instance v0, Landroid/media/MediaDrmException;

    const-string v1, "Attempting to open a session using a dummy ExoMediaDrm."

    invoke-direct {v0, v1}, Landroid/media/MediaDrmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public provideKeyResponse([B[B)[B
    .registers 3

    .line 77
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public provideProvisionResponse([B)V
    .registers 2

    .line 89
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public queryKeyStatus([B)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public requiresSecureDecoder([BLjava/lang/String;)Z
    .registers 3

    .line 101
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public restoreKeys([B[B)V
    .registers 3

    .line 117
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setOnEventListener(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V
    .registers 2

    return-void
.end method

.method public setOnExpirationUpdateListener(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnExpirationUpdateListener;)V
    .registers 2

    return-void
.end method

.method public setOnKeyStatusChangeListener(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;)V
    .registers 2

    return-void
.end method

.method public synthetic setPlayerIdForSession([BLcom/google/android/exoplayer2/analytics/PlayerId;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$-CC;->$default$setPlayerIdForSession(Lcom/google/android/exoplayer2/drm/ExoMediaDrm;[BLcom/google/android/exoplayer2/analytics/PlayerId;)V

    return-void
.end method

.method public setPropertyByteArray(Ljava/lang/String;[B)V
    .registers 3

    return-void
.end method

.method public setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method
