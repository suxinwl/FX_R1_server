.class Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$UnexpectedDrmSessionException;
    }
.end annotation


# static fields
.field private static final MAX_LICENSE_DURATION_TO_RENEW_SECONDS:I = 0x3c

.field private static final MSG_KEYS:I = 0x1

.field private static final MSG_PROVISION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DefaultDrmSession"


# instance fields
.field final callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

.field private cryptoConfig:Lcom/google/android/exoplayer2/decoder/CryptoConfig;

.field private currentKeyRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

.field private currentProvisionRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

.field private final eventDispatchers:Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset<",
            "Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final isPlaceholderSession:Z

.field private final keyRequestParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

.field private final mode:I

.field private offlineLicenseKeySetId:[B

.field private final playClearSamplesWithoutKeys:Z

.field private final playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

.field private final provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

.field private referenceCount:I

.field private final referenceCountListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;

.field private requestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

.field private requestHandlerThread:Landroid/os/HandlerThread;

.field final responseHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;

.field public final schemeDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field

.field private sessionId:[B

.field private state:I

.field final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;Ljava/util/List;IZZ[BLjava/util/HashMap;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Landroid/os/Looper;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/analytics/PlayerId;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm;",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;IZZ[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/drm/MediaDrmCallback;",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;",
            "Lcom/google/android/exoplayer2/analytics/PlayerId;",
            ")V"
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p6, v0, :cond_9

    const/4 v0, 0x3

    if-ne p6, v0, :cond_c

    .line 191
    :cond_9
    invoke-static {p9}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_c
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    .line 194
    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    .line 195
    iput-object p4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCountListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;

    .line 196
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    .line 197
    iput p6, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    .line 198
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->playClearSamplesWithoutKeys:Z

    .line 199
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isPlaceholderSession:Z

    if-eqz p9, :cond_22

    .line 201
    iput-object p9, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    const/4 p1, 0x0

    .line 202
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    goto :goto_2e

    .line 204
    :cond_22
    invoke-static {p5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    .line 206
    :goto_2e
    iput-object p10, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->keyRequestParameters:Ljava/util/HashMap;

    .line 207
    iput-object p11, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    .line 208
    new-instance p1, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatchers:Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;

    .line 209
    iput-object p13, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 210
    iput-object p14, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    const/4 p1, 0x2

    .line 211
    iput p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 212
    new-instance p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;

    invoke-direct {p1, p0, p12}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->responseHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onProvisionResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeyResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    return-object p0
.end method

.method private dispatchEvent(Lcom/google/android/exoplayer2/util/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/Consumer<",
            "Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatchers:Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 560
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method private doLicense(Z)V
    .registers 10
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sessionId"
        }
    .end annotation

    .line 417
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isPlaceholderSession:Z

    if-eqz v0, :cond_5

    return-void

    .line 420
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 421
    iget v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_3a

    if-eq v1, v2, :cond_3a

    if-eq v1, v3, :cond_2c

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1c

    goto/16 :goto_8b

    .line 450
    :cond_1c
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto :goto_8b

    .line 445
    :cond_2c
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-eqz v1, :cond_36

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 446
    :cond_36
    invoke-direct {p0, v0, v3, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto :goto_8b

    .line 424
    :cond_3a
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-nez v1, :cond_42

    .line 425
    invoke-direct {p0, v0, v2, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto :goto_8b

    .line 426
    :cond_42
    iget v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4d

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 427
    :cond_4d
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->getLicenseDurationRemainingSec()J

    move-result-wide v4

    .line 428
    iget v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    if-nez v1, :cond_75

    const-wide/16 v6, 0x3c

    cmp-long v1, v4, v6

    if-gtz v1, :cond_75

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultDrmSession"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-direct {p0, v0, v3, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto :goto_8b

    :cond_75
    const-wide/16 v0, 0x0

    cmp-long p1, v4, v0

    if-gtz p1, :cond_84

    .line 437
    new-instance p1, Lcom/google/android/exoplayer2/drm/KeysExpiredException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/drm/KeysExpiredException;-><init>()V

    invoke-direct {p0, p1, v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;I)V

    goto :goto_8b

    .line 439
    :cond_84
    iput v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 440
    sget-object p1, Lcom/google/android/exoplayer2/drm/-$$Lambda$HbN0kSVsD6YcIJxw09z6YQauRzY;->INSTANCE:Lcom/google/android/exoplayer2/drm/-$$Lambda$HbN0kSVsD6YcIJxw09z6YQauRzY;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->dispatchEvent(Lcom/google/android/exoplayer2/util/Consumer;)V

    :cond_8b
    :goto_8b
    return-void
.end method

.method private getLicenseDurationRemainingSec()J
    .registers 6

    .line 471
    sget-object v0, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 475
    :cond_10
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/WidevineUtil;->getLicenseDurationRemainingSec(Lcom/google/android/exoplayer2/drm/DrmSession;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 476
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private isOpen()Z
    .registers 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sessionId"
        }
        result = true
    .end annotation

    .line 555
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method static synthetic lambda$onError$1(Ljava/lang/Exception;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
    .registers 2

    .line 546
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$openInternal$0(ILcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
    .registers 2

    .line 381
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    return-void
.end method

.method private onError(Ljava/lang/Exception;I)V
    .registers 4

    .line 543
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 544
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/drm/DrmUtil;->getErrorCodeForMediaDrmException(Ljava/lang/Exception;I)I

    move-result p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->lastException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    const-string p2, "DefaultDrmSession"

    const-string v0, "DRM session error"

    .line 545
    invoke-static {p2, v0, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 546
    new-instance p2, Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSession$kknPdc6szhytFVW-w1iQs09AyW0;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSession$kknPdc6szhytFVW-w1iQs09AyW0;-><init>(Ljava/lang/Exception;)V

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->dispatchEvent(Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 547
    iget p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_22

    const/4 p1, 0x1

    .line 548
    iput p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    :cond_22
    return-void
.end method

.method private onKeyResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 490
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentKeyRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    if-ne p1, v0, :cond_5f

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_5f

    :cond_b
    const/4 p1, 0x0

    .line 494
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentKeyRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    .line 496
    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_19

    .line 497
    check-cast p2, Ljava/lang/Exception;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;Z)V

    return-void

    .line 502
    :cond_19
    :try_start_19
    check-cast p2, [B

    check-cast p2, [B

    .line 503
    iget p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_35

    .line 504
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {p1, v0, p2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    .line 505
    sget-object p1, Lcom/google/android/exoplayer2/drm/-$$Lambda$pre3sEqF1vViKhCFp1NAV3_mgZk;->INSTANCE:Lcom/google/android/exoplayer2/drm/-$$Lambda$pre3sEqF1vViKhCFp1NAV3_mgZk;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->dispatchEvent(Lcom/google/android/exoplayer2/util/Consumer;)V

    goto :goto_5f

    .line 507
    :cond_35
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {p1, v0, p2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p1

    .line 508
    iget p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4a

    iget p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    if-nez p2, :cond_51

    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-eqz p2, :cond_51

    :cond_4a
    if-eqz p1, :cond_51

    array-length p2, p1

    if-eqz p2, :cond_51

    .line 513
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    :cond_51
    const/4 p1, 0x4

    .line 515
    iput p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 516
    sget-object p1, Lcom/google/android/exoplayer2/drm/-$$Lambda$BrYRYnbSvqr_udlxRiVssV28H70;->INSTANCE:Lcom/google/android/exoplayer2/drm/-$$Lambda$BrYRYnbSvqr_udlxRiVssV28H70;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->dispatchEvent(Lcom/google/android/exoplayer2/util/Consumer;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_59} :catch_5a

    goto :goto_5f

    :catch_5a
    move-exception p1

    const/4 p2, 0x1

    .line 519
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;Z)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method private onKeysError(Ljava/lang/Exception;Z)V
    .registers 4

    .line 531
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_a

    .line 532
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    goto :goto_12

    :cond_a
    if-eqz p2, :cond_e

    const/4 p2, 0x1

    goto :goto_f

    :cond_e
    const/4 p2, 0x2

    .line 534
    :goto_f
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;I)V

    :goto_12
    return-void
.end method

.method private onKeysRequired()V
    .registers 3

    .line 524
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    if-nez v0, :cond_12

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    .line 525
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 526
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->doLicense(Z)V

    :cond_12
    return-void
.end method

.method private onProvisionResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 394
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentProvisionRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    if-ne p1, v0, :cond_36

    iget p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_36

    :cond_10
    const/4 p1, 0x0

    .line 398
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentProvisionRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    .line 400
    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_20

    .line 401
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    check-cast p2, Ljava/lang/Exception;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->onProvisionError(Ljava/lang/Exception;Z)V

    return-void

    .line 406
    :cond_20
    :try_start_20
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    check-cast p2, [B

    check-cast p2, [B

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->provideProvisionResponse([B)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_2f

    .line 412
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->onProvisionCompleted()V

    return-void

    :catch_2f
    move-exception p1

    .line 408
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->onProvisionError(Ljava/lang/Exception;Z)V

    :cond_36
    :goto_36
    return-void
.end method

.method private openInternal()Z
    .registers 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sessionId"
        }
        result = true
    .end annotation

    .line 369
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 375
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->openSession()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    .line 376
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    invoke-interface {v2, v0, v3}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->setPlayerIdForSession([BLcom/google/android/exoplayer2/analytics/PlayerId;)V

    .line 377
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->createCryptoConfig([B)Lcom/google/android/exoplayer2/decoder/CryptoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->cryptoConfig:Lcom/google/android/exoplayer2/decoder/CryptoConfig;

    const/4 v0, 0x3

    .line 378
    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 381
    new-instance v2, Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSession$LXJah8_BNDBoWje7pAg06neqK7s;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSession$LXJah8_BNDBoWje7pAg06neqK7s;-><init>(I)V

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->dispatchEvent(Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 382
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Landroid/media/NotProvisionedException; {:try_start_8 .. :try_end_31} :catch_37
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_31} :catch_32

    return v1

    :catch_32
    move-exception v0

    .line 387
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;I)V

    goto :goto_3c

    .line 385
    :catch_37
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    :goto_3c
    const/4 v0, 0x0

    return v0
.end method

.method private postKeyRequest([BIZ)V
    .registers 8

    const/4 v0, 0x1

    .line 481
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->keyRequestParameters:Ljava/util/HashMap;

    invoke-interface {v1, p1, v2, p2, v3}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentKeyRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    .line 482
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentKeyRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    .line 483
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->post(ILjava/lang/Object;Z)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p1

    .line 485
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;Z)V

    :goto_23
    return-void
.end method

.method private restoreKeys()Z
    .registers 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sessionId",
            "offlineLicenseKeySetId"
        }
    .end annotation

    const/4 v0, 0x1

    .line 462
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->restoreKeys([B[B)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v1

    .line 465
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;I)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public acquire(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
    .registers 5

    .line 302
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCount:I

    const/4 v1, 0x0

    if-gez v0, :cond_1f

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session reference count less than zero: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DefaultDrmSession"

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iput v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCount:I

    :cond_1f
    if-eqz p1, :cond_26

    .line 307
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatchers:Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->add(Ljava/lang/Object;)V

    .line 309
    :cond_26
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCount:I

    if-ne v0, v2, :cond_5a

    .line 310
    iget p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_34

    const/4 v1, 0x1

    :cond_34
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 311
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ExoPlayer:DrmRequestHandler"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 312
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 313
    new-instance p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

    .line 314
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->openInternal()Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 315
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->doLicense(Z)V

    goto :goto_6f

    :cond_5a
    if-eqz p1, :cond_6f

    .line 318
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatchers:Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;

    .line 319
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v2, :cond_6f

    .line 322
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    .line 324
    :cond_6f
    :goto_6f
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCountListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCount:I

    invoke-interface {p1, p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;->onReferenceCountIncremented(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;I)V

    return-void
.end method

.method public final getCryptoConfig()Lcom/google/android/exoplayer2/decoder/CryptoConfig;
    .registers 2

    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->cryptoConfig:Lcom/google/android/exoplayer2/decoder/CryptoConfig;

    return-object v0
.end method

.method public final getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    .registers 3

    .line 269
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->lastException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public getOfflineLicenseKeySetId()[B
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    return-object v0
.end method

.method public final getSchemeUuid()Ljava/util/UUID;
    .registers 2

    .line 274
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public final getState()I
    .registers 2

    .line 258
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    return v0
.end method

.method public hasSessionId([B)Z
    .registers 3

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public onMediaDrmEvent(I)V
    .registers 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    goto :goto_7

    .line 222
    :cond_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeysRequired()V

    :goto_7
    return-void
.end method

.method public onProvisionCompleted()V
    .registers 2

    .line 241
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->openInternal()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 242
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->doLicense(Z)V

    :cond_a
    return-void
.end method

.method public onProvisionError(Ljava/lang/Exception;Z)V
    .registers 3

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_5

    :cond_4
    const/4 p2, 0x3

    .line 247
    :goto_5
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;I)V

    return-void
.end method

.method public playClearSamplesWithoutKeys()Z
    .registers 2

    .line 263
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->playClearSamplesWithoutKeys:Z

    return v0
.end method

.method public provision()V
    .registers 5

    .line 232
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->getProvisionRequest()Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentProvisionRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentProvisionRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    .line 236
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 234
    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->post(ILjava/lang/Object;Z)V

    return-void
.end method

.method public queryKeyStatus()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->queryKeyStatus([B)Ljava/util/Map;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
    .registers 5

    .line 329
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCount:I

    if-gtz v0, :cond_c

    const-string p1, "DefaultDrmSession"

    const-string v0, "release() called on a session that\'s already fully released."

    .line 330
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    add-int/lit8 v0, v0, -0x1

    .line 333
    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCount:I

    if-nez v0, :cond_4e

    const/4 v0, 0x0

    .line 335
    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 336
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->responseHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 337
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->release()V

    .line 338
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;

    .line 339
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 340
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 341
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->cryptoConfig:Lcom/google/android/exoplayer2/decoder/CryptoConfig;

    .line 342
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->lastException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 343
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentKeyRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    .line 344
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentProvisionRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    .line 345
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    if-eqz v0, :cond_4e

    .line 346
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->closeSession([B)V

    .line 347
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    :cond_4e
    if-eqz p1, :cond_60

    .line 351
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatchers:Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->remove(Ljava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatchers:Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_60

    .line 354
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionReleased()V

    .line 357
    :cond_60
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCountListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->referenceCount:I

    invoke-interface {p1, p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReferenceCountListener;->onReferenceCountDecremented(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;I)V

    return-void
.end method

.method public requiresSecureDecoder(Ljava/lang/String;)Z
    .registers 4

    .line 297
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->requiresSecureDecoder([BLjava/lang/String;)Z

    move-result p1

    return p1
.end method
