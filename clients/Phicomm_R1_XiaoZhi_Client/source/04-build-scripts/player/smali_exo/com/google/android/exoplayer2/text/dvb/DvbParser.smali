.class final Lcom/google/android/exoplayer2/text/dvb/DvbParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;,
        Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;,
        Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;,
        Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;,
        Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;,
        Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;,
        Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;,
        Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;
    }
.end annotation


# static fields
.field private static final DATA_TYPE_24_TABLE_DATA:I = 0x20

.field private static final DATA_TYPE_28_TABLE_DATA:I = 0x21

.field private static final DATA_TYPE_2BP_CODE_STRING:I = 0x10

.field private static final DATA_TYPE_48_TABLE_DATA:I = 0x22

.field private static final DATA_TYPE_4BP_CODE_STRING:I = 0x11

.field private static final DATA_TYPE_8BP_CODE_STRING:I = 0x12

.field private static final DATA_TYPE_END_LINE:I = 0xf0

.field private static final OBJECT_CODING_PIXELS:I = 0x0

.field private static final OBJECT_CODING_STRING:I = 0x1

.field private static final PAGE_STATE_NORMAL:I = 0x0

.field private static final REGION_DEPTH_4_BIT:I = 0x2

.field private static final REGION_DEPTH_8_BIT:I = 0x3

.field private static final SEGMENT_TYPE_CLUT_DEFINITION:I = 0x12

.field private static final SEGMENT_TYPE_DISPLAY_DEFINITION:I = 0x14

.field private static final SEGMENT_TYPE_OBJECT_DATA:I = 0x13

.field private static final SEGMENT_TYPE_PAGE_COMPOSITION:I = 0x10

.field private static final SEGMENT_TYPE_REGION_COMPOSITION:I = 0x11

.field private static final TAG:Ljava/lang/String; = "DvbParser"

