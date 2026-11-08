.class public final synthetic Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSessionManager$PreacquiredSessionReference$xNcrVrBpjH2vMdhRMy3aIFwNQgY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSessionManager$PreacquiredSessionReference$xNcrVrBpjH2vMdhRMy3aIFwNQgY;->f$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSessionManager$PreacquiredSessionReference$xNcrVrBpjH2vMdhRMy3aIFwNQgY;->f$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->lambda$release$1$DefaultDrmSessionManager$PreacquiredSessionReference()V

    return-void
.end method
