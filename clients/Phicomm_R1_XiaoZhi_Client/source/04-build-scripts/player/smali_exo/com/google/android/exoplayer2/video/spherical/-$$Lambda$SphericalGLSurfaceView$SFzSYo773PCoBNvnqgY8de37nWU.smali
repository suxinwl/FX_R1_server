.class public final synthetic Lcom/google/android/exoplayer2/video/spherical/-$$Lambda$SphericalGLSurfaceView$SFzSYo773PCoBNvnqgY8de37nWU;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

.field public final synthetic f$1:Landroid/graphics/SurfaceTexture;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;Landroid/graphics/SurfaceTexture;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/-$$Lambda$SphericalGLSurfaceView$SFzSYo773PCoBNvnqgY8de37nWU;->f$0:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/spherical/-$$Lambda$SphericalGLSurfaceView$SFzSYo773PCoBNvnqgY8de37nWU;->f$1:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/-$$Lambda$SphericalGLSurfaceView$SFzSYo773PCoBNvnqgY8de37nWU;->f$0:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/-$$Lambda$SphericalGLSurfaceView$SFzSYo773PCoBNvnqgY8de37nWU;->f$1:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->lambda$onSurfaceTextureAvailable$1$SphericalGLSurfaceView(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
