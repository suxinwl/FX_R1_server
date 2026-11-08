.class public final Lcom/google/common/math/LongMath;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/LongMath$MillerRabinTester;
    }
.end annotation


# static fields
.field static final FLOOR_SQRT_MAX_LONG:J = 0xb504f333L

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:J = -0x4afb0ccc06219b7cL

.field static final MAX_SIGNED_POWER_OF_TWO:J = 0x4000000000000000L

.field private static final SIEVE_30:I = -0x208a2883

.field static final biggestBinomials:[I

.field static final biggestSimpleBinomials:[I

.field static final factorials:[J

.field static final halfPowersOf10:[J

.field static final maxLog10ForLeadingZeros:[B

.field private static final millerRabinBaseSets:[[J

.field static final powersOf10:[J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 205
    fill-array-data v0, :array_74

    sput-object v0, Lcom/google/common/math/LongMath;->maxLog10ForLeadingZeros:[B

    const/16 v0, 0x13

    new-array v1, v0, [J

    .line 213
    fill-array-data v1, :array_98

    sput-object v1, Lcom/google/common/math/LongMath;->powersOf10:[J

    new-array v0, v0, [J

    .line 238
    fill-array-data v0, :array_e8

    sput-object v0, Lcom/google/common/math/LongMath;->halfPowersOf10:[J

    const/16 v0, 0x15

    new-array v0, v0, [J

    .line 778
    fill-array-data v0, :array_138

    sput-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    const/16 v0, 0x22

    new-array v0, v0, [I

    .line 886
    fill-array-data v0, :array_190

    sput-object v0, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    const/16 v0, 0x1f

    new-array v0, v0, [I

    .line 928
    fill-array-data v0, :array_1d8

    sput-object v0, Lcom/google/common/math/LongMath;->biggestSimpleBinomials:[I

    const/4 v0, 0x7

    new-array v1, v0, [[J

    const/4 v2, 0x2

    new-array v3, v2, [J

    .line 1043
    fill-array-data v3, :array_21a

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x3

    new-array v4, v3, [J

    fill-array-data v4, :array_226

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x4

    new-array v5, v4, [J

    fill-array-data v5, :array_236

    aput-object v5, v1, v2

    const/4 v2, 0x5

    new-array v5, v2, [J

    fill-array-data v5, :array_24a

    aput-object v5, v1, v3

    const/4 v3, 0x6

    new-array v5, v3, [J

    fill-array-data v5, :array_262

    aput-object v5, v1, v4

    new-array v0, v0, [J

    fill-array-data v0, :array_27e

    aput-object v0, v1, v2

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_29e

    aput-object v0, v1, v3

    sput-object v1, Lcom/google/common/math/LongMath;->millerRabinBaseSets:[[J

    return-void

    :array_74
    .array-data 1
        0x13t
        0x12t
        0x12t
        0x12t
        0x12t
        0x11t
        0x11t
        0x11t
        0x10t
        0x10t
        0x10t
        0xft
        0xft
        0xft
        0xft
        0xet
        0xet
        0xet
        0xdt
        0xdt
        0xdt
        0xct
        0xct
        0xct
        0xct
        0xbt
        0xbt
        0xbt
        0xat
        0xat
        0xat
        0x9t
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_98
    .array-data 8
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
        0x174876e800L
        0xe8d4a51000L
        0x9184e72a000L
        0x5af3107a4000L
        0x38d7ea4c68000L
        0x2386f26fc10000L
        0x16345785d8a0000L
        0xde0b6b3a7640000L
    .end array-data

    :array_e8
    .array-data 8
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0xbc7c871cL
        0x75cdd4719L
        0x49a0a4c700L
        0x2e0466fc608L
        0x1cc2c05dbc53L
        0x11f9b83a95b45L
        0xb3c13249d90bbL
        0x7058bf6e27a751L
        0x463777a4d8c892dL
        0x2be2aac7077d5bc3L    # 2.731041190138108E-97
    .end array-data

    :array_138
    .array-data 8
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
        0x17328cc00L
        0x144c3b2800L
        0x13077775800L
        0x130777758000L
        0x1437eeecd8000L
        0x16beecca730000L
        0x1b02b9306890000L
        0x21c3677c82b40000L
    .end array-data

    :array_190
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x3a25db
        0x1dc79
        0x3f2f
        0x10f1
        0x6c5
        0x377
        0x216
        0x169
        0x109
        0xce
        0xa9
        0x8f
        0x7d
        0x6f
        0x65
        0x5e
        0x58
        0x53
        0x4f
        0x4c
        0x4a
        0x48
        0x46
        0x45
        0x44
        0x43
        0x43
        0x42
        0x42
        0x42
        0x42
    .end array-data

    :array_1d8
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x285146
        0x150eb
        0x2dcc
        0xc92
        0x521
        0x2ac
        0x1a3
        0x11f
        0xd6
        0xa9
        0x8b
        0x77
        0x69
        0x5f
        0x57
        0x51
        0x4c
        0x49
        0x46
        0x44
        0x42
        0x40
        0x3f
        0x3e
        0x3e
        0x3d
        0x3d
        0x3d
    .end array-data

    :array_21a
    .array-data 8
        0x473f6
        0x1c1111acd0b9428L    # 3.1855675420061E-300
    .end array-data

    :array_226
    .array-data 8
        0x34c91838
        0xa10ad7d5c6610c1L
        0x318a8c12ce9c70e7L    # 4.808051585655767E-70
    .end array-data

    :array_236
    .array-data 8
        0x3fc6e038e0L
        0xf
        0x1b6ebec62L
        0x386c87553e12cL
    .end array-data

    :array_24a
    .array-data 8
        0x2b5343fd6a30L
        0x2
        0x273abc
        0xca2b9d9
        0xdf8286ccL
    .end array-data

    :array_262
    .array-data 8
        0x1c6b470864f682L
        0x2
        0x3c1c7396f6dL
        0x2142e2e3f22de5cL
        0x297105b6b7b29ddL
        0x370eb221a5f176ddL    # 1.7205605495331308E-43
    .end array-data

    :array_27e
    .array-data 8
        0x81f23f390affe88L
        0x2
        0x70722e8f5cd0L
        0x20cd6bd5ace2d1L
        0x9bbc940c751630L
        0xa90404784bfcb4dL    # 8.45563543651314E-258
        0x1189b3f265c2b0c7L
    .end array-data

    :array_29e
    .array-data 8
        0x7fffffffffffffffL
        0x2
        0x145
        0x249f
        0x6e12
        0x6e0d7
        0x953d18
        0x6b0191fe
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 1230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)J
    .registers 13

    const-string v0, "n"

    .line 809
    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const-string v0, "k"

    .line 810
    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const/4 v0, 0x1

    if-gt p1, p0, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    const-string v2, "k (%s) > n (%s)"

    .line 811
    invoke-static {v1, v2, p1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    shr-int/lit8 v1, p0, 0x1

    if-le p1, v1, :cond_1b

    sub-int p1, p0, p1

    :cond_1b
    const-wide/16 v1, 0x1

    if-eqz p1, :cond_89

    if-eq p1, v0, :cond_87

    .line 821
    sget-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    array-length v3, v0

    if-ge p0, v3, :cond_31

    .line 822
    aget-wide v1, v0, p0

    aget-wide v3, v0, p1

    sub-int/2addr p0, p1

    aget-wide p0, v0, p0

    mul-long v3, v3, p0

    div-long/2addr v1, v3

    return-wide v1

    .line 823
    :cond_31
    sget-object v0, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    array-length v3, v0

    if-ge p1, v3, :cond_81

    aget v0, v0, p1

    if-le p0, v0, :cond_3b

    goto :goto_81

    .line 825
    :cond_3b
    sget-object v0, Lcom/google/common/math/LongMath;->biggestSimpleBinomials:[I

    array-length v3, v0

    const/4 v4, 0x2

    if-ge p1, v3, :cond_55

    aget v0, v0, p1

    if-gt p0, v0, :cond_55

    add-int/lit8 v0, p0, -0x1

    int-to-long v1, p0

    :goto_48
    if-gt v4, p1, :cond_54

    int-to-long v5, v0

    mul-long v1, v1, v5

    int-to-long v5, v4

    .line 830
    div-long/2addr v1, v5

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    :cond_54
    return-wide v1

    :cond_55
    int-to-long v5, p0

    .line 834
    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v5, v6, v0}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v0

    add-int/lit8 p0, p0, -0x1

    move v8, v0

    move-wide v3, v5

    const/4 v7, 0x2

    move-wide v5, v1

    :goto_62
    if-gt v7, p1, :cond_7c

    add-int/2addr v8, v0

    const/16 v9, 0x3f

    if-ge v8, v9, :cond_70

    int-to-long v9, p0

    mul-long v3, v3, v9

    int-to-long v9, v7

    mul-long v5, v5, v9

    goto :goto_77

    .line 857
    :cond_70
    invoke-static/range {v1 .. v6}, Lcom/google/common/math/LongMath;->multiplyFraction(JJJ)J

    move-result-wide v1

    int-to-long v3, p0

    int-to-long v5, v7

    move v8, v0

    :goto_77
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 p0, p0, -0x1

    goto :goto_62

    .line 863
    :cond_7c
    invoke-static/range {v1 .. v6}, Lcom/google/common/math/LongMath;->multiplyFraction(JJJ)J

    move-result-wide p0

    return-wide p0

    :cond_81
    :goto_81
    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    :cond_87
    int-to-long p0, p0

    return-wide p0

    :cond_89
    return-wide v1
.end method

.method public static ceilingPowerOfTwo(J)J
    .registers 5

    const-string v0, "x"

    .line 67
    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_16

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    .line 71
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    neg-int p0, p0

    shl-long p0, v0, p0

    return-wide p0

    .line 69
    :cond_16
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ceilingPowerOfTwo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ") is not representable as a long"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkedAdd(JJ)J
    .registers 11

    add-long v0, p0, p2

    xor-long/2addr p2, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    if-gez v6, :cond_d

    const/4 p2, 0x1

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    :goto_e
    xor-long/2addr p0, v0

    cmp-long p3, p0, v4

    if-ltz p3, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    or-int p0, p2, v2

    .line 547
    invoke-static {p0}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    return-wide v0
.end method

.method public static checkedMultiply(JJ)J
    .registers 12

    .line 571
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    const-wide/16 v1, -0x1

    xor-long v3, p0, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    add-int/2addr v0, v3

    xor-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x41

    if-le v0, v1, :cond_1f

    mul-long p0, p0, p2

    return-wide p0

    :cond_1f
    const/16 v1, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    .line 589
    :goto_28
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    const-wide/16 v0, 0x0

    cmp-long v4, p0, v0

    if-ltz v4, :cond_33

    const/4 v4, 0x1

    goto :goto_34

    :cond_33
    const/4 v4, 0x0

    :goto_34
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, p2, v5

    if-eqz v7, :cond_3c

    const/4 v5, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v5, 0x0

    :goto_3d
    or-int/2addr v4, v5

    .line 590
    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    mul-long v4, p0, p2

    cmp-long v6, p0, v0

    if-eqz v6, :cond_4f

    .line 592
    div-long p0, v4, p0

    cmp-long v0, p0, p2

    if-nez v0, :cond_4e

    goto :goto_4f

    :cond_4e
    const/4 v2, 0x0

    :cond_4f
    :goto_4f
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    return-wide v4
.end method

.method public static checkedPow(JI)J
    .registers 10

    const-string v0, "exponent"

    .line 604
    invoke-static {v0, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, -0x2

    cmp-long v4, p0, v2

    if-ltz v4, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    const-wide/16 v3, 0x2

    cmp-long v5, p0, v3

    if-gtz v5, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    :goto_19
    and-int/2addr v2, v3

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_5f

    long-to-int p1, p0

    const/4 p0, -0x2

    const-wide/16 v5, -0x1

    if-eq p1, p0, :cond_4d

    const/4 p0, -0x1

    if-eq p1, p0, :cond_46

    if-eqz p1, :cond_40

    if-eq p1, v1, :cond_3f

    const/4 p0, 0x2

    if-ne p1, p0, :cond_39

    const/16 p0, 0x3f

    if-ge p2, p0, :cond_33

    const/4 v0, 0x1

    .line 614
    :cond_33
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    shl-long p0, v3, p2

    return-wide p0

    .line 620
    :cond_39
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3f
    return-wide v3

    :cond_40
    if-nez p2, :cond_43

    goto :goto_45

    :cond_43
    const-wide/16 v3, 0x0

    :goto_45
    return-wide v3

    :cond_46
    and-int/lit8 p0, p2, 0x1

    if-nez p0, :cond_4b

    goto :goto_4c

    :cond_4b
    move-wide v3, v5

    :goto_4c
    return-wide v3

    :cond_4d
    const/16 p0, 0x40

    if-ge p2, p0, :cond_52

    const/4 v0, 0x1

    .line 617
    :cond_52
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    and-int/lit8 p0, p2, 0x1

    if-nez p0, :cond_5c

    shl-long p0, v3, p2

    goto :goto_5e

    :cond_5c
    shl-long p0, v5, p2

    :goto_5e
    return-wide p0

    :cond_5f
    :goto_5f
    if-eqz p2, :cond_90

    if-eq p2, v1, :cond_8b

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_6c

    .line 632
    invoke-static {v3, v4, p0, p1}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v2

    move-wide v3, v2

    :cond_6c
    shr-int/lit8 p2, p2, 0x1

    if-lez p2, :cond_5f

    const-wide v5, -0xb504f333L

    cmp-long v2, v5, p0

    if-gtz v2, :cond_84

    const-wide v5, 0xb504f333L

    cmp-long v2, p0, v5

    if-gtz v2, :cond_84

    const/4 v2, 0x1

    goto :goto_85

    :cond_84
    const/4 v2, 0x0

    .line 636
    :goto_85
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    mul-long p0, p0, p0

    goto :goto_5f

    .line 629
    :cond_8b
    invoke-static {v3, v4, p0, p1}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_90
    return-wide v3
.end method

.method public static checkedSubtract(JJ)J
    .registers 11

    sub-long v0, p0, p2

    xor-long/2addr p2, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    if-ltz v6, :cond_d

    const/4 p2, 0x1

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    :goto_e
    xor-long/2addr p0, v0

    cmp-long p3, p0, v4

    if-ltz p3, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    or-int p0, p2, v2

    .line 559
    invoke-static {p0}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    return-wide v0
.end method

.method public static divide(JJLjava/math/RoundingMode;)J
    .registers 13

    .line 385
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    div-long v0, p0, p2

    mul-long v2, p2, v0

    sub-long v2, p0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_10

    return-wide v0

    :cond_10
    xor-long/2addr p0, p2

    const/16 v6, 0x3f

    shr-long/2addr p0, v6

    long-to-int p1, p0

    const/4 p0, 0x1

    or-int/2addr p1, p0

    .line 402
    sget-object v6, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p4}, Ljava/math/RoundingMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x0

    packed-switch v6, :pswitch_data_6c

    .line 432
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 421
    :pswitch_29
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 422
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    sub-long/2addr p2, v2

    sub-long/2addr v2, p2

    cmp-long p2, v2, v4

    if-nez p2, :cond_51

    .line 426
    sget-object p2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-ne p4, p2, :cond_3d

    const/4 p2, 0x1

    goto :goto_3e

    :cond_3d
    const/4 p2, 0x0

    :goto_3e
    sget-object p3, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p4, p3, :cond_44

    const/4 p3, 0x1

    goto :goto_45

    :cond_44
    const/4 p3, 0x0

    :goto_45
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long p4, v2, v4

    if-eqz p4, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 p0, 0x0

    :goto_4e
    and-int/2addr p0, p3

    or-int/2addr p0, p2

    goto :goto_66

    :cond_51
    cmp-long p2, v2, v4

    if-lez p2, :cond_65

    goto :goto_66

    :pswitch_56
    if-lez p1, :cond_65

    goto :goto_66

    :pswitch_59
    if-gez p1, :cond_65

    goto :goto_66

    :pswitch_5c
    cmp-long p2, v2, v4

    if-nez p2, :cond_61

    goto :goto_62

    :cond_61
    const/4 p0, 0x0

    .line 404
    :goto_62
    invoke-static {p0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :cond_65
    :pswitch_65
    const/4 p0, 0x0

    :goto_66
    :pswitch_66
    if-eqz p0, :cond_6a

    int-to-long p0, p1

    add-long/2addr v0, p0

    :cond_6a
    return-wide v0

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_65
        :pswitch_59
        :pswitch_66
        :pswitch_56
        :pswitch_29
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method public static factorial(I)J
    .registers 4

    const-string v0, "n"

    .line 774
    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 775
    sget-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    array-length v1, v0

    if-ge p0, v1, :cond_d

    aget-wide v1, v0, p0

    goto :goto_12

    :cond_d
    const-wide v1, 0x7fffffffffffffffL

    :goto_12
    return-wide v1
.end method

.method static fitsInInt(J)Z
    .registers 5

    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v2, v0, p0

    if-nez v2, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static floorPowerOfTwo(J)J
    .registers 4

    const-string v0, "x"

    .line 83
    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 87
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x3f

    const-wide/16 v0, 0x1

    shl-long p0, v0, p0

    return-wide p0
.end method

.method public static gcd(JJ)J
    .registers 8

    const-string v0, "a"

    .line 500
    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    const-string v0, "b"

    .line 501
    invoke-static {v0, p2, p3}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_11

    return-wide p2

    :cond_11
    cmp-long v2, p2, v0

    if-nez v2, :cond_16

    return-wide p0

    .line 513
    :cond_16
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    shr-long/2addr p0, v0

    .line 515
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    shr-long/2addr p2, v1

    :goto_20
    cmp-long v2, p0, p2

    if-eqz v2, :cond_33

    sub-long/2addr p0, p2

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    and-long/2addr v2, p0

    sub-long/2addr p0, v2

    sub-long/2addr p0, v2

    add-long/2addr p2, v2

    .line 534
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v2

    shr-long/2addr p0, v2

    goto :goto_20

    .line 536
    :cond_33
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    shl-long/2addr p0, p2

    return-wide p0
.end method

.method public static isPowerOfTwo(J)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-lez v4, :cond_a

    const/4 v4, 0x1

    goto :goto_b

    :cond_a
    const/4 v4, 0x0

    :goto_b
    const-wide/16 v5, 0x1

    sub-long v5, p0, v5

    and-long/2addr p0, v5

    cmp-long v5, p0, v2

    if-nez v5, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    and-int p0, v4, v0

    return p0
.end method

.method public static isPrime(J)Z
    .registers 13

    const-wide/16 v0, 0x2

    const/4 v2, 0x0

    cmp-long v3, p0, v0

    if-gez v3, :cond_d

    const-string v0, "n"

    .line 1006
    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    return v2

    :cond_d
    const/4 v3, 0x1

    cmp-long v4, p0, v0

    if-eqz v4, :cond_84

    const-wide/16 v0, 0x3

    cmp-long v4, p0, v0

    if-eqz v4, :cond_84

    const-wide/16 v0, 0x5

    cmp-long v4, p0, v0

    if-eqz v4, :cond_84

    const-wide/16 v0, 0x7

    cmp-long v4, p0, v0

    if-eqz v4, :cond_84

    const-wide/16 v4, 0xb

    cmp-long v6, p0, v4

    if-eqz v6, :cond_84

    const-wide/16 v6, 0xd

    cmp-long v8, p0, v6

    if-nez v8, :cond_31

    goto :goto_84

    :cond_31
    const v8, -0x208a2883

    const-wide/16 v9, 0x1e

    .line 1013
    rem-long v9, p0, v9

    long-to-int v10, v9

    shl-int v9, v3, v10

    and-int/2addr v8, v9

    if-eqz v8, :cond_3f

    return v2

    .line 1016
    :cond_3f
    rem-long v0, p0, v0

    const-wide/16 v8, 0x0

    cmp-long v10, v0, v8

    if-eqz v10, :cond_83

    rem-long v0, p0, v4

    cmp-long v4, v0, v8

    if-eqz v4, :cond_83

    rem-long v0, p0, v6

    cmp-long v4, v0, v8

    if-nez v4, :cond_54

    goto :goto_83

    :cond_54
    const-wide/16 v0, 0x121

    cmp-long v4, p0, v0

    if-gez v4, :cond_5b

    return v3

    .line 1023
    :cond_5b
    sget-object v0, Lcom/google/common/math/LongMath;->millerRabinBaseSets:[[J

    array-length v1, v0

    const/4 v4, 0x0

    :goto_5f
    if-ge v4, v1, :cond_7d

    aget-object v5, v0, v4

    .line 1024
    aget-wide v6, v5, v2

    cmp-long v8, p0, v6

    if-gtz v8, :cond_7a

    const/4 v0, 0x1

    .line 1025
    :goto_6a
    array-length v1, v5

    if-ge v0, v1, :cond_79

    .line 1026
    aget-wide v6, v5, v0

    invoke-static {v6, v7, p0, p1}, Lcom/google/common/math/LongMath$MillerRabinTester;->test(JJ)Z

    move-result v1

    if-nez v1, :cond_76

    return v2

    :cond_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    :cond_79
    return v3

    :cond_7a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5f

    .line 1033
    :cond_7d
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_83
    :goto_83
    return v2

    :cond_84
    :goto_84
    return v3
.end method

.method static lessThanBranchFree(JJ)I
    .registers 4

    sub-long/2addr p0, p2

    const-wide/16 p2, -0x1

    xor-long/2addr p0, p2

    xor-long/2addr p0, p2

    const/16 p2, 0x3f

    ushr-long/2addr p0, p2

    long-to-int p1, p0

    return p1
.end method

.method public static log10(JLjava/math/RoundingMode;)I
    .registers 7

    const-string v0, "x"

    .line 163
    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 164
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->log10Floor(J)I

    move-result v0

    .line 165
    sget-object v1, Lcom/google/common/math/LongMath;->powersOf10:[J

    aget-wide v2, v1, v0

    .line 166
    sget-object v1, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result p2

    aget p2, v1, p2

    packed-switch p2, :pswitch_data_38

    .line 182
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 180
    :pswitch_1e
    sget-object p2, Lcom/google/common/math/LongMath;->halfPowersOf10:[J

    aget-wide v1, p2, v0

    invoke-static {v1, v2, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result p0

    :goto_26
    add-int/2addr v0, p0

    return v0

    .line 175
    :pswitch_28
    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result p0

    goto :goto_26

    :pswitch_2d
    cmp-long p2, p0, v2

    if-nez p2, :cond_33

    const/4 p0, 0x1

    goto :goto_34

    :cond_33
    const/4 p0, 0x0

    .line 168
    :goto_34
    invoke-static {p0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_37
    return v0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_37
        :pswitch_37
        :pswitch_28
        :pswitch_28
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method

.method static log10Floor(J)I
    .registers 6

    .line 195
    sget-object v0, Lcom/google/common/math/LongMath;->maxLog10ForLeadingZeros:[B

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    aget-byte v0, v0, v1

    .line 200
    sget-object v1, Lcom/google/common/math/LongMath;->powersOf10:[J

    aget-wide v2, v1, v0

    invoke-static {p0, p1, v2, v3}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public static log2(JLjava/math/RoundingMode;)I
    .registers 5

    const-string v0, "x"

    .line 121
    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 122
    sget-object v0, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_42

    .line 145
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "impossible"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 138
    :pswitch_18
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p2

    const-wide v0, -0x4afb0ccc06219b7cL    # -2.734104117489491E-53

    ushr-long/2addr v0, p2

    rsub-int/lit8 p2, p2, 0x3f

    .line 142
    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result p0

    add-int/2addr p2, p0

    return p2

    :pswitch_2a
    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    .line 132
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x40

    return p0

    .line 124
    :pswitch_34
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->isPowerOfTwo(J)Z

    move-result p2

    invoke-static {p2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 128
    :pswitch_3b
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x3f

    return p0

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_34
        :pswitch_3b
        :pswitch_3b
        :pswitch_2a
        :pswitch_2a
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method public static mean(JJ)J
    .registers 6

    and-long v0, p0, p2

    xor-long/2addr p0, p2

    const/4 p2, 0x1

    shr-long/2addr p0, p2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static mod(JI)I
    .registers 5

    int-to-long v0, p2

    .line 458
    invoke-static {p0, p1, v0, v1}, Lcom/google/common/math/LongMath;->mod(JJ)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method public static mod(JJ)J
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_e

    .line 484
    rem-long/2addr p0, p2

    cmp-long v2, p0, v0

    if-ltz v2, :cond_c

    goto :goto_d

    :cond_c
    add-long/2addr p0, p2

    :goto_d
    return-wide p0

    .line 482
    :cond_e
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Modulus must be positive"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static multiplyFraction(JJJ)J
    .registers 9

    const-wide/16 v0, 0x1

    cmp-long v2, p0, v0

    if-nez v2, :cond_8

    .line 873
    div-long/2addr p2, p4

    return-wide p2

    .line 875
    :cond_8
    invoke-static {p0, p1, p4, p5}, Lcom/google/common/math/LongMath;->gcd(JJ)J

    move-result-wide v0

    .line 876
    div-long/2addr p0, v0

    .line 877
    div-long/2addr p4, v0

    .line 880
    div-long/2addr p2, p4

    mul-long p0, p0, p2

    return-wide p0
.end method

.method public static pow(JI)J
    .registers 10

    const-string v0, "exponent"

    .line 269
    invoke-static {v0, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const/4 v0, 0x1

    const-wide/16 v1, 0x1

    const-wide/16 v3, -0x2

    cmp-long v5, v3, p0

    if-gtz v5, :cond_4d

    const-wide/16 v3, 0x2

    cmp-long v5, p0, v3

    if-gtz v5, :cond_4d

    long-to-int p1, p0

    const/4 p0, -0x2

    const/16 v3, 0x40

    const-wide/16 v4, 0x0

    if-eq p1, p0, :cond_3f

    const/4 p0, -0x1

    if-eq p1, p0, :cond_37

    if-eqz p1, :cond_32

    if-eq p1, v0, :cond_31

    const/4 p0, 0x2

    if-ne p1, p0, :cond_2b

    if-ge p2, v3, :cond_2a

    shl-long v4, v1, p2

    :cond_2a
    return-wide v4

    .line 287
    :cond_2b
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_31
    return-wide v1

    :cond_32
    if-nez p2, :cond_35

    goto :goto_36

    :cond_35
    move-wide v1, v4

    :goto_36
    return-wide v1

    :cond_37
    and-int/lit8 p0, p2, 0x1

    if-nez p0, :cond_3c

    goto :goto_3e

    :cond_3c
    const-wide/16 v1, -0x1

    :goto_3e
    return-wide v1

    :cond_3f
    if-ge p2, v3, :cond_4c

    and-int/lit8 p0, p2, 0x1

    if-nez p0, :cond_48

    shl-long p0, v1, p2

    goto :goto_4b

    :cond_48
    shl-long p0, v1, p2

    neg-long p0, p0

    :goto_4b
    return-wide p0

    :cond_4c
    return-wide v4

    :cond_4d
    move-wide v3, v1

    :goto_4e
    if-eqz p2, :cond_62

    if-eq p2, v0, :cond_60

    and-int/lit8 v5, p2, 0x1

    if-nez v5, :cond_58

    move-wide v5, v1

    goto :goto_59

    :cond_58
    move-wide v5, p0

    :goto_59
    mul-long v3, v3, v5

    mul-long p0, p0, p0

    shr-int/lit8 p2, p2, 0x1

    goto :goto_4e

    :cond_60
    mul-long v3, v3, p0

    :cond_62
    return-wide v3
.end method

.method public static saturatedAdd(JJ)J
    .registers 11

    add-long v0, p0, p2

    xor-long/2addr p2, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    if-gez v6, :cond_d

    const/4 p2, 0x1

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    :goto_e
    xor-long/2addr p0, v0

    cmp-long p3, p0, v4

    if-ltz p3, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    or-int p0, p2, v2

    if-eqz p0, :cond_1a

    return-wide v0

    :cond_1a
    const-wide p0, 0x7fffffffffffffffL

    const/16 p2, 0x3f

    ushr-long p2, v0, p2

    const-wide/16 v0, 0x1

    xor-long/2addr p2, v0

    add-long/2addr p2, p0

    return-wide p2
.end method

.method public static saturatedMultiply(JJ)J
    .registers 15

    .line 688
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    const-wide/16 v1, -0x1

    xor-long v3, p0, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    add-int/2addr v0, v3

    xor-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x41

    if-le v0, v1, :cond_1f

    mul-long p0, p0, p2

    return-wide p0

    :cond_1f
    const-wide v1, 0x7fffffffffffffffL

    xor-long v3, p0, p2

    const/16 v5, 0x3f

    ushr-long/2addr v3, v5

    add-long/2addr v3, v1

    const/16 v1, 0x40

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-ge v0, v1, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    const-wide/16 v6, 0x0

    cmp-long v1, p0, v6

    if-gez v1, :cond_3b

    const/4 v1, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v10, p2, v8

    if-nez v10, :cond_43

    goto :goto_44

    :cond_43
    const/4 v2, 0x0

    :goto_44
    and-int/2addr v1, v2

    or-int/2addr v0, v1

    if-eqz v0, :cond_49

    return-wide v3

    :cond_49
    mul-long v0, p0, p2

    cmp-long v2, p0, v6

    if-eqz v2, :cond_57

    .line 703
    div-long p0, v0, p0

    cmp-long v2, p0, p2

    if-nez v2, :cond_56

    goto :goto_57

    :cond_56
    return-wide v3

    :cond_57
    :goto_57
    return-wide v0
.end method

.method public static saturatedPow(JI)J
    .registers 13

    const-string v0, "exponent"

    .line 717
    invoke-static {v0, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, -0x2

    cmp-long v4, p0, v2

    if-ltz v4, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    const-wide/16 v3, 0x2

    cmp-long v5, p0, v3

    if-gtz v5, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    :goto_19
    and-int/2addr v2, v3

    const/16 v3, 0x3f

    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v6, 0x1

    if-eqz v2, :cond_62

    long-to-int p1, p0

    const/4 p0, -0x2

    const-wide/16 v8, -0x1

    if-eq p1, p0, :cond_4f

    const/4 p0, -0x1

    if-eq p1, p0, :cond_48

    if-eqz p1, :cond_42

    if-eq p1, v1, :cond_41

    const/4 p0, 0x2

    if-ne p1, p0, :cond_3b

    if-lt p2, v3, :cond_38

    return-wide v4

    :cond_38
    shl-long p0, v6, p2

    return-wide p0

    .line 737
    :cond_3b
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_41
    return-wide v6

    :cond_42
    if-nez p2, :cond_45

    goto :goto_47

    :cond_45
    const-wide/16 v6, 0x0

    :goto_47
    return-wide v6

    :cond_48
    and-int/lit8 p0, p2, 0x1

    if-nez p0, :cond_4d

    goto :goto_4e

    :cond_4d
    move-wide v6, v8

    :goto_4e
    return-wide v6

    :cond_4f
    const/16 p0, 0x40

    if-lt p2, p0, :cond_58

    and-int/lit8 p0, p2, 0x1

    int-to-long p0, p0

    add-long/2addr p0, v4

    return-wide p0

    :cond_58
    and-int/lit8 p0, p2, 0x1

    if-nez p0, :cond_5f

    shl-long p0, v6, p2

    goto :goto_61

    :cond_5f
    shl-long p0, v8, p2

    :goto_61
    return-wide p0

    :cond_62
    ushr-long v2, p0, v3

    and-int/lit8 v8, p2, 0x1

    int-to-long v8, v8

    and-long/2addr v2, v8

    add-long/2addr v2, v4

    :cond_69
    :goto_69
    if-eqz p2, :cond_9e

    if-eq p2, v1, :cond_99

    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_76

    .line 751
    invoke-static {v6, v7, p0, p1}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v4

    move-wide v6, v4

    :cond_76
    shr-int/lit8 p2, p2, 0x1

    if-lez p2, :cond_69

    const-wide v4, -0xb504f333L

    cmp-long v8, v4, p0

    if-lez v8, :cond_85

    const/4 v4, 0x1

    goto :goto_86

    :cond_85
    const/4 v4, 0x0

    :goto_86
    const-wide v8, 0xb504f333L

    cmp-long v5, p0, v8

    if-lez v5, :cond_91

    const/4 v5, 0x1

    goto :goto_92

    :cond_91
    const/4 v5, 0x0

    :goto_92
    or-int/2addr v4, v5

    if-eqz v4, :cond_96

    return-wide v2

    :cond_96
    mul-long p0, p0, p0

    goto :goto_69

    .line 748
    :cond_99
    invoke-static {v6, v7, p0, p1}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_9e
    return-wide v6
.end method

.method public static saturatedSubtract(JJ)J
    .registers 11

    sub-long v0, p0, p2

    xor-long/2addr p2, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    if-ltz v6, :cond_d

    const/4 p2, 0x1

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    :goto_e
    xor-long/2addr p0, v0

    cmp-long p3, p0, v4

    if-ltz p3, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    or-int p0, p2, v2

    if-eqz p0, :cond_1a

    return-wide v0

    :cond_1a
    const-wide p0, 0x7fffffffffffffffL

    const/16 p2, 0x3f

    ushr-long p2, v0, p2

    const-wide/16 v0, 0x1

    xor-long/2addr p2, v0

    add-long/2addr p2, p0

    return-wide p2
.end method

.method public static sqrt(JLjava/math/RoundingMode;)J
    .registers 11

    const-string v0, "x"

    .line 313
    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 314
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->fitsInInt(J)Z

    move-result v0

    if-eqz v0, :cond_12

    long-to-int p1, p0

    .line 315
    invoke-static {p1, p2}, Lcom/google/common/math/IntMath;->sqrt(ILjava/math/RoundingMode;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_12
    long-to-double v0, p0

    .line 332
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-long v0, v0

    mul-long v2, v0, v0

    .line 337
    sget-object v4, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result p2

    aget p2, v4, p2

    const-wide/16 v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch p2, :pswitch_data_58

    .line 371
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_2f
    cmp-long p2, p0, v2

    if-gez p2, :cond_34

    goto :goto_35

    :cond_34
    const/4 v6, 0x0

    :goto_35
    int-to-long v2, v6

    sub-long/2addr v0, v2

    mul-long v2, v0, v0

    add-long/2addr v2, v0

    .line 369
    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0

    :pswitch_41
    cmp-long p2, p0, v2

    if-lez p2, :cond_46

    add-long/2addr v0, v4

    :cond_46
    return-wide v0

    :pswitch_47
    cmp-long p2, p0, v2

    if-gez p2, :cond_4c

    sub-long/2addr v0, v4

    :cond_4c
    return-wide v0

    :pswitch_4d
    cmp-long p2, v2, p0

    if-nez p2, :cond_52

    goto :goto_53

    :cond_52
    const/4 v6, 0x0

    .line 339
    :goto_53
    invoke-static {v6}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    return-wide v0

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_47
        :pswitch_47
        :pswitch_41
        :pswitch_41
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
    .end packed-switch
.end method
