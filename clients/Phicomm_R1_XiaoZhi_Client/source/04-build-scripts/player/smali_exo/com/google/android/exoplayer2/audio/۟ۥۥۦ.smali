.class public Lcom/google/android/exoplayer2/audio/۟ۥۥۦ;
.super Ljava/lang/Object;


# static fields
.field public static ۣ۟۠ۦۢ:I = -0x3a6


# direct methods
.method public static ۟ۡۨۤۧ(Ljava/lang/Object;)I
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public static ۟ۤۤۤۡ(Ljava/lang/Object;)Lcom/xiaofei/server$HttpdServer;
    .registers 3

    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/ۣۣ۟۟ۥ;->ۨۡۧۡ()I

    move-result v0

    if-lez v0, :cond_b

    check-cast p0, Lcom/xiaofei/server;

    iget-object v1, p0, Lcom/xiaofei/server;->httpd:Lcom/xiaofei/server$HttpdServer;

    :goto_a
    return-object v1

    :cond_b
    const v1, 0x0

    goto :goto_a
.end method

.method public static ۟ۥۣۡۡ()I
    .registers 2

    const v0, 0x34d

    sget v1, Lcom/alibaba/fastjson/۟ۦۣۣۢ;->۟ۥۤۡۧ:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public static ۡۤۧ(Ljava/lang/Object;)J
    .registers 4

    invoke-static {}, Lcom/alibaba/fastjson/support/moneta/۟ۡۥ;->۟ۤۧۦۤ()I

    move-result v0

    if-gez v0, :cond_d

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_c
    return-wide v0

    :cond_d
    const-wide v0, 0x0

    goto :goto_c
.end method

.method public static ۥ۠ۤ۟(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v1, 0x0

    const-string v3, ""

    const-string v2, ""

    move v0, v1

    :goto_6
    const/16 v4, 0xf

    if-lt v0, v4, :cond_3c

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move v0, v1

    :goto_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_6f

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v0, "a"

    :cond_22
    :goto_22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_8a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    move v0, v1

    :goto_31
    if-lt v0, v4, :cond_95

    :goto_33
    array-length v0, v3

    if-lt v1, v0, :cond_a4

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_3c
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

    :cond_6f
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

    :cond_8a
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_22

    const-string v0, "a"

    goto :goto_22

    :cond_95
    aget-byte v6, v3, v0

    rem-int v7, v0, v5

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_a4
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    goto :goto_33
.end method

.method public static ۦۥۣۢ(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/phicomm/speaker/player/statistics/bean/ۣۣۡۤ;->ۢ۠ۦ()I

    move-result v0

    if-ltz v0, :cond_d

    check-cast p0, Ljava/io/BufferedReader;

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const v0, 0x0

    goto :goto_c
.end method

.method public static ۧۢۦۡ([SIII)Ljava/lang/String;
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
