.class public Lcom/phicomm/speaker/player/airplay/۟۠ۡۧ۟;
.super Ljava/lang/Object;


# static fields
.field public static ۨۦۣۨ:I = 0xbe


# direct methods
.method public static ۟۟ۥۦ۠(Ljava/lang/Object;)I
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public static ۟۠۠ۤۦ()I
    .registers 2

    const v0, 0x299

    sget v1, Ljavax/jmdns/impl/۟۟ۦۤۦ;->ۧۤۧۥ:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public static ۣ۟ۤۡۨ(Ljava/lang/Object;Z)Z
    .registers 3

    invoke-static {}, Lcom/phicomm/speaker/player/airplay/۠ۦ۠ۤ;->۟۟ۦ۟ۥ()I

    move-result v0

    if-gtz v0, :cond_d

    check-cast p0, Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->playNext(Z)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const v0, 0x0

    goto :goto_c
.end method

.method public static ۟ۥۥۦۨ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ۣۦۢۤ;->۟ۡۧ۟ۡ()I

    move-result v0

    if-gez v0, :cond_f

    check-cast p0, Ljava/lang/Class;

    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const v0, 0x0

    goto :goto_e
.end method

.method public static ۣۤۢۥ([SIII)Ljava/lang/String;
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

.method public static ۤۢۨۧ(II)J
    .registers 4

    invoke-static {}, Lorg/xutils/db/annotation/۟۟ۧۧۥ;->ۣ۟ۢۢۡ()I

    move-result v0

    if-gez v0, :cond_b

    invoke-static {p0, p1}, Lcom/phicomm/speaker/player/PlayerVisualizer;->get_make(II)J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide v0, 0x0

    goto :goto_a
.end method

.method public static ۤۨۡۡ(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v1, 0x0

    const-string v3, ""

    const-string v2, ""

    move v0, v1

    :goto_6
    const/16 v4, 0xf

    if-lt v0, v4, :cond_30

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move v0, v1

    :goto_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_63

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v3, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    :goto_25
    if-gtz v3, :cond_7e

    :goto_27
    array-length v2, v0

    if-lt v1, v2, :cond_8c

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    :cond_30
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

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

    xor-int/2addr v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_63
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_16

    :cond_7e
    const/4 v5, -0x1

    aget-byte v6, v0, v5

    rem-int v7, v5, v4

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    goto :goto_25

    :cond_8c
    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_27
.end method

.method public static ۥۤ۠(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-static {}, Lorg/xutils/common/ۢۦۤۥ;->ۤۢۤۤ()I

    move-result v0

    if-lez v0, :cond_e

    check-cast p0, Landroid/os/MessageDispatchManager;

    check-cast p1, Landroid/os/MessageDispatchManager$MessageReceiver;

    invoke-virtual {p0, p1}, Landroid/os/MessageDispatchManager;->unregisterMessageReceiver(Landroid/os/MessageDispatchManager$MessageReceiver;)V

    :goto_d
    return-void

    :cond_e
    goto :goto_d
.end method

.method public static ۨۡۨۨ(Ljava/lang/Object;)V
    .registers 2

    invoke-static {}, Ljavax/jmdns/impl/ۢ۠ۡ;->ۡۦۧۡ()I

    move-result v0

    if-ltz v0, :cond_c

    check-cast p0, Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b
    return-void

    :cond_c
    goto :goto_b
.end method
