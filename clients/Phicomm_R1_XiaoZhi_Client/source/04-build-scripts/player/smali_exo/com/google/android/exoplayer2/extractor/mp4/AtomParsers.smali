.class final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    }
.end annotation


# static fields
.field private static final MAX_GAPLESS_TRIM_SIZE_SAMPLES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AtomParsers"

.field private static final TYPE_clcp:I = 0x636c6370

.field private static final TYPE_mdta:I = 0x6d647461

.field private static final TYPE_meta:I = 0x6d657461

.field private static final TYPE_nclc:I = 0x6e636c63

.field private static final TYPE_nclx:I = 0x6e636c78

.field private static final TYPE_sbtl:I = 0x7362746c

.field private static final TYPE_soun:I = 0x736f756e

.field private static final TYPE_subt:I = 0x73756274

.field private static final TYPE_text:I = 0x74657874

.field private static final TYPE_vide:I = 0x76696465

.field private static final opusMagic:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "OpusHead"

    .line 98
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->opusMagic:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static allocateHdrStaticInfo()Ljava/nio/ByteBuffer;
    .registers 2

    const/16 v0, 0x19

    .line 1316
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static canApplyEditWithGaplessInfo([JJJJ)Z
    .registers 14

    .line 1848
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 1849
    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v4

    .line 1850
    array-length v5, p0

    sub-int/2addr v5, v2

    .line 1851
    invoke-static {v5, v3, v0}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v0

    .line 1852
    aget-wide v5, p0, v3

    cmp-long v2, v5, p3

    if-gtz v2, :cond_26

    aget-wide v4, p0, v4

    cmp-long v2, p3, v4

    if-gez v2, :cond_26

    aget-wide p3, p0, v0

    cmp-long p0, p3, p5

    if-gez p0, :cond_26

    cmp-long p0, p5, p1

    if-gtz p0, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    return v1
.end method

.method private static findBoxPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;III)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1634
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, p2, :cond_a

    const/4 v3, 0x1

    goto :goto_b

    :cond_a
    const/4 v3, 0x0

    :goto_b
    const/4 v4, 0x0

    .line 1635
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    :goto_f
    sub-int v3, v0, p2

    if-ge v3, p3, :cond_2d

    .line 1637
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1638
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    if-lez v3, :cond_1e

    const/4 v4, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v4, 0x0

    :goto_1f
    const-string v5, "childAtomSize must be positive"

    .line 1639
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1640
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    if-ne v4, p1, :cond_2b

    return v0

    :cond_2b
    add-int/2addr v0, v3

    goto :goto_f

    :cond_2d
    const/4 p0, -0x1

    return p0
.end method

.method private static getTrackTypeForHdlr(I)I
    .registers 2

    const v0, 0x736f756e

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const v0, 0x76696465

    if-ne p0, v0, :cond_e

    const/4 p0, 0x2

    return p0

    :cond_e
    const v0, 0x74657874

    if-eq p0, v0, :cond_2c

    const v0, 0x7362746c

    if-eq p0, v0, :cond_2c

    const v0, 0x73756274

    if-eq p0, v0, :cond_2c

    const v0, 0x636c6370

    if-ne p0, v0, :cond_23

    goto :goto_2c

    :cond_23
    const v0, 0x6d657461

    if-ne p0, v0, :cond_2a

    const/4 p0, 0x5

    return p0

    :cond_2a
    const/4 p0, -0x1

    return p0

    :cond_2c
    :goto_2c
    const/4 p0, 0x3

    return p0
.end method

