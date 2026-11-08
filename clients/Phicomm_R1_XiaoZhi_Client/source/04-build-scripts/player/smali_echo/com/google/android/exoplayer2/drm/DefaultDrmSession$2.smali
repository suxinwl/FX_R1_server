.class Lcom/google/android/exoplayer2/drm/DefaultDrmSession$2;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeyResponse(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .prologue
    .line 395
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession$2;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$2;"
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$2;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 398
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession$2;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$2;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$2;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    # getter for: Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$000(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;->onDrmKeysRemoved()V

    .line 399
    return-void
.end method
