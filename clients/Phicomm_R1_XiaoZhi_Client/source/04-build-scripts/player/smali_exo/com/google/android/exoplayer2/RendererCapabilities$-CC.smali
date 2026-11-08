.class public final synthetic Lcom/google/android/exoplayer2/RendererCapabilities$-CC;
.super Ljava/lang/Object;


# direct methods
.method public static create(I)I
    .registers 2

    const/4 v0, 0x0

    .line 203
    invoke-static {p0, v0, v0}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(III)I

    move-result p0

    return p0
.end method

.method public static create(III)I
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x80

    .line 222
    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(IIIII)I

    move-result p0

    return p0
.end method

.method public static create(IIIII)I
    .registers 5

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    or-int/2addr p0, p3

    or-int/2addr p0, p4

    return p0
.end method

.method public static getAdaptiveSupport(I)I
    .registers 1

    and-int/lit8 p0, p0, 0x18

    return p0
.end method

.method public static getDecoderSupport(I)I
    .registers 1

    and-int/lit16 p0, p0, 0x80

    return p0
.end method

.method public static getFormatSupport(I)I
    .registers 1

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public static getHardwareAccelerationSupport(I)I
    .registers 1

    and-int/lit8 p0, p0, 0x40

    return p0
.end method

.method public static getTunnelingSupport(I)I
    .registers 1

    and-int/lit8 p0, p0, 0x20

    return p0
.end method
