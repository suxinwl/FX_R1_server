.class Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;
.super Landroid/os/HandlerThread;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/PlaceholderSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaceholderSurfaceThread"
.end annotation


# static fields
.field private static final MSG_INIT:I = 0x1

.field private static final MSG_RELEASE:I = 0x2


# instance fields
.field private eglSurfaceTexture:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

.field private handler:Landroid/os/Handler;

.field private initError:Ljava/lang/Error;

.field private initException:Ljava/lang/RuntimeException;

.field private surface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "ExoPlayer:PlaceholderSurface"

    .line 135
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private initInternal(I)V
    .registers 5

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->eglSurfaceTexture:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->eglSurfaceTexture:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->init(I)V

    .line 206
    new-instance v0, Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->eglSurfaceTexture:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    .line 208
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/android/exoplayer2/video/PlaceholderSurface;-><init>(Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;Landroid/graphics/SurfaceTexture;ZLcom/google/android/exoplayer2/video/PlaceholderSurface$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->surface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    return-void
.end method

.method private releaseInternal()V
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->eglSurfaceTexture:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->eglSurfaceTexture:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->release()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 173
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 p1, 0x2

    if-eq v0, p1, :cond_9

    return v1

    .line 191
    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->releaseInternal()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_10

    .line 195
    :goto_c
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->quit()Z

    goto :goto_19

    :catchall_10
    move-exception p1

    :try_start_11
    const-string v0, "PlaceholderSurface"

    const-string v2, "Failed to release placeholder surface"

    .line 193
    invoke-static {v0, v2, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1a

    goto :goto_c

    :goto_19
    return v1

    :catchall_1a
    move-exception p1

    .line 195
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->quit()Z

    throw p1

    .line 176
    :cond_1f
    :try_start_1f
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->initInternal(I)V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_24} :catch_42
    .catch Ljava/lang/Error; {:try_start_1f .. :try_end_24} :catch_2f
    .catchall {:try_start_1f .. :try_end_24} :catchall_2d

    .line 184
    monitor-enter p0

    .line 185
    :try_start_25
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 186
    monitor-exit p0

    goto :goto_51

    :catchall_2a
    move-exception p1

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2a

    throw p1

    :catchall_2d
    move-exception p1

    goto :goto_55

    :catch_2f
    move-exception p1

    :try_start_30
    const-string v0, "PlaceholderSurface"

    const-string v2, "Failed to initialize placeholder surface"

    .line 181
    invoke-static {v0, v2, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->initError:Ljava/lang/Error;
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_2d

    .line 184
    monitor-enter p0

    .line 185
    :try_start_3a
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 186
    monitor-exit p0

    goto :goto_51

    :catchall_3f
    move-exception p1

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_3f

    throw p1

    :catch_42
    move-exception p1

    :try_start_43
    const-string v0, "PlaceholderSurface"

    const-string v2, "Failed to initialize placeholder surface"

    .line 178
    invoke-static {v0, v2, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->initException:Ljava/lang/RuntimeException;
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_2d

    .line 184
    monitor-enter p0

    .line 185
    :try_start_4d
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 186
    monitor-exit p0

    :goto_51
    return v1

    :catchall_52
    move-exception p1

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_52

    throw p1

    .line 184
    :goto_55
    monitor-enter p0

    .line 185
    :try_start_56
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 186
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_5b

    throw p1

    :catchall_5b
    move-exception p1

    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    goto :goto_5f

    :goto_5e
    throw p1

    :goto_5f
    goto :goto_5e
.end method

.method public init(I)Lcom/google/android/exoplayer2/video/PlaceholderSurface;
    .registers 5

    .line 139
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->start()V

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->handler:Landroid/os/Handler;

    .line 141
    new-instance v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->eglSurfaceTexture:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    .line 143
    monitor-enter p0

    .line 144
    :try_start_18
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 145
    :goto_23
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->surface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    if-nez p1, :cond_35

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->initException:Ljava/lang/RuntimeException;

    if-nez p1, :cond_35

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->initError:Ljava/lang/Error;
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_52

    if-nez p1, :cond_35

    .line 147
    :try_start_2f
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_32} :catch_33
    .catchall {:try_start_2f .. :try_end_32} :catchall_52

    goto :goto_23

    :catch_33
    const/4 v2, 0x1

    goto :goto_23

    .line 152
    :cond_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_52

    if-eqz v2, :cond_3f

    .line 155
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 157
    :cond_3f
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->initException:Ljava/lang/RuntimeException;

    if-nez p1, :cond_51

    .line 159
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->initError:Ljava/lang/Error;

    if-nez p1, :cond_50

    .line 162
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->surface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    return-object p1

    .line 160
    :cond_50
    throw p1

    .line 158
    :cond_51
    throw p1

    :catchall_52
    move-exception p1

    .line 152
    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    goto :goto_56

    :goto_55
    throw p1

    :goto_56
    goto :goto_55
.end method

.method public release()V
    .registers 3

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/PlaceholderSurface$PlaceholderSurfaceThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