.field private static final defaultMap2To4:[B

.field private static final defaultMap2To8:[B

.field private static final defaultMap4To8:[B


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final canvas:Landroid/graphics/Canvas;

.field private final defaultClutDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

.field private final defaultDisplayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

.field private final defaultPaint:Landroid/graphics/Paint;

.field private final fillRegionPaint:Landroid/graphics/Paint;

.field private final subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 73
    fill-array-data v1, :array_1a

    sput-object v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultMap2To4:[B

    new-array v0, v0, [B

    .line 74
    fill-array-data v0, :array_20

    sput-object v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultMap2To8:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 75
    fill-array-data v0, :array_26

    sput-object v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultMap4To8:[B

    return-void

    nop

    :array_1a
    .array-data 1
        0x0t
        0x7t
        0x8t
        0xft
    .end array-data

    :array_20
    .array-data 1
        0x0t
        0x77t
        -0x78t
        -0x1t
    .end array-data

    :array_26
    .array-data 1
        0x0t
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        -0x78t
        -0x67t
        -0x56t
        -0x45t
        -0x34t
        -0x23t
        -0x12t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(II)V
    .registers 11

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    .line 99
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    .line 103
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 106
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    .line 107
    new-instance v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    const/16 v2, 0x2cf

    const/16 v3, 0x23f

    const/4 v4, 0x0

    const/16 v5, 0x2cf

    const/4 v6, 0x0

    const/16 v7, 0x23f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultDisplayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    .line 108
    new-instance v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    .line 111
    invoke-static {}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->generateDefault2BitClutEntries()[I

    move-result-object v1

    .line 112
    invoke-static {}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->generateDefault4BitClutEntries()[I

    move-result-object v2

    .line 113
    invoke-static {}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->generateDefault8BitClutEntries()[I

    move-result-object v3

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;-><init>(I[I[I[I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultClutDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    .line 114
    new-instance v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    return-void
.end method

.method private static buildClutMapTable(IILcom/google/android/exoplayer2/util/ParsableBitArray;)[B
    .registers 6

    .line 896
    new-array v0, p0, [B

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p0, :cond_f

    .line 898
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_f
    return-object v0
.end method

.method private static generateDefault2BitClutEntries()[I
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 550
    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 4
        0x0
        -0x1
        -0x1000000
        -0x808081
    .end array-data
.end method

.method private static generateDefault4BitClutEntries()[I
    .registers 9

    const/16 v0, 0x10

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    :goto_8
    if-ge v3, v0, :cond_50

    const/16 v4, 0x8

    const/16 v5, 0xff

    if-ge v3, v4, :cond_2f

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_17

    const/16 v4, 0xff

    goto :goto_18

    :cond_17
    const/4 v4, 0x0

    :goto_18
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1f

    const/16 v6, 0xff

    goto :goto_20

    :cond_1f
    const/4 v6, 0x0

    :goto_20
    and-int/lit8 v7, v3, 0x4

    if-eqz v7, :cond_27

    const/16 v7, 0xff

    goto :goto_28

    :cond_27
    const/4 v7, 0x0

    .line 564
    :goto_28
    invoke-static {v5, v4, v6, v7}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto :goto_4d

    :cond_2f
    and-int/lit8 v4, v3, 0x1

    const/16 v6, 0x7f

    if-eqz v4, :cond_38

    const/16 v4, 0x7f

    goto :goto_39

    :cond_38
    const/4 v4, 0x0

    :goto_39
    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_40

    const/16 v7, 0x7f

    goto :goto_41

    :cond_40
    const/4 v7, 0x0

    :goto_41
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_46

    goto :goto_47

    :cond_46
    const/4 v6, 0x0

    .line 571
    :goto_47
    invoke-static {v5, v4, v7, v6}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    :goto_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_50
    return-object v1
.end method

.method private static generateDefault8BitClutEntries()[I
    .registers 11

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_128

    const/16 v4, 0x8

    const/16 v5, 0xff

    if-ge v3, v4, :cond_30

    const/16 v4, 0x3f

    and-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_19

    const/16 v6, 0xff

    goto :goto_1a

    :cond_19
    const/4 v6, 0x0

    :goto_1a
    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_21

    const/16 v7, 0xff

    goto :goto_22

    :cond_21
    const/4 v7, 0x0

    :goto_22
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_27

    goto :goto_28

    :cond_27
    const/4 v5, 0x0

    .line 587
    :goto_28
    invoke-static {v4, v6, v7, v5}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_124

    :cond_30
    and-int/lit16 v6, v3, 0x88

    const/16 v7, 0xaa

    const/16 v8, 0x55

    if-eqz v6, :cond_ef

    const/16 v9, 0x7f

    if-eq v6, v4, :cond_b9

    const/16 v4, 0x80

    const/16 v7, 0x2b

    if-eq v6, v4, :cond_7f

    const/16 v4, 0x88

    if-eq v6, v4, :cond_48

    goto/16 :goto_124

    :cond_48
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_4f

    const/16 v4, 0x2b

    goto :goto_50

    :cond_4f
    const/4 v4, 0x0

    :goto_50
    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_57

    const/16 v6, 0x55

    goto :goto_58

    :cond_57
    const/4 v6, 0x0

    :goto_58
    add-int/2addr v4, v6

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_60

    const/16 v6, 0x2b

    goto :goto_61

    :cond_60
    const/4 v6, 0x0

    :goto_61
    and-int/lit8 v9, v3, 0x20

    if-eqz v9, :cond_68

    const/16 v9, 0x55

    goto :goto_69

    :cond_68
    const/4 v9, 0x0

    :goto_69
    add-int/2addr v6, v9

    and-int/lit8 v9, v3, 0x4

    if-eqz v9, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v7, 0x0

    :goto_70
    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_75

    goto :goto_76

    :cond_75
    const/4 v8, 0x0

    :goto_76
    add-int/2addr v7, v8

    .line 620
    invoke-static {v5, v4, v6, v7}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_124

    :cond_7f
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_86

    const/16 v4, 0x2b

    goto :goto_87

    :cond_86
    const/4 v4, 0x0

    :goto_87
    add-int/2addr v4, v9

    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_8f

    const/16 v6, 0x55

    goto :goto_90

    :cond_8f
    const/4 v6, 0x0

    :goto_90
    add-int/2addr v4, v6

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_98

    const/16 v6, 0x2b

    goto :goto_99

    :cond_98
    const/4 v6, 0x0

    :goto_99
    add-int/2addr v6, v9

    and-int/lit8 v10, v3, 0x20

    if-eqz v10, :cond_a1

    const/16 v10, 0x55

    goto :goto_a2

    :cond_a1
    const/4 v10, 0x0

    :goto_a2
    add-int/2addr v6, v10

    and-int/lit8 v10, v3, 0x4

    if-eqz v10, :cond_a8

    goto :goto_a9

    :cond_a8
    const/4 v7, 0x0

    :goto_a9
    add-int/2addr v7, v9

    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_af

    goto :goto_b0

    :cond_af
    const/4 v8, 0x0

    :goto_b0
    add-int/2addr v7, v8

    .line 612
    invoke-static {v5, v4, v6, v7}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_124

    :cond_b9
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_c0

    const/16 v4, 0x55

    goto :goto_c1

    :cond_c0
    const/4 v4, 0x0

    :goto_c1
    and-int/lit8 v5, v3, 0x10

    if-eqz v5, :cond_c8

    const/16 v5, 0xaa

    goto :goto_c9

    :cond_c8
    const/4 v5, 0x0

    :goto_c9
    add-int/2addr v4, v5

    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_d1

    const/16 v5, 0x55

    goto :goto_d2

    :cond_d1
    const/4 v5, 0x0

    :goto_d2
    and-int/lit8 v6, v3, 0x20

    if-eqz v6, :cond_d9

    const/16 v6, 0xaa

    goto :goto_da

    :cond_d9
    const/4 v6, 0x0

    :goto_da
    add-int/2addr v5, v6

    and-int/lit8 v6, v3, 0x4

    if-eqz v6, :cond_e0

    goto :goto_e1

    :cond_e0
    const/4 v8, 0x0

    :goto_e1
    and-int/lit8 v6, v3, 0x40

    if-eqz v6, :cond_e6

    goto :goto_e7

    :cond_e6
    const/4 v7, 0x0

    :goto_e7
    add-int/2addr v8, v7

    .line 604
    invoke-static {v9, v4, v5, v8}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto :goto_124

    :cond_ef
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_f6

    const/16 v4, 0x55

    goto :goto_f7

    :cond_f6
    const/4 v4, 0x0

    :goto_f7
    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_fe

    const/16 v6, 0xaa

    goto :goto_ff

    :cond_fe
    const/4 v6, 0x0

    :goto_ff
    add-int/2addr v4, v6

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_107

    const/16 v6, 0x55

    goto :goto_108

    :cond_107
    const/4 v6, 0x0

    :goto_108
    and-int/lit8 v9, v3, 0x20

    if-eqz v9, :cond_10f

    const/16 v9, 0xaa

    goto :goto_110

    :cond_10f
    const/4 v9, 0x0

    :goto_110
    add-int/2addr v6, v9

    and-int/lit8 v9, v3, 0x4

    if-eqz v9, :cond_116

    goto :goto_117

    :cond_116
    const/4 v8, 0x0

    :goto_117
    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_11c

    goto :goto_11d

    :cond_11c
    const/4 v7, 0x0

    :goto_11d
    add-int/2addr v8, v7

    .line 596
    invoke-static {v5, v4, v6, v8}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    :goto_124
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    :cond_128
    return-object v1
.end method

.method private static getColor(IIII)I
    .registers 4

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p3

    return p0
.end method

.method private static paint2BitPixelCodeString(Lcom/google/android/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .registers 20

    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v8, p5

    const/4 v9, 0x0

    move/from16 v10, p3

    const/4 v2, 0x0

    :goto_9
    const/4 v3, 0x2

    .line 756
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_14

    move v11, v2

    :goto_12
    const/4 v12, 0x1

    goto :goto_61

    .line 760
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    const/4 v6, 0x3

    if-eqz v4, :cond_28

    .line 761
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    add-int/2addr v4, v6

    .line 762
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    :goto_24
    move v11, v2

    move v12, v4

    move v4, v3

    goto :goto_61

    .line 763
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_31

    move v11, v2

    const/4 v4, 0x0

    goto :goto_12

    .line 766
    :cond_31
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    if-eqz v4, :cond_5e

    if-eq v4, v5, :cond_5a

    if-eq v4, v3, :cond_4e

    if-eq v4, v6, :cond_41

    move v11, v2

    const/4 v4, 0x0

    :goto_3f
    const/4 v12, 0x0

    goto :goto_61

    :cond_41
    const/16 v4, 0x8

    .line 778
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1d

    .line 779
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    goto :goto_24

    :cond_4e
    const/4 v4, 0x4

    .line 774
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    add-int/lit8 v4, v4, 0xc

    .line 775
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    goto :goto_24

    :cond_5a
    move v11, v2

    const/4 v4, 0x0

    const/4 v12, 0x2

    goto :goto_61

    :cond_5e
    const/4 v4, 0x0

    const/4 v11, 0x1

    goto :goto_3f

    :goto_61
    if-eqz v12, :cond_7f

    if-eqz v8, :cond_7f

    if-eqz p2, :cond_69

    .line 785
    aget-byte v4, p2, v4

    :cond_69
    aget v2, p1, v4

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v10

    int-to-float v4, v1

    add-int v2, v10, v12

    int-to-float v6, v2

    add-int/lit8 v2, v1, 0x1

    int-to-float v7, v2

    move-object/from16 v2, p6

    move v5, v6

    move v6, v7

    move-object/from16 v7, p5

    .line 786
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_7f
    add-int/2addr v10, v12

    if-eqz v11, :cond_83

    return v10

    :cond_83
    move v2, v11

    goto :goto_9
.end method

.method private static paint4BitPixelCodeString(Lcom/google/android/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .registers 20

    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v8, p5

    const/4 v9, 0x0

    move/from16 v10, p3

    const/4 v2, 0x0

    :goto_9
    const/4 v3, 0x4

    .line 808
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_16

    move v11, v2

    :goto_13
    const/4 v12, 0x1

    goto/16 :goto_6e

    .line 812
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    const/4 v7, 0x3

    if-nez v4, :cond_2c

    .line 813
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    if-eqz v3, :cond_29

    add-int/lit8 v5, v3, 0x2

    move v11, v2

    move v12, v5

    const/4 v4, 0x0

    goto :goto_6e

    :cond_29
    const/4 v4, 0x0

    const/4 v11, 0x1

    goto :goto_4d

    .line 820
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-nez v4, :cond_3f

    .line 821
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    add-int/lit8 v5, v4, 0x4

    .line 822
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    :goto_3c
    move v11, v2

    move v12, v5

    goto :goto_6e

    .line 824
    :cond_3f
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    if-eqz v4, :cond_6b

    if-eq v4, v6, :cond_67

    if-eq v4, v5, :cond_5c

    if-eq v4, v7, :cond_4f

    move v11, v2

    const/4 v4, 0x0

    :goto_4d
    const/4 v12, 0x0

    goto :goto_6e

    :cond_4f
    const/16 v4, 0x8

    .line 836
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    add-int/lit8 v5, v4, 0x19

    .line 837
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    goto :goto_3c

    .line 832
    :cond_5c
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    add-int/lit8 v5, v4, 0x9

    .line 833
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    goto :goto_3c

    :cond_67
    move v11, v2

    const/4 v4, 0x0

    const/4 v12, 0x2

    goto :goto_6e

    :cond_6b
    move v11, v2

    const/4 v4, 0x0

    goto :goto_13

    :goto_6e
    if-eqz v12, :cond_8a

    if-eqz v8, :cond_8a

    if-eqz p2, :cond_76

    .line 843
    aget-byte v4, p2, v4

    :cond_76
    aget v2, p1, v4

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v10

    int-to-float v4, v1

    add-int v2, v10, v12

    int-to-float v5, v2

    add-int/lit8 v2, v1, 0x1

    int-to-float v6, v2

    move-object/from16 v2, p6

    move-object/from16 v7, p5

    .line 844
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_8a
    add-int/2addr v10, v12

    if-eqz v11, :cond_8e

    return v10

    :cond_8e
    move v2, v11

    goto/16 :goto_9
.end method

.method private static paint8BitPixelCodeString(Lcom/google/android/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .registers 20

    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v8, p5

    const/4 v9, 0x0

    move/from16 v10, p3

    const/4 v2, 0x0

    :goto_9
    const/16 v3, 0x8

    .line 866
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_15

    move v11, v2

    const/4 v12, 0x1

    goto :goto_35

    .line 871
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    const/4 v6, 0x7

    if-nez v4, :cond_2a

    .line 872
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    if-eqz v3, :cond_26

    move v11, v2

    move v12, v3

    const/4 v4, 0x0

    goto :goto_35

    :cond_26
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_35

    .line 880
    :cond_2a
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 881
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    move v11, v2

    move v12, v4

    move v4, v3

    :goto_35
    if-eqz v12, :cond_53

    if-eqz v8, :cond_53

    if-eqz p2, :cond_3d

    .line 886
    aget-byte v4, p2, v4

    :cond_3d
    aget v2, p1, v4

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v10

    int-to-float v4, v1

    add-int v2, v10, v12

    int-to-float v6, v2

    add-int/lit8 v2, v1, 0x1

    int-to-float v7, v2

    move-object/from16 v2, p6

    move v5, v6

    move v6, v7

    move-object/from16 v7, p5

    .line 887
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_53
    add-int/2addr v10, v12

    if-eqz v11, :cond_57

    return v10

    :cond_57
    move v2, v11

    goto :goto_9
.end method

.method private static paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .registers 21

    move/from16 v0, p2

    .line 682
    new-instance v8, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    move-object v1, p0

    invoke-direct {v8, p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    const/4 v9, 0x0

    move/from16 v4, p3

    move/from16 v10, p4

    move-object v11, v9

    move-object v12, v11

    move-object v13, v12

    .line 689
    :goto_10
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v1

    if-eqz v1, :cond_8a

    const/16 v1, 0x8

    .line 690
    invoke-virtual {v8, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/16 v3, 0xf0

    if-eq v2, v3, :cond_85

    const/4 v3, 0x3

    packed-switch v2, :pswitch_data_8c

    const/4 v3, 0x4

    packed-switch v2, :pswitch_data_96

    goto :goto_10

    :pswitch_29
    const/16 v2, 0x10

    .line 730
    invoke-static {v2, v1, v8}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->buildClutMapTable(IILcom/google/android/exoplayer2/util/ParsableBitArray;)[B

    move-result-object v12

    goto :goto_10

    .line 727
    :pswitch_30
    invoke-static {v3, v1, v8}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->buildClutMapTable(IILcom/google/android/exoplayer2/util/ParsableBitArray;)[B

    move-result-object v11

    goto :goto_10

    .line 724
    :pswitch_35
    invoke-static {v3, v3, v8}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->buildClutMapTable(IILcom/google/android/exoplayer2/util/ParsableBitArray;)[B

    move-result-object v13

    goto :goto_10

    :pswitch_3a
    const/4 v3, 0x0

    move-object v1, v8

    move-object v2, p1

    move v5, v10

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 720
    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->paint8BitPixelCodeString(Lcom/google/android/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v4

    goto :goto_10

    :pswitch_47
    if-ne v0, v3, :cond_51

    if-nez v12, :cond_4e

    .line 709
    sget-object v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultMap4To8:[B

    goto :goto_4f

    :cond_4e
    move-object v1, v12

    :goto_4f
    move-object v3, v1

    goto :goto_52

    :cond_51
    move-object v3, v9

    :goto_52
    move-object v1, v8

    move-object v2, p1

    move v5, v10

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 714
    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->paint4BitPixelCodeString(Lcom/google/android/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v4

    .line 716
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteAlign()V

    goto :goto_10

    :pswitch_61
    if-ne v0, v3, :cond_6b

    if-nez v11, :cond_68

    .line 695
    sget-object v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultMap2To8:[B

    goto :goto_69

    :cond_68
    move-object v1, v11

    :goto_69
    move-object v3, v1

    goto :goto_76

    :cond_6b
    const/4 v1, 0x2

    if-ne v0, v1, :cond_75

    if-nez v13, :cond_73

    .line 697
    sget-object v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultMap2To4:[B

    goto :goto_69

    :cond_73
    move-object v1, v13

    goto :goto_69

    :cond_75
    move-object v3, v9

    :goto_76
    move-object v1, v8

    move-object v2, p1

    move v5, v10

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 702
    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->paint2BitPixelCodeString(Lcom/google/android/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v4

    .line 704
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteAlign()V

    goto :goto_10

    :cond_85
    add-int/lit8 v10, v10, 0x2

    move/from16 v4, p3

    goto :goto_10

    :cond_8a
    return-void

    nop

    :pswitch_data_8c
    .packed-switch 0x10
        :pswitch_61
        :pswitch_47
        :pswitch_3a
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0x20
        :pswitch_35
        :pswitch_30
        :pswitch_29
    .end packed-switch
.end method

.method private static paintPixelDataSubBlocks(Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .registers 14

    const/4 v0, 0x3

    if-ne p2, v0, :cond_6

    .line 649
    iget-object p1, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    goto :goto_e

    :cond_6
    const/4 v0, 0x2

    if-ne p2, v0, :cond_c

    .line 651
    iget-object p1, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    goto :goto_e

    .line 653
    :cond_c
    iget-object p1, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    .line 655
    :goto_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->topFieldData:[B

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 663
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->bottomFieldData:[B

    add-int/lit8 v4, p4, 0x1

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    return-void
.end method

.method private static parseClutDefinition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    .registers 24

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 451
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 452
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v3, 0x2

    add-int/lit8 v4, p1, -0x2

    .line 455
    invoke-static {}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->generateDefault2BitClutEntries()[I

    move-result-object v5

    .line 456
    invoke-static {}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->generateDefault4BitClutEntries()[I

    move-result-object v6

    .line 457
    invoke-static {}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->generateDefault8BitClutEntries()[I

    move-result-object v7

    :goto_1a
    if-lez v4, :cond_db

    .line 460
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 461
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    add-int/lit8 v4, v4, -0x2

    and-int/lit16 v10, v9, 0x80

    if-eqz v10, :cond_2c

    move-object v10, v5

    goto :goto_33

    :cond_2c
    and-int/lit8 v10, v9, 0x40

    if-eqz v10, :cond_32

    move-object v10, v6

    goto :goto_33

    :cond_32
    move-object v10, v7

    :goto_33
    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_4a

    .line 478
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 479
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 480
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 481
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    add-int/lit8 v4, v4, -0x4

    goto :goto_6a

    :cond_4a
    const/4 v9, 0x6

    .line 484
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    shl-int/2addr v11, v3

    const/4 v12, 0x4

    .line 485
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    shl-int/2addr v13, v12

    .line 486
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    shl-int/lit8 v12, v14, 0x4

    .line 487
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    shl-int/lit8 v9, v14, 0x6

    add-int/lit8 v4, v4, -0x2

    move/from16 v21, v13

    move v13, v9

    move v9, v11

    move/from16 v11, v21

    :goto_6a
    const/16 v15, 0xff

    if-nez v9, :cond_72

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xff

    :cond_72
    and-int/2addr v13, v15

    rsub-int v13, v13, 0xff

    int-to-byte v13, v13

    move/from16 p1, v4

    int-to-double v3, v9

    const-wide v16, 0x3ff66e978d4fdf3bL    # 1.402

    add-int/lit8 v11, v11, -0x80

    move/from16 v18, v2

    int-to-double v1, v11

    .line 498
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v16, v16, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-object v11, v10

    add-double v9, v3, v16

    double-to-int v9, v9

    const-wide v16, 0x3fd60663c74fb54aL    # 0.34414

    add-int/lit8 v12, v12, -0x80

    int-to-double v14, v12

    .line 499
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v16, v16, v14

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v16, v3, v16

    const-wide v19, 0x3fe6da3c21187e7cL    # 0.71414

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v19

    sub-double v1, v16, v1

    double-to-int v1, v1

    const-wide v16, 0x3ffc5a1cac083127L    # 1.772

    .line 500
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v16

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v14

    double-to-int v2, v3

    const/4 v3, 0x0

    const/16 v4, 0xff

    .line 504
    invoke-static {v9, v3, v4}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v9

    .line 505
    invoke-static {v1, v3, v4}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v1

    .line 506
    invoke-static {v2, v3, v4}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v2

    .line 502
    invoke-static {v13, v9, v1, v2}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v1

    aput v1, v11, v8

    move/from16 v4, p1

    move/from16 v2, v18

    const/16 v1, 0x8

    const/4 v3, 0x2

    goto/16 :goto_1a

    :cond_db
    move/from16 v18, v2

    .line 509
    new-instance v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    move/from16 v1, v18

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;-><init>(I[I[I[I)V

    return-object v0
.end method

.method private static parseDisplayDefinition(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;
    .registers 10

    const/4 v0, 0x4

    .line 336
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 337
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    const/4 v1, 0x3

    .line 338
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/16 v1, 0x10

    .line 339
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 340
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/4 v2, 0x0

    if-eqz v0, :cond_2e

    .line 347
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 348
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 349
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 350
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p0

    move v8, p0

    move v6, v2

    move v7, v5

    move v5, v0

    goto :goto_32

    :cond_2e
    move v6, v3

    move v8, v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 358
    :goto_32
    new-instance p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;-><init>(IIIIII)V

    return-object p0
.end method

.method private static parseObjectData(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    .registers 8

    const/16 v0, 0x10

    .line 518
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x4

    .line 519
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v2, 0x2

    .line 520
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 521
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    const/4 v4, 0x1

    .line 522
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 524
    sget-object v5, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    .line 525
    sget-object v6, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    if-ne v2, v4, :cond_29

    const/16 v2, 0x8

    .line 528
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    .line 530
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_44

    :cond_29
    if-nez v2, :cond_44

    .line 532
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 533
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/4 v4, 0x0

    if-lez v2, :cond_3b

    .line 535
    new-array v5, v2, [B

    .line 536
    invoke-virtual {p0, v5, v4, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBytes([BII)V

    :cond_3b
    if-lez v0, :cond_43

    .line 539
    new-array v6, v0, [B

    .line 540
    invoke-virtual {p0, v6, v4, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBytes([BII)V

    goto :goto_44

    :cond_43
    move-object v6, v5

    .line 546
    :cond_44
    :goto_44
    new-instance p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;

    invoke-direct {p0, v1, v3, v5, v6}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;-><init>(IZ[B[B)V

    return-object p0
.end method

.method private static parsePageComposition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
    .registers 11

    const/16 v0, 0x8

    .line 369
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x4

    .line 370
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v3, 0x2

    .line 371
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 372
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    sub-int/2addr p1, v3

    .line 375
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    :goto_19
    if-lez p1, :cond_37

    .line 377
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 378
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/16 v6, 0x10

    .line 379
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 380
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    add-int/lit8 p1, p1, -0x6

    .line 382
    new-instance v8, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;

    invoke-direct {v8, v7, v6}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;-><init>(II)V

    invoke-virtual {v3, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_19

    .line 385
    :cond_37
    new-instance p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;-><init>(IIILandroid/util/SparseArray;)V

    return-object p0
.end method

.method private static parseRegionComposition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;
    .registers 28

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 390
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/4 v2, 0x4

    .line 391
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x3

    .line 393
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/16 v6, 0x10

    .line 394
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 395
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 396
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 397
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    const/4 v5, 0x2

    .line 398
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 399
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 400
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 401
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 402
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 403
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v15, p1, -0xa

    .line 406
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    :goto_44
    if-lez v15, :cond_95

    .line 408
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 409
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 410
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v20

    const/16 v5, 0xc

    .line 411
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v21

    move/from16 v25, v14

    const/4 v14, 0x4

    .line 412
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 413
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v22

    add-int/lit8 v15, v15, -0x6

    const/4 v5, 0x1

    const/16 v17, 0x0

    if-eq v6, v5, :cond_72

    const/4 v5, 0x2

    if-ne v6, v5, :cond_6d

    goto :goto_72

    :cond_6d
    const/16 v23, 0x0

    const/16 v24, 0x0

    goto :goto_82

    :cond_72
    :goto_72
    const/16 v5, 0x8

    .line 419
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v16

    .line 420
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v17

    add-int/lit8 v15, v15, -0x2

    move/from16 v23, v16

    move/from16 v24, v17

    .line 424
    :goto_82
    new-instance v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;

    move-object/from16 v18, v5

    move/from16 v19, v6

    invoke-direct/range {v18 .. v24}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;-><init>(IIIIII)V

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move/from16 v14, v25

    const/4 v2, 0x4

    const/4 v5, 0x2

    const/16 v6, 0x10

    goto :goto_44

    :cond_95
    move/from16 v25, v14

    .line 435
    new-instance v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;

    move-object v2, v0

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    move v11, v13

    move/from16 v12, v25

    move-object v13, v1

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;-><init>(IZIIIIIIIILandroid/util/SparseArray;)V

    return-object v0
.end method

.method private static parseSubtitlingSegment(Lcom/google/android/exoplayer2/util/ParsableBitArray;Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;)V
    .registers 8

    const/16 v0, 0x8

    .line 261
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/16 v1, 0x10

    .line 262
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 263
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 264
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/lit8 v4, v1, 0x8

    .line 266
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v5

    if-le v4, v5, :cond_2c

    const-string p1, "DvbParser"

    const-string v0, "Data field length exceeds limit"

    .line 267
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    return-void

    :cond_2c
    packed-switch v0, :pswitch_data_da

    goto/16 :goto_d0

    .line 275
    :pswitch_31
    iget v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v0, :cond_d0

    .line 276
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseDisplayDefinition(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    goto/16 :goto_d0

    .line 317
    :pswitch_3d
    iget v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v0, :cond_4e

    .line 318
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseObjectData(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;

    move-result-object v0

    .line 319
    iget-object p1, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    iget v1, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->id:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_d0

    .line 320
    :cond_4e
    iget v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    if-ne v2, v0, :cond_d0

    .line 321
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseObjectData(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;

    move-result-object v0

    .line 322
    iget-object p1, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    iget v1, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->id:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_d0

    .line 308
    :pswitch_5f
    iget v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v0, :cond_6f

    .line 309
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseClutDefinition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    move-result-object v0

    .line 310
    iget-object p1, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    iget v1, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->id:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d0

    .line 311
    :cond_6f
    iget v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    if-ne v2, v0, :cond_d0

    .line 312
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseClutDefinition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    move-result-object v0

    .line 313
    iget-object p1, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    iget v1, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->id:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d0

    .line 294
    :pswitch_7f
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    .line 295
    iget v4, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v4, :cond_d0

    if-eqz v0, :cond_d0

    .line 296
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseRegionComposition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;

    move-result-object v1

    .line 297
    iget v0, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->state:I

    if-nez v0, :cond_9e

    .line 299
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    iget v2, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->id:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;

    if-eqz v0, :cond_9e

    .line 301
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->mergeFrom(Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;)V

    .line 304
    :cond_9e
    iget-object p1, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    iget v0, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->id:I

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d0

    .line 280
    :pswitch_a6
    iget v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v0, :cond_d0

    .line 281
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    .line 282
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parsePageComposition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    move-result-object v1

    .line 283
    iget v2, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->state:I

    if-eqz v2, :cond_c6

    .line 284
    iput-object v1, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    .line 285
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 286
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 287
    iget-object p1, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    goto :goto_d0

    :cond_c6
    if-eqz v0, :cond_d0

    .line 288
    iget v0, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->version:I

    iget v2, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->version:I

    if-eq v0, v2, :cond_d0

    .line 289
    iput-object v1, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    .line 331
    :cond_d0
    :goto_d0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result p1

    sub-int/2addr v3, p1

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBytes(I)V

    return-void

    nop

    :pswitch_data_da
    .packed-switch 0x10
        :pswitch_a6
        :pswitch_7f
        :pswitch_5f
        :pswitch_3d
        :pswitch_31
    .end packed-switch
.end method


# virtual methods
.method public decode([BI)Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 131
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([BI)V

    .line 132
    :goto_b
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_23

    const/16 v2, 0x8

    .line 133
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_23

    .line 134
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseSubtitlingSegment(Lcom/google/android/exoplayer2/util/ParsableBitArray;Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;)V

    goto :goto_b

    .line 137
    :cond_23
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v1, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    if-nez v1, :cond_2e

    .line 139
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 143
    :cond_2e
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v2, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    if-eqz v2, :cond_39

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v2, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    goto :goto_3b

    :cond_39
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultDisplayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    .line 147
    :goto_3b
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_57

    iget v3, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    .line 148
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_57

    iget v3, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    .line 149
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_6c

    .line 150
    :cond_57
    iget v3, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    add-int/lit8 v3, v3, 0x1

    iget v4, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 151
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    .line 153
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    :cond_6c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 158
    iget-object v1, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->regions:Landroid/util/SparseArray;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 159
    :goto_75
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1c3

    .line 161
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 162
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;

    .line 163
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 164
    iget-object v8, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v8, v8, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;

    .line 167
    iget v8, v6, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;->horizontalAddress:I

    iget v9, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMinimum:I

    add-int/2addr v8, v9

    .line 169
    iget v6, v6, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;->verticalAddress:I

    iget v9, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMinimum:I

    add-int/2addr v6, v9

    .line 171
    iget v9, v7, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    add-int/2addr v9, v8

    iget v10, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMaximum:I

    .line 172
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 175
    iget v10, v7, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    add-int/2addr v10, v6

    iget v11, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMaximum:I

    .line 176
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 179
    iget-object v11, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v11, v8, v6, v9, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 180
    iget-object v9, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v9, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    iget v10, v7, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->clutId:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    if-nez v9, :cond_d3

    .line 182
    iget-object v9, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v9, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    iget v10, v7, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->clutId:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    if-nez v9, :cond_d3

    .line 184
    iget-object v9, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultClutDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    .line 188
    :cond_d3
    iget-object v15, v7, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    const/4 v14, 0x0

    .line 189
    :goto_d6
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v14, v10, :cond_12f

    .line 190
    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 191
    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;

    .line 192
    iget-object v12, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v12, v12, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;

    if-nez v12, :cond_fd

    .line 194
    iget-object v12, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v12, v12, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;

    goto :goto_fe

    :cond_fd
    move-object v10, v12

    :goto_fe
    if-eqz v10, :cond_126

    .line 197
    iget-boolean v12, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->nonModifyingColorFlag:Z

    if-eqz v12, :cond_106

    const/4 v12, 0x0

    goto :goto_108

    :cond_106
    iget-object v12, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    :goto_108
    move-object/from16 v16, v12

    .line 198
    iget v12, v7, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->depth:I

    iget v13, v11, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;->horizontalPosition:I

    add-int/2addr v13, v8

    iget v11, v11, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;->verticalPosition:I

    add-int v17, v6, v11

    iget-object v11, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v18, v11

    move-object v11, v9

    move/from16 v19, v14

    move/from16 v14, v17

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v18

    invoke-static/range {v10 .. v16}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->paintPixelDataSubBlocks(Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_12a

    :cond_126
    move/from16 v19, v14

    move-object/from16 v17, v15

    :goto_12a
    add-int/lit8 v14, v19, 0x1

    move-object/from16 v15, v17

    goto :goto_d6

    .line 209
    :cond_12f
    iget-boolean v10, v7, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->fillFlag:Z

    if-eqz v10, :cond_169

    .line 211
    iget v10, v7, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->depth:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_13f

    .line 212
    iget-object v9, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    iget v10, v7, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->pixelCode8Bit:I

    aget v9, v9, v10

    goto :goto_151

    .line 213
    :cond_13f
    iget v10, v7, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->depth:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_14b

    .line 214
    iget-object v9, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    iget v10, v7, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->pixelCode4Bit:I

    aget v9, v9, v10

    goto :goto_151

    .line 216
    :cond_14b
    iget-object v9, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    iget v10, v7, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->pixelCode2Bit:I

    aget v9, v9, v10

    .line 218
    :goto_151
    iget-object v10, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    iget-object v11, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    int-to-float v12, v8

    int-to-float v13, v6

    iget v9, v7, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    add-int/2addr v9, v8

    int-to-float v14, v9

    iget v9, v7, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    add-int/2addr v9, v6

    int-to-float v15, v9

    iget-object v9, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v9

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 227
    :cond_169
    new-instance v9, Lcom/google/android/exoplayer2/text/Cue$Builder;

    invoke-direct {v9}, Lcom/google/android/exoplayer2/text/Cue$Builder;-><init>()V

    iget-object v10, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    iget v11, v7, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    iget v12, v7, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    .line 230
    invoke-static {v10, v8, v6, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 229
    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v9

    int-to-float v8, v8

    iget v10, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    .line 236
    invoke-virtual {v9, v8}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPosition(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v8

    .line 237
    invoke-virtual {v8, v4}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPositionAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v8

    int-to-float v6, v6

    iget v9, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    int-to-float v9, v9

    div-float/2addr v6, v9

    .line 238
    invoke-virtual {v8, v6, v4}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLine(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v6

    .line 240
    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLineAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v6

    iget v8, v7, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    int-to-float v8, v8

    iget v9, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 241
    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setSize(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v6

    iget v7, v7, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    int-to-float v7, v7

    iget v8, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 242
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setBitmapHeight(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v6

    .line 243
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v6

    .line 227
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v4, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 247
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_75

    .line 250
    :cond_1c3
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public reset()V
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->reset()V

    return-void
.end method
