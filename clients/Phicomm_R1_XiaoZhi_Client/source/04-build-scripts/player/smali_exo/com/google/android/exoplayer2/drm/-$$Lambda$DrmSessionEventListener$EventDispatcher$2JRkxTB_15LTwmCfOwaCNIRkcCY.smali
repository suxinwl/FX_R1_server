.class public final synthetic Lcom/google/android/exoplayer2/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$2JRkxTB_15LTwmCfOwaCNIRkcCY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$2JRkxTB_15LTwmCfOwaCNIRkcCY;->f$0:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$2JRkxTB_15LTwmCfOwaCNIRkcCY;->f$1:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$2JRkxTB_15LTwmCfOwaCNIRkcCY;->f$0:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$2JRkxTB_15LTwmCfOwaCNIRkcCY;->f$1:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->lambda$drmKeysRestored$3$DrmSessionEventListener$EventDispatcher(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    return-void
.end method
