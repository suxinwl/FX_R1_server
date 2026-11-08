.class public final Lcom/google/android/exoplayer2/audio/Ac3Util;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;
    }
.end annotation


# static fields
.field public static final AC3_MAX_RATE_BYTES_PER_SECOND:I = 0x13880

.field private static final AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT:I = 0x600

.field private static final AUDIO_SAMPLES_PER_AUDIO_BLOCK:I = 0x100

.field private static final BITRATE_BY_HALF_FRMSIZECOD:[I

.field private static final BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

.field private static final CHANNEL_COUNT_BY_ACMOD:[I

.field public static final E_AC3_MAX_RATE_BYTES_PER_SECOND:I = 0xbb800

.field private static final SAMPLE_RATE_BY_FSCOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD2:[I

.field private static final SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

.field public static final TRUEHD_MAX_RATE_BYTES_PER_SECOND:I = 0x2ebae4

.field public static final TRUEHD_RECHUNK_SAMPLE_COUNT:I = 0x10

.field public static final TRUEHD_SYNCFRAME_PREFIX_LENGTH:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 121
    fill-array-data v0, :array_32

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 123
    fill-array-data v1, :array_3e

    sput-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    new-array v0, v0, [I

    .line 125
    fill-array-data v0, :array_48

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 127
    fill-array-data v0, :array_52

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    const/16 v0, 0x13

    new-array v1, v0, [I

    .line 129
    fill-array-data v1, :array_66

    sput-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    new-array v0, v0, [I

    .line 134
    fill-array-data v0, :array_90

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    return-void

    nop

    :array_32
    .array-data 4
        0x1
        0x2
        0x3
        0x6
    .end array-data

    :array_3e
    .array-data 4
        0xbb80
        0xac44
        0x7d00
    .end array-data

    :array_48
    .array-data 4
        0x5dc0
        0x5622
        0x3e80
    .end array-data

    :array_52
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_66
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_90
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findTrueHdSyncframeOffset(Ljava/nio/ByteBuffer;)I
    .registers 6

    .line 501
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 502
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    move v2, v0

    :goto_b
    if-gt v2, v1, :cond_1f

    add-int/lit8 v3, v2, 0x4

    .line 505
    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/util/Util;->getBigEndianInt(Ljava/nio/ByteBuffer;I)I

    move-result v3

    and-int/lit8 v3, v3, -0x2

    const v4, -0x78d9046

    if-ne v3, v4, :cond_1c

    sub-int/2addr v2, v0

    return v2

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method private static getAc3SyncframeSize(II)I
    .registers 6

    .line 549
    div-int/lit8 v0, p1, 0x2

    if-ltz p0, :cond_2e

    .line 550
    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    array-length v2, v1

    if-ge p0, v2, :cond_2e

    if-ltz p1, :cond_2e

    sget-object v2, Lcom/google/android/exoplayer2/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    array-length v3, v2

    if-lt v0, v3, :cond_11

    goto :goto_2e

    .line 557
    :cond_11
    aget p0, v1, p0

    const v1, 0xac44

    if-ne p0, v1, :cond_20

    .line 559
    aget p0, v2, v0

    rem-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x2

    return p0

    .line 561
    :cond_20
    sget-object p1, Lcom/google/android/exoplayer2/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    aget p1, p1, v0

    const/16 v0, 0x7d00

    if-ne p0, v0, :cond_2b

    mul-int/lit8 p1, p1, 0x6

    return p1

    :cond_2b
    mul-int/lit8 p1, p1, 0x4

    return p1

    :cond_2e
    :goto_2e
    const/4 p0, -0x1

    return p0
.end method

.method public static parseAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .registers 7

    .line 152
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 153
    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v0, v1, v0

    .line 154
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    .line 155
    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v2, p0, 0x38

    shr-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_1e

    add-int/lit8 v1, v1, 0x1

    .line 159
    :cond_1e
    new-instance p0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 160
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    const-string p1, "audio/ac3"

    .line 161
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 162
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 163
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 164
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 165
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 166
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static parseAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .registers 4

    .line 482
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xf8

    const/4 v1, 0x3

    shr-int/2addr v0, v1

    const/16 v2, 0xa

    if-le v0, v2, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_3d

    .line 484
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    if-ne v0, v1, :cond_28

    goto :goto_36

    .line 485
    :cond_28
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit8 p0, p0, 0x30

    shr-int/lit8 v1, p0, 0x4

    .line 486
    :goto_36
    sget-object p0, Lcom/google/android/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    aget p0, p0, v1

    mul-int/lit16 p0, p0, 0x100

    return p0

    :cond_3d
    const/16 p0, 0x600

    return p0
.end method

.method public static parseAc3SyncframeInfo(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;
    .registers 28

    move-object/from16 v0, p0

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v1

    const/16 v2, 0x28

    .line 229
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v2, 0x5

    .line 231
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/16 v4, 0xa

    const/4 v6, 0x1

    if-le v3, v4, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    .line 232
    :goto_18
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    const/4 v1, -0x1

    const/16 v7, 0x8

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v3, :cond_21d

    const/16 v3, 0x10

    .line 243
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 244
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    if-eqz v11, :cond_36

    if-eq v11, v6, :cond_34

    if-eq v11, v10, :cond_32

    goto :goto_37

    :cond_32
    const/4 v1, 0x2

    goto :goto_37

    :cond_34
    const/4 v1, 0x1

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    .line 258
    :goto_37
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/16 v11, 0xb

    .line 259
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    add-int/2addr v11, v6

    mul-int/lit8 v11, v11, 0x2

    .line 260
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    if-ne v12, v9, :cond_55

    .line 265
    sget-object v13, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    aget v13, v13, v14

    move v15, v13

    const/4 v13, 0x3

    const/4 v14, 0x6

    goto :goto_61

    .line 268
    :cond_55
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 269
    sget-object v14, Lcom/google/android/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    aget v14, v14, v13

    .line 270
    sget-object v15, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v15, v15, v12

    :goto_61
    mul-int/lit16 v5, v14, 0x100

    .line 273
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v17

    .line 275
    sget-object v18, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v18, v18, v8

    add-int v18, v18, v17

    .line 276
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 278
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_7d
    if-nez v8, :cond_8b

    .line 281
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 283
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_8b
    if-ne v1, v6, :cond_96

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_96

    .line 287
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 289
    :cond_96
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_1b4

    if-le v8, v10, :cond_a2

    .line 291
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_a2
    and-int/lit8 v3, v8, 0x1

    if-eqz v3, :cond_ad

    if-le v8, v10, :cond_ad

    const/4 v3, 0x6

    .line 294
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_ae

    :cond_ad
    const/4 v3, 0x6

    :goto_ae
    and-int/lit8 v16, v8, 0x4

    if-eqz v16, :cond_b5

    .line 297
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_b5
    if-eqz v17, :cond_c0

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 300
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_c0
    if-nez v1, :cond_1b4

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_cd

    const/4 v3, 0x6

    .line 304
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_ce

    :cond_cd
    const/4 v3, 0x6

    :goto_ce
    if-nez v8, :cond_d9

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_d9

    .line 307
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 309
    :cond_d9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_e2

    .line 310
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 312
    :cond_e2
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    if-ne v3, v6, :cond_ed

    .line 314
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_181

    :cond_ed
    if-ne v3, v10, :cond_f6

    const/16 v3, 0xc

    .line 316
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_181

    :cond_f6
    if-ne v3, v9, :cond_181

    .line 318
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_15c

    .line 320
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_10e

    .line 322
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 324
    :cond_10e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_117

    .line 325
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 327
    :cond_117
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_120

    .line 328
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 330
    :cond_120
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_129

    .line 331
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 333
    :cond_129
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_132

    .line 334
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 336
    :cond_132
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_13b

    .line 337
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 339
    :cond_13b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_144

    .line 340
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 342
    :cond_144
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_15c

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_153

    .line 344
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 346
    :cond_153
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_15c

    .line 347
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 351
    :cond_15c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_178

    .line 352
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_178

    const/4 v6, 0x7

    .line 354
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_178

    .line 356
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_178
    add-int/2addr v3, v10

    mul-int/lit8 v3, v3, 0x8

    .line 360
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteAlign()V

    :cond_181
    :goto_181
    if-ge v8, v10, :cond_199

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    const/16 v6, 0xe

    if-eqz v3, :cond_18e

    .line 365
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_18e
    if-nez v8, :cond_199

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_199

    .line 369
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 373
    :cond_199
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_1b4

    if-nez v13, :cond_1a5

    .line 375
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1b4

    :cond_1a5
    const/4 v3, 0x0

    :goto_1a6
    if-ge v3, v14, :cond_1b4

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_1b1

    .line 379
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_1b1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a6

    .line 386
    :cond_1b4
    :goto_1b4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_1e1

    .line 387
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    if-ne v8, v10, :cond_1c2

    .line 389
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_1c2
    const/4 v2, 0x6

    if-lt v8, v2, :cond_1c8

    .line 392
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 394
    :cond_1c8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_1d1

    .line 395
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_1d1
    if-nez v8, :cond_1dc

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_1dc

    .line 398
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_1dc
    if-ge v12, v9, :cond_1e1

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    :cond_1e1
    if-nez v1, :cond_1e8

    if-eq v13, v9, :cond_1e8

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    :cond_1e8
    if-ne v1, v10, :cond_1f7

    if-eq v13, v9, :cond_1f2

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_1f7

    :cond_1f2
    const/4 v2, 0x6

    .line 409
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1f8

    :cond_1f7
    const/4 v2, 0x6

    .line 412
    :goto_1f8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_20e

    .line 413
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20e

    .line 414
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    if-ne v0, v3, :cond_20e

    const-string v0, "audio/eac3-joc"

    goto :goto_210

    :cond_20e
    const-string v0, "audio/eac3"

    :goto_210
    move-object/from16 v20, v0

    move/from16 v21, v1

    move/from16 v25, v5

    move/from16 v24, v11

    move/from16 v23, v15

    move/from16 v22, v18

    goto :goto_274

    :cond_21d
    const/16 v2, 0x20

    .line 420
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 421
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    if-ne v2, v9, :cond_22a

    const/4 v3, 0x0

    goto :goto_22c

    :cond_22a
    const-string v3, "audio/ac3"

    :goto_22c
    const/4 v4, 0x6

    .line 427
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 428
    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/audio/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v11

    .line 429
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 430
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_246

    const/4 v5, 0x1

    if-eq v4, v5, :cond_246

    .line 432
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_246
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_24d

    .line 435
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_24d
    if-ne v4, v10, :cond_252

    .line 438
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 440
    :cond_252
    sget-object v5, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    array-length v6, v5

    if-ge v2, v6, :cond_25b

    aget v2, v5, v2

    move v15, v2

    goto :goto_25c

    :cond_25b
    const/4 v15, -0x1

    :goto_25c
    const/16 v5, 0x600

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 444
    sget-object v2, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v2, v2, v4

    add-int v18, v2, v0

    move-object/from16 v20, v3

    move/from16 v24, v11

    move/from16 v23, v15

    move/from16 v22, v18

    const/16 v21, -0x1

    const/16 v25, 0x600

    .line 446
    :goto_274
    new-instance v0, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;

    const/16 v26, 0x0

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v26}, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;-><init>(Ljava/lang/String;IIIIILcom/google/android/exoplayer2/audio/Ac3Util$1;)V

    return-object v0
.end method

.method public static parseAc3SyncframeSize([B)I
    .registers 6

    .line 457
    array-length v0, p0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    const/4 v0, 0x5

    .line 461
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xf8

    const/4 v2, 0x3

    shr-int/2addr v0, v2

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-le v0, v3, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_27

    const/4 v0, 0x2

    .line 463
    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x8

    .line 464
    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v1

    add-int/2addr p0, v4

    mul-int/lit8 p0, p0, 0x2

    return p0

    :cond_27
    const/4 v0, 0x4

    .line 467
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xc0

    shr-int/lit8 v1, v2, 0x6

    .line 468
    aget-byte p0, p0, v0

    and-int/lit8 p0, p0, 0x3f

    .line 469
    invoke-static {v1, p0}, Lcom/google/android/exoplayer2/audio/Ac3Util;->getAc3SyncframeSize(II)I

    move-result p0

    return p0
.end method

.method public static parseEAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .registers 9

    const/4 v0, 0x2

    .line 181
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 184
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v1, v1, 0xc0

    shr-int/lit8 v1, v1, 0x6

    .line 185
    sget-object v2, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v1, v2, v1

    .line 186
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 187
    sget-object v3, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v4, v2, 0xe

    shr-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_22

    add-int/lit8 v3, v3, 0x1

    .line 193
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit8 v2, v2, 0x1e

    shr-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_35

    .line 196
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_35

    add-int/lit8 v3, v3, 0x2

    .line 204
    :cond_35
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_46

    .line 205
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_46

    const-string p0, "audio/eac3-joc"

    goto :goto_48

    :cond_46
    const-string p0, "audio/eac3"

    .line 210
    :goto_48
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 211
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 212
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 213
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 214
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 215
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 216
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 217
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static parseTrueHdSyncframeAudioSampleCount(Ljava/nio/ByteBuffer;I)I
    .registers 5

    .line 544
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    const/16 v1, 0x28

    .line 545
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p1

    if-eqz v0, :cond_20

    const/16 p1, 0x9

    goto :goto_22

    :cond_20
    const/16 p1, 0x8

    :goto_22
    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x7

    shl-int p0, v1, p0

    return p0
.end method

.method public static parseTrueHdSyncframeAudioSampleCount([B)I
    .registers 6

    const/4 v0, 0x4

    .line 524
    aget-byte v1, p0, v0

    const/4 v2, 0x0

    const/4 v3, -0x8

    if-ne v1, v3, :cond_38

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    const/16 v3, 0x72

    if-ne v1, v3, :cond_38

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    const/16 v3, 0x6f

    if-ne v1, v3, :cond_38

    const/4 v1, 0x7

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xfe

    const/16 v4, 0xba

    if-eq v3, v4, :cond_1f

    goto :goto_38

    .line 530
    :cond_1f
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xbb

    if-ne v3, v4, :cond_28

    const/4 v2, 0x1

    :cond_28
    const/16 v3, 0x28

    if-eqz v2, :cond_2f

    const/16 v2, 0x9

    goto :goto_31

    :cond_2f
    const/16 v2, 0x8

    .line 531
    :goto_31
    aget-byte p0, p0, v2

    shr-int/2addr p0, v0

    and-int/2addr p0, v1

    shl-int p0, v3, p0

    return p0

    :cond_38
    :goto_38
    return v2
.end method
