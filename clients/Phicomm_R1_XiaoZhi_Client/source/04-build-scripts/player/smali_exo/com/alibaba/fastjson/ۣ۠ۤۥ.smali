.class public Lcom/alibaba/fastjson/ۣ۠ۤۥ;
.super Ljava/lang/Object;


# static fields
.field public static ۣ۠ۥۧ:I = -0x1db


# direct methods
.method public static ۟۟۠۠ۡ(Ljava/lang/Object;J)Z
    .registers 4

    invoke-static {}, Lcom/alibaba/fastjson/support/hsf/۟۟۟۠;->ۣۣ۟ۥ()I

    move-result v0

    if-lez v0, :cond_d

    check-cast p0, Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->stopFadeOut(J)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const v0, 0x0

    goto :goto_c
.end method

.method public static ۟۟ۦۤۢ([SIII)Ljava/lang/String;
    .registers 7

    .prologue
    .line 25
    new-array v1, p2, [C

    .line 26
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p2, :cond_10

    .line 27
    add-int v2, p1, v0

    aget-short v2, p0, v2

    xor-int/2addr v2, p3

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 29
    :cond_10
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static ۟۠ۥۥۤ(Ljava/lang/Object;Z)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/phicomm/speaker/player/mhdInterface/unisound/api/۟ۥۧۢۦ;->۟ۥۡ۟ۧ()I

    move-result v0

    if-gtz v0, :cond_d

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/xiaofei/server;->exec(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const v0, 0x0

    goto :goto_c
.end method

.method public static ۟ۡۢۥۡ(Ljava/lang/Object;)Z
    .registers 2

    invoke-static {}, Lcom/google/android/exoplayer2/text/ssa/۠ۡۤۦ;->۟ۤۦۤۨ()I

    move-result v0

    if-lez v0, :cond_d

    check-cast p0, Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->start()Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const v0, 0x0

    goto :goto_c
.end method

.method public static ۣۣ۟ۤۨ()I
    .registers 2

    const v0, -0x8b

    sget v1, Lcom/alibaba/fastjson/spi/۟ۥۥۤۢ;->ۣ۟ۧۤۤ:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public static ۟ۦۧ۟ۡ(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v0, 0x0

    const-string v3, ""

    const-string v2, ""

    move v1, v0

    :goto_6
    const/16 v4, 0xf

    if-lt v1, v4, :cond_2c

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v1, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_5f

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v3, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    :goto_24
    if-lt v0, v3, :cond_78

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_2c
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const/16 v6, 0xa

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    xor-int/2addr v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_5f
    const/4 v4, -0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_15

    :cond_78
    aget-byte v5, v1, v0

    rem-int v6, v0, v4

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_24
.end method

.method public static ۦۣۧ۟(Ljava/lang/Object;)I
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public static ۧ۟۠ۦ(Ljava/lang/Object;)V
    .registers 2

    invoke-static {}, Lcom/google/android/exoplayer2/drm/ۡۧ۟ۥ;->۟ۦۧ۟ۢ()I

    move-result v0

    if-gez v0, :cond_c

    check-cast p0, Lcom/phicomm/speaker/player/model/AbsPlayer;

    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/AbsPlayer;->destroy()V

    :goto_b
    return-void

    :cond_c
    goto :goto_b
.end method
