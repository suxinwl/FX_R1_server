.class Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreacquiredSessionReference"
.end annotation


# instance fields
.field private final eventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field private isReleased:Z

.field private session:Lcom/google/android/exoplayer2/drm/DrmSession;

.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
    .registers 3

    .line 991
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 992
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->eventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    return-void
.end method


# virtual methods
.method public acquire(Lcom/google/android/exoplayer2/Format;)V
    .registers 4

    .line 1001
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    # getter for: Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->playbackHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$700(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSessionManager$PreacquiredSessionReference$2rhkDKqeg98A05wVBybgMPB-4XM;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSessionManager$PreacquiredSessionReference$2rhkDKqeg98A05wVBybgMPB-4XM;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;Lcom/google/android/exoplayer2/Format;)V

    .line 1002
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$acquire$0$DefaultDrmSessionManager$PreacquiredSessionReference(Lcom/google/android/exoplayer2/Format;)V
    .registers 6

    .line 1004
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    # getter for: Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->prepareCallsCount:I
    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$800(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)I

    move-result v0

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->isReleased:Z

    if-eqz v0, :cond_d

    goto :goto_2b

    .line 1009
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 1011
    # getter for: Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;
    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$1400(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->eventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    const/4 v3, 0x0

    .line 1010
    # invokes: Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->acquireSession(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/drm/DrmSession;
    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$1500(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->session:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 1015
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    # getter for: Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;
    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$1300(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2b
    :goto_2b
    return-void
.end method

.method public synthetic lambda$release$1$DefaultDrmSessionManager$PreacquiredSessionReference()V
    .registers 3

    .line 1026
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->isReleased:Z

    if-eqz v0, :cond_5

    return-void

    .line 1029
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->session:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_e

    .line 1030
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->eventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 1032
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    # getter for: Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;
    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$1300(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 1033
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->isReleased:Z

    return-void
.end method

.method public release()V
    .registers 3

    .line 1023
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 1024
    # getter for: Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->playbackHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$700(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSessionManager$PreacquiredSessionReference$xNcrVrBpjH2vMdhRMy3aIFwNQgY;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSessionManager$PreacquiredSessionReference$xNcrVrBpjH2vMdhRMy3aIFwNQgY;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;)V

    .line 1023
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method
