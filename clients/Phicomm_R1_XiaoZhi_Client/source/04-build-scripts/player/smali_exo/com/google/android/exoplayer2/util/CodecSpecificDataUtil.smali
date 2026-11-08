.class public final Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;
.super Ljava/lang/Object;


# static fields
.field private static final EXTENDED_PAR:I = 0xf

.field private static final HEVC_GENERAL_PROFILE_SPACE_STRINGS:[Ljava/lang/String;

.field private static final NAL_START_CODE:[B

.field private static final RECTANGULAR:I = 0x0

.field private static final VISUAL_OBJECT_LAYER:I = 0x1

.field private static final VISUAL_OBJECT_LAYER_START:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 30
    fill-array-data v1, :array_22

    sput-object v1, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "C"

    aput-object v2, v0, v1

    .line 31
    sput-object v0, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->HEVC_GENERAL_PROFILE_SPACE_STRINGS:[Ljava/lang/String;

    return-void

    nop

    :array_22
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAvcCodecString(III)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 174
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    const-string p0, "avc1.%02X%02X%02X"

    .line 173
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildCea708InitializationData(Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_9

    new-array p0, v1, [B

    aput-byte v1, p0, v0

    goto :goto_d

    :cond_9
    new-array p0, v1, [B

    aput-byte v0, p0, v0

    .line 64
    :goto_d
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static buildHevcCodecString(IZII[II)Ljava/lang/String;
    .registers 9

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->HEVC_GENERAL_PROFILE_SPACE_STRINGS:[Ljava/lang/String;

    aget-object p0, v2, p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 190
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p2, 0x1

    aput-object p0, v1, p2

    .line 191
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p3, 0x2

    aput-object p0, v1, p3

    if-eqz p1, :cond_1f

    const/16 p0, 0x48

    goto :goto_21

    :cond_1f
    const/16 p0, 0x4c

    .line 192
    :goto_21
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v1, p1

    const/4 p0, 0x4

    .line 193
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "hvc1.%s%d.%X.%c%d"

    .line 187
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    array-length p0, p4

    :goto_39
    if-lez p0, :cond_44

    add-int/lit8 p1, p0, -0x1

    .line 196
    aget p1, p4, p1

    if-nez p1, :cond_44

    add-int/lit8 p0, p0, -0x1

    goto :goto_39

    :cond_44
    const/4 p1, 0x0

    :goto_45
    if-ge p1, p0, :cond_5d

    new-array p3, p2, [Ljava/lang/Object;

    .line 200
    aget p5, p4, p1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p3, v2

    const-string p5, ".%02X"

    invoke-static {p5, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_45

    .line 202
    :cond_5d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildNalUnit([BII)[B
    .registers 7

    .line 214
    sget-object v0, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v0

    add-int/2addr v1, p2

    new-array v1, v1, [B

    .line 215
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    sget-object v0, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v0, v0

    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private static findNalStartCode([BI)I
    .registers 4

    .line 262
    array-length v0, p0

    sget-object v1, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    :goto_5
    if-gt p1, v0, :cond_11

    .line 264
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->isNalStartCode([BI)Z

    move-result v1

    if-eqz v1, :cond_e

    return p1

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method public static getVideoResolutionFromMpeg4VideoConfig([B)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    add-int/lit8 v3, v2, 0x3

    .line 93
    array-length v4, p0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v3, v4, :cond_2a

    .line 94
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v4

    if-ne v4, v6, :cond_1f

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x1

    goto :goto_2b

    .line 96
    :cond_1f
    :goto_1f
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    const-string v3, "Invalid input: VOL not found."

    .line 104
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 106
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    const/4 p0, 0x4

    add-int/2addr v2, p0

    const/16 v3, 0x8

    mul-int/lit8 v2, v2, 0x8

    .line 108
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 109
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 110
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 112
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 113
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v2, 0x3

    .line 114
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 117
    :cond_51
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p0

    const/16 v2, 0xf

    if-ne p0, v2, :cond_5f

    .line 119
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 120
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 123
    :cond_5f
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result p0

    if-eqz p0, :cond_76

    .line 124
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 125
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 126
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result p0

    if-eqz p0, :cond_76

    const/16 p0, 0x4f

    .line 127
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 131
    :cond_76
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p0

    if-nez p0, :cond_7e

    const/4 p0, 0x1

    goto :goto_7f

    :cond_7e
    const/4 p0, 0x0

    :goto_7f
    const-string v2, "Only supports rectangular video object layer shape."

    .line 132
    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 136
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    const/16 p0, 0x10

    .line 137
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p0

    .line 138
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 140
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_b2

    if-lez p0, :cond_a2

    const/4 v2, 0x1

    goto :goto_a3

    :cond_a2
    const/4 v2, 0x0

    .line 141
    :goto_a3
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    add-int/lit8 p0, p0, -0x1

    :goto_a8
    if-lez p0, :cond_af

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 p0, p0, 0x1

    goto :goto_a8

    .line 148
    :cond_af
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 151
    :cond_b2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    const/16 p0, 0xd

    .line 152
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 153
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 154
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p0

    .line 155
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 157
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 159
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static isNalStartCode([BI)Z
    .registers 6

    .line 279
    array-length v0, p0

    sub-int/2addr v0, p1

    sget-object v1, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_9

    return v2

    :cond_9
    const/4 v0, 0x0

    .line 282
    :goto_a
    sget-object v1, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v3, v1

    if-ge v0, v3, :cond_1b

    add-int v3, p1, v0

    .line 283
    aget-byte v3, p0, v3

    aget-byte v1, v1, v0

    if-eq v3, v1, :cond_18

    return v2

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1b
    const/4 p0, 0x1

    return p0
.end method

.method public static parseAlacAudioSpecificConfig([B)Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    const/16 p0, 0x9

    .line 49
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 50
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v1, 0x14

    .line 51
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 52
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static parseCea708InitializationData(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 76
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1c

    .line 77
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    if-ne v0, v2, :cond_1c

    .line 78
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    aget-byte p0, p0, v1

    if-ne p0, v2, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public static splitNalUnits([B)[[B
    .registers 8

    const/4 v0, 0x0

    .line 233
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->isNalStartCode([BI)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 p0, 0x0

    .line 235
    check-cast p0, [[B

    return-object p0

    .line 237
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 240
    :cond_11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v3, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->findNalStartCode([BI)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_11

    .line 243
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [[B

    const/4 v3, 0x0

    .line 244
    :goto_2a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5b

    .line 245
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 246
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_4f

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_50

    :cond_4f
    array-length v5, p0

    :goto_50
    sub-int/2addr v5, v4

    .line 247
    new-array v6, v5, [B

    .line 248
    invoke-static {p0, v4, v6, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    aput-object v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_5b
    return-object v2
.end method
