.class Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;
.super Landroid/os/HandlerThread;
.source "DummySurface.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/DummySurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummySurfaceThread"
.end annotation


# static fields
.field private static final MSG_INIT:I = 0x1

.field private static final MSG_RELEASE:I = 0x3

.field private static final MSG_UPDATE_TEXTURE:I = 0x2


# instance fields
.field private context:Landroid/opengl/EGLContext;

.field private display:Landroid/opengl/EGLDisplay;

.field private handler:Landroid/os/Handler;

.field private initError:Ljava/lang/Error;

.field private initException:Ljava/lang/RuntimeException;

.field private pbuffer:Landroid/opengl/EGLSurface;

.field private surface:Lcom/google/android/exoplayer2/video/DummySurface;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final textureIdHolder:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 191
    const-string v0, "dummySurface"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->textureIdHolder:[I

    .line 193
    return-void
.end method

.method private initInternal(Z)V
    .registers 19
    .param p1, "secure"    # Z

    .prologue
    .line 267
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    if-eqz v2, :cond_ed

    const/4 v2, 0x1

    :goto_10
    const-string v4, "eglGetDisplay failed"

    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 270
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v16, v0

    .line 271
    .local v16, "version":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v16

    invoke-static {v2, v0, v4, v1, v6}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v12

    .line 272
    .local v12, "eglInitialized":Z
    const-string v2, "eglInitialize failed"

    invoke-static {v12, v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 274
    const/16 v2, 0x11

    new-array v3, v2, [I

    fill-array-data v3, :array_108

    .line 285
    .local v3, "eglAttributes":[I
    const/4 v2, 0x1

    new-array v5, v2, [Landroid/opengl/EGLConfig;

    .line 286
    .local v5, "configs":[Landroid/opengl/EGLConfig;
    const/4 v2, 0x1

    new-array v8, v2, [I

    .line 287
    .local v8, "numConfigs":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v11

    .line 289
    .local v11, "eglChooseConfigSuccess":Z
    if-eqz v11, :cond_f0

    const/4 v2, 0x0

    aget v2, v8, v2

    if-lez v2, :cond_f0

    const/4 v2, 0x0

    aget-object v2, v5, v2

    if-eqz v2, :cond_f0

    const/4 v2, 0x1

    :goto_53
    const-string v4, "eglChooseConfig failed"

    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 292
    const/4 v2, 0x0

    aget-object v10, v5, v2

    .line 294
    .local v10, "config":Landroid/opengl/EGLConfig;
    if-eqz p1, :cond_f3

    .line 295
    const/4 v2, 0x5

    new-array v14, v2, [I

    fill-array-data v14, :array_12e

    .line 304
    .local v14, "glAttributes":[I
    :goto_63
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v6, 0x0

    invoke-static {v2, v10, v4, v14, v6}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    if-eqz v2, :cond_fb

    const/4 v2, 0x1

    :goto_79
    const-string v4, "eglCreateContext failed"

    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 309
    if-eqz p1, :cond_fe

    .line 310
    const/4 v2, 0x7

    new-array v15, v2, [I

    fill-array-data v15, :array_13c

    .line 321
    .local v15, "pbufferAttributes":[I
    :goto_86
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    const/4 v4, 0x0

    invoke-static {v2, v10, v15, v4}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    if-eqz v2, :cond_105

    const/4 v2, 0x1

    :goto_9a
    const-string v4, "eglCreatePbufferSurface failed"

    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    invoke-static {v2, v4, v6, v7}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v13

    .line 325
    .local v13, "eglMadeCurrent":Z
    const-string v2, "eglMakeCurrent failed"

    invoke-static {v13, v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 327
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->textureIdHolder:[I

    const/4 v6, 0x0

    invoke-static {v2, v4, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 328
    new-instance v2, Landroid/graphics/SurfaceTexture;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->textureIdHolder:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    invoke-direct {v2, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 330
    new-instance v2, Lcom/google/android/exoplayer2/video/DummySurface;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v2, v0, v4, v1, v6}, Lcom/google/android/exoplayer2/video/DummySurface;-><init>(Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;ZLcom/google/android/exoplayer2/video/DummySurface$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surface:Lcom/google/android/exoplayer2/video/DummySurface;

    .line 331
    return-void

    .line 268
    .end local v3    # "eglAttributes":[I
    .end local v5    # "configs":[Landroid/opengl/EGLConfig;
    .end local v8    # "numConfigs":[I
    .end local v10    # "config":Landroid/opengl/EGLConfig;
    .end local v11    # "eglChooseConfigSuccess":Z
    .end local v12    # "eglInitialized":Z
    .end local v13    # "eglMadeCurrent":Z
    .end local v14    # "glAttributes":[I
    .end local v15    # "pbufferAttributes":[I
    .end local v16    # "version":[I
    :cond_ed
    const/4 v2, 0x0

    goto/16 :goto_10

    .line 289
    .restart local v3    # "eglAttributes":[I
    .restart local v5    # "configs":[Landroid/opengl/EGLConfig;
    .restart local v8    # "numConfigs":[I
    .restart local v11    # "eglChooseConfigSuccess":Z
    .restart local v12    # "eglInitialized":Z
    .restart local v16    # "version":[I
    :cond_f0
    const/4 v2, 0x0

    goto/16 :goto_53

    .line 300
    .restart local v10    # "config":Landroid/opengl/EGLConfig;
    :cond_f3
    const/4 v2, 0x3

    new-array v14, v2, [I

    fill-array-data v14, :array_14e

    .restart local v14    # "glAttributes":[I
    goto/16 :goto_63

    .line 306
    :cond_fb
    const/4 v2, 0x0

    goto/16 :goto_79

    .line 316
    :cond_fe
    const/4 v2, 0x5

    new-array v15, v2, [I

    fill-array-data v15, :array_158

    .restart local v15    # "pbufferAttributes":[I
    goto :goto_86

    .line 322
    :cond_105
    const/4 v2, 0x0

    goto :goto_9a

    .line 274
    nop

    :array_108
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3027
        0x3038
        0x3033
        0x4
        0x3038
    .end array-data

    .line 295
    :array_12e
    .array-data 4
        0x3098
        0x2
        0x32c0
        0x1
        0x3038
    .end array-data

    .line 310
    :array_13c
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x32c0
        0x1
        0x3038
    .end array-data

    .line 300
    :array_14e
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data

    .line 316
    :array_158
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data
.end method

.method private releaseInternal()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 335
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_11

    .line 336
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 337
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->textureIdHolder:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_32

    .line 340
    :cond_11
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_1c

    .line 341
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 343
    :cond_1c
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    if-eqz v0, :cond_27

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 346
    :cond_27
    iput-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    .line 347
    iput-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    .line 348
    iput-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    .line 349
    iput-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surface:Lcom/google/android/exoplayer2/video/DummySurface;

    .line 350
    iput-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 352
    return-void

    .line 340
    :catchall_32
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    if-eqz v1, :cond_3e

    .line 341
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 343
    :cond_3e
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    if-eqz v1, :cond_49

    .line 344
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 346
    :cond_49
    iput-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    .line 347
    iput-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    .line 348
    iput-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    .line 349
    iput-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surface:Lcom/google/android/exoplayer2/video/DummySurface;

    .line 350
    iput-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 233
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_68

    .line 262
    :goto_6
    return v2

    .line 236
    :pswitch_7
    :try_start_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_18

    move v1, v2

    :goto_c
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initInternal(Z)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_f} :catch_1a
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_f} :catch_2d
    .catchall {:try_start_7 .. :try_end_f} :catchall_40

    .line 244
    monitor-enter p0

    .line 245
    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 246
    monitor-exit p0

    goto :goto_6

    :catchall_15
    move-exception v1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_15

    throw v1

    .line 236
    :cond_18
    const/4 v1, 0x0

    goto :goto_c

    .line 237
    :catch_1a
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1b
    const-string v1, "DummySurface"

    const-string v3, "Failed to initialize dummy surface"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initException:Ljava/lang/RuntimeException;
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_40

    .line 244
    monitor-enter p0

    .line 245
    :try_start_25
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 246
    monitor-exit p0

    goto :goto_6

    :catchall_2a
    move-exception v1

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2a

    throw v1

    .line 240
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2d
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Error;
    :try_start_2e
    const-string v1, "DummySurface"

    const-string v3, "Failed to initialize dummy surface"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initError:Ljava/lang/Error;
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_40

    .line 244
    monitor-enter p0

    .line 245
    :try_start_38
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 246
    monitor-exit p0

    goto :goto_6

    :catchall_3d
    move-exception v1

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_3d

    throw v1

    .line 244
    .end local v0    # "e":Ljava/lang/Error;
    :catchall_40
    move-exception v1

    monitor-enter p0

    .line 245
    :try_start_42
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 246
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_47

    throw v1

    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v1

    .line 250
    :pswitch_4a
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    goto :goto_6

    .line 254
    :pswitch_50
    :try_start_50
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->releaseInternal()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_53} :catch_57
    .catchall {:try_start_50 .. :try_end_53} :catchall_63

    .line 258
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->quit()Z

    goto :goto_6

    .line 255
    :catch_57
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_58
    const-string v1, "DummySurface"

    const-string v3, "Failed to release dummy surface"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_63

    .line 258
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->quit()Z

    goto :goto_6

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_63
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->quit()Z

    throw v1

    .line 233
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4a
        :pswitch_50
    .end packed-switch
.end method

.method public init(Z)Lcom/google/android/exoplayer2/video/DummySurface;
    .registers 8
    .param p1, "secure"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->start()V

    .line 197
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v4, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->handler:Landroid/os/Handler;

    .line 198
    const/4 v1, 0x0

    .line 199
    .local v1, "wasInterrupted":Z
    monitor-enter p0

    .line 200
    :try_start_12
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->handler:Landroid/os/Handler;

    const/4 v5, 0x1

    if-eqz p1, :cond_32

    :goto_17
    const/4 v3, 0x0

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 201
    :goto_1f
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surface:Lcom/google/android/exoplayer2/video/DummySurface;

    if-nez v2, :cond_34

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initException:Ljava/lang/RuntimeException;

    if-nez v2, :cond_34

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initError:Ljava/lang/Error;
    :try_end_29
    .catchall {:try_start_12 .. :try_end_29} :catchall_45

    if-nez v2, :cond_34

    .line 203
    :try_start_2b
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_2f
    .catchall {:try_start_2b .. :try_end_2e} :catchall_45

    goto :goto_1f

    .line 204
    :catch_2f
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 206
    goto :goto_1f

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_32
    move v2, v3

    .line 200
    goto :goto_17

    .line 208
    :cond_34
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_45

    .line 209
    if-eqz v1, :cond_3e

    .line 211
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 213
    :cond_3e
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initException:Ljava/lang/RuntimeException;

    if-eqz v2, :cond_48

    .line 214
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initException:Ljava/lang/RuntimeException;

    throw v2

    .line 208
    :catchall_45
    move-exception v2

    :try_start_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v2

    .line 215
    :cond_48
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initError:Ljava/lang/Error;

    if-eqz v2, :cond_4f

    .line 216
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initError:Ljava/lang/Error;

    throw v2

    .line 218
    :cond_4f
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surface:Lcom/google/android/exoplayer2/video/DummySurface;

    return-object v2
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 4
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 229
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 224
    return-void
.end method
