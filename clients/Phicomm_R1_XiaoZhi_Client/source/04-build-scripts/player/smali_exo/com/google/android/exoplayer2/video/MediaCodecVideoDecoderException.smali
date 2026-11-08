.class public Lcom/google/android/exoplayer2/video/MediaCodecVideoDecoderException;
.super Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;


# instance fields
.field public final isSurfaceValid:Z

.field public final surfaceIdentityHashCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/view/Surface;)V
    .registers 4

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)V

    .line 36
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoDecoderException;->surfaceIdentityHashCode:I

    if-eqz p3, :cond_14

    .line 37
    invoke-virtual {p3}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_14

    :cond_12
    const/4 p1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p1, 0x1

    :goto_15
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoDecoderException;->isSurfaceValid:Z

    return-void
.end method
