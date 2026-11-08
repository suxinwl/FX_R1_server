.class final Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV16;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayHelperV16"
.end annotation


# instance fields
.field private final windowManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/view/WindowManager;)V
    .registers 2

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV16;->windowManager:Landroid/view/WindowManager;

    return-void
.end method

.method public static maybeBuildNewInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper;
    .registers 2

    const-string v0, "window"

    .line 477
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_10

    .line 478
    new-instance v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV16;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV16;-><init>(Landroid/view/WindowManager;)V

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return-object v0
.end method


# virtual methods
.method public register(Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper$Listener;)V
    .registers 3

    .line 489
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelperV16;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$DisplayHelper$Listener;->onDefaultDisplayChanged(Landroid/view/Display;)V

    return-void
.end method

.method public unregister()V
    .registers 1

    return-void
.end method
