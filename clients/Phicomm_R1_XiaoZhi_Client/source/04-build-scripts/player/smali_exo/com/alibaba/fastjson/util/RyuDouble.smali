.class public final Lcom/alibaba/fastjson/util/RyuDouble;
.super Ljava/lang/Object;


# static fields
.field private static final POW5_INV_SPLIT:[[I

.field private static final POW5_SPLIT:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 23
    const-class v0, I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_ec

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    sput-object v2, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_SPLIT:[[I

    new-array v1, v1, [I

    .line 24
    fill-array-data v1, :array_f4

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_INV_SPLIT:[[I

    .line 27
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 28
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_39
    const/16 v5, 0x146

    if-ge v4, v5, :cond_eb

    const-wide/16 v5, 0x5

    .line 30
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 31
    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    if-nez v4, :cond_4f

    const/4 v7, 0x1

    goto :goto_5e

    :cond_4f
    int-to-long v7, v4

    const-wide/32 v9, 0x1624c50

    mul-long v7, v7, v9

    const-wide/32 v9, 0x989680

    add-long/2addr v7, v9

    const-wide/16 v11, 0x1

    sub-long/2addr v7, v11

    .line 32
    div-long/2addr v7, v9

    long-to-int v7, v7

    :goto_5e
    if-ne v7, v6, :cond_d1

    .line 36
    sget-object v7, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_SPLIT:[[I

    array-length v7, v7

    const/4 v8, 0x4

    if-ge v4, v7, :cond_85

    const/4 v7, 0x0

    :goto_67
    if-ge v7, v8, :cond_85

    .line 38
    sget-object v9, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_SPLIT:[[I

    aget-object v9, v9, v4

    add-int/lit8 v10, v6, -0x79

    rsub-int/lit8 v11, v7, 0x3

    mul-int/lit8 v11, v11, 0x1f

    add-int/2addr v10, v11

    .line 39
    invoke-virtual {v5, v10}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v10

    .line 40
    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 41
    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    aput v10, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_67

    .line 45
    :cond_85
    sget-object v7, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_INV_SPLIT:[[I

    array-length v7, v7

    if-ge v4, v7, :cond_cd

    add-int/lit8 v6, v6, 0x79

    .line 48
    sget-object v7, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 49
    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 50
    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 51
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x0

    :goto_9d
    if-ge v6, v8, :cond_cd

    if-nez v6, :cond_b4

    .line 54
    sget-object v7, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_INV_SPLIT:[[I

    aget-object v7, v7, v4

    rsub-int/lit8 v9, v6, 0x3

    mul-int/lit8 v9, v9, 0x1f

    .line 55
    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    .line 56
    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    aput v9, v7, v6

    goto :goto_ca

    .line 58
    :cond_b4
    sget-object v7, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_INV_SPLIT:[[I

    aget-object v7, v7, v4

    rsub-int/lit8 v9, v6, 0x3

    mul-int/lit8 v9, v9, 0x1f

    .line 59
    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    .line 60
    invoke-virtual {v9, v2}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 61
    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    aput v9, v7, v6

    :goto_ca
    add-int/lit8 v6, v6, 0x1

    goto :goto_9d

    :cond_cd
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_39

    .line 34
    :cond_d1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_eb
    return-void

    :array_ec
    .array-data 4
        0x146
        0x4
    .end array-data

    :array_f4
    .array-data 4
        0x123
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(D[CI)I
    .registers 47

    .line 84
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1b

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x4e

    .line 85
    aput-char v1, p2, p3

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x61

    .line 86
    aput-char v2, p2, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x4e

    .line 87
    aput-char v2, p2, v1

    :goto_18
    sub-int v0, v0, p3

    return v0

    :cond_1b
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/16 v2, 0x69

    const/16 v3, 0x6e

    cmpl-double v4, p0, v0

    if-nez v4, :cond_50

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x49

    .line 92
    aput-char v1, p2, p3

    add-int/lit8 v1, v0, 0x1

    .line 93
    aput-char v3, p2, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v4, 0x66

    .line 94
    aput-char v4, p2, v1

    add-int/lit8 v1, v0, 0x1

    .line 95
    aput-char v2, p2, v0

    add-int/lit8 v0, v1, 0x1

    .line 96
    aput-char v3, p2, v1

    add-int/lit8 v1, v0, 0x1

    .line 97
    aput-char v2, p2, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x74

    .line 98
    aput-char v2, p2, v1

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x79

    .line 99
    aput-char v2, p2, v0

    :goto_4d
    sub-int v1, v1, p3

    return v1

    :cond_50
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/16 v4, 0x2d

    cmpl-double v5, p0, v0

    if-nez v5, :cond_85

    add-int/lit8 v0, p3, 0x1

    .line 104
    aput-char v4, p2, p3

    add-int/lit8 v1, v0, 0x1

    const/16 v4, 0x49

    .line 105
    aput-char v4, p2, v0

    add-int/lit8 v0, v1, 0x1

    .line 106
    aput-char v3, p2, v1

    add-int/lit8 v1, v0, 0x1

    const/16 v4, 0x66

    .line 107
    aput-char v4, p2, v0

    add-int/lit8 v0, v1, 0x1

    .line 108
    aput-char v2, p2, v1

    add-int/lit8 v1, v0, 0x1

    .line 109
    aput-char v3, p2, v0

    add-int/lit8 v0, v1, 0x1

    .line 110
    aput-char v2, p2, v1

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x74

    .line 111
    aput-char v2, p2, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x79

    .line 112
    aput-char v2, p2, v1

    goto :goto_18

    .line 116
    :cond_85
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x2e

    const/16 v3, 0x30

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-nez v7, :cond_a1

    add-int/lit8 v0, p3, 0x1

    .line 118
    aput-char v3, p2, p3

    add-int/lit8 v1, v0, 0x1

    .line 119
    aput-char v2, p2, v0

    add-int/lit8 v0, v1, 0x1

    .line 120
    aput-char v3, p2, v1

    goto/16 :goto_18

    :cond_a1
    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v9, v0, v7

    if-nez v9, :cond_b8

    add-int/lit8 v0, p3, 0x1

    .line 124
    aput-char v4, p2, p3

    add-int/lit8 v1, v0, 0x1

    .line 125
    aput-char v3, p2, v0

    add-int/lit8 v0, v1, 0x1

    .line 126
    aput-char v2, p2, v1

    add-int/lit8 v1, v0, 0x1

    .line 127
    aput-char v3, p2, v0

    goto :goto_4d

    :cond_b8
    const/16 v7, 0x34

    ushr-long v7, v0, v7

    const-wide/16 v9, 0x7ff

    and-long/2addr v7, v9

    long-to-int v8, v7

    const-wide v9, 0xfffffffffffffL

    and-long/2addr v9, v0

    if-nez v8, :cond_cb

    const/16 v7, -0x432

    goto :goto_d2

    :cond_cb
    add-int/lit16 v7, v8, -0x3ff

    add-int/lit8 v7, v7, -0x34

    const-wide/high16 v11, 0x10000000000000L

    or-long/2addr v9, v11

    :goto_d2
    const/4 v11, 0x0

    const/4 v12, 0x1

    cmp-long v13, v0, v5

    if-gez v13, :cond_da

    const/4 v0, 0x1

    goto :goto_db

    :cond_da
    const/4 v0, 0x0

    :goto_db
    const-wide/16 v13, 0x1

    and-long v15, v9, v13

    cmp-long v1, v15, v5

    if-nez v1, :cond_e5

    const/4 v1, 0x1

    goto :goto_e6

    :cond_e5
    const/4 v1, 0x0

    :goto_e6
    const-wide/16 v15, 0x4

    mul-long v15, v15, v9

    const-wide/16 v17, 0x2

    add-long v17, v15, v17

    const-wide/high16 v19, 0x10000000000000L

    cmp-long v21, v9, v19

    if-nez v21, :cond_f9

    if-gt v8, v12, :cond_f7

    goto :goto_f9

    :cond_f7
    const/4 v8, 0x0

    goto :goto_fa

    :cond_f9
    :goto_f9
    const/4 v8, 0x1

    :goto_fa
    sub-long v9, v15, v13

    int-to-long v2, v8

    sub-long/2addr v9, v2

    add-int/lit8 v7, v7, -0x2

    const-wide/32 v19, 0x7fffffff

    const-wide/32 v21, 0x989680

    const/16 v23, 0x3

    const/16 v24, 0x2

    const/16 v25, 0x1f

    if-ltz v7, :cond_31f

    int-to-long v4, v7

    const-wide/32 v26, 0x2deefb

    mul-long v4, v4, v26

    .line 163
    div-long v4, v4, v21

    long-to-int v5, v4

    sub-int/2addr v5, v12

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-nez v4, :cond_120

    const/4 v3, 0x1

    goto :goto_12c

    :cond_120
    int-to-long v2, v4

    const-wide/32 v27, 0x1624c50

    mul-long v2, v2, v27

    add-long v2, v2, v21

    sub-long/2addr v2, v13

    .line 166
    div-long v2, v2, v21

    long-to-int v3, v2

    :goto_12c
    add-int/lit8 v3, v3, 0x7a

    sub-int/2addr v3, v12

    neg-int v2, v7

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x5d

    const/16 v3, 0x15

    sub-int/2addr v2, v3

    if-ltz v2, :cond_304

    .line 174
    sget-object v3, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_INV_SPLIT:[[I

    aget-object v3, v3, v4

    ushr-long v7, v15, v25

    and-long v27, v15, v19

    .line 178
    aget v5, v3, v11

    int-to-long v13, v5

    mul-long v13, v13, v7

    .line 179
    aget v5, v3, v11

    move-wide/from16 v29, v7

    int-to-long v6, v5

    mul-long v6, v6, v27

    .line 180
    aget v5, v3, v12

    move/from16 v31, v0

    move/from16 v32, v1

    int-to-long v0, v5

    mul-long v0, v0, v29

    .line 181
    aget v5, v3, v12

    int-to-long v11, v5

    mul-long v11, v11, v27

    .line 182
    aget v5, v3, v24

    move v8, v4

    int-to-long v4, v5

    mul-long v4, v4, v29

    move-wide/from16 v34, v15

    .line 183
    aget v15, v3, v24

    move-wide/from16 v36, v9

    move v10, v8

    int-to-long v8, v15

    mul-long v8, v8, v27

    .line 184
    aget v15, v3, v23

    move-wide/from16 v38, v13

    int-to-long v13, v15

    mul-long v13, v13, v29

    .line 185
    aget v15, v3, v23

    move/from16 v16, v2

    move-object/from16 v29, v3

    int-to-long v2, v15

    mul-long v27, v27, v2

    ushr-long v2, v27, v25

    add-long/2addr v2, v8

    add-long/2addr v2, v13

    ushr-long v2, v2, v25

    add-long/2addr v2, v11

    add-long/2addr v2, v4

    ushr-long v2, v2, v25

    add-long/2addr v2, v6

    add-long/2addr v2, v0

    const/16 v0, 0x15

    ushr-long v1, v2, v0

    const/16 v0, 0xa

    shl-long v3, v38, v0

    add-long/2addr v1, v3

    ushr-long v0, v1, v16

    ushr-long v2, v17, v25

    and-long v6, v17, v19

    const/4 v4, 0x0

    .line 197
    aget v8, v29, v4

    int-to-long v8, v8

    mul-long v8, v8, v2

    .line 198
    aget v11, v29, v4

    int-to-long v11, v11

    mul-long v11, v11, v6

    const/4 v4, 0x1

    .line 199
    aget v13, v29, v4

    int-to-long v13, v13

    mul-long v13, v13, v2

    .line 200
    aget v15, v29, v4

    move-wide/from16 v27, v0

    int-to-long v0, v15

    mul-long v0, v0, v6

    .line 201
    aget v4, v29, v24

    move-wide/from16 v38, v6

    int-to-long v5, v4

    mul-long v5, v5, v2

    .line 202
    aget v4, v29, v24

    move-wide/from16 v40, v8

    int-to-long v7, v4

    mul-long v7, v7, v38

    .line 203
    aget v4, v29, v23

    move v15, v10

    int-to-long v9, v4

    mul-long v2, v2, v9

    .line 204
    aget v4, v29, v23

    int-to-long v9, v4

    mul-long v9, v9, v38

    ushr-long v9, v9, v25

    add-long/2addr v9, v7

    add-long/2addr v9, v2

    ushr-long v2, v9, v25

    add-long/2addr v2, v0

    add-long/2addr v2, v5

    ushr-long v0, v2, v25

    add-long/2addr v0, v11

    add-long/2addr v0, v13

    const/16 v2, 0x15

    ushr-long/2addr v0, v2

    const/16 v2, 0xa

    shl-long v3, v40, v2

    add-long/2addr v0, v3

    ushr-long v0, v0, v16

    ushr-long v2, v36, v25

    and-long v6, v36, v19

    const/4 v4, 0x0

    .line 215
    aget v8, v29, v4

    int-to-long v8, v8

    mul-long v8, v8, v2

    .line 216
    aget v10, v29, v4

    int-to-long v10, v10

    mul-long v10, v10, v6

    const/4 v4, 0x1

    .line 217
    aget v12, v29, v4

    int-to-long v12, v12

    mul-long v12, v12, v2

    .line 218
    aget v14, v29, v4

    int-to-long v4, v14

    mul-long v4, v4, v6

    .line 219
    aget v14, v29, v24

    move/from16 v30, v15

    int-to-long v14, v14

    mul-long v14, v14, v2

    move-wide/from16 v38, v0

    .line 220
    aget v0, v29, v24

    int-to-long v0, v0

    mul-long v0, v0, v6

    move-wide/from16 v19, v8

    .line 221
    aget v8, v29, v23

    int-to-long v8, v8

    mul-long v2, v2, v8

    .line 222
    aget v8, v29, v23

    int-to-long v8, v8

    mul-long v6, v6, v8

    ushr-long v6, v6, v25

    add-long/2addr v6, v0

    add-long/2addr v6, v2

    ushr-long v0, v6, v25

    add-long/2addr v0, v4

    add-long/2addr v0, v14

    ushr-long v0, v0, v25

    add-long/2addr v0, v10

    add-long/2addr v0, v12

    const/16 v2, 0x15

    ushr-long/2addr v0, v2

    const/16 v3, 0xa

    shl-long v4, v19, v3

    add-long/2addr v0, v4

    ushr-long v0, v0, v16

    move/from16 v3, v30

    if-gt v3, v2, :cond_2f9

    const-wide/16 v4, 0x5

    .line 234
    rem-long v15, v34, v4

    const-wide/16 v6, 0x271

    const-wide/16 v8, 0x0

    cmp-long v2, v15, v8

    if-nez v2, :cond_276

    cmp-long v2, v15, v8

    if-eqz v2, :cond_23d

    const/4 v2, 0x0

    goto :goto_26d

    :cond_23d
    const-wide/16 v10, 0x19

    .line 240
    rem-long v15, v34, v10

    cmp-long v2, v15, v8

    if-eqz v2, :cond_247

    const/4 v2, 0x1

    goto :goto_26d

    :cond_247
    const-wide/16 v10, 0x7d

    .line 242
    rem-long v15, v34, v10

    cmp-long v2, v15, v8

    if-eqz v2, :cond_251

    const/4 v2, 0x2

    goto :goto_26d

    .line 244
    :cond_251
    rem-long v15, v34, v6

    cmp-long v2, v15, v8

    if-eqz v2, :cond_259

    const/4 v2, 0x3

    goto :goto_26d

    .line 248
    :cond_259
    div-long v15, v34, v6

    const/4 v2, 0x4

    :goto_25c
    cmp-long v6, v15, v8

    if-lez v6, :cond_26d

    .line 250
    rem-long v6, v15, v4

    cmp-long v10, v6, v8

    if-eqz v10, :cond_267

    goto :goto_26d

    .line 253
    :cond_267
    div-long/2addr v15, v4

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v8, 0x0

    goto :goto_25c

    :cond_26d
    :goto_26d
    if-lt v2, v3, :cond_271

    const/4 v2, 0x1

    goto :goto_272

    :cond_271
    const/4 v2, 0x0

    :goto_272
    move v4, v2

    const/4 v2, 0x0

    goto/16 :goto_2fb

    :cond_276
    if-eqz v32, :cond_2b6

    .line 263
    rem-long v9, v36, v4

    const-wide/16 v11, 0x0

    cmp-long v2, v9, v11

    if-eqz v2, :cond_282

    const/4 v2, 0x0

    goto :goto_2b2

    :cond_282
    const-wide/16 v8, 0x19

    .line 265
    rem-long v9, v36, v8

    cmp-long v2, v9, v11

    if-eqz v2, :cond_28c

    const/4 v2, 0x1

    goto :goto_2b2

    :cond_28c
    const-wide/16 v8, 0x7d

    .line 267
    rem-long v9, v36, v8

    cmp-long v2, v9, v11

    if-eqz v2, :cond_296

    const/4 v2, 0x2

    goto :goto_2b2

    .line 269
    :cond_296
    rem-long v9, v36, v6

    cmp-long v2, v9, v11

    if-eqz v2, :cond_29e

    const/4 v2, 0x3

    goto :goto_2b2

    .line 273
    :cond_29e
    div-long v9, v36, v6

    const/4 v2, 0x4

    :goto_2a1
    cmp-long v6, v9, v11

    if-lez v6, :cond_2b2

    .line 275
    rem-long v6, v9, v4

    cmp-long v8, v6, v11

    if-eqz v8, :cond_2ac

    goto :goto_2b2

    .line 278
    :cond_2ac
    div-long/2addr v9, v4

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v11, 0x0

    goto :goto_2a1

    :cond_2b2
    :goto_2b2
    if-lt v2, v3, :cond_2f9

    const/4 v2, 0x1

    goto :goto_2fa

    .line 289
    :cond_2b6
    rem-long v8, v17, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_2c0

    const/4 v2, 0x0

    goto :goto_2f1

    :cond_2c0
    const-wide/16 v8, 0x19

    .line 291
    rem-long v8, v17, v8

    cmp-long v2, v8, v10

    if-eqz v2, :cond_2ca

    const/4 v2, 0x1

    goto :goto_2f1

    :cond_2ca
    const-wide/16 v8, 0x7d

    .line 293
    rem-long v8, v17, v8

    cmp-long v2, v8, v10

    if-eqz v2, :cond_2d4

    const/4 v2, 0x2

    goto :goto_2f1

    .line 295
    :cond_2d4
    rem-long v8, v17, v6

    cmp-long v2, v8, v10

    if-eqz v2, :cond_2dc

    const/4 v2, 0x3

    goto :goto_2f1

    .line 299
    :cond_2dc
    div-long v17, v17, v6

    const/4 v2, 0x4

    :goto_2df
    cmp-long v6, v17, v10

    if-lez v6, :cond_2f1

    .line 301
    rem-long v6, v17, v4

    cmp-long v8, v6, v10

    if-eqz v8, :cond_2ea

    goto :goto_2f1

    .line 304
    :cond_2ea
    div-long v17, v17, v4

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v10, 0x0

    goto :goto_2df

    :cond_2f1
    :goto_2f1
    if-lt v2, v3, :cond_2f9

    const-wide/16 v4, 0x1

    sub-long v4, v38, v4

    move-wide/from16 v38, v4

    :cond_2f9
    const/4 v2, 0x0

    :goto_2fa
    const/4 v4, 0x0

    :goto_2fb
    move-wide/from16 v17, v27

    move/from16 v42, v4

    move v4, v3

    move/from16 v3, v42

    goto/16 :goto_474

    :cond_304
    move/from16 v16, v2

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31f
    move/from16 v31, v0

    move/from16 v32, v1

    move-wide/from16 v36, v9

    move-wide/from16 v34, v15

    neg-int v0, v7

    int-to-long v1, v0

    const-wide/32 v3, 0x6aa784

    mul-long v1, v1, v3

    .line 316
    div-long v1, v1, v21

    long-to-int v2, v1

    const/4 v1, 0x1

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v0, v2

    if-nez v0, :cond_33d

    const/4 v1, 0x1

    goto :goto_34b

    :cond_33d
    int-to-long v3, v0

    const-wide/32 v9, 0x1624c50

    mul-long v3, v3, v9

    add-long v3, v3, v21

    const-wide/16 v9, 0x1

    sub-long/2addr v3, v9

    .line 318
    div-long v3, v3, v21

    long-to-int v1, v3

    :goto_34b
    add-int/lit8 v1, v1, -0x79

    sub-int v1, v2, v1

    add-int/lit8 v1, v1, -0x5d

    const/16 v3, 0x15

    sub-int/2addr v1, v3

    if-ltz v1, :cond_708

    .line 325
    sget-object v3, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_SPLIT:[[I

    aget-object v0, v3, v0

    ushr-long v3, v34, v25

    and-long v9, v34, v19

    const/4 v6, 0x0

    .line 329
    aget v11, v0, v6

    int-to-long v11, v11

    mul-long v11, v11, v3

    .line 330
    aget v13, v0, v6

    int-to-long v13, v13

    mul-long v13, v13, v9

    const/4 v6, 0x1

    .line 331
    aget v15, v0, v6

    move/from16 v27, v7

    move/from16 v16, v8

    int-to-long v7, v15

    mul-long v7, v7, v3

    .line 332
    aget v15, v0, v6

    int-to-long v5, v15

    mul-long v5, v5, v9

    .line 333
    aget v15, v0, v24

    move/from16 v29, v1

    move/from16 v28, v2

    int-to-long v1, v15

    mul-long v1, v1, v3

    .line 334
    aget v15, v0, v24

    move-wide/from16 v38, v11

    int-to-long v11, v15

    mul-long v11, v11, v9

    .line 335
    aget v15, v0, v23

    move-wide/from16 v40, v7

    int-to-long v7, v15

    mul-long v3, v3, v7

    .line 336
    aget v7, v0, v23

    int-to-long v7, v7

    mul-long v9, v9, v7

    ushr-long v7, v9, v25

    add-long/2addr v7, v11

    add-long/2addr v7, v3

    ushr-long v3, v7, v25

    add-long/2addr v3, v5

    add-long/2addr v3, v1

    ushr-long v1, v3, v25

    add-long/2addr v1, v13

    add-long v1, v1, v40

    const/16 v3, 0x15

    ushr-long/2addr v1, v3

    const/16 v3, 0xa

    shl-long v6, v38, v3

    add-long/2addr v1, v6

    ushr-long v1, v1, v29

    ushr-long v3, v17, v25

    and-long v6, v17, v19

    const/4 v8, 0x0

    .line 347
    aget v9, v0, v8

    int-to-long v9, v9

    mul-long v9, v9, v3

    .line 348
    aget v11, v0, v8

    int-to-long v11, v11

    mul-long v11, v11, v6

    const/4 v8, 0x1

    .line 349
    aget v13, v0, v8

    int-to-long v13, v13

    mul-long v13, v13, v3

    .line 350
    aget v15, v0, v8

    move-wide/from16 v17, v1

    int-to-long v1, v15

    mul-long v1, v1, v6

    .line 351
    aget v8, v0, v24

    move-wide/from16 v38, v6

    int-to-long v5, v8

    mul-long v5, v5, v3

    .line 352
    aget v7, v0, v24

    int-to-long v7, v7

    mul-long v7, v7, v38

    .line 353
    aget v15, v0, v23

    move-wide/from16 v40, v9

    int-to-long v9, v15

    mul-long v3, v3, v9

    .line 354
    aget v9, v0, v23

    int-to-long v9, v9

    mul-long v9, v9, v38

    ushr-long v9, v9, v25

    add-long/2addr v9, v7

    add-long/2addr v9, v3

    ushr-long v3, v9, v25

    add-long/2addr v3, v1

    add-long/2addr v3, v5

    ushr-long v1, v3, v25

    add-long/2addr v1, v11

    add-long/2addr v1, v13

    const/16 v3, 0x15

    ushr-long/2addr v1, v3

    const/16 v3, 0xa

    shl-long v6, v40, v3

    add-long/2addr v1, v6

    ushr-long v38, v1, v29

    ushr-long v1, v36, v25

    and-long v3, v36, v19

    const/4 v7, 0x0

    .line 364
    aget v6, v0, v7

    int-to-long v8, v6

    mul-long v8, v8, v1

    .line 365
    aget v6, v0, v7

    int-to-long v10, v6

    mul-long v10, v10, v3

    const/4 v6, 0x1

    .line 366
    aget v12, v0, v6

    int-to-long v12, v12

    mul-long v12, v12, v1

    .line 367
    aget v14, v0, v6

    int-to-long v14, v14

    mul-long v14, v14, v3

    .line 368
    aget v6, v0, v24

    int-to-long v5, v6

    mul-long v5, v5, v1

    .line 369
    aget v7, v0, v24

    move-wide/from16 v19, v8

    int-to-long v7, v7

    mul-long v7, v7, v3

    .line 370
    aget v9, v0, v23

    move-wide/from16 v36, v12

    int-to-long v12, v9

    mul-long v1, v1, v12

    .line 371
    aget v0, v0, v23

    int-to-long v12, v0

    mul-long v3, v3, v12

    ushr-long v3, v3, v25

    add-long/2addr v3, v7

    add-long/2addr v3, v1

    ushr-long v0, v3, v25

    add-long/2addr v0, v14

    add-long/2addr v0, v5

    ushr-long v0, v0, v25

    add-long/2addr v0, v10

    add-long v0, v0, v36

    const/16 v2, 0x15

    ushr-long/2addr v0, v2

    const/16 v2, 0xa

    shl-long v3, v19, v2

    add-long/2addr v0, v3

    ushr-long v0, v0, v29

    add-int v4, v28, v27

    move/from16 v3, v28

    const/4 v2, 0x1

    if-gt v3, v2, :cond_45a

    if-eqz v32, :cond_453

    move/from16 v12, v16

    if-ne v12, v2, :cond_44e

    const/16 v33, 0x1

    goto :goto_450

    :cond_44e
    const/16 v33, 0x0

    :goto_450
    move/from16 v2, v33

    goto :goto_458

    :cond_453
    const-wide/16 v5, 0x1

    sub-long v38, v38, v5

    const/4 v2, 0x0

    :goto_458
    const/4 v3, 0x1

    goto :goto_474

    :cond_45a
    const-wide/16 v5, 0x1

    const/16 v7, 0x3f

    if-ge v3, v7, :cond_472

    sub-int/2addr v3, v2

    shl-long v2, v5, v3

    sub-long/2addr v2, v5

    and-long v2, v34, v2

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-nez v7, :cond_46e

    const/4 v2, 0x1

    goto :goto_46f

    :cond_46e
    const/4 v2, 0x0

    :goto_46f
    move v3, v2

    const/4 v2, 0x0

    goto :goto_474

    :cond_472
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_474
    const-wide v5, 0xde0b6b3a7640000L

    const/4 v7, 0x5

    const-wide/16 v8, 0x64

    const-wide/16 v10, 0xa

    cmp-long v12, v38, v5

    if-ltz v12, :cond_486

    const/16 v23, 0x13

    goto/16 :goto_53b

    :cond_486
    const-wide v5, 0x16345785d8a0000L

    cmp-long v12, v38, v5

    if-ltz v12, :cond_493

    const/16 v23, 0x12

    goto/16 :goto_53b

    :cond_493
    const-wide v5, 0x2386f26fc10000L

    cmp-long v12, v38, v5

    if-ltz v12, :cond_4a0

    const/16 v23, 0x11

    goto/16 :goto_53b

    :cond_4a0
    const-wide v5, 0x38d7ea4c68000L

    cmp-long v12, v38, v5

    if-ltz v12, :cond_4ad

    const/16 v23, 0x10

    goto/16 :goto_53b

    :cond_4ad
    const-wide v5, 0x5af3107a4000L

    cmp-long v12, v38, v5

    if-ltz v12, :cond_4ba

    const/16 v23, 0xf

    goto/16 :goto_53b

    :cond_4ba
    const-wide v5, 0x9184e72a000L

    cmp-long v12, v38, v5

    if-ltz v12, :cond_4c7

    const/16 v23, 0xe

    goto/16 :goto_53b

    :cond_4c7
    const-wide v5, 0xe8d4a51000L

    cmp-long v12, v38, v5

    if-ltz v12, :cond_4d4

    const/16 v23, 0xd

    goto/16 :goto_53b

    :cond_4d4
    const-wide v5, 0x174876e800L

    cmp-long v12, v38, v5

    if-ltz v12, :cond_4e0

    const/16 v23, 0xc

    goto :goto_53b

    :cond_4e0
    const-wide v5, 0x2540be400L

    cmp-long v12, v38, v5

    if-ltz v12, :cond_4ec

    const/16 v23, 0xb

    goto :goto_53b

    :cond_4ec
    const-wide/32 v5, 0x3b9aca00

    cmp-long v12, v38, v5

    if-ltz v12, :cond_4f6

    const/16 v23, 0xa

    goto :goto_53b

    :cond_4f6
    const-wide/32 v5, 0x5f5e100

    cmp-long v12, v38, v5

    if-ltz v12, :cond_500

    const/16 v23, 0x9

    goto :goto_53b

    :cond_500
    cmp-long v5, v38, v21

    if-ltz v5, :cond_507

    const/16 v23, 0x8

    goto :goto_53b

    :cond_507
    const-wide/32 v5, 0xf4240

    cmp-long v12, v38, v5

    if-ltz v12, :cond_511

    const/16 v23, 0x7

    goto :goto_53b

    :cond_511
    const-wide/32 v5, 0x186a0

    cmp-long v12, v38, v5

    if-ltz v12, :cond_51b

    const/16 v23, 0x6

    goto :goto_53b

    :cond_51b
    const-wide/16 v5, 0x2710

    cmp-long v12, v38, v5

    if-ltz v12, :cond_524

    const/16 v23, 0x5

    goto :goto_53b

    :cond_524
    const-wide/16 v5, 0x3e8

    cmp-long v12, v38, v5

    if-ltz v12, :cond_52d

    const/16 v23, 0x4

    goto :goto_53b

    :cond_52d
    cmp-long v5, v38, v8

    if-ltz v5, :cond_532

    goto :goto_53b

    :cond_532
    cmp-long v5, v38, v10

    if-ltz v5, :cond_539

    const/16 v23, 0x2

    goto :goto_53b

    :cond_539
    const/16 v23, 0x1

    :goto_53b
    add-int v4, v4, v23

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v5, -0x3

    if-lt v4, v5, :cond_548

    const/4 v5, 0x7

    if-lt v4, v5, :cond_546

    goto :goto_548

    :cond_546
    const/4 v5, 0x0

    goto :goto_549

    :cond_548
    :goto_548
    const/4 v5, 0x1

    :goto_549
    if-nez v2, :cond_579

    if-eqz v3, :cond_54e

    goto :goto_579

    :cond_54e
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 485
    :goto_550
    div-long v12, v38, v10

    div-long v14, v0, v10

    cmp-long v6, v12, v14

    if-lez v6, :cond_56a

    cmp-long v6, v38, v8

    if-gez v6, :cond_55f

    if-eqz v5, :cond_55f

    goto :goto_56a

    .line 490
    :cond_55f
    rem-long v0, v17, v10

    long-to-int v3, v0

    .line 492
    div-long v17, v17, v10

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v38, v12

    move-wide v0, v14

    goto :goto_550

    :cond_56a
    :goto_56a
    cmp-long v6, v17, v0

    if-eqz v6, :cond_573

    if-lt v3, v7, :cond_571

    goto :goto_573

    :cond_571
    const/4 v0, 0x0

    goto :goto_574

    :cond_573
    :goto_573
    const/4 v0, 0x1

    :goto_574
    int-to-long v0, v0

    add-long v17, v17, v0

    goto/16 :goto_5ea

    :cond_579
    :goto_579
    const/4 v6, 0x0

    const/4 v12, 0x0

    .line 451
    :goto_57b
    div-long v13, v38, v10

    div-long v15, v0, v10

    cmp-long v19, v13, v15

    if-lez v19, :cond_5a6

    cmp-long v19, v38, v8

    if-gez v19, :cond_58a

    if-eqz v5, :cond_58a

    goto :goto_5a6

    .line 456
    :cond_58a
    rem-long/2addr v0, v10

    const-wide/16 v19, 0x0

    cmp-long v21, v0, v19

    if-nez v21, :cond_593

    const/4 v0, 0x1

    goto :goto_594

    :cond_593
    const/4 v0, 0x0

    :goto_594
    and-int/2addr v2, v0

    if-nez v6, :cond_599

    const/4 v0, 0x1

    goto :goto_59a

    :cond_599
    const/4 v0, 0x0

    :goto_59a
    and-int/2addr v3, v0

    .line 458
    rem-long v0, v17, v10

    long-to-int v6, v0

    .line 460
    div-long v17, v17, v10

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v38, v13

    move-wide v0, v15

    goto :goto_57b

    :cond_5a6
    :goto_5a6
    if-eqz v2, :cond_5ca

    if-eqz v32, :cond_5ca

    .line 465
    :goto_5aa
    rem-long v13, v0, v10

    const-wide/16 v15, 0x0

    cmp-long v19, v13, v15

    if-nez v19, :cond_5ca

    cmp-long v13, v38, v8

    if-gez v13, :cond_5b9

    if-eqz v5, :cond_5b9

    goto :goto_5ca

    :cond_5b9
    if-nez v6, :cond_5bd

    const/4 v6, 0x1

    goto :goto_5be

    :cond_5bd
    const/4 v6, 0x0

    :goto_5be
    and-int/2addr v3, v6

    .line 471
    rem-long v13, v17, v10

    long-to-int v6, v13

    .line 472
    div-long v38, v38, v10

    .line 473
    div-long v17, v17, v10

    .line 474
    div-long/2addr v0, v10

    add-int/lit8 v12, v12, 0x1

    goto :goto_5aa

    :cond_5ca
    :goto_5ca
    if-eqz v3, :cond_5d9

    if-ne v6, v7, :cond_5d9

    const-wide/16 v8, 0x2

    .line 478
    rem-long v8, v17, v8

    const-wide/16 v13, 0x0

    cmp-long v3, v8, v13

    if-nez v3, :cond_5d9

    const/4 v6, 0x4

    :cond_5d9
    cmp-long v3, v17, v0

    if-nez v3, :cond_5e1

    if-eqz v2, :cond_5e3

    if-eqz v32, :cond_5e3

    :cond_5e1
    if-lt v6, v7, :cond_5e5

    :cond_5e3
    const/4 v0, 0x1

    goto :goto_5e6

    :cond_5e5
    const/4 v0, 0x0

    :goto_5e6
    int-to-long v0, v0

    add-long v17, v17, v0

    move v2, v12

    :goto_5ea
    sub-int v0, v23, v2

    if-eqz v31, :cond_5f5

    add-int/lit8 v1, p3, 0x1

    const/16 v2, 0x2d

    .line 503
    aput-char v2, p2, p3

    goto :goto_5f7

    :cond_5f5
    move/from16 v1, p3

    :goto_5f7
    if-eqz v5, :cond_66f

    const/4 v2, 0x0

    :goto_5fa
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_60f

    .line 510
    rem-long v7, v17, v10

    long-to-int v3, v7

    .line 511
    div-long v17, v17, v10

    add-int v5, v1, v0

    sub-int/2addr v5, v2

    const/16 v7, 0x30

    add-int/2addr v3, v7

    int-to-char v3, v3

    .line 512
    aput-char v3, p2, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_5fa

    :cond_60f
    const-wide/16 v2, 0x30

    .line 514
    rem-long v17, v17, v10

    add-long v2, v17, v2

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p2, v1

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x2e

    .line 515
    aput-char v3, p2, v2

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v1, v2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_62c

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x30

    .line 518
    aput-char v2, p2, v1

    move v1, v0

    :cond_62c
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x45

    .line 522
    aput-char v2, p2, v1

    if-gez v4, :cond_63c

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x2d

    .line 524
    aput-char v2, p2, v0

    neg-int v4, v4

    move v0, v1

    :cond_63c
    const/16 v1, 0x64

    if-lt v4, v1, :cond_655

    add-int/lit8 v1, v0, 0x1

    .line 528
    div-int/lit8 v2, v4, 0x64

    const/16 v3, 0x30

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p2, v0

    .line 529
    rem-int/lit8 v4, v4, 0x64

    add-int/lit8 v0, v1, 0x1

    .line 530
    div-int/lit8 v2, v4, 0xa

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p2, v1

    goto :goto_664

    :cond_655
    const/16 v1, 0xa

    const/16 v3, 0x30

    if-lt v4, v1, :cond_664

    add-int/lit8 v1, v0, 0x1

    .line 532
    div-int/lit8 v2, v4, 0xa

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p2, v0

    move v0, v1

    :cond_664
    :goto_664
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    .line 534
    rem-int/2addr v4, v2

    add-int/2addr v4, v3

    int-to-char v2, v4

    aput-char v2, p2, v0

    goto/16 :goto_4d

    :cond_66f
    const/16 v3, 0x30

    if-gez v4, :cond_6a3

    add-int/lit8 v2, v1, 0x1

    .line 540
    aput-char v3, p2, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v5, 0x2e

    .line 541
    aput-char v5, p2, v2

    const/4 v2, -0x1

    :goto_67e
    if-le v2, v4, :cond_68a

    add-int/lit8 v5, v1, 0x1

    .line 543
    aput-char v3, p2, v1

    add-int/lit8 v2, v2, -0x1

    move v1, v5

    const/16 v3, 0x30

    goto :goto_67e

    :cond_68a
    move v3, v1

    const/4 v2, 0x0

    :goto_68c
    if-ge v2, v0, :cond_705

    add-int v4, v1, v0

    sub-int/2addr v4, v2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const-wide/16 v5, 0x30

    .line 547
    rem-long v7, v17, v10

    add-long/2addr v7, v5

    long-to-int v5, v7

    int-to-char v5, v5

    aput-char v5, p2, v4

    .line 548
    div-long v17, v17, v10

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_68c

    :cond_6a3
    add-int/lit8 v2, v4, 0x1

    if-lt v2, v0, :cond_6d7

    const/4 v3, 0x0

    :goto_6a8
    if-ge v3, v0, :cond_6bd

    add-int v4, v1, v0

    sub-int/2addr v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const-wide/16 v5, 0x30

    .line 554
    rem-long v7, v17, v10

    add-long/2addr v7, v5

    long-to-int v5, v7

    int-to-char v5, v5

    aput-char v5, p2, v4

    .line 555
    div-long v17, v17, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_6a8

    :cond_6bd
    add-int/2addr v1, v0

    :goto_6be
    if-ge v0, v2, :cond_6ca

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x30

    .line 559
    aput-char v4, p2, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_6be

    :cond_6ca
    const/16 v4, 0x30

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x2e

    .line 561
    aput-char v2, p2, v1

    add-int/lit8 v3, v0, 0x1

    .line 562
    aput-char v4, p2, v0

    goto :goto_705

    :cond_6d7
    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    :goto_6da
    if-ge v3, v0, :cond_701

    sub-int v5, v0, v3

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ne v5, v4, :cond_6ed

    add-int v5, v2, v0

    sub-int/2addr v5, v3

    sub-int/2addr v5, v6

    const/16 v7, 0x2e

    .line 568
    aput-char v7, p2, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_6ef

    :cond_6ed
    const/16 v7, 0x2e

    :goto_6ef
    add-int v5, v2, v0

    sub-int/2addr v5, v3

    sub-int/2addr v5, v6

    const-wide/16 v8, 0x30

    .line 571
    rem-long v12, v17, v10

    add-long/2addr v12, v8

    long-to-int v8, v12

    int-to-char v8, v8

    aput-char v8, p2, v5

    .line 572
    div-long v17, v17, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_6da

    :cond_701
    const/4 v6, 0x1

    add-int/2addr v0, v6

    add-int v3, v1, v0

    :cond_705
    :goto_705
    sub-int v3, v3, p3

    return v3

    :cond_708
    move/from16 v29, v1

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_724

    :goto_723
    throw v0

    :goto_724
    goto :goto_723
.end method

.method public static toString(D)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x18

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 70
    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/fastjson/util/RyuDouble;->toString(D[CI)I

    move-result p0

    .line 71
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method