.method public static maybeSkipRemainingMetaAtomHeaderBytes(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 4

    .line 250
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    const/4 v1, 0x4

    .line 255
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 256
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_13

    add-int/lit8 v0, v0, 0x4

    .line 259
    :cond_13
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method

.method private static parseAudioSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    add-int/lit8 v7, v1, 0x8

    const/16 v8, 0x8

    add-int/2addr v7, v8

    .line 1384
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v7, 0x6

    if-eqz p6, :cond_21

    .line 1388
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 1389
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_25

    .line 1391
    :cond_21
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v8, 0x0

    :goto_25
    const/16 v10, 0x10

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v8, :cond_49

    if-ne v8, v13, :cond_2f

    goto :goto_49

    :cond_2f
    if-ne v8, v12, :cond_48

    .line 1414
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1416
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readDouble()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v8, v7

    .line 1417
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    const/16 v10, 0x14

    .line 1421
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v15, 0x0

    goto :goto_67

    :cond_48
    return-void

    .line 1402
    :cond_49
    :goto_49
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v14

    .line 1403
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1405
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v7

    .line 1407
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v15

    sub-int/2addr v15, v11

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1408
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v15

    if-ne v8, v13, :cond_65

    .line 1411
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_65
    move v8, v7

    move v7, v14

    .line 1427
    :goto_67
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v10

    const v14, 0x656e6361

    move/from16 v12, p1

    if-ne v12, v14, :cond_99

    .line 1431
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v14

    if-eqz v14, :cond_96

    .line 1433
    iget-object v12, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-nez v5, :cond_84

    const/4 v5, 0x0

    goto :goto_8e

    .line 1434
    :cond_84
    iget-object v13, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v13, v13, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    .line 1437
    invoke-virtual {v5, v13}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v5

    .line 1438
    :goto_8e
    iget-object v13, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v14, v13, p9

    .line 1440
    :cond_96
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    :cond_99
    const v13, 0x61632d33

    const v14, 0x616c6163

    const-string v19, "audio/raw"

    if-ne v12, v13, :cond_a8

    const-string v19, "audio/ac3"

    :goto_a5
    const/4 v12, -0x1

    goto/16 :goto_15a

    :cond_a8
    const v13, 0x65632d33

    if-ne v12, v13, :cond_b0

    const-string v19, "audio/eac3"

    goto :goto_a5

    :cond_b0
    const v13, 0x61632d34

    if-ne v12, v13, :cond_b8

    const-string v19, "audio/ac4"

    goto :goto_a5

    :cond_b8
    const v13, 0x64747363

    if-ne v12, v13, :cond_c0

    const-string v19, "audio/vnd.dts"

    goto :goto_a5

    :cond_c0
    const v13, 0x64747368

    if-eq v12, v13, :cond_156

    const v13, 0x6474736c

    if-ne v12, v13, :cond_cc

    goto/16 :goto_156

    :cond_cc
    const v13, 0x64747365

    if-ne v12, v13, :cond_d4

    const-string v19, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_a5

    :cond_d4
    const v13, 0x64747378

    if-ne v12, v13, :cond_dc

    const-string v19, "audio/vnd.dts.uhd;profile=p2"

    goto :goto_a5

    :cond_dc
    const v13, 0x73616d72

    if-ne v12, v13, :cond_e4

    const-string v19, "audio/3gpp"

    goto :goto_a5

    :cond_e4
    const v13, 0x73617762

    if-ne v12, v13, :cond_ec

    const-string v19, "audio/amr-wb"

    goto :goto_a5

    :cond_ec
    const v13, 0x6c70636d

    if-eq v12, v13, :cond_154

    const v13, 0x736f7774

    if-ne v12, v13, :cond_f7

    goto :goto_154

    :cond_f7
    const v13, 0x74776f73

    if-ne v12, v13, :cond_ff

    const/high16 v12, 0x10000000

    goto :goto_15a

    :cond_ff
    const v13, 0x2e6d7032

    if-eq v12, v13, :cond_150

    const v13, 0x2e6d7033

    if-ne v12, v13, :cond_10a

    goto :goto_150

    :cond_10a
    const v13, 0x6d686131

    if-ne v12, v13, :cond_112

    const-string v19, "audio/mha1"

    goto :goto_a5

    :cond_112
    const v13, 0x6d686d31

    if-ne v12, v13, :cond_11a

    const-string v19, "audio/mhm1"

    goto :goto_a5

    :cond_11a
    if-ne v12, v14, :cond_11f

    const-string v19, "audio/alac"

    goto :goto_a5

    :cond_11f
    const v13, 0x616c6177

    if-ne v12, v13, :cond_128

    const-string v19, "audio/g711-alaw"

    goto/16 :goto_a5

    :cond_128
    const v13, 0x756c6177

    if-ne v12, v13, :cond_131

    const-string v19, "audio/g711-mlaw"

    goto/16 :goto_a5

    :cond_131
    const v13, 0x4f707573

    if-ne v12, v13, :cond_13a

    const-string v19, "audio/opus"

    goto/16 :goto_a5

    :cond_13a
    const v13, 0x664c6143

    if-ne v12, v13, :cond_143

    const-string v19, "audio/flac"

    goto/16 :goto_a5

    :cond_143
    const v13, 0x6d6c7061

    if-ne v12, v13, :cond_14c

    const-string v19, "audio/true-hd"

    goto/16 :goto_a5

    :cond_14c
    const/4 v12, -0x1

    const/16 v19, 0x0

    goto :goto_15a

    :cond_150
    :goto_150
    const-string v19, "audio/mpeg"

    goto/16 :goto_a5

    :cond_154
    :goto_154
    const/4 v12, 0x2

    goto :goto_15a

    :cond_156
    :goto_156
    const-string v19, "audio/vnd.dts.hd"

    goto/16 :goto_a5

    :goto_15a
    move-object/from16 v13, v19

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_162
    sub-int v11, v10, v1

    if-ge v11, v2, :cond_307

    .line 1495
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1496
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    if-lez v11, :cond_171

    const/4 v14, 0x1

    goto :goto_172

    :cond_171
    const/4 v14, 0x0

    :goto_172
    const-string v9, "childAtomSize must be positive"

    .line 1497
    invoke-static {v14, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1498
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    const v14, 0x6d686143

    if-ne v9, v14, :cond_19d

    add-int/lit8 v9, v11, -0xd

    .line 1505
    new-array v14, v9, [B

    add-int/lit8 v1, v10, 0xd

    .line 1506
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v1, 0x0

    .line 1507
    invoke-virtual {v0, v14, v1, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1508
    invoke-static {v14}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v21

    :goto_191
    const/4 v14, 0x4

    const v16, 0x616c6163

    const/16 v17, 0x2

    const/16 v18, 0x1

    :goto_199
    const/16 v22, 0x0

    goto/16 :goto_2ff

    :cond_19d
    const v1, 0x65736473

    if-eq v9, v1, :cond_2c3

    if-eqz p6, :cond_1ab

    const v14, 0x77617665

    if-ne v9, v14, :cond_1ab

    goto/16 :goto_2c3

    :cond_1ab
    const v1, 0x64616333

    if-ne v9, v1, :cond_1c7

    add-int/lit8 v1, v10, 0x8

    .line 1532
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1534
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    :goto_1bf
    const/4 v9, 0x0

    const/4 v14, 0x4

    const/16 v17, 0x2

    const/16 v18, 0x1

    goto/16 :goto_2be

    :cond_1c7
    const v1, 0x64656333

    if-ne v9, v1, :cond_1dc

    add-int/lit8 v1, v10, 0x8

    .line 1536
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1538
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseEAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto :goto_1bf

    :cond_1dc
    const v1, 0x64616334

    if-ne v9, v1, :cond_1f1

    add-int/lit8 v1, v10, 0x8

    .line 1540
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1542
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/audio/Ac4Util;->parseAc4AnnexEFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto :goto_1bf

    :cond_1f1
    const v1, 0x646d6c70

    if-ne v9, v1, :cond_212

    if-lez v15, :cond_1fb

    move v8, v15

    const/4 v7, 0x2

    goto :goto_191

    .line 1545
    :cond_1fb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    invoke-static {v0, v14}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_212
    const/4 v14, 0x0

    const v1, 0x64647473

    if-ne v9, v1, :cond_23c

    .line 1555
    new-instance v1, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 1557
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1558
    invoke-virtual {v1, v13}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1559
    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1560
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1561
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1562
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1563
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto :goto_1bf

    :cond_23c
    const v1, 0x644f7073

    if-ne v9, v1, :cond_25c

    add-int/lit8 v1, v11, -0x8

    .line 1568
    sget-object v9, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->opusMagic:[B

    array-length v14, v9

    add-int/2addr v14, v1

    invoke-static {v9, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    add-int/lit8 v14, v10, 0x8

    .line 1569
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1570
    sget-object v14, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->opusMagic:[B

    array-length v14, v14

    invoke-virtual {v0, v9, v14, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1571
    invoke-static {v9}, Lcom/google/android/exoplayer2/audio/OpusUtil;->buildInitializationData([B)Ljava/util/List;

    move-result-object v21

    goto/16 :goto_191

    :cond_25c
    const v1, 0x64664c61

    if-ne v9, v1, :cond_28c

    add-int/lit8 v1, v11, -0xc

    add-int/lit8 v9, v1, 0x4

    .line 1574
    new-array v9, v9, [B

    const/16 v14, 0x66

    const/16 v21, 0x0

    .line 1575
    aput-byte v14, v9, v21

    const/16 v14, 0x4c

    const/16 v18, 0x1

    .line 1576
    aput-byte v14, v9, v18

    const/16 v14, 0x61

    const/16 v17, 0x2

    .line 1577
    aput-byte v14, v9, v17

    const/4 v14, 0x3

    const/16 v21, 0x43

    .line 1578
    aput-byte v21, v9, v14

    add-int/lit8 v14, v10, 0xc

    .line 1579
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v14, 0x4

    .line 1580
    invoke-virtual {v0, v9, v14, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1581
    invoke-static {v9}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v21

    goto :goto_2be

    :cond_28c
    const v1, 0x616c6163

    const/4 v14, 0x4

    const/16 v17, 0x2

    const/16 v18, 0x1

    if-ne v9, v1, :cond_2bd

    add-int/lit8 v7, v11, -0xc

    .line 1584
    new-array v8, v7, [B

    add-int/lit8 v9, v10, 0xc

    .line 1585
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v9, 0x0

    .line 1586
    invoke-virtual {v0, v8, v9, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1590
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->parseAlacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v7

    .line 1591
    iget-object v1, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1592
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1593
    invoke-static {v8}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v21

    move v8, v1

    goto :goto_2be

    :cond_2bd
    const/4 v9, 0x0

    :goto_2be
    const v16, 0x616c6163

    goto/16 :goto_199

    :cond_2c3
    :goto_2c3
    const/4 v14, 0x4

    const v16, 0x616c6163

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v22, 0x0

    if-ne v9, v1, :cond_2d1

    move v1, v10

    goto :goto_2d5

    .line 1514
    :cond_2d1
    invoke-static {v0, v1, v10, v11}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->findBoxPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;III)I

    move-result v1

    :goto_2d5
    const/4 v9, -0x1

    if-eq v1, v9, :cond_2ff

    .line 1516
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;

    move-result-object v19

    .line 1517
    # getter for: Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$300(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)Ljava/lang/String;

    move-result-object v13

    .line 1518
    # getter for: Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->initializationData:[B
    invoke-static/range {v19 .. v19}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$400(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)[B

    move-result-object v1

    if-eqz v1, :cond_2ff

    const-string v9, "audio/mp4a-latm"

    .line 1520
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2fb

    .line 1523
    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/AacUtil;->parseAudioSpecificConfig([B)Lcom/google/android/exoplayer2/audio/AacUtil$Config;

    move-result-object v7

    .line 1524
    iget v8, v7, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->sampleRateHz:I

    .line 1525
    iget v9, v7, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->channelCount:I

    .line 1526
    iget-object v7, v7, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->codecs:Ljava/lang/String;

    move-object/from16 v20, v7

    move v7, v9

    .line 1528
    :cond_2fb
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v21

    :cond_2ff
    :goto_2ff
    add-int/2addr v10, v11

    move/from16 v1, p2

    const v14, 0x616c6163

    goto/16 :goto_162

    .line 1598
    :cond_307
    iget-object v0, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_351

    if-eqz v13, :cond_351

    .line 1599
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 1601
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1602
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    move-object/from16 v1, v20

    .line 1603
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1604
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1605
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1606
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    move-object/from16 v1, v21

    .line 1607
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1608
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1609
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    if-eqz v19, :cond_34b

    .line 1612
    # getter for: Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->bitrate:I
    invoke-static/range {v19 .. v19}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$600(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    # getter for: Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->peakBitrate:I
    invoke-static/range {v19 .. v19}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$500(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 1615
    :cond_34b
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    :cond_351
    return-void
.end method

.method static parseCommonEncryptionSinfFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x8

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move-object v6, v4

    const/4 v5, -0x1

    const/4 v7, 0x0

    :goto_9
    sub-int v8, v0, p1

    if-ge v8, p2, :cond_3d

    .line 1739
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1740
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 1741
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    const v10, 0x66726d61

    if-ne v9, v10, :cond_26

    .line 1743
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3b

    :cond_26
    const v10, 0x7363686d

    if-ne v9, v10, :cond_34

    const/4 v4, 0x4

    .line 1745
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1747
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3b

    :cond_34
    const v10, 0x73636869

    if-ne v9, v10, :cond_3b

    move v5, v0

    move v7, v8

    :cond_3b
    :goto_3b
    add-int/2addr v0, v8

    goto :goto_9

    :cond_3d
    const-string p1, "cenc"

    .line 1755
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    const-string p1, "cbc1"

    .line 1756
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    const-string p1, "cens"

    .line 1757
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    const-string p1, "cbcs"

    .line 1758
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    goto :goto_5f

    :cond_5e
    return-object v2

    :cond_5f
    :goto_5f
    const/4 p1, 0x1

    if-eqz v6, :cond_64

    const/4 p2, 0x1

    goto :goto_65

    :cond_64
    const/4 p2, 0x0

    :goto_65
    const-string v0, "frma atom is mandatory"

    .line 1759
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    if-eq v5, v1, :cond_6e

    const/4 p2, 0x1

    goto :goto_6f

    :cond_6e
    const/4 p2, 0x0

    :goto_6f
    const-string v0, "schi atom is mandatory"

    .line 1760
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1764
    invoke-static {p0, v5, v7, v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSchiFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object p0

    if-eqz p0, :cond_7b

    const/4 v3, 0x1

    :cond_7b
    const-string p1, "tenc atom is mandatory"

    .line 1766
    invoke-static {v3, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1767
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseEdts(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    const v0, 0x656c7374

    .line 1340
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object p0

    if-nez p0, :cond_b

    const/4 p0, 0x0

    return-object p0

    .line 1344
    :cond_b
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x8

    .line 1345
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1346
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1347
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    .line 1348
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 1349
    new-array v2, v1, [J

    .line 1350
    new-array v3, v1, [J

    const/4 v4, 0x0

    :goto_23
    if-ge v4, v1, :cond_56

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2d

    .line 1353
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    goto :goto_31

    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    :goto_31
    aput-wide v6, v2, v4

    if-ne v0, v5, :cond_3a

    .line 1354
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v6

    goto :goto_3f

    :cond_3a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    int-to-long v6, v6

    :goto_3f
    aput-wide v6, v3, v4

    .line 1355
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v6

    if-ne v6, v5, :cond_4e

    const/4 v5, 0x2

    .line 1360
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 1358
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported media rate."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1362
    :cond_56
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    .registers 8

    add-int/lit8 p1, p1, 0x8

    const/4 v0, 0x4

    add-int/2addr p1, v0

    .line 1651
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 p1, 0x1

    .line 1653
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1654
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    const/4 v1, 0x2

    .line 1655
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1657
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1d

    .line 1659
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_1d
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_28

    .line 1662
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_28
    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2f

    .line 1665
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1669
    :cond_2f
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1670
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    .line 1673
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 1674
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio/mpeg"

    .line 1675
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_7c

    const-string v2, "audio/vnd.dts"

    .line 1676
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7c

    const-string v2, "audio/vnd.dts.hd"

    .line 1677
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    goto :goto_7c

    .line 1685
    :cond_57
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1686
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 1687
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 1690
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1691
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result p1

    .line 1692
    new-array v4, p1, [B

    const/4 v5, 0x0

    .line 1693
    invoke-virtual {p0, v4, v5, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1696
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;

    if-lez v2, :cond_74

    goto :goto_75

    :cond_74
    const/4 v2, -0x1

    :goto_75
    if-lez v0, :cond_78

    move v3, v0

    :cond_78
    invoke-direct {p0, v1, v4, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;-><init>(Ljava/lang/String;[BII)V

    return-object p0

    .line 1678
    :cond_7c
    :goto_7c
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;

    const/4 p1, 0x0

    invoke-direct {p0, v1, p1, v3, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;-><init>(Ljava/lang/String;[BII)V

    return-object p0
.end method

.method private static parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .registers 4

    .line 1836
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_6
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_15

    .line 1839
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_6

    :cond_15
    return v1
.end method

.method private static parseHdlr(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .registers 2

    const/16 v0, 0x10

    .line 867
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 868
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p0

    return p0
.end method

.method private static parseIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 4

    const/16 v0, 0x8

    .line 745
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 747
    :cond_a
    :goto_a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    if-ge v1, p1, :cond_1a

    .line 748
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseIlstElement(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 750
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 753
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x0

    goto :goto_27

    :cond_22
    new-instance p0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_27
    return-object p0
.end method

.method private static parseMdhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 894
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 895
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 896
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    if-nez v1, :cond_12

    const/16 v2, 0x8

    goto :goto_14

    :cond_12
    const/16 v2, 0x10

    .line 897
    :goto_14
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 898
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    if-nez v1, :cond_1e

    const/4 v0, 0x4

    .line 899
    :cond_1e
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 900
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0xa

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, 0x60

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 906
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static parseMdtaFromMeta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 11

    const v0, 0x68646c72    # 4.3148E24f

    .line 191
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    const v1, 0x6b657973

    .line 192
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    const v2, 0x696c7374

    .line 193
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_a4

    if-eqz v1, :cond_a4

    if-eqz p0, :cond_a4

    .line 194
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 197
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseHdlr(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_29

    goto/16 :goto_a4

    .line 203
    :cond_29
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xc

    .line 204
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 205
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 206
    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_37
    const/16 v5, 0x8

    if-ge v4, v1, :cond_4d

    .line 208
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    const/4 v7, 0x4

    .line 209
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    sub-int/2addr v6, v5

    .line 211
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 215
    :cond_4d
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 216
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    :goto_57
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-le v4, v5, :cond_98

    .line 219
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    .line 220
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 221
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_7d

    if-ge v7, v1, :cond_7d

    .line 223
    aget-object v7, v3, v7

    add-int v8, v4, v6

    .line 226
    invoke-static {p0, v8, v7}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseMdtaMetadataEntryFromIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;

    move-result-object v7

    if-eqz v7, :cond_93

    .line 228
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_93

    .line 231
    :cond_7d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipped metadata with unknown key index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AtomParsers"

    invoke-static {v8, v7}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_93
    :goto_93
    add-int/2addr v4, v6

    .line 233
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_57

    .line 235
    :cond_98
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9f

    goto :goto_a4

    :cond_9f
    new-instance v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :cond_a4
    :goto_a4
    return-object v2
.end method

.method private static parseMetaDataSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIILcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V
    .registers 5

    add-int/lit8 p2, p2, 0x8

    add-int/lit8 p2, p2, 0x8

    .line 1321
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const p2, 0x6d657474

    if-ne p1, p2, :cond_28

    .line 1323
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 1324
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 1326
    new-instance p1, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    iput-object p0, p4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    :cond_28
    return-void
.end method

.method private static parseMvhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .registers 3

    const/16 v0, 0x8

    .line 794
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 795
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 796
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_12

    :cond_10
    const/16 v0, 0x10

    .line 797
    :goto_12
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 798
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0
.end method

.method private static parsePaspFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)F
    .registers 2

    add-int/lit8 p1, p1, 0x8

    .line 1366
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1367
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p1

    .line 1368
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private static parseProjFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)[B
    .registers 7

    add-int/lit8 v0, p1, 0x8

    :goto_2
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_22

    .line 1823
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1824
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1825
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x70726f6a

    if-ne v2, v3, :cond_20

    .line 1827
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p0

    add-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_20
    add-int/2addr v0, v1

    goto :goto_2

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1711
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    :goto_4
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2b

    .line 1713
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1714
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    if-lez v1, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    const-string v3, "childAtomSize must be positive"

    .line 1715
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1716
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x73696e66

    if-ne v2, v3, :cond_29

    .line 1720
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseCommonEncryptionSinfFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_29

    return-object v2

    :cond_29
    add-int/2addr v0, v1

    goto :goto_4

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseSchiFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .registers 15

    add-int/lit8 v0, p1, 0x8

    :goto_2
    sub-int v1, v0, p1

    const/4 v2, 0x0

    if-ge v1, p2, :cond_64

    .line 1778
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1779
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1780
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    const v4, 0x74656e63

    if-ne v3, v4, :cond_62

    .line 1782
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p1

    .line 1783
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result p1

    const/4 p2, 0x1

    .line 1784
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_2c

    .line 1788
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_38

    .line 1790
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    and-int/lit16 v1, p1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 p1, p1, 0xf

    move v9, p1

    move v8, v1

    .line 1794
    :goto_38
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    if-ne p1, p2, :cond_40

    const/4 v4, 0x1

    goto :goto_41

    :cond_40
    const/4 v4, 0x0

    .line 1795
    :goto_41
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    const/16 p1, 0x10

    new-array v7, p1, [B

    .line 1797
    invoke-virtual {p0, v7, v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    if-eqz v4, :cond_59

    if-nez v6, :cond_59

    .line 1800
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    .line 1801
    new-array v2, p1, [B

    .line 1802
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    :cond_59
    move-object v10, v2

    .line 1804
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object p0

    :cond_62
    add-int/2addr v0, v1

    goto :goto_2

    :cond_64
    return-object v2
.end method

.method private static parseSmta(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 8

    const/16 v0, 0xc

    .line 763
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 764
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    const/4 v2, 0x0

    if-ge v1, p1, :cond_55

    .line 765
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 766
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 767
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    const v5, 0x73617574

    if-ne v4, v5, :cond_50

    const/16 p1, 0xe

    if-ge v3, p1, :cond_22

    return-object v2

    :cond_22
    const/4 p1, 0x5

    .line 772
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 773
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    if-eq p1, v0, :cond_31

    const/16 v1, 0xd

    if-eq p1, v1, :cond_31

    return-object v2

    :cond_31
    if-ne p1, v0, :cond_36

    const/high16 p1, 0x43700000    # 240.0f

    goto :goto_38

    :cond_36
    const/high16 p1, 0x42f00000    # 120.0f

    :goto_38
    const/4 v0, 0x1

    .line 778
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 779
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    .line 780
    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;

    invoke-direct {v3, p1, p0}, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;-><init>(FI)V

    aput-object v3, v0, v2

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object v1

    :cond_50
    add-int/2addr v1, v3

    .line 782
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_5

    :cond_55
    return-object v2
.end method

.method private static parseStbl(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;)Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    .registers 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const v3, 0x7374737a

    .line 359
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 361
    new-instance v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;

    iget-object v6, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    invoke-direct {v5, v3, v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;Lcom/google/android/exoplayer2/Format;)V

    goto :goto_25

    :cond_17
    const v3, 0x73747a32

    .line 363
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_52e

    .line 368
    new-instance v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    invoke-direct {v5, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    .line 371
    :goto_25
    invoke-interface {v5}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_40

    .line 373
    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    new-array v2, v6, [J

    new-array v3, v6, [I

    const/4 v4, 0x0

    new-array v5, v6, [J

    new-array v6, v6, [I

    const-wide/16 v7, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    :cond_40
    const v7, 0x7374636f

    .line 385
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_59

    const v7, 0x636f3634

    .line 388
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    const/4 v9, 0x1

    goto :goto_5a

    :cond_59
    const/4 v9, 0x0

    .line 390
    :goto_5a
    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const v10, 0x73747363

    .line 392
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget-object v10, v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const v11, 0x73747473

    .line 394
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const v12, 0x73747373

    .line 396
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v12

    if-eqz v12, :cond_86

    .line 397
    iget-object v12, v12, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto :goto_87

    :cond_86
    const/4 v12, 0x0

    :goto_87
    const v13, 0x63747473

    .line 399
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    if-eqz v0, :cond_93

    .line 400
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto :goto_94

    :cond_93
    const/4 v0, 0x0

    .line 403
    :goto_94
    new-instance v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;

    invoke-direct {v13, v10, v7, v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)V

    const/16 v7, 0xc

    .line 406
    invoke-virtual {v11, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 407
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    sub-int/2addr v9, v8

    .line 408
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v10

    .line 409
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v14

    if-eqz v0, :cond_b5

    .line 416
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 417
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v15

    goto :goto_b6

    :cond_b5
    const/4 v15, 0x0

    :goto_b6
    const/4 v4, -0x1

    if-eqz v12, :cond_cb

    .line 423
    invoke-virtual {v12, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 424
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    if-lez v7, :cond_c9

    .line 426
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    goto :goto_ce

    :cond_c9
    const/4 v12, 0x0

    goto :goto_cc

    :cond_cb
    const/4 v7, 0x0

    :goto_cc
    const/16 v16, -0x1

    .line 434
    :goto_ce
    invoke-interface {v5}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->getFixedSampleSize()I

    move-result v6

    .line 435
    iget-object v8, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v8, v8, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-eq v6, v4, :cond_fa

    const-string v4, "audio/raw"

    .line 438
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f0

    const-string v4, "audio/g711-mlaw"

    .line 439
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f0

    const-string v4, "audio/g711-alaw"

    .line 440
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fa

    :cond_f0
    if-nez v9, :cond_fa

    if-nez v15, :cond_fa

    if-nez v7, :cond_fa

    move/from16 p1, v7

    const/4 v4, 0x1

    goto :goto_fd

    :cond_fa
    move/from16 p1, v7

    const/4 v4, 0x0

    :goto_fd
    if-eqz v4, :cond_135

    .line 454
    iget v0, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v0, v0, [J

    .line 455
    iget v4, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v4, v4, [I

    .line 456
    :goto_107
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v5

    if-eqz v5, :cond_11a

    .line 457
    iget v5, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget-wide v9, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    aput-wide v9, v0, v5

    .line 458
    iget v5, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget v9, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    aput v9, v4, v5

    goto :goto_107

    :cond_11a
    int-to-long v9, v14

    .line 461
    invoke-static {v6, v0, v4, v9, v10}, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v0

    .line 463
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 464
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 465
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 466
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 467
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    .line 468
    iget-wide v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->duration:J

    move-object v14, v1

    move v0, v3

    move-object v2, v4

    move-object v3, v5

    move v4, v6

    move-object v13, v10

    move-wide v15, v11

    move-object v12, v9

    goto/16 :goto_2a4

    .line 470
    :cond_135
    new-array v4, v3, [J

    .line 471
    new-array v6, v3, [I

    .line 472
    new-array v7, v3, [J

    .line 473
    new-array v8, v3, [I

    move-object/from16 v24, v11

    move/from16 v2, v16

    const/4 v1, 0x0

    const/4 v11, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    move/from16 v16, v15

    move v15, v14

    move v14, v10

    move/from16 v37, v9

    move/from16 v9, p1

    :goto_155
    move/from16 p1, v37

    const-string v10, "AtomParsers"

    if-ge v1, v3, :cond_21d

    move-wide/from16 v28, v27

    move/from16 v27, v22

    const/16 v22, 0x1

    :goto_161
    if-nez v27, :cond_17e

    .line 480
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v22

    if-eqz v22, :cond_17e

    move/from16 v30, v14

    move/from16 v31, v15

    .line 481
    iget-wide v14, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    move/from16 v32, v3

    .line 482
    iget v3, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    move/from16 v27, v3

    move-wide/from16 v28, v14

    move/from16 v14, v30

    move/from16 v15, v31

    move/from16 v3, v32

    goto :goto_161

    :cond_17e
    move/from16 v32, v3

    move/from16 v30, v14

    move/from16 v31, v15

    if-nez v22, :cond_1a2

    const-string v2, "Unexpected end of chunk data"

    .line 485
    invoke-static {v10, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 488
    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    .line 489
    invoke-static {v7, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    .line 490
    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    move v3, v1

    move/from16 v2, v21

    move/from16 v1, v27

    goto/16 :goto_225

    :cond_1a2
    if-eqz v0, :cond_1b5

    :goto_1a4
    if-nez v23, :cond_1b3

    if-lez v16, :cond_1b3

    .line 497
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v23

    .line 503
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v21

    add-int/lit8 v16, v16, -0x1

    goto :goto_1a4

    :cond_1b3
    add-int/lit8 v23, v23, -0x1

    :cond_1b5
    move/from16 v3, v21

    .line 509
    aput-wide v28, v4, v1

    .line 510
    invoke-interface {v5}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v10

    aput v10, v6, v1

    .line 511
    aget v10, v6, v1

    if-le v10, v11, :cond_1c6

    .line 512
    aget v10, v6, v1

    move v11, v10

    :cond_1c6
    int-to-long v14, v3

    add-long v14, v25, v14

    .line 514
    aput-wide v14, v7, v1

    if-nez v12, :cond_1cf

    const/4 v10, 0x1

    goto :goto_1d0

    :cond_1cf
    const/4 v10, 0x0

    .line 517
    :goto_1d0
    aput v10, v8, v1

    if-ne v1, v2, :cond_1e6

    const/4 v10, 0x1

    .line 519
    aput v10, v8, v1

    add-int/lit8 v9, v9, -0x1

    if-lez v9, :cond_1e6

    .line 522
    invoke-static {v12}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    sub-int/2addr v2, v10

    :cond_1e6
    move v15, v2

    move v10, v3

    move/from16 v14, v31

    int-to-long v2, v14

    add-long v25, v25, v2

    add-int/lit8 v2, v30, -0x1

    if-nez v2, :cond_1fe

    if-lez p1, :cond_1fe

    .line 530
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 537
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    add-int/lit8 v14, p1, -0x1

    goto :goto_201

    :cond_1fe
    move v3, v14

    move/from16 v14, p1

    :goto_201
    move/from16 p1, v2

    .line 541
    aget v2, v6, v1

    move/from16 v21, v3

    int-to-long v2, v2

    add-long v2, v28, v2

    add-int/lit8 v22, v27, -0x1

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v27, v2

    move v2, v15

    move/from16 v15, v21

    move/from16 v3, v32

    move/from16 v21, v10

    move/from16 v37, v14

    move/from16 v14, p1

    goto/16 :goto_155

    :cond_21d
    move/from16 v32, v3

    move/from16 v30, v14

    move/from16 v2, v21

    move/from16 v1, v22

    :goto_225
    int-to-long v12, v2

    add-long v12, v25, v12

    if-eqz v0, :cond_23a

    :goto_22a
    if-lez v16, :cond_23a

    .line 551
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    if-eqz v2, :cond_234

    const/4 v0, 0x0

    goto :goto_23b

    .line 555
    :cond_234
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    add-int/lit8 v16, v16, -0x1

    goto :goto_22a

    :cond_23a
    const/4 v0, 0x1

    :goto_23b
    if-nez v9, :cond_24d

    if-nez v30, :cond_24d

    if-nez v1, :cond_24d

    if-nez p1, :cond_24d

    move/from16 v2, v23

    if-nez v2, :cond_24f

    if-nez v0, :cond_24a

    goto :goto_24f

    :cond_24a
    move-object/from16 v14, p0

    goto :goto_29d

    :cond_24d
    move/from16 v2, v23

    .line 565
    :cond_24f
    :goto_24f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Inconsistent stbl box for track "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p0

    iget v15, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": remainingSynchronizationSamples "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v30

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", remainingSamplesInChunk "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingTimestampDeltaChanges "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p1

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v0, :cond_291

    const-string v0, ", ctts invalid"

    goto :goto_293

    :cond_291
    const-string v0, ""

    :goto_293
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_29d
    move v0, v3

    move-object v2, v4

    move-object v3, v6

    move v4, v11

    move-wide v15, v12

    move-object v12, v7

    move-object v13, v8

    :goto_2a4
    const-wide/32 v7, 0xf4240

    .line 582
    iget-wide v9, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide v5, v15

    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 584
    iget-object v1, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const-wide/32 v10, 0xf4240

    if-nez v1, :cond_2c5

    .line 585
    iget-wide v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static {v12, v10, v11, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 586
    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    .line 597
    :cond_2c5
    iget-object v1, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v1, v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_364

    iget v1, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    if-ne v1, v5, :cond_364

    array-length v1, v12

    const/4 v5, 0x2

    if-lt v1, v5, :cond_364

    .line 600
    iget-object v1, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    const/4 v5, 0x0

    aget-wide v21, v1, v5

    .line 601
    iget-object v1, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v23, v1, v5

    iget-wide v5, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    iget-wide v7, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v25, v5

    move-wide/from16 v27, v7

    .line 603
    invoke-static/range {v23 .. v28}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v5

    add-long v23, v21, v5

    move-object v5, v12

    move-wide v6, v15

    move-wide/from16 v8, v21

    move/from16 v25, v0

    move-wide v0, v10

    move-wide/from16 v10, v23

    .line 605
    invoke-static/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->canApplyEditWithGaplessInfo([JJJJ)Z

    move-result v5

    if-eqz v5, :cond_366

    sub-long v6, v15, v23

    const/4 v5, 0x0

    .line 607
    aget-wide v8, v12, v5

    sub-long v26, v21, v8

    iget-object v5, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v5, v5, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v8, v5

    iget-wide v10, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v28, v8

    move-wide/from16 v30, v10

    .line 608
    invoke-static/range {v26 .. v31}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 610
    iget-object v5, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v5, v5, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v8, v5

    iget-wide v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move/from16 p1, v4

    move-wide v4, v10

    move-wide v10, v0

    .line 611
    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_32e

    cmp-long v8, v0, v6

    if-eqz v8, :cond_368

    :cond_32e
    const-wide/32 v6, 0x7fffffff

    cmp-long v8, v4, v6

    if-gtz v8, :cond_368

    cmp-long v8, v0, v6

    if-gtz v8, :cond_368

    long-to-int v5, v4

    move-object/from16 v4, p2

    .line 615
    iput v5, v4, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    long-to-int v1, v0

    .line 616
    iput v1, v4, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 617
    iget-wide v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v4, 0xf4240

    invoke-static {v12, v4, v5, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 618
    iget-object v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v1, 0x0

    aget-wide v4, v0, v1

    const-wide/32 v6, 0xf4240

    iget-wide v8, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 619
    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 621
    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    :cond_364
    move/from16 v25, v0

    :cond_366
    move/from16 p1, v4

    .line 627
    :cond_368
    iget-object v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3b5

    iget-object v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v1, 0x0

    aget-wide v4, v0, v1

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_3b5

    .line 631
    iget-object v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v4, v0, v1

    const/4 v6, 0x0

    .line 632
    :goto_384
    array-length v0, v12

    if-ge v6, v0, :cond_39b

    .line 633
    aget-wide v0, v12, v6

    sub-long v17, v0, v4

    const-wide/32 v19, 0xf4240

    iget-wide v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v21, v0

    .line 634
    invoke-static/range {v17 .. v22}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    aput-wide v0, v12, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_384

    :cond_39b
    sub-long v17, v15, v4

    const-wide/32 v19, 0xf4240

    .line 637
    iget-wide v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v21, v0

    .line 638
    invoke-static/range {v17 .. v22}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 639
    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    .line 644
    :cond_3b5
    iget v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3bc

    const/4 v10, 0x1

    goto :goto_3bd

    :cond_3bc
    const/4 v10, 0x0

    .line 650
    :goto_3bd
    iget-object v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v0, v0

    new-array v0, v0, [I

    .line 651
    iget-object v1, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v1, v1

    new-array v1, v1, [I

    .line 652
    iget-object v4, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 653
    :goto_3d3
    iget-object v9, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v9, v9

    if-ge v5, v9, :cond_442

    move-object v9, v2

    move-object v11, v3

    .line 654
    aget-wide v2, v4, v5

    const-wide/16 v15, -0x1

    cmp-long v21, v2, v15

    if-eqz v21, :cond_42f

    .line 656
    iget-object v15, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v26, v15, v5

    move v15, v8

    move-object/from16 v16, v9

    iget-wide v8, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move/from16 p2, v6

    move/from16 v21, v7

    iget-wide v6, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v28, v8

    move-wide/from16 v30, v6

    .line 657
    invoke-static/range {v26 .. v31}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    const/4 v8, 0x1

    .line 660
    invoke-static {v12, v2, v3, v8, v8}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v9

    aput v9, v0, v5

    add-long/2addr v2, v6

    const/4 v6, 0x0

    .line 663
    invoke-static {v12, v2, v3, v10, v6}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v2

    aput v2, v1, v5

    .line 668
    :goto_408
    aget v2, v0, v5

    aget v3, v1, v5

    if-ge v2, v3, :cond_41b

    aget v2, v0, v5

    aget v2, v13, v2

    and-int/2addr v2, v8

    if-nez v2, :cond_41b

    .line 674
    aget v2, v0, v5

    add-int/2addr v2, v8

    aput v2, v0, v5

    goto :goto_408

    .line 676
    :cond_41b
    aget v2, v1, v5

    aget v3, v0, v5

    sub-int/2addr v2, v3

    add-int v7, v21, v2

    .line 677
    aget v2, v0, v5

    move v3, v15

    if-eq v3, v2, :cond_429

    const/4 v2, 0x1

    goto :goto_42a

    :cond_429
    const/4 v2, 0x0

    :goto_42a
    or-int v2, p2, v2

    .line 678
    aget v3, v1, v5

    goto :goto_43a

    :cond_42f
    move/from16 p2, v6

    move/from16 v21, v7

    move v3, v8

    move-object/from16 v16, v9

    const/4 v6, 0x0

    const/4 v8, 0x1

    move/from16 v2, p2

    :goto_43a
    add-int/lit8 v5, v5, 0x1

    move v6, v2

    move v8, v3

    move-object v3, v11

    move-object/from16 v2, v16

    goto :goto_3d3

    :cond_442
    move-object/from16 v16, v2

    move-object v11, v3

    move/from16 p2, v6

    move/from16 v3, v25

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-eq v7, v3, :cond_44e

    goto :goto_44f

    :cond_44e
    const/4 v8, 0x0

    :goto_44f
    or-int v2, p2, v8

    if-eqz v2, :cond_456

    .line 684
    new-array v3, v7, [J

    goto :goto_458

    :cond_456
    move-object/from16 v3, v16

    :goto_458
    if-eqz v2, :cond_45d

    .line 685
    new-array v4, v7, [I

    goto :goto_45e

    :cond_45d
    move-object v4, v11

    :goto_45e
    if-eqz v2, :cond_462

    const/4 v5, 0x0

    goto :goto_464

    :cond_462
    move/from16 v5, p1

    :goto_464
    if-eqz v2, :cond_469

    .line 687
    new-array v8, v7, [I

    goto :goto_46a

    :cond_469
    move-object v8, v13

    .line 688
    :goto_46a
    new-array v7, v7, [J

    move/from16 p1, v5

    const-wide/16 v9, 0x0

    const/4 v15, 0x0

    .line 691
    :goto_471
    iget-object v5, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v5, v5

    if-ge v6, v5, :cond_50e

    .line 692
    iget-object v5, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v17, v5, v6

    .line 693
    aget v5, v0, v6

    move-object/from16 v27, v0

    .line 694
    aget v0, v1, v6

    move-object/from16 v28, v1

    if-eqz v2, :cond_494

    sub-int v1, v0, v5

    move/from16 v29, v6

    move-object/from16 v6, v16

    .line 697
    invoke-static {v6, v5, v3, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 698
    invoke-static {v11, v5, v4, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 699
    invoke-static {v13, v5, v8, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_498

    :cond_494
    move/from16 v29, v6

    move-object/from16 v6, v16

    :goto_498
    move/from16 v1, p1

    :goto_49a
    if-ge v5, v0, :cond_4ea

    const-wide/32 v23, 0xf4240

    move/from16 p2, v0

    move/from16 v16, v1

    .line 702
    iget-wide v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v21, v9

    move-wide/from16 v25, v0

    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    .line 703
    aget-wide v21, v12, v5

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    sub-long v12, v21, v17

    move-object/from16 v30, v8

    move-wide/from16 v21, v9

    const-wide/16 v8, 0x0

    .line 705
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v31

    const-wide/32 v33, 0xf4240

    iget-wide v12, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v35, v12

    .line 704
    invoke-static/range {v31 .. v36}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    add-long/2addr v0, v12

    .line 706
    aput-wide v0, v7, v15

    if-eqz v2, :cond_4d9

    .line 707
    aget v0, v4, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_4db

    .line 708
    aget v0, v11, v5

    move v1, v0

    goto :goto_4db

    :cond_4d9
    move/from16 v1, v16

    :cond_4db
    :goto_4db
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, p2

    move-wide/from16 v9, v21

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v8, v30

    goto :goto_49a

    :cond_4ea
    move-object/from16 v30, v8

    move-wide/from16 v21, v9

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    const-wide/16 v8, 0x0

    .line 712
    iget-object v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v12, v0, v29

    add-long v12, v21, v12

    add-int/lit8 v0, v29, 0x1

    move/from16 p1, v1

    move-object/from16 v16, v6

    move-wide v9, v12

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v1, v28

    move-object/from16 v8, v30

    move v6, v0

    move-object/from16 v0, v27

    goto/16 :goto_471

    :cond_50e
    move-object/from16 v30, v8

    move-wide/from16 v21, v9

    const-wide/32 v23, 0xf4240

    .line 714
    iget-wide v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v25, v0

    .line 715
    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    .line 716
    new-instance v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v4

    move/from16 v4, p1

    move-object v5, v7

    move-object/from16 v6, v30

    move-wide v7, v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v10

    :cond_52e
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    .line 365
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    goto :goto_537

    :goto_536
    throw v0

    :goto_537
    goto :goto_536
.end method

.method private static parseStsd(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p1

    const/16 v0, 0xc

    .line 928
    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 929
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 930
    new-instance v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    invoke-direct {v13, v12}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_14
    if-ge v15, v12, :cond_17b

    .line 932
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v9

    .line 933
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v16

    if-lez v16, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    const-string v1, "childAtomSize must be positive"

    .line 934
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 935
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    const v0, 0x61766331

    if-eq v1, v0, :cond_15f

    const v0, 0x61766333

    if-eq v1, v0, :cond_15f

    const v0, 0x656e6376

    if-eq v1, v0, :cond_15f

    const v0, 0x6d317620

    if-eq v1, v0, :cond_15f

    const v0, 0x6d703476

    if-eq v1, v0, :cond_15f

    const v0, 0x68766331

    if-eq v1, v0, :cond_15f

    const v0, 0x68657631

    if-eq v1, v0, :cond_15f

    const v0, 0x73323633

    if-eq v1, v0, :cond_15f

    const v0, 0x48323633

    if-eq v1, v0, :cond_15f

    const v0, 0x76703038

    if-eq v1, v0, :cond_15f

    const v0, 0x76703039

    if-eq v1, v0, :cond_15f

    const v0, 0x61763031

    if-eq v1, v0, :cond_15f

    const v0, 0x64766176

    if-eq v1, v0, :cond_15f

    const v0, 0x64766131

    if-eq v1, v0, :cond_15f

    const v0, 0x64766865

    if-eq v1, v0, :cond_15f

    const v0, 0x64766831

    if-ne v1, v0, :cond_7e

    goto/16 :goto_15f

    :cond_7e
    const v0, 0x6d703461

    if-eq v1, v0, :cond_14a

    const v0, 0x656e6361

    if-eq v1, v0, :cond_14a

    const v0, 0x61632d33

    if-eq v1, v0, :cond_14a

    const v0, 0x65632d33

    if-eq v1, v0, :cond_14a

    const v0, 0x61632d34

    if-eq v1, v0, :cond_14a

    const v0, 0x6d6c7061

    if-eq v1, v0, :cond_14a

    const v0, 0x64747363

    if-eq v1, v0, :cond_14a

    const v0, 0x64747365

    if-eq v1, v0, :cond_14a

    const v0, 0x64747368

    if-eq v1, v0, :cond_14a

    const v0, 0x6474736c

    if-eq v1, v0, :cond_14a

    const v0, 0x64747378

    if-eq v1, v0, :cond_14a

    const v0, 0x73616d72

    if-eq v1, v0, :cond_14a

    const v0, 0x73617762

    if-eq v1, v0, :cond_14a

    const v0, 0x6c70636d

    if-eq v1, v0, :cond_14a

    const v0, 0x736f7774

    if-eq v1, v0, :cond_14a

    const v0, 0x74776f73

    if-eq v1, v0, :cond_14a

    const v0, 0x2e6d7032

    if-eq v1, v0, :cond_14a

    const v0, 0x2e6d7033

    if-eq v1, v0, :cond_14a

    const v0, 0x6d686131

    if-eq v1, v0, :cond_14a

    const v0, 0x6d686d31

    if-eq v1, v0, :cond_14a

    const v0, 0x616c6163

    if-eq v1, v0, :cond_14a

    const v0, 0x616c6177

    if-eq v1, v0, :cond_14a

    const v0, 0x756c6177

    if-eq v1, v0, :cond_14a

    const v0, 0x4f707573

    if-eq v1, v0, :cond_14a

    const v0, 0x664c6143

    if-ne v1, v0, :cond_fc

    goto :goto_14a

    :cond_fc
    const v0, 0x54544d4c

    if-eq v1, v0, :cond_13a

    const v0, 0x74783367

    if-eq v1, v0, :cond_13a

    const v0, 0x77767474

    if-eq v1, v0, :cond_13a

    const v0, 0x73747070

    if-eq v1, v0, :cond_13a

    const v0, 0x63363038

    if-ne v1, v0, :cond_116

    goto :goto_13a

    :cond_116
    const v0, 0x6d657474

    if-ne v1, v0, :cond_11f

    .line 1006
    invoke-static {v10, v1, v9, v11, v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMetaDataSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIILcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V

    goto :goto_147

    :cond_11f
    const v0, 0x63616d6d

    if-ne v1, v0, :cond_147

    .line 1008
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 1010
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    const-string v1, "application/x-camera-motion"

    .line 1011
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1012
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto :goto_147

    :cond_13a
    :goto_13a
    move-object/from16 v0, p0

    move v2, v9

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object v6, v13

    .line 1003
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTextSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V

    :cond_147
    :goto_147
    move/from16 v17, v9

    goto :goto_172

    :cond_14a
    :goto_14a
    move-object/from16 v0, p0

    move v2, v9

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move-object v8, v13

    move/from16 v17, v9

    move v9, v15

    .line 987
    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    goto :goto_172

    :cond_15f
    :goto_15f
    move/from16 v17, v9

    move-object/from16 v0, p0

    move/from16 v2, v17

    move/from16 v3, v16

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p4

    move-object v7, v13

    move v8, v15

    .line 952
    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    :goto_172
    add-int v9, v17, v16

    .line 1014
    invoke-virtual {v10, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_14

    :cond_17b
    return-object v13
.end method

.method private static parseTextSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V
    .registers 11

    add-int/lit8 p2, p2, 0x8

    add-int/lit8 p2, p2, 0x8

    .line 1027
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const-string p2, "application/ttml+xml"

    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    const v3, 0x54544d4c

    if-ne p1, v3, :cond_15

    goto :goto_45

    :cond_15
    const v3, 0x74783367

    if-ne p1, v3, :cond_2b

    add-int/lit8 p3, p3, -0x8

    add-int/lit8 p3, p3, -0x8

    .line 1039
    new-array p1, p3, [B

    const/4 p2, 0x0

    .line 1040
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1041
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const-string p2, "application/x-quicktime-tx3g"

    goto :goto_45

    :cond_2b
    const p0, 0x77767474

    if-ne p1, p0, :cond_33

    const-string p2, "application/x-mp4-vtt"

    goto :goto_45

    :cond_33
    const p0, 0x73747070

    if-ne p1, p0, :cond_3b

    const-wide/16 v1, 0x0

    goto :goto_45

    :cond_3b
    const p0, 0x63363038

    if-ne p1, p0, :cond_65

    const/4 p0, 0x1

    .line 1050
    iput p0, p6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    const-string p2, "application/x-mp4-cea-608"

    .line 1056
    :goto_45
    new-instance p0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 1058
    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 1059
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 1060
    invoke-virtual {p0, p5}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 1061
    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 1062
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 1063
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    iput-object p0, p6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    return-void

    .line 1053
    :cond_65
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static parseTkhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;
    .registers 12

    const/16 v0, 0x8

    .line 807
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 808
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 809
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    const/16 v2, 0x10

    if-nez v1, :cond_14

    const/16 v3, 0x8

    goto :goto_16

    :cond_14
    const/16 v3, 0x10

    .line 811
    :goto_16
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 812
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    const/4 v4, 0x4

    .line 814
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 816
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    if-nez v1, :cond_28

    const/4 v0, 0x4

    :cond_28
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2a
    if-ge v7, v0, :cond_3c

    .line 819
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v8

    add-int v9, v5, v7

    aget-byte v8, v8, v9

    const/4 v9, -0x1

    if-eq v8, v9, :cond_39

    const/4 v5, 0x0

    goto :goto_3d

    :cond_39
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    :cond_3c
    const/4 v5, 0x1

    :goto_3d
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v5, :cond_48

    .line 826
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_5b

    :cond_48
    if-nez v1, :cond_4f

    .line 829
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_53

    :cond_4f
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    :goto_53
    const-wide/16 v9, 0x0

    cmp-long v5, v0, v9

    if-nez v5, :cond_5a

    goto :goto_5b

    :cond_5a
    move-wide v7, v0

    .line 837
    :goto_5b
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 838
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 839
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 840
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 841
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 842
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p0

    const/high16 v4, 0x10000

    const/high16 v5, -0x10000

    if-nez v0, :cond_80

    if-ne v1, v4, :cond_80

    if-ne v2, v5, :cond_80

    if-nez p0, :cond_80

    const/16 v6, 0x5a

    goto :goto_95

    :cond_80
    if-nez v0, :cond_8b

    if-ne v1, v5, :cond_8b

    if-ne v2, v4, :cond_8b

    if-nez p0, :cond_8b

    const/16 v6, 0x10e

    goto :goto_95

    :cond_8b
    if-ne v0, v5, :cond_95

    if-nez v1, :cond_95

    if-nez v2, :cond_95

    if-ne p0, v5, :cond_95

    const/16 v6, 0xb4

    .line 857
    :cond_95
    :goto_95
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    invoke-direct {p0, v3, v7, v8, v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    return-object p0
.end method

.method private static parseTrak(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const v1, 0x6d646961

    .line 284
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    const v2, 0x68646c72    # 4.3148E24f

    .line 287
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseHdlr(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->getTrackTypeForHdlr(I)I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v5, v3, :cond_2b

    return-object v2

    :cond_2b
    const v3, 0x746b6864

    .line 292
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTkhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    move-result-object v3

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p2, v6

    if-nez v4, :cond_4f

    .line 294
    # getter for: Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->duration:J
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$000(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)J

    move-result-wide v8

    move-object/from16 v4, p1

    move-wide v10, v8

    goto :goto_53

    :cond_4f
    move-object/from16 v4, p1

    move-wide/from16 v10, p2

    .line 296
    :goto_53
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMvhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v8

    cmp-long v4, v10, v6

    if-nez v4, :cond_5e

    goto :goto_66

    :cond_5e
    const-wide/32 v12, 0xf4240

    move-wide v14, v8

    .line 301
    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    :goto_66
    move-wide v10, v6

    const v4, 0x6d696e66

    .line 305
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    const v6, 0x7374626c

    .line 306
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    .line 304
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    const v6, 0x6d646864

    .line 309
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMdhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v1

    const v6, 0x73747364

    .line 312
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget-object v12, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 313
    # getter for: Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->id:I
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v13

    .line 314
    # getter for: Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->rotationDegrees:I
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$200(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v14

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    move-object/from16 v16, p4

    move/from16 v17, p6

    .line 311
    invoke-static/range {v12 .. v17}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseStsd(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    move-result-object v4

    if-nez p5, :cond_d6

    const v6, 0x65647473

    .line 321
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    if-eqz v0, :cond_d6

    .line 323
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEdts(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_d6

    .line 325
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [J

    .line 326
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v17, v0

    move-object/from16 v16, v6

    goto :goto_da

    :cond_d6
    move-object/from16 v16, v2

    move-object/from16 v17, v16

    .line 330
    :goto_da
    iget-object v0, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_df

    goto :goto_fa

    :cond_df
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 333
    # getter for: Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->id:I
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v0

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 335
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v12, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    iget v13, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    iget-object v14, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget v15, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move-object v3, v2

    move v4, v0

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer2/extractor/mp4/Track;-><init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V

    :goto_fa
    return-object v2
.end method

.method public static parseTraks(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            "Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;",
            "J",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "ZZ",
            "Lcom/google/common/base/Function<",
            "Lcom/google/android/exoplayer2/extractor/mp4/Track;",
            "Lcom/google/android/exoplayer2/extractor/mp4/Track;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object v0, p0

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 124
    :goto_7
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_79

    .line 125
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 126
    iget v4, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    const v5, 0x7472616b

    if-eq v4, v5, :cond_22

    move-object v6, p1

    move-object/from16 v5, p7

    goto :goto_76

    :cond_22
    const v4, 0x6d766864

    .line 134
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-object v4, v3

    move-wide v6, p2

    move-object v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    .line 132
    invoke-static/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTrak(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lcom/google/android/exoplayer2/extractor/mp4/Track;

    move-result-object v4

    move-object/from16 v5, p7

    .line 131
    invoke-interface {v5, v4}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    if-nez v4, :cond_47

    move-object v6, p1

    goto :goto_76

    :cond_47
    const v6, 0x6d646961

    .line 145
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    const v6, 0x6d696e66

    .line 146
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v3

    .line 144
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    const v6, 0x7374626c

    .line 147
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v3

    .line 143
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-object v6, p1

    .line 148
    invoke-static {v4, v3, p1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseStbl(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;)Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-result-object v3

    .line 149
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_79
    return-object v1
.end method

.method public static parseUdta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x8

    .line 164
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 167
    :goto_9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lt v3, v0, :cond_3d

    .line 168
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 169
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 170
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    const v6, 0x6d657461

    if-ne v5, v6, :cond_2a

    .line 172
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int v1, v3, v4

    .line 173
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseUdtaMeta(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    goto :goto_38

    :cond_2a
    const v6, 0x736d7461

    if-ne v5, v6, :cond_38

    .line 175
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int v2, v3, v4

    .line 176
    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSmta(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v2

    :cond_38
    :goto_38
    add-int/2addr v3, v4

    .line 178
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_9

    .line 180
    :cond_3d
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseUdtaMeta(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 6

    const/16 v0, 0x8

    .line 728
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 729
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->maybeSkipRemainingMetaAtomHeaderBytes(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 730
    :goto_8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-ge v0, p1, :cond_2d

    .line 731
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 732
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 733
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x696c7374

    if-ne v2, v3, :cond_28

    .line 735
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/2addr v0, v1

    .line 736
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    return-object p0

    :cond_28
    add-int/2addr v0, v1

    .line 738
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_8

    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseVideoSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .registers 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    add-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x8

    .line 1079
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/16 v5, 0x10

    .line 1081
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1082
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 1083
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    const/16 v7, 0x32

    .line 1086
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1088
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v7

    const v9, 0x656e6376

    move/from16 v10, p1

    if-ne v10, v9, :cond_55

    .line 1092
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v9

    if-eqz v9, :cond_52

    .line 1094
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v3, :cond_40

    const/4 v3, 0x0

    goto :goto_4a

    .line 1095
    :cond_40
    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    .line 1098
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v3

    .line 1099
    :goto_4a
    iget-object v11, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v9, v11, p8

    .line 1101
    :cond_52
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    :cond_55
    const v9, 0x6d317620

    const-string v11, "video/3gpp"

    if-ne v10, v9, :cond_5f

    const-string v9, "video/mpeg"

    goto :goto_67

    :cond_5f
    const v9, 0x48323633

    if-ne v10, v9, :cond_66

    move-object v9, v11

    goto :goto_67

    :cond_66
    const/4 v9, 0x0

    :goto_67
    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_7a
    sub-int v8, v7, v1

    if-ge v8, v2, :cond_2e1

    .line 1129
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1130
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v8

    move-object/from16 p8, v11

    .line 1131
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    if-nez v11, :cond_99

    .line 1132
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v23

    move-object/from16 v24, v3

    sub-int v3, v23, v1

    if-ne v3, v2, :cond_9b

    goto/16 :goto_2e3

    :cond_99
    move-object/from16 v24, v3

    :cond_9b
    if-lez v11, :cond_9f

    const/4 v3, 0x1

    goto :goto_a0

    :cond_9f
    const/4 v3, 0x0

    :goto_a0
    const-string v1, "childAtomSize must be positive"

    .line 1136
    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1137
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    const v3, 0x61766343

    if-ne v1, v3, :cond_d6

    const/4 v1, 0x0

    if-nez v9, :cond_b3

    const/4 v3, 0x1

    goto :goto_b4

    :cond_b3
    const/4 v3, 0x0

    .line 1139
    :goto_b4
    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    add-int/lit8 v8, v8, 0x8

    .line 1141
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1142
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/AvcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;

    move-result-object v1

    .line 1143
    iget-object v15, v1, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 1144
    iget v3, v1, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v3, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    if-nez v22, :cond_ca

    .line 1146
    iget v14, v1, Lcom/google/android/exoplayer2/video/AvcConfig;->pixelWidthHeightRatio:F

    .line 1148
    :cond_ca
    iget-object v13, v1, Lcom/google/android/exoplayer2/video/AvcConfig;->codecs:Ljava/lang/String;

    const-string v1, "video/avc"

    :goto_ce
    move-object v9, v1

    :goto_cf
    move/from16 v33, v6

    move/from16 v25, v10

    :goto_d3
    const/4 v2, 0x0

    goto/16 :goto_2d0

    :cond_d6
    const v3, 0x68766343

    if-ne v1, v3, :cond_fc

    const/4 v1, 0x0

    if-nez v9, :cond_e0

    const/4 v3, 0x1

    goto :goto_e1

    :cond_e0
    const/4 v3, 0x0

    .line 1150
    :goto_e1
    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    add-int/lit8 v8, v8, 0x8

    .line 1152
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1153
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/HevcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/HevcConfig;

    move-result-object v1

    .line 1154
    iget-object v15, v1, Lcom/google/android/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 1155
    iget v3, v1, Lcom/google/android/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    iput v3, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    if-nez v22, :cond_f7

    .line 1157
    iget v14, v1, Lcom/google/android/exoplayer2/video/HevcConfig;->pixelWidthHeightRatio:F

    .line 1159
    :cond_f7
    iget-object v13, v1, Lcom/google/android/exoplayer2/video/HevcConfig;->codecs:Ljava/lang/String;

    const-string v1, "video/hevc"

    goto :goto_ce

    :cond_fc
    const v3, 0x64766343

    if-eq v1, v3, :cond_2b5

    const v3, 0x64767643

    if-ne v1, v3, :cond_108

    goto/16 :goto_2b5

    :cond_108
    const v3, 0x76706343

    if-ne v1, v3, :cond_121

    const/4 v1, 0x0

    if-nez v9, :cond_112

    const/4 v3, 0x1

    goto :goto_113

    :cond_112
    const/4 v3, 0x0

    .line 1167
    :goto_113
    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    const v1, 0x76703038

    if-ne v10, v1, :cond_11e

    const-string v1, "video/x-vnd.on2.vp8"

    goto :goto_ce

    :cond_11e
    const-string v1, "video/x-vnd.on2.vp9"

    goto :goto_ce

    :cond_121
    const v3, 0x61763143

    if-ne v1, v3, :cond_132

    const/4 v1, 0x0

    if-nez v9, :cond_12b

    const/4 v3, 0x1

    goto :goto_12c

    :cond_12b
    const/4 v3, 0x0

    .line 1170
    :goto_12c
    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    const-string v1, "video/av01"

    goto :goto_ce

    :cond_132
    const v3, 0x636c6c69

    if-ne v1, v3, :cond_156

    if-nez v20, :cond_13d

    .line 1174
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->allocateHdrStaticInfo()Ljava/nio/ByteBuffer;

    move-result-object v20

    :cond_13d
    move-object/from16 v1, v20

    const/16 v3, 0x15

    .line 1178
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1179
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1180
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v20, v1

    goto/16 :goto_cf

    :cond_156
    const v3, 0x6d646376

    if-ne v1, v3, :cond_1cb

    if-nez v20, :cond_161

    .line 1183
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->allocateHdrStaticInfo()Ljava/nio/ByteBuffer;

    move-result-object v20

    :cond_161
    move-object/from16 v1, v20

    .line 1187
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v3

    .line 1188
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v8

    .line 1189
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v2

    move/from16 v25, v10

    .line 1190
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v10

    .line 1191
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v4

    move-object/from16 v26, v15

    .line 1192
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v15

    move-object/from16 v27, v12

    .line 1193
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v12

    move/from16 v28, v14

    .line 1194
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v14

    .line 1195
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v29

    .line 1196
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v31

    move/from16 v33, v6

    const/4 v6, 0x1

    .line 1198
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1199
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1200
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1201
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1202
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1203
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1204
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1205
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1206
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x2710

    .line 1207
    div-long v14, v29, v2

    long-to-int v4, v14

    int-to-short v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1208
    div-long v2, v31, v2

    long-to-int v3, v2

    int-to-short v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v20, v1

    move-object/from16 v15, v26

    move-object/from16 v12, v27

    move/from16 v14, v28

    goto/16 :goto_d3

    :cond_1cb
    move/from16 v33, v6

    move/from16 v25, v10

    move-object/from16 v27, v12

    move/from16 v28, v14

    move-object/from16 v26, v15

    const v2, 0x64323633

    if-ne v1, v2, :cond_1e7

    const/4 v2, 0x0

    if-nez v9, :cond_1df

    const/4 v3, 0x1

    goto :goto_1e0

    :cond_1df
    const/4 v3, 0x0

    .line 1210
    :goto_1e0
    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    move-object/from16 v9, p8

    goto/16 :goto_2ca

    :cond_1e7
    const/4 v2, 0x0

    const v3, 0x65736473

    if-ne v1, v3, :cond_20d

    if-nez v9, :cond_1f1

    const/4 v3, 0x1

    goto :goto_1f2

    :cond_1f1
    const/4 v3, 0x0

    .line 1213
    :goto_1f2
    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1214
    invoke-static {v0, v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;

    move-result-object v21

    .line 1215
    # getter for: Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$300(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)Ljava/lang/String;

    move-result-object v1

    .line 1216
    # getter for: Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->initializationData:[B
    invoke-static/range {v21 .. v21}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$400(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)[B

    move-result-object v3

    if-eqz v3, :cond_208

    .line 1218
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    goto :goto_20a

    :cond_208
    move-object/from16 v15, v26

    :goto_20a
    move-object v9, v1

    goto/16 :goto_2cc

    :cond_20d
    const v3, 0x70617370

    if-ne v1, v3, :cond_21f

    .line 1221
    invoke-static {v0, v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parsePaspFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)F

    move-result v1

    move v14, v1

    move-object/from16 v15, v26

    move-object/from16 v12, v27

    const/16 v22, 0x1

    goto/16 :goto_2d0

    :cond_21f
    const v3, 0x73763364

    if-ne v1, v3, :cond_22c

    .line 1224
    invoke-static {v0, v8, v11}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseProjFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)[B

    move-result-object v12

    move-object/from16 v15, v26

    goto/16 :goto_2ce

    :cond_22c
    const v3, 0x73743364

    const/4 v4, 0x2

    if-ne v1, v3, :cond_25b

    .line 1226
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/4 v3, 0x3

    .line 1227
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    if-nez v1, :cond_2ca

    .line 1229
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    if-eqz v1, :cond_257

    const/4 v6, 0x1

    if-eq v1, v6, :cond_253

    if-eq v1, v4, :cond_24f

    if-eq v1, v3, :cond_24b

    goto/16 :goto_2ca

    :cond_24b
    const/16 v16, 0x3

    goto/16 :goto_2ca

    :cond_24f
    const/16 v16, 0x2

    goto/16 :goto_2ca

    :cond_253
    const/16 v16, 0x1

    goto/16 :goto_2ca

    :cond_257
    const/16 v16, 0x0

    goto/16 :goto_2ca

    :cond_25b
    const/4 v6, 0x1

    const v3, 0x636f6c72

    if-ne v1, v3, :cond_2ca

    .line 1248
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    const v3, 0x6e636c78

    if-eq v1, v3, :cond_28b

    const v3, 0x6e636c63

    if-ne v1, v3, :cond_270

    goto :goto_28b

    .line 1267
    :cond_270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported color type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AtomParsers"

    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2ca

    .line 1252
    :cond_28b
    :goto_28b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 1253
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 1254
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/16 v8, 0x13

    if-ne v11, v8, :cond_2a4

    .line 1261
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_2a4

    const/4 v8, 0x1

    goto :goto_2a5

    :cond_2a4
    const/4 v8, 0x0

    .line 1262
    :goto_2a5
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v17

    if-eqz v8, :cond_2ae

    const/16 v18, 0x1

    goto :goto_2b0

    :cond_2ae
    const/16 v18, 0x2

    .line 1265
    :goto_2b0
    invoke-static {v3}, Lcom/google/android/exoplayer2/video/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v19

    goto :goto_2ca

    :cond_2b5
    :goto_2b5
    move/from16 v33, v6

    move/from16 v25, v10

    move-object/from16 v27, v12

    move/from16 v28, v14

    move-object/from16 v26, v15

    const/4 v2, 0x0

    .line 1161
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/DolbyVisionConfig;

    move-result-object v1

    if-eqz v1, :cond_2ca

    .line 1163
    iget-object v13, v1, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->codecs:Ljava/lang/String;

    const-string v9, "video/dolby-vision"

    :cond_2ca
    :goto_2ca
    move-object/from16 v15, v26

    :goto_2cc
    move-object/from16 v12, v27

    :goto_2ce
    move/from16 v14, v28

    :goto_2d0
    add-int/2addr v7, v11

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v4, p7

    move-object/from16 v11, p8

    move-object/from16 v3, v24

    move/from16 v10, v25

    move/from16 v6, v33

    goto/16 :goto_7a

    :cond_2e1
    move-object/from16 v24, v3

    :goto_2e3
    move/from16 v33, v6

    move-object/from16 v27, v12

    move/from16 v28, v14

    move-object/from16 v26, v15

    const/4 v2, 0x0

    if-nez v9, :cond_2ef

    return-void

    .line 1278
    :cond_2ef
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    move/from16 v1, p4

    .line 1280
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1281
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1282
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1283
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    move/from16 v1, v33

    .line 1284
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    move/from16 v14, v28

    .line 1285
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/Format$Builder;->setPixelWidthHeightRatio(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    move/from16 v1, p5

    .line 1286
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setRotationDegrees(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    move-object/from16 v8, v27

    .line 1287
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/Format$Builder;->setProjectionData([B)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    move/from16 v12, v16

    .line 1288
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/Format$Builder;->setStereoMode(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    move-object/from16 v8, v26

    .line 1289
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    move-object/from16 v3, v24

    .line 1290
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    move/from16 v12, v17

    const/4 v1, -0x1

    move/from16 v3, v18

    move/from16 v4, v19

    if-ne v12, v1, :cond_33f

    if-ne v3, v1, :cond_33f

    if-ne v4, v1, :cond_33f

    if-eqz v20, :cond_34f

    .line 1297
    :cond_33f
    new-instance v1, Lcom/google/android/exoplayer2/video/ColorInfo;

    if-eqz v20, :cond_348

    .line 1302
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    goto :goto_349

    :cond_348
    move-object v8, v2

    :goto_349
    invoke-direct {v1, v12, v3, v4, v8}, Lcom/google/android/exoplayer2/video/ColorInfo;-><init>(III[B)V

    .line 1297
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setColorInfo(Lcom/google/android/exoplayer2/video/ColorInfo;)Lcom/google/android/exoplayer2/Format$Builder;

    :cond_34f
    if-eqz v21, :cond_360

    .line 1306
    # getter for: Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->bitrate:I
    invoke-static/range {v21 .. v21}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$600(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    # getter for: Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->peakBitrate:I
    invoke-static/range {v21 .. v21}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$500(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 1309
    :cond_360
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    move-object/from16 v1, p7

    iput-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    return-void
.end method
