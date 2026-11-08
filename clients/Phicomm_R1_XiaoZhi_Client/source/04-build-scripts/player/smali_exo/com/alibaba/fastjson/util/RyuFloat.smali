.class public final Lcom/alibaba/fastjson/util/RyuFloat;
.super Ljava/lang/Object;


# static fields
.field private static final POW5_INV_SPLIT:[[I

.field private static final POW5_SPLIT:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 25

    const/16 v0, 0x2f

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 21
    fill-array-data v2, :array_298

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2a0

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2a8

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_2b0

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_2b8

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [I

    fill-array-data v2, :array_2c0

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v2, v1, [I

    fill-array-data v2, :array_2c8

    const/4 v8, 0x6

    aput-object v2, v0, v8

    new-array v2, v1, [I

    fill-array-data v2, :array_2d0

    const/4 v9, 0x7

    aput-object v2, v0, v9

    new-array v2, v1, [I

    fill-array-data v2, :array_2d8

    const/16 v10, 0x8

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_2e0

    const/16 v11, 0x9

    aput-object v2, v0, v11

    new-array v2, v1, [I

    fill-array-data v2, :array_2e8

    const/16 v12, 0xa

    aput-object v2, v0, v12

    new-array v2, v1, [I

    fill-array-data v2, :array_2f0

    const/16 v13, 0xb

    aput-object v2, v0, v13

    new-array v2, v1, [I

    fill-array-data v2, :array_2f8

    const/16 v14, 0xc

    aput-object v2, v0, v14

    new-array v2, v1, [I

    fill-array-data v2, :array_300

    const/16 v15, 0xd

    aput-object v2, v0, v15

    new-array v2, v1, [I

    fill-array-data v2, :array_308

    const/16 v16, 0xe

    aput-object v2, v0, v16

    new-array v2, v1, [I

    fill-array-data v2, :array_310

    const/16 v17, 0xf

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_318

    const/16 v18, 0x10

    aput-object v2, v0, v18

    new-array v2, v1, [I

    fill-array-data v2, :array_320

    const/16 v19, 0x11

    aput-object v2, v0, v19

    new-array v2, v1, [I

    fill-array-data v2, :array_328

    const/16 v20, 0x12

    aput-object v2, v0, v20

    new-array v2, v1, [I

    fill-array-data v2, :array_330

    const/16 v21, 0x13

    aput-object v2, v0, v21

    new-array v2, v1, [I

    fill-array-data v2, :array_338

    const/16 v22, 0x14

    aput-object v2, v0, v22

    new-array v2, v1, [I

    fill-array-data v2, :array_340

    const/16 v23, 0x15

    aput-object v2, v0, v23

    new-array v2, v1, [I

    fill-array-data v2, :array_348

    const/16 v24, 0x16

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_350

    const/16 v24, 0x17

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_358

    const/16 v24, 0x18

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_360

    const/16 v24, 0x19

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_368

    const/16 v24, 0x1a

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_370

    const/16 v24, 0x1b

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_378

    const/16 v24, 0x1c

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_380

    const/16 v24, 0x1d

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_388

    const/16 v24, 0x1e

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_390

    const/16 v24, 0x1f

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_398

    const/16 v24, 0x20

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_3a0

    const/16 v24, 0x21

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_3a8

    const/16 v24, 0x22

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_3b0

    const/16 v24, 0x23

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_3b8

    const/16 v24, 0x24

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_3c0

    const/16 v24, 0x25

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_3c8

    const/16 v24, 0x26

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_3d0

    const/16 v24, 0x27

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_3d8

    const/16 v24, 0x28

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_3e0

    const/16 v24, 0x29

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_3e8

    const/16 v24, 0x2a

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_3f0

    const/16 v24, 0x2b

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_3f8

    const/16 v24, 0x2c

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_400

    const/16 v24, 0x2d

    aput-object v2, v0, v24

    new-array v2, v1, [I

    fill-array-data v2, :array_408

    const/16 v24, 0x2e

    aput-object v2, v0, v24

    sput-object v0, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_SPLIT:[[I

    const/16 v0, 0x1f

    new-array v0, v0, [[I

    new-array v2, v1, [I

    .line 71
    fill-array-data v2, :array_410

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_418

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_420

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_428

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_430

    aput-object v2, v0, v6

    new-array v2, v1, [I

    fill-array-data v2, :array_438

    aput-object v2, v0, v7

    new-array v2, v1, [I

    fill-array-data v2, :array_440

    aput-object v2, v0, v8

    new-array v2, v1, [I

    fill-array-data v2, :array_448

    aput-object v2, v0, v9

    new-array v2, v1, [I

    fill-array-data v2, :array_450

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_458

    aput-object v2, v0, v11

    new-array v2, v1, [I

    fill-array-data v2, :array_460

    aput-object v2, v0, v12

    new-array v2, v1, [I

    fill-array-data v2, :array_468

    aput-object v2, v0, v13

    new-array v2, v1, [I

    fill-array-data v2, :array_470

    aput-object v2, v0, v14

    new-array v2, v1, [I

    fill-array-data v2, :array_478

    aput-object v2, v0, v15

    new-array v2, v1, [I

    fill-array-data v2, :array_480

    aput-object v2, v0, v16

    new-array v2, v1, [I

    fill-array-data v2, :array_488

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_490

    aput-object v2, v0, v18

    new-array v2, v1, [I

    fill-array-data v2, :array_498

    aput-object v2, v0, v19

    new-array v2, v1, [I

    fill-array-data v2, :array_4a0

    aput-object v2, v0, v20

    new-array v2, v1, [I

    fill-array-data v2, :array_4a8

    aput-object v2, v0, v21

    new-array v2, v1, [I

    fill-array-data v2, :array_4b0

    aput-object v2, v0, v22

    new-array v2, v1, [I

    fill-array-data v2, :array_4b8

    aput-object v2, v0, v23

    new-array v2, v1, [I

    fill-array-data v2, :array_4c0

    const/16 v3, 0x16

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4c8

    const/16 v3, 0x17

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4d0

    const/16 v3, 0x18

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4d8

    const/16 v3, 0x19

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4e0

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4e8

    const/16 v3, 0x1b

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4f0

    const/16 v3, 0x1c

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4f8

    const/16 v3, 0x1d

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_500

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_INV_SPLIT:[[I

    return-void

    nop

    :array_298
    .array-data 4
        0x20000000
        0x0
    .end array-data

    :array_2a0
    .array-data 4
        0x28000000
        0x0
    .end array-data

    :array_2a8
    .array-data 4
        0x32000000
        0x0
    .end array-data

    :array_2b0
    .array-data 4
        0x3e800000    # 0.25f
        0x0
    .end array-data

    :array_2b8
    .array-data 4
        0x27100000
        0x0
    .end array-data

    :array_2c0
    .array-data 4
        0x30d40000
        0x0
    .end array-data

    :array_2c8
    .array-data 4
        0x3d090000
        0x0
    .end array-data

    :array_2d0
    .array-data 4
        0x2625a000
        0x0
    .end array-data

    :array_2d8
    .array-data 4
        0x2faf0800
        0x0
    .end array-data

    :array_2e0
    .array-data 4
        0x3b9aca00
        0x0
    .end array-data

    :array_2e8
    .array-data 4
        0x2540be40
        0x0
    .end array-data

    :array_2f0
    .array-data 4
        0x2e90edd0
        0x0
    .end array-data

    :array_2f8
    .array-data 4
        0x3a352944
        0x0
    .end array-data

    :array_300
    .array-data 4
        0x246139ca
        0x40000000    # 2.0f
    .end array-data

    :array_308
    .array-data 4
        0x2d79883d
        0x10000000
    .end array-data

    :array_310
    .array-data 4
        0x38d7ea4c
        0x34000000
    .end array-data

    :array_318
    .array-data 4
        0x2386f26f
        0x60800000
    .end array-data

    :array_320
    .array-data 4
        0x2c68af0b
        0x58a00000
    .end array-data

    :array_328
    .array-data 4
        0x3782dace
        0x4ec80000    # 1.6777216E9f
    .end array-data

    :array_330
    .array-data 4
        0x22b1c8c1
        0x113d0000
    .end array-data

    :array_338
    .array-data 4
        0x2b5e3af1
        0x358c4000
    .end array-data

    :array_340
    .array-data 4
        0x3635c9ad
        0x62ef5000
    .end array-data

    :array_348
    .array-data 4
        0x21e19e0c
        0x4dd59200    # 4.47889408E8f
    .end array-data

    :array_350
    .array-data 4
        0x2a5a058f
        0x614af680    # 2.3400028E20f
    .end array-data

    :array_358
    .array-data 4
        0x34f086f3
        0x599db420
    .end array-data

    :array_360
    .array-data 4
        0x21165458
        0x28029094    # 7.2478E-15f
    .end array-data

    :array_368
    .array-data 4
        0x295be96e
        0x320334b9
    .end array-data

    :array_370
    .array-data 4
        0x33b2e3c9
        0x7e8401e7
    .end array-data

    :array_378
    .array-data 4
        0x204fce5e
        0x1f128130
    .end array-data

    :array_380
    .array-data 4
        0x2863c1f5
        0x66d7217c
    .end array-data

    :array_388
    .array-data 4
        0x327cb273
        0x208ce9db
    .end array-data

    :array_390
    .array-data 4
        0x3f1bdf10
        0x8b02452
    .end array-data

    :array_398
    .array-data 4
        0x27716b6a
        0x56e16b3
    .end array-data

    :array_3a0
    .array-data 4
        0x314dc644
        0x46c99c60    # 25806.188f
    .end array-data

    :array_3a8
    .array-data 4
        0x3da137d5
        0x587c0378
    .end array-data

    :array_3b0
    .array-data 4
        0x2684c2e5
        0x474d822b
    .end array-data

    :array_3b8
    .array-data 4
        0x3025f39e
        0x7920e2b6
    .end array-data

    :array_3c0
    .array-data 4
        0x3c2f7086
        0x57691b64
    .end array-data

    :array_3c8
    .array-data 4
        0x259da654
        0x16a1b11e
    .end array-data

    :array_3d0
    .array-data 4
        0x2f050fe9
        0x1c4a1d66
    .end array-data

    :array_3d8
    .array-data 4
        0x3ac653e3
        0x435ca4bf
    .end array-data

    :array_3e0
    .array-data 4
        0x24bbf46e
        0x1a19e6f7
    .end array-data

    :array_3e8
    .array-data 4
        0x2deaf189
        0x60a060b5
    .end array-data

    :array_3f0
    .array-data 4
        0x3965adec
        0x18c878e3
    .end array-data

    :array_3f8
    .array-data 4
        0x23df8cb3
        0x4f7d4b8d
    .end array-data

    :array_400
    .array-data 4
        0x2cd76fe0
        0x435c9e71
    .end array-data

    :array_408
    .array-data 4
        0x380d4bd8
        0x5433c60d
    .end array-data

    :array_410
    .array-data 4
        0x10000000
        0x1
    .end array-data

    :array_418
    .array-data 4
        0xccccccc
        0x66666667
    .end array-data

    :array_420
    .array-data 4
        0xa3d70a3
        0x6b851eb9
    .end array-data

    :array_428
    .array-data 4
        0x83126e9
        0x3c6a7efa
    .end array-data

    :array_430
    .array-data 4
        0xd1b7175
        0x4710cb2a
    .end array-data

    :array_438
    .array-data 4
        0xa7c5ac4
        0x38da3c22
    .end array-data

    :array_440
    .array-data 4
        0x8637bd0
        0x2d7b634e
    .end array-data

    :array_448
    .array-data 4
        0xd6bf94d
        0x2f2bd216
    .end array-data

    :array_450
    .array-data 4
        0xabcc771
        0xc230e78
    .end array-data

    :array_458
    .array-data 4
        0x89705f4
        0x9b5a52d
    .end array-data

    :array_460
    .array-data 4
        0xdbe6fec
        0x75ef6eae
    .end array-data

    :array_468
    .array-data 4
        0xafebff0
        0x5e592558
    .end array-data

    :array_470
    .array-data 4
        0x8cbccc0
        0x4b7a8447    # 1.6417863E7f
    .end array-data

    :array_478
    .array-data 4
        0xe12e134
        0x125da071
    .end array-data

    :array_480
    .array-data 4
        0xb424dc3
        0x284ae6c1
    .end array-data

    :array_488
    .array-data 4
        0x901d7cf
        0x39d58567
    .end array-data

    :array_490
    .array-data 4
        0xe69594b
        0x76226f0b
    .end array-data

    :array_498
    .array-data 4
        0xb877aa3
        0x11b525a3
    .end array-data

    :array_4a0
    .array-data 4
        0x9392ee8
        0x7490eae9
    .end array-data

    :array_4a8
    .array-data 4
        0xec1e4a7
        0x6db4ab0e
    .end array-data

    :array_4b0
    .array-data 4
        0xbce5086
        0x249088d8
    .end array-data

    :array_4b8
    .array-data 4
        0x971da05
        0x3a6d3e0
    .end array-data

    :array_4c0
    .array-data 4
        0xf1c9008
        0x5d7b966
    .end array-data

    :array_4c8
    .array-data 4
        0xc16d9a0
        0x4ac9452
    .end array-data

    :array_4d0
    .array-data 4
        0x9abe14c
        0x6a23a9db
    .end array-data

    :array_4d8
    .array-data 4
        0xf79687a
        0x769f762b
    .end array-data

    :array_4e0
    .array-data 4
        0xc612062
        0x2bb2c4ef
    .end array-data

    :array_4e8
    .array-data 4
        0x9e74d1b
        0x3c8f03f3
    .end array-data

    :array_4f0
    .array-data 4
        0xfd87b5f
        0x14180651
    .end array-data

    :array_4f8
    .array-data 4
        0xcad2f7f
        0x29acd1da
    .end array-data

    :array_500
    .array-data 4
        0xa2425ff
        0x3af0a7e2
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(F[CI)I
    .registers 34

    .line 123
    invoke-static/range {p0 .. p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_19

    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x4e

    .line 124
    aput-char v1, p1, p2

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x61

    .line 125
    aput-char v3, p1, v0

    add-int/lit8 v0, v2, 0x1

    .line 126
    aput-char v1, p1, v2

    :goto_16
    sub-int v0, v0, p2

    return v0

    :cond_19
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    const/16 v1, 0x79

    const/16 v2, 0x74

    const/16 v3, 0x66

    const/16 v4, 0x49

    const/16 v5, 0x69

    const/16 v6, 0x6e

    cmpl-float v0, p0, v0

    if-nez v0, :cond_4e

    add-int/lit8 v0, p2, 0x1

    .line 131
    aput-char v4, p1, p2

    add-int/lit8 v4, v0, 0x1

    .line 132
    aput-char v6, p1, v0

    add-int/lit8 v0, v4, 0x1

    .line 133
    aput-char v3, p1, v4

    add-int/lit8 v3, v0, 0x1

    .line 134
    aput-char v5, p1, v0

    add-int/lit8 v0, v3, 0x1

    .line 135
    aput-char v6, p1, v3

    add-int/lit8 v3, v0, 0x1

    .line 136
    aput-char v5, p1, v0

    add-int/lit8 v0, v3, 0x1

    .line 137
    aput-char v2, p1, v3

    add-int/lit8 v2, v0, 0x1

    .line 138
    aput-char v1, p1, v0

    sub-int v2, v2, p2

    return v2

    :cond_4e
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    const/16 v7, 0x2d

    cmpl-float v0, p0, v0

    if-nez v0, :cond_7b

    add-int/lit8 v0, p2, 0x1

    .line 143
    aput-char v7, p1, p2

    add-int/lit8 v7, v0, 0x1

    .line 144
    aput-char v4, p1, v0

    add-int/lit8 v0, v7, 0x1

    .line 145
    aput-char v6, p1, v7

    add-int/lit8 v4, v0, 0x1

    .line 146
    aput-char v3, p1, v0

    add-int/lit8 v0, v4, 0x1

    .line 147
    aput-char v5, p1, v4

    add-int/lit8 v3, v0, 0x1

    .line 148
    aput-char v6, p1, v0

    add-int/lit8 v0, v3, 0x1

    .line 149
    aput-char v5, p1, v3

    add-int/lit8 v3, v0, 0x1

    .line 150
    aput-char v2, p1, v0

    add-int/lit8 v0, v3, 0x1

    .line 151
    aput-char v1, p1, v3

    goto :goto_16

    .line 155
    :cond_7b
    invoke-static/range {p0 .. p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x2e

    const/16 v2, 0x30

    if-nez v0, :cond_92

    add-int/lit8 v0, p2, 0x1

    .line 157
    aput-char v2, p1, p2

    add-int/lit8 v3, v0, 0x1

    .line 158
    aput-char v1, p1, v0

    add-int/lit8 v0, v3, 0x1

    .line 159
    aput-char v2, p1, v3

    goto :goto_16

    :cond_92
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_a9

    add-int/lit8 v0, p2, 0x1

    .line 163
    aput-char v7, p1, p2

    add-int/lit8 v3, v0, 0x1

    .line 164
    aput-char v2, p1, v0

    add-int/lit8 v0, v3, 0x1

    .line 165
    aput-char v1, p1, v3

    add-int/lit8 v1, v0, 0x1

    .line 166
    aput-char v2, p1, v0

    sub-int v1, v1, p2

    return v1

    :cond_a9
    shr-int/lit8 v3, v0, 0x17

    and-int/lit16 v3, v3, 0xff

    const v4, 0x7fffff

    and-int/2addr v4, v0

    const/16 v5, 0x17

    if-nez v3, :cond_b8

    const/16 v6, -0x95

    goto :goto_be

    :cond_b8
    add-int/lit8 v6, v3, -0x7f

    sub-int/2addr v6, v5

    const/high16 v8, 0x800000

    or-int/2addr v4, v8

    :goto_be
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-gez v0, :cond_c4

    const/4 v0, 0x1

    goto :goto_c5

    :cond_c4
    const/4 v0, 0x0

    :goto_c5
    and-int/lit8 v10, v4, 0x1

    if-nez v10, :cond_cb

    const/4 v10, 0x1

    goto :goto_cc

    :cond_cb
    const/4 v10, 0x0

    :goto_cc
    mul-int/lit8 v11, v4, 0x4

    add-int/lit8 v12, v11, 0x2

    int-to-long v13, v4

    const-wide/32 v15, 0x800000

    cmp-long v17, v13, v15

    if-nez v17, :cond_dd

    if-gt v3, v9, :cond_db

    goto :goto_dd

    :cond_db
    const/4 v3, 0x1

    goto :goto_de

    :cond_dd
    :goto_dd
    const/4 v3, 0x2

    :goto_de
    sub-int v3, v11, v3

    add-int/lit8 v6, v6, -0x2

    const-wide/16 v13, 0x1

    const-wide/32 v15, 0x1624c50

    const-wide/32 v17, 0x989680

    const/16 v19, 0x1f

    if-ltz v6, :cond_1b7

    int-to-long v4, v6

    const-wide/32 v20, 0x2deefb

    mul-long v4, v4, v20

    .line 201
    div-long v4, v4, v17

    long-to-int v5, v4

    if-nez v5, :cond_fb

    const/4 v2, 0x1

    goto :goto_104

    :cond_fb
    int-to-long v1, v5

    mul-long v1, v1, v15

    add-long v1, v1, v17

    sub-long/2addr v1, v13

    .line 202
    div-long v1, v1, v17

    long-to-int v2, v1

    :goto_104
    add-int/lit8 v2, v2, 0x3b

    sub-int/2addr v2, v9

    neg-int v1, v6

    add-int/2addr v1, v5

    add-int/2addr v2, v1

    .line 204
    sget-object v4, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_INV_SPLIT:[[I

    aget-object v6, v4, v5

    aget v6, v6, v8

    int-to-long v7, v6

    .line 205
    aget-object v4, v4, v5

    aget v4, v4, v9

    move/from16 v22, v10

    int-to-long v9, v4

    int-to-long v13, v11

    mul-long v23, v13, v7

    mul-long v25, v13, v9

    shr-long v25, v25, v19

    add-long v23, v23, v25

    add-int/lit8 v2, v2, -0x1f

    move-wide/from16 v25, v13

    shr-long v13, v23, v2

    long-to-int v4, v13

    int-to-long v13, v12

    mul-long v23, v13, v7

    mul-long v13, v13, v9

    shr-long v13, v13, v19

    add-long v23, v23, v13

    shr-long v13, v23, v2

    long-to-int v6, v13

    int-to-long v13, v3

    mul-long v7, v7, v13

    mul-long v13, v13, v9

    shr-long v9, v13, v19

    add-long/2addr v7, v9

    shr-long/2addr v7, v2

    long-to-int v2, v7

    if-eqz v5, :cond_17d

    add-int/lit8 v7, v6, -0x1

    const/16 v8, 0xa

    .line 209
    div-int/2addr v7, v8

    div-int/lit8 v8, v2, 0xa

    if-gt v7, v8, :cond_17d

    add-int/lit8 v7, v5, -0x1

    if-nez v7, :cond_14f

    const/4 v9, 0x1

    goto :goto_15a

    :cond_14f
    int-to-long v8, v7

    mul-long v8, v8, v15

    add-long v8, v8, v17

    const-wide/16 v13, 0x1

    sub-long/2addr v8, v13

    .line 214
    div-long v8, v8, v17

    long-to-int v9, v8

    :goto_15a
    add-int/lit8 v9, v9, 0x3b

    const/4 v8, 0x1

    sub-int/2addr v9, v8

    sub-int/2addr v1, v8

    add-int/2addr v1, v9

    .line 216
    sget-object v9, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_INV_SPLIT:[[I

    aget-object v10, v9, v7

    const/4 v13, 0x0

    aget v10, v10, v13

    int-to-long v13, v10

    mul-long v13, v13, v25

    aget-object v7, v9, v7

    aget v7, v7, v8

    int-to-long v7, v7

    mul-long v7, v7, v25

    shr-long v7, v7, v19

    add-long/2addr v13, v7

    add-int/lit8 v1, v1, -0x1f

    shr-long v7, v13, v1

    const-wide/16 v9, 0xa

    .line 217
    rem-long/2addr v7, v9

    long-to-int v1, v7

    goto :goto_17e

    :cond_17d
    const/4 v1, 0x0

    :goto_17e
    const/4 v7, 0x0

    :goto_17f
    if-lez v12, :cond_18b

    .line 225
    rem-int/lit8 v8, v12, 0x5

    if-eqz v8, :cond_186

    goto :goto_18b

    .line 228
    :cond_186
    div-int/lit8 v12, v12, 0x5

    add-int/lit8 v7, v7, 0x1

    goto :goto_17f

    :cond_18b
    :goto_18b
    const/4 v8, 0x0

    :goto_18c
    if-lez v11, :cond_198

    .line 237
    rem-int/lit8 v9, v11, 0x5

    if-eqz v9, :cond_193

    goto :goto_198

    .line 240
    :cond_193
    div-int/lit8 v11, v11, 0x5

    add-int/lit8 v8, v8, 0x1

    goto :goto_18c

    :cond_198
    :goto_198
    const/4 v9, 0x0

    :goto_199
    if-lez v3, :cond_1a5

    .line 249
    rem-int/lit8 v10, v3, 0x5

    if-eqz v10, :cond_1a0

    goto :goto_1a5

    .line 252
    :cond_1a0
    div-int/lit8 v3, v3, 0x5

    add-int/lit8 v9, v9, 0x1

    goto :goto_199

    :cond_1a5
    :goto_1a5
    if-lt v7, v5, :cond_1a9

    const/4 v3, 0x1

    goto :goto_1aa

    :cond_1a9
    const/4 v3, 0x0

    :goto_1aa
    if-lt v8, v5, :cond_1ae

    const/4 v7, 0x1

    goto :goto_1af

    :cond_1ae
    const/4 v7, 0x0

    :goto_1af
    if-lt v9, v5, :cond_1b4

    const/4 v8, 0x1

    goto/16 :goto_27d

    :cond_1b4
    const/4 v8, 0x0

    goto/16 :goto_27d

    :cond_1b7
    move/from16 v22, v10

    neg-int v1, v6

    int-to-long v7, v1

    const-wide/32 v9, 0x6aa784

    mul-long v7, v7, v9

    .line 262
    div-long v7, v7, v17

    long-to-int v2, v7

    sub-int/2addr v1, v2

    if-nez v1, :cond_1c8

    const/4 v8, 0x1

    goto :goto_1d3

    :cond_1c8
    int-to-long v7, v1

    mul-long v7, v7, v15

    add-long v7, v7, v17

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    .line 264
    div-long v7, v7, v17

    long-to-int v8, v7

    :goto_1d3
    add-int/lit8 v8, v8, -0x3d

    sub-int v7, v2, v8

    .line 267
    sget-object v8, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_SPLIT:[[I

    aget-object v9, v8, v1

    const/4 v10, 0x0

    aget v9, v9, v10

    int-to-long v9, v9

    .line 268
    aget-object v8, v8, v1

    const/4 v13, 0x1

    aget v8, v8, v13

    int-to-long v13, v8

    add-int/lit8 v7, v7, -0x1f

    int-to-long v4, v11

    mul-long v24, v4, v9

    mul-long v26, v4, v13

    shr-long v26, v26, v19

    add-long v24, v24, v26

    move-wide/from16 v26, v9

    shr-long v8, v24, v7

    long-to-int v9, v8

    move v8, v11

    int-to-long v10, v12

    mul-long v28, v10, v26

    mul-long v10, v10, v13

    shr-long v10, v10, v19

    add-long v28, v28, v10

    shr-long v10, v28, v7

    long-to-int v11, v10

    move v12, v9

    int-to-long v9, v3

    mul-long v25, v9, v26

    mul-long v9, v9, v13

    shr-long v9, v9, v19

    add-long v25, v25, v9

    shr-long v9, v25, v7

    long-to-int v7, v9

    if-eqz v2, :cond_24f

    add-int/lit8 v9, v11, -0x1

    const/16 v10, 0xa

    .line 274
    div-int/2addr v9, v10

    div-int/lit8 v10, v7, 0xa

    if-gt v9, v10, :cond_24f

    const/4 v9, 0x1

    add-int/2addr v1, v9

    add-int/lit8 v9, v2, -0x1

    if-nez v1, :cond_222

    const/4 v10, 0x1

    goto :goto_22d

    :cond_222
    int-to-long v13, v1

    mul-long v13, v13, v15

    add-long v13, v13, v17

    const-wide/16 v15, 0x1

    sub-long/2addr v13, v15

    .line 276
    div-long v13, v13, v17

    long-to-int v10, v13

    :goto_22d
    add-int/lit8 v10, v10, -0x3d

    sub-int/2addr v9, v10

    .line 278
    sget-object v10, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_SPLIT:[[I

    aget-object v13, v10, v1

    const/4 v14, 0x0

    aget v13, v13, v14

    int-to-long v14, v13

    mul-long v14, v14, v4

    aget-object v1, v10, v1

    const/4 v10, 0x1

    aget v1, v1, v10

    move v13, v11

    int-to-long v10, v1

    mul-long v4, v4, v10

    shr-long v4, v4, v19

    add-long/2addr v14, v4

    add-int/lit8 v9, v9, -0x1f

    shr-long v4, v14, v9

    const-wide/16 v9, 0xa

    .line 279
    rem-long/2addr v4, v9

    long-to-int v1, v4

    goto :goto_251

    :cond_24f
    move v13, v11

    const/4 v1, 0x0

    :goto_251
    add-int v5, v2, v6

    const/4 v4, 0x1

    if-lt v4, v2, :cond_258

    const/4 v6, 0x1

    goto :goto_259

    :cond_258
    const/4 v6, 0x0

    :goto_259
    const/16 v9, 0x17

    if-ge v2, v9, :cond_267

    add-int/lit8 v9, v2, -0x1

    shl-int v9, v4, v9

    sub-int/2addr v9, v4

    and-int/2addr v8, v9

    if-nez v8, :cond_267

    const/4 v8, 0x1

    goto :goto_268

    :cond_267
    const/4 v8, 0x0

    :goto_268
    const/4 v9, 0x2

    .line 285
    rem-int/2addr v3, v9

    if-ne v3, v4, :cond_26e

    const/4 v3, 0x0

    goto :goto_26f

    :cond_26e
    const/4 v3, 0x1

    :goto_26f
    if-lt v3, v2, :cond_273

    const/4 v2, 0x1

    goto :goto_274

    :cond_273
    const/4 v2, 0x0

    :goto_274
    move v3, v6

    move v4, v12

    move v6, v13

    move/from16 v30, v8

    move v8, v2

    move v2, v7

    move/from16 v7, v30

    :goto_27d
    const v9, 0x3b9aca00

    const/16 v10, 0xa

    :goto_282
    if-lez v10, :cond_28c

    if-lt v6, v9, :cond_287

    goto :goto_28c

    .line 303
    :cond_287
    div-int/lit8 v9, v9, 0xa

    add-int/lit8 v10, v10, -0x1

    goto :goto_282

    :cond_28c
    :goto_28c
    add-int/2addr v5, v10

    const/4 v9, 0x1

    sub-int/2addr v5, v9

    const/4 v9, -0x3

    if-lt v5, v9, :cond_298

    const/4 v9, 0x7

    if-lt v5, v9, :cond_296

    goto :goto_298

    :cond_296
    const/4 v9, 0x0

    goto :goto_299

    :cond_298
    :goto_298
    const/4 v9, 0x1

    :goto_299
    if-eqz v3, :cond_29f

    if-nez v22, :cond_29f

    add-int/lit8 v6, v6, -0x1

    :cond_29f
    const/4 v13, 0x0

    .line 315
    :goto_2a0
    div-int/lit8 v3, v6, 0xa

    div-int/lit8 v11, v2, 0xa

    if-le v3, v11, :cond_2be

    const/16 v12, 0x64

    if-ge v6, v12, :cond_2ad

    if-eqz v9, :cond_2ad

    goto :goto_2be

    .line 320
    :cond_2ad
    rem-int/lit8 v2, v2, 0xa

    if-nez v2, :cond_2b3

    const/4 v1, 0x1

    goto :goto_2b4

    :cond_2b3
    const/4 v1, 0x0

    :goto_2b4
    and-int/2addr v8, v1

    .line 322
    rem-int/lit8 v1, v4, 0xa

    .line 323
    div-int/lit8 v4, v4, 0xa

    add-int/lit8 v13, v13, 0x1

    move v6, v3

    move v2, v11

    goto :goto_2a0

    :cond_2be
    :goto_2be
    if-eqz v8, :cond_2d8

    if-eqz v22, :cond_2d8

    .line 328
    :goto_2c2
    rem-int/lit8 v3, v2, 0xa

    if-nez v3, :cond_2d8

    const/16 v3, 0x64

    if-ge v6, v3, :cond_2cd

    if-eqz v9, :cond_2cd

    goto :goto_2d8

    .line 333
    :cond_2cd
    div-int/lit8 v6, v6, 0xa

    .line 334
    rem-int/lit8 v1, v4, 0xa

    .line 335
    div-int/lit8 v4, v4, 0xa

    .line 336
    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v13, v13, 0x1

    goto :goto_2c2

    :cond_2d8
    :goto_2d8
    const/4 v3, 0x5

    if-eqz v7, :cond_2e2

    if-ne v1, v3, :cond_2e2

    .line 341
    rem-int/lit8 v6, v4, 0x2

    if-nez v6, :cond_2e2

    const/4 v1, 0x4

    :cond_2e2
    if-ne v4, v2, :cond_2e8

    if-eqz v8, :cond_2ea

    if-eqz v22, :cond_2ea

    :cond_2e8
    if-lt v1, v3, :cond_2ec

    :cond_2ea
    const/4 v1, 0x1

    goto :goto_2ed

    :cond_2ec
    const/4 v1, 0x0

    :goto_2ed
    add-int/2addr v4, v1

    sub-int/2addr v10, v13

    if-eqz v0, :cond_2f8

    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x2d

    .line 352
    aput-char v1, p1, p2

    goto :goto_2fa

    :cond_2f8
    move/from16 v0, p2

    :goto_2fa
    if-eqz v9, :cond_35a

    const/4 v8, 0x0

    :goto_2fd
    add-int/lit8 v1, v10, -0x1

    if-ge v8, v1, :cond_311

    .line 358
    rem-int/lit8 v1, v4, 0xa

    .line 359
    div-int/lit8 v4, v4, 0xa

    add-int v2, v0, v10

    sub-int/2addr v2, v8

    const/16 v3, 0x30

    add-int/2addr v1, v3

    int-to-char v1, v1

    .line 360
    aput-char v1, p1, v2

    add-int/lit8 v8, v8, 0x1

    goto :goto_2fd

    :cond_311
    const/16 v1, 0xa

    const/16 v3, 0x30

    .line 362
    rem-int/2addr v4, v1

    add-int/2addr v4, v3

    int-to-char v1, v4

    aput-char v1, p1, v0

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x2e

    .line 363
    aput-char v2, p1, v1

    add-int/lit8 v1, v10, 0x1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v10, v1, :cond_32d

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x30

    .line 366
    aput-char v2, p1, v0

    move v0, v1

    :cond_32d
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x45

    .line 370
    aput-char v2, p1, v0

    if-gez v5, :cond_33d

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x2d

    .line 372
    aput-char v2, p1, v1

    neg-int v5, v5

    move v1, v0

    :cond_33d
    const/16 v0, 0xa

    if-lt v5, v0, :cond_34d

    add-int/lit8 v0, v1, 0x1

    .line 376
    div-int/lit8 v2, v5, 0xa

    const/16 v3, 0x30

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p1, v1

    move v1, v0

    goto :goto_34f

    :cond_34d
    const/16 v3, 0x30

    :goto_34f
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0xa

    .line 378
    rem-int/2addr v5, v2

    add-int/2addr v5, v3

    int-to-char v2, v5

    aput-char v2, p1, v1

    goto/16 :goto_3ef

    :cond_35a
    const/16 v3, 0x30

    if-gez v5, :cond_38e

    add-int/lit8 v1, v0, 0x1

    .line 383
    aput-char v3, p1, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x2e

    .line 384
    aput-char v2, p1, v1

    const/4 v1, -0x1

    :goto_369
    if-le v1, v5, :cond_373

    add-int/lit8 v2, v0, 0x1

    .line 386
    aput-char v3, p1, v0

    add-int/lit8 v1, v1, -0x1

    move v0, v2

    goto :goto_369

    :cond_373
    move v1, v0

    const/4 v8, 0x0

    :goto_375
    if-ge v8, v10, :cond_38c

    add-int v2, v0, v10

    sub-int/2addr v2, v8

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    .line 390
    rem-int/lit8 v5, v4, 0xa

    add-int/2addr v5, v3

    int-to-char v3, v5

    aput-char v3, p1, v2

    const/16 v2, 0xa

    .line 391
    div-int/2addr v4, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v8, v8, 0x1

    const/16 v3, 0x30

    goto :goto_375

    :cond_38c
    move v0, v1

    goto :goto_3ef

    :cond_38e
    add-int/lit8 v1, v5, 0x1

    if-lt v1, v10, :cond_3c2

    const/4 v8, 0x0

    :goto_393
    if-ge v8, v10, :cond_3a8

    add-int v2, v0, v10

    sub-int/2addr v2, v8

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 397
    rem-int/lit8 v3, v4, 0xa

    const/16 v5, 0x30

    add-int/2addr v3, v5

    int-to-char v3, v3

    aput-char v3, p1, v2

    const/16 v2, 0xa

    .line 398
    div-int/2addr v4, v2

    add-int/lit8 v8, v8, 0x1

    goto :goto_393

    :cond_3a8
    add-int/2addr v0, v10

    :goto_3a9
    if-ge v10, v1, :cond_3b5

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x30

    .line 402
    aput-char v3, p1, v0

    add-int/lit8 v10, v10, 0x1

    move v0, v2

    goto :goto_3a9

    :cond_3b5
    const/16 v3, 0x30

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x2e

    .line 404
    aput-char v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    .line 405
    aput-char v3, p1, v1

    goto :goto_3ef

    :cond_3c2
    add-int/lit8 v1, v0, 0x1

    const/4 v8, 0x0

    :goto_3c5
    if-ge v8, v10, :cond_3ec

    sub-int v2, v10, v8

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v2, v5, :cond_3d8

    add-int v2, v1, v10

    sub-int/2addr v2, v8

    sub-int/2addr v2, v3

    const/16 v6, 0x2e

    .line 411
    aput-char v6, p1, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_3da

    :cond_3d8
    const/16 v6, 0x2e

    :goto_3da
    add-int v2, v1, v10

    sub-int/2addr v2, v8

    sub-int/2addr v2, v3

    .line 414
    rem-int/lit8 v7, v4, 0xa

    const/16 v9, 0x30

    add-int/2addr v7, v9

    int-to-char v7, v7

    aput-char v7, p1, v2

    const/16 v2, 0xa

    .line 415
    div-int/2addr v4, v2

    add-int/lit8 v8, v8, 0x1

    goto :goto_3c5

    :cond_3ec
    const/4 v3, 0x1

    add-int/2addr v10, v3

    add-int/2addr v0, v10

    :goto_3ef
    sub-int v0, v0, p2

    return v0
.end method

.method public static toString(F)Ljava/lang/String;
    .registers 4

    const/16 v0, 0xf

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 107
    invoke-static {p0, v0, v1}, Lcom/alibaba/fastjson/util/RyuFloat;->toString(F[CI)I

    move-result p0

    .line 108
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method
