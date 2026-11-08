.class public final Lcom/google/android/exoplayer2/util/NalUnitUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;,
        Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;,
        Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO_IDC_VALUES:[F

.field public static final EXTENDED_SAR:I = 0xff

.field private static final H264_NAL_UNIT_TYPE_SEI:I = 0x6

.field private static final H264_NAL_UNIT_TYPE_SPS:I = 0x7

.field private static final H265_NAL_UNIT_TYPE_PREFIX_SEI:I = 0x27

.field public static final NAL_START_CODE:[B

.field public static final NAL_UNIT_TYPE_AUD:I = 0x9

.field public static final NAL_UNIT_TYPE_IDR:I = 0x5

.field public static final NAL_UNIT_TYPE_NON_IDR:I = 0x1

.field public static final NAL_UNIT_TYPE_PARTITION_A:I = 0x2

.field public static final NAL_UNIT_TYPE_PPS:I = 0x8

.field public static final NAL_UNIT_TYPE_SEI:I = 0x6

.field public static final NAL_UNIT_TYPE_SPS:I = 0x7

.field private static final TAG:Ljava/lang/String; = "NalUnitUtil"

.field private static scratchEscapePositions:[I

.field private static final scratchEscapePositionsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 150
    fill-array-data v0, :array_20

    sput-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    .line 155
    fill-array-data v0, :array_26

    sput-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    .line 180
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 186
    sput-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    return-void

    nop

    :array_20
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_26
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearPrefixFlags([Z)V
    .registers 3

    const/4 v0, 0x0

    .line 738
    aput-boolean v0, p0, v0

    const/4 v1, 0x1

    .line 739
    aput-boolean v0, p0, v1

    const/4 v1, 0x2

    .line 740
    aput-boolean v0, p0, v1

    return-void
.end method

.method public static discardToSps(Ljava/nio/ByteBuffer;)V
    .registers 10

    .line 245
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v0, :cond_3b

    .line 249
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x3

    if-ne v3, v6, :cond_32

    const/4 v7, 0x1

    if-ne v5, v7, :cond_36

    .line 251
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit8 v7, v7, 0x1f

    const/4 v8, 0x7

    if-ne v7, v8, :cond_36

    .line 253
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    sub-int/2addr v2, v6

    .line 254
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 255
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 256
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 257
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void

    :cond_32
    if-nez v5, :cond_36

    add-int/lit8 v3, v3, 0x1

    :cond_36
    if-eqz v5, :cond_39

    const/4 v3, 0x0

    :cond_39
    move v2, v4

    goto :goto_7

    .line 269
    :cond_3b
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public static findNalUnit([BII[Z)I
    .registers 11

    sub-int v0, p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    .line 678
    :goto_9
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    if-nez v0, :cond_f

    return p2

    .line 683
    :cond_f
    aget-boolean v3, p3, v1

    if-eqz v3, :cond_19

    .line 684
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    add-int/lit8 p1, p1, -0x3

    return p1

    :cond_19
    const/4 v3, 0x2

    if-le v0, v2, :cond_29

    .line 686
    aget-boolean v4, p3, v2

    if-eqz v4, :cond_29

    aget-byte v4, p0, p1

    if-ne v4, v2, :cond_29

    .line 687
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    sub-int/2addr p1, v3

    return p1

    :cond_29
    if-le v0, v3, :cond_3e

    .line 689
    aget-boolean v4, p3, v3

    if-eqz v4, :cond_3e

    aget-byte v4, p0, p1

    if-nez v4, :cond_3e

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    if-ne v4, v2, :cond_3e

    .line 693
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    sub-int/2addr p1, v2

    return p1

    :cond_3e
    add-int/lit8 v4, p2, -0x1

    add-int/2addr p1, v3

    :goto_41
    if-ge p1, v4, :cond_63

    .line 701
    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xfe

    if-eqz v5, :cond_4a

    goto :goto_60

    :cond_4a
    add-int/lit8 v5, p1, -0x2

    .line 704
    aget-byte v6, p0, v5

    if-nez v6, :cond_5e

    add-int/lit8 v6, p1, -0x1

    aget-byte v6, p0, v6

    if-nez v6, :cond_5e

    aget-byte v6, p0, p1

    if-ne v6, v2, :cond_5e

    .line 705
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    return v5

    :cond_5e
    add-int/lit8 p1, p1, -0x2

    :goto_60
    add-int/lit8 p1, p1, 0x3

    goto :goto_41

    :cond_63
    if-le v0, v3, :cond_78

    add-int/lit8 p1, p2, -0x3

    .line 715
    aget-byte p1, p0, p1

    if-nez p1, :cond_76

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_76

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_76

    goto :goto_91

    :cond_76
    const/4 p1, 0x0

    goto :goto_92

    :cond_78
    if-ne v0, v3, :cond_89

    aget-boolean p1, p3, v3

    if-eqz p1, :cond_76

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_76

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_76

    goto :goto_91

    :cond_89
    aget-boolean p1, p3, v2

    if-eqz p1, :cond_76

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_76

    :goto_91
    const/4 p1, 0x1

    :goto_92
    aput-boolean p1, p3, v1

    if-le v0, v2, :cond_a1

    add-int/lit8 p1, p2, -0x2

    .line 722
    aget-byte p1, p0, p1

    if-nez p1, :cond_ab

    aget-byte p1, p0, v4

    if-nez p1, :cond_ab

    goto :goto_a9

    :cond_a1
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_ab

    aget-byte p1, p0, v4

    if-nez p1, :cond_ab

    :goto_a9
    const/4 p1, 0x1

    goto :goto_ac

    :cond_ab
    const/4 p1, 0x0

    :goto_ac
    aput-boolean p1, p3, v2

    .line 727
    aget-byte p0, p0, v4

    if-nez p0, :cond_b3

    const/4 v1, 0x1

    :cond_b3
    aput-boolean v1, p3, v3

    return p2
.end method

.method private static findNextUnescapeIndex([BII)I
    .registers 5

    :goto_0
    add-int/lit8 v0, p2, -0x2

    if-ge p1, v0, :cond_19

    .line 745
    aget-byte v0, p0, p1

    if-nez v0, :cond_16

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_16

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    return p1

    :cond_16
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_19
    return p2
.end method

.method public static getH265NalUnitType([BI)I
    .registers 2

    add-int/lit8 p1, p1, 0x3

    .line 309
    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x7e

    shr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static getNalUnitType([BI)I
    .registers 2

    add-int/lit8 p1, p1, 0x3

    .line 297
    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static isNalUnitSei(Ljava/lang/String;B)Z
    .registers 5

    const-string v0, "video/avc"

    .line 282
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    and-int/lit8 v0, p1, 0x1f

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1f

    :cond_e
    const-string v0, "video/hevc"

    .line 284
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    and-int/lit8 p0, p1, 0x7e

    shr-int/2addr p0, v1

    const/16 p1, 0x27

    if-ne p0, p1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :cond_1f
    :goto_1f
    return v1
.end method

.method public static parseH265SpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;
    .registers 3

    add-int/lit8 p1, p1, 0x2

    .line 470
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->parseH265SpsNalUnitPayload([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;

    move-result-object p0

    return-object p0
.end method

.method public static parseH265SpsNalUnitPayload([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;
    .registers 25

    .line 484
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    const/4 v1, 0x4

    .line 485
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    const/4 v2, 0x3

    .line 486
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 487
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    const/4 v4, 0x2

    .line 488
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v6

    .line 489
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v7

    const/4 v5, 0x5

    .line 490
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_27
    const/16 v11, 0x20

    const/4 v12, 0x1

    if-ge v10, v11, :cond_38

    .line 493
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_35

    shl-int v11, v12, v10

    or-int/2addr v9, v11

    :cond_35
    add-int/lit8 v10, v10, 0x1

    goto :goto_27

    :cond_38
    const/4 v10, 0x6

    new-array v11, v10, [I

    const/4 v13, 0x0

    :goto_3c
    const/16 v14, 0x8

    if-ge v13, v10, :cond_49

    .line 499
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v14

    aput v14, v11, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3c

    .line 501
    :cond_49
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v13

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_4f
    if-ge v10, v3, :cond_64

    .line 504
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_59

    add-int/lit8 v15, v15, 0x59

    .line 507
    :cond_59
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_61

    add-int/lit8 v15, v15, 0x8

    :cond_61
    add-int/lit8 v10, v10, 0x1

    goto :goto_4f

    .line 511
    :cond_64
    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    if-lez v3, :cond_70

    rsub-int/lit8 v10, v3, 0x8

    mul-int/lit8 v10, v10, 0x2

    .line 513
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 515
    :cond_70
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    .line 516
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    if-ne v10, v2, :cond_7d

    .line 518
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 520
    :cond_7d
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    .line 521
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v16

    .line 522
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_b6

    .line 523
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v17

    .line 524
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    .line 525
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    .line 526
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v20

    if-eq v10, v12, :cond_a3

    if-ne v10, v4, :cond_a0

    goto :goto_a3

    :cond_a0
    const/16 v21, 0x1

    goto :goto_a5

    :cond_a3
    :goto_a3
    const/16 v21, 0x2

    :goto_a5
    if-ne v10, v12, :cond_a9

    const/4 v10, 0x2

    goto :goto_aa

    :cond_a9
    const/4 v10, 0x1

    :goto_aa
    add-int v17, v17, v18

    mul-int v21, v21, v17

    sub-int v2, v2, v21

    add-int v19, v19, v20

    mul-int v10, v10, v19

    sub-int v16, v16, v10

    .line 533
    :cond_b6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 534
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 535
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    .line 537
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_c9

    const/16 v17, 0x0

    goto :goto_cb

    :cond_c9
    move/from16 v17, v3

    :goto_cb
    move/from16 v5, v17

    :goto_cd
    if-gt v5, v3, :cond_db

    .line 538
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 539
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 540
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v5, v5, 0x1

    goto :goto_cd

    .line 542
    :cond_db
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 543
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 544
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 545
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 546
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 547
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 549
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_fc

    .line 550
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_fc

    .line 551
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->skipH265ScalingList(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;)V

    .line 553
    :cond_fc
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 554
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_111

    .line 556
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 557
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 558
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 559
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 561
    :cond_111
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->skipShortTermReferencePictureSets(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;)V

    .line 562
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_12a

    const/4 v5, 0x0

    .line 564
    :goto_11b
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    if-ge v5, v3, :cond_12a

    add-int/lit8 v3, v10, 0x4

    add-int/2addr v3, v12

    .line 567
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_11b

    .line 570
    :cond_12a
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 572
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_1a7

    .line 573
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_173

    .line 574
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    const/16 v5, 0xff

    if-ne v4, v5, :cond_155

    const/16 v4, 0x10

    .line 576
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v5

    .line 577
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    if-eqz v5, :cond_173

    if-eqz v4, :cond_173

    int-to-float v3, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_173

    .line 581
    :cond_155
    sget-object v5, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v10, v5

    if-ge v4, v10, :cond_15d

    .line 582
    aget v3, v5, v4

    goto :goto_173

    .line 584
    :cond_15d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NalUnitUtil"

    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_173
    :goto_173
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_17c

    .line 588
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 590
    :cond_17c
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_190

    .line 591
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 592
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_190

    const/16 v1, 0x18

    .line 594
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 597
    :cond_190
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_19c

    .line 598
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 599
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 601
    :cond_19c
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 602
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_1a7

    mul-int/lit8 v16, v16, 0x2

    :cond_1a7
    move/from16 v14, v16

    .line 609
    new-instance v0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;

    move-object v5, v0

    move-object v10, v11

    move v11, v13

    move v12, v15

    move v13, v2

    move v15, v3

    invoke-direct/range {v5 .. v15}, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;-><init>(IZII[IIIIIF)V

    return-object v0
.end method

.method public static parsePpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;
    .registers 3

    add-int/lit8 p1, p1, 0x1

    .line 632
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->parsePpsNalUnitPayload([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

    move-result-object p0

    return-object p0
.end method

.method public static parsePpsNalUnitPayload([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;
    .registers 4

    .line 645
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    .line 646
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result p0

    .line 647
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result p1

    .line 648
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 649
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result p2

    .line 650
    new-instance v0, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;-><init>(IIZ)V

    return-object v0
.end method

.method public static parseSpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;
    .registers 3

    add-int/lit8 p1, p1, 0x1

    .line 322
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->parseSpsNalUnitPayload([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    move-result-object p0

    return-object p0
.end method

.method public static parseSpsNalUnitPayload([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;
    .registers 25

    .line 335
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    const/16 v1, 0x8

    .line 336
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 337
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    .line 338
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v5

    .line 339
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v6

    const/4 v2, 0x3

    const/4 v9, 0x1

    const/16 v10, 0x64

    if-eq v3, v10, :cond_4b

    const/16 v10, 0x6e

    if-eq v3, v10, :cond_4b

    const/16 v10, 0x7a

    if-eq v3, v10, :cond_4b

    const/16 v10, 0xf4

    if-eq v3, v10, :cond_4b

    const/16 v10, 0x2c

    if-eq v3, v10, :cond_4b

    const/16 v10, 0x53

    if-eq v3, v10, :cond_4b

    const/16 v10, 0x56

    if-eq v3, v10, :cond_4b

    const/16 v10, 0x76

    if-eq v3, v10, :cond_4b

    const/16 v10, 0x80

    if-eq v3, v10, :cond_4b

    const/16 v10, 0x8a

    if-ne v3, v10, :cond_48

    goto :goto_4b

    :cond_48
    const/4 v10, 0x1

    const/4 v11, 0x0

    goto :goto_84

    .line 353
    :cond_4b
    :goto_4b
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    if-ne v10, v2, :cond_56

    .line 355
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    goto :goto_57

    :cond_56
    const/4 v11, 0x0

    .line 357
    :goto_57
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 358
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 359
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 360
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_84

    if-eq v10, v2, :cond_6b

    const/16 v12, 0x8

    goto :goto_6d

    :cond_6b
    const/16 v12, 0xc

    :goto_6d
    const/4 v13, 0x0

    :goto_6e
    if-ge v13, v12, :cond_84

    .line 364
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v14

    if-eqz v14, :cond_81

    const/4 v14, 0x6

    if-ge v13, v14, :cond_7c

    const/16 v14, 0x10

    goto :goto_7e

    :cond_7c
    const/16 v14, 0x40

    .line 366
    :goto_7e
    invoke-static {v0, v14}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->skipScalingList(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;I)V

    :cond_81
    add-int/lit8 v13, v13, 0x1

    goto :goto_6e

    .line 372
    :cond_84
    :goto_84
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    add-int/lit8 v13, v12, 0x4

    .line 373
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v14

    if-nez v14, :cond_98

    .line 378
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    add-int/lit8 v12, v12, 0x4

    move v15, v12

    goto :goto_ba

    :cond_98
    if-ne v14, v9, :cond_b9

    .line 380
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v12

    .line 381
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 382
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 383
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    int-to-long v1, v15

    const/4 v15, 0x0

    :goto_aa
    int-to-long v7, v15

    cmp-long v17, v7, v1

    if-gez v17, :cond_b5

    .line 385
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v15, v15, 0x1

    goto :goto_aa

    :cond_b5
    move/from16 v16, v12

    const/4 v15, 0x0

    goto :goto_bc

    :cond_b9
    const/4 v15, 0x0

    :goto_ba
    const/16 v16, 0x0

    .line 388
    :goto_bc
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v7

    .line 389
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 391
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    add-int/2addr v1, v9

    .line 392
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    add-int/2addr v2, v9

    .line 393
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v12

    rsub-int/lit8 v8, v12, 0x2

    mul-int v8, v8, v2

    if-nez v12, :cond_da

    .line 396
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 399
    :cond_da
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    const/16 v2, 0x10

    mul-int/lit8 v1, v1, 0x10

    mul-int/lit8 v8, v8, 0x10

    .line 402
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 404
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    .line 405
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v17

    .line 406
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    .line 407
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    if-nez v10, :cond_fe

    rsub-int/lit8 v10, v12, 0x2

    goto :goto_113

    :cond_fe
    const/16 v20, 0x2

    const/4 v9, 0x3

    if-ne v10, v9, :cond_107

    const/4 v9, 0x1

    const/16 v21, 0x1

    goto :goto_10a

    :cond_107
    const/4 v9, 0x1

    const/16 v21, 0x2

    :goto_10a
    if-ne v10, v9, :cond_10d

    const/4 v9, 0x2

    :cond_10d
    rsub-int/lit8 v10, v12, 0x2

    mul-int v10, v10, v9

    move/from16 v9, v21

    :goto_113
    add-int v2, v2, v17

    mul-int v2, v2, v9

    sub-int/2addr v1, v2

    add-int v18, v18, v19

    mul-int v18, v18, v10

    sub-int v8, v8, v18

    :cond_11e
    move v9, v8

    move v8, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 424
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_16a

    .line 426
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_16a

    const/16 v2, 0x8

    .line 428
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    const/16 v10, 0xff

    if-ne v2, v10, :cond_14b

    const/16 v10, 0x10

    .line 430
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 431
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v0

    if-eqz v2, :cond_149

    if-eqz v0, :cond_149

    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    :cond_149
    move v10, v1

    goto :goto_16c

    .line 435
    :cond_14b
    sget-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v10, v0

    if-ge v2, v10, :cond_154

    .line 436
    aget v0, v0, v2

    move v10, v0

    goto :goto_16c

    .line 438
    :cond_154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NalUnitUtil"

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16a
    const/high16 v10, 0x3f800000    # 1.0f

    .line 443
    :goto_16c
    new-instance v0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    move-object v2, v0

    invoke-direct/range {v2 .. v16}, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;-><init>(IIIIIIIFZZIIIZ)V

    return-object v0
.end method

.method private static skipH265ScalingList(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_36

    const/4 v3, 0x0

    :goto_6
    const/4 v4, 0x6

    if-ge v3, v4, :cond_33

    .line 767
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_14

    .line 769
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    goto :goto_2d

    :cond_14
    const/16 v4, 0x40

    shl-int/lit8 v6, v1, 0x1

    add-int/2addr v6, v2

    shl-int v6, v5, v6

    .line 771
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-le v1, v5, :cond_24

    .line 774
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    :cond_24
    const/4 v6, 0x0

    :goto_25
    if-ge v6, v4, :cond_2d

    .line 777
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_2d
    :goto_2d
    const/4 v4, 0x3

    if-ne v1, v4, :cond_31

    const/4 v5, 0x3

    :cond_31
    add-int/2addr v3, v5

    goto :goto_6

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_36
    return-void
.end method

.method private static skipScalingList(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;I)V
    .registers 5

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    :goto_6
    if-ge v2, p1, :cond_1a

    if-eqz v0, :cond_13

    .line 757
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x100

    .line 758
    rem-int/lit16 v0, v0, 0x100

    :cond_13
    if-nez v0, :cond_16

    goto :goto_17

    :cond_16
    move v1, v0

    :goto_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1a
    return-void
.end method

.method private static skipShortTermReferencePictureSets(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;)V
    .registers 9

    .line 785
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_8
    if-ge v2, v0, :cond_4d

    if-eqz v2, :cond_10

    .line 795
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    :cond_10
    if-eqz v3, :cond_27

    .line 798
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 799
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    const/4 v5, 0x0

    :goto_19
    if-gt v5, v4, :cond_4a

    .line 801
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    if-nez v6, :cond_24

    .line 802
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    :cond_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 806
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    .line 807
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    add-int v6, v4, v5

    const/4 v7, 0x0

    :goto_32
    if-ge v7, v4, :cond_3d

    .line 810
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 811
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    :cond_3d
    const/4 v4, 0x0

    :goto_3e
    if-ge v4, v5, :cond_49

    .line 814
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 815
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :cond_49
    move v4, v6

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_4d
    return-void
.end method

.method public static unescapeStream([BI)I
    .registers 10

    .line 200
    sget-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_6
    :goto_6
    if-ge v2, p1, :cond_2c

    .line 204
    :try_start_8
    invoke-static {p0, v2, p1}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->findNextUnescapeIndex([BII)I

    move-result v2

    if-ge v2, p1, :cond_6

    .line 206
    sget-object v4, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    array-length v4, v4

    if-gt v4, v3, :cond_20

    .line 208
    sget-object v4, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    sget-object v5, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    .line 209
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    sput-object v4, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    .line 211
    :cond_20
    sget-object v4, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    add-int/lit8 v5, v3, 0x1

    aput v2, v4, v3

    add-int/lit8 v2, v2, 0x3

    move v3, v5

    goto :goto_6

    :catchall_2a
    move-exception p0

    goto :goto_50

    :cond_2c
    sub-int/2addr p1, v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_30
    if-ge v2, v3, :cond_49

    .line 220
    sget-object v6, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    aget v6, v6, v2

    sub-int/2addr v6, v5

    .line 222
    invoke-static {p0, v5, p0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    add-int/lit8 v7, v4, 0x1

    .line 224
    aput-byte v1, p0, v4

    add-int/lit8 v4, v7, 0x1

    .line 225
    aput-byte v1, p0, v7

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_49
    sub-int v1, p1, v4

    .line 230
    invoke-static {p0, v5, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    monitor-exit v0

    return p1

    .line 232
    :goto_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_8 .. :try_end_51} :catchall_2a

    goto :goto_53

    :goto_52
    throw p0

    :goto_53
    goto :goto_52
.end method
