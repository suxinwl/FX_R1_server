.class public final Lcom/google/common/primitives/UnsignedLongs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final MAX_VALUE:J = -0x1L

.field private static final maxSafeDigits:[I

.field private static final maxValueDivs:[J

.field private static final maxValueMods:[I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/16 v0, 0x25

    new-array v1, v0, [J

    .line 408
    sput-object v1, Lcom/google/common/primitives/UnsignedLongs;->maxValueDivs:[J

    new-array v1, v0, [I

    .line 409
    sput-object v1, Lcom/google/common/primitives/UnsignedLongs;->maxValueMods:[I

    new-array v0, v0, [I

    .line 410
    sput-object v0, Lcom/google/common/primitives/UnsignedLongs;->maxSafeDigits:[I

    .line 413
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "10000000000000000"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x2

    :goto_18
    const/16 v2, 0x24

    if-gt v1, v2, :cond_41

    .line 415
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueDivs:[J

    int-to-long v3, v1

    const-wide/16 v5, -0x1

    invoke-static {v5, v6, v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->divide(JJ)J

    move-result-wide v7

    aput-wide v7, v2, v1

    .line 416
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueMods:[I

    invoke-static {v5, v6, v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    aput v4, v2, v1

    .line 417
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxSafeDigits:[I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_41
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(JJ)I
    .registers 4

    .line 76
    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide p0

    invoke-static {p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static decode(Ljava/lang/String;)J
    .registers 5

    .line 275
    invoke-static {p0}, Lcom/google/common/primitives/ParseRequest;->fromString(Ljava/lang/String;)Lcom/google/common/primitives/ParseRequest;

    move-result-object v0

    .line 278
    :try_start_4
    iget-object v1, v0, Lcom/google/common/primitives/ParseRequest;->rawValue:Ljava/lang/String;

    iget v0, v0, Lcom/google/common/primitives/ParseRequest;->radix:I

    invoke-static {v1, v0}, Lcom/google/common/primitives/UnsignedLongs;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_c} :catch_d

    return-wide v0

    :catch_d
    move-exception v0

    .line 280
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v1, v0}, Ljava/lang/NumberFormatException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 283
    throw v1
.end method

.method public static divide(JJ)J
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_10

    .line 187
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result p0

    if-gez p0, :cond_d

    return-wide v0

    :cond_d
    const-wide/16 p0, 0x1

    return-wide p0

    :cond_10
    cmp-long v2, p0, v0

    if-ltz v2, :cond_16

    .line 196
    div-long/2addr p0, p2

    return-wide p0

    :cond_16
    const/4 v0, 0x1

    ushr-long v1, p0, v0

    .line 205
    div-long/2addr v1, p2

    shl-long/2addr v1, v0

    mul-long v3, v1, p2

    sub-long/2addr p0, v3

    .line 207
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result p0

    if-ltz p0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    int-to-long p0, v0

    add-long/2addr v1, p0

    return-wide v1
.end method

.method private static flip(J)J
    .registers 4

    const-wide/high16 v0, -0x8000000000000000L

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static varargs join(Ljava/lang/String;[J)Ljava/lang/String;
    .registers 6

    .line 128
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    array-length v0, p1

    if-nez v0, :cond_9

    const-string p0, ""

    return-object p0

    .line 134
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 135
    aget-wide v1, p1, v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/UnsignedLongs;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 136
    :goto_1c
    array-length v2, p1

    if-ge v1, v2, :cond_2e

    .line 137
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 139
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[J>;"
        }
    .end annotation

    .line 154
    sget-object v0, Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([J)J
    .registers 7

    .line 108
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 109
    aget-wide v0, p0, v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v0

    .line 110
    :goto_11
    array-length v3, p0

    if-ge v2, v3, :cond_22

    .line 111
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-lez v5, :cond_1f

    move-wide v0, v3

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 116
    :cond_22
    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs min([J)J
    .registers 7

    .line 88
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 89
    aget-wide v0, p0, v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v0

    .line 90
    :goto_11
    array-length v3, p0

    if-ge v2, v3, :cond_22

    .line 91
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-gez v5, :cond_1f

    move-wide v0, v3

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 96
    :cond_22
    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static overflowInParse(JII)Z
    .registers 10

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-ltz v3, :cond_20

    .line 332
    sget-object v1, Lcom/google/common/primitives/UnsignedLongs;->maxValueDivs:[J

    aget-wide v2, v1, p3

    const/4 v4, 0x0

    cmp-long v5, p0, v2

    if-gez v5, :cond_11

    return v4

    .line 335
    :cond_11
    aget-wide v2, v1, p3

    cmp-long v1, p0, v2

    if-lez v1, :cond_18

    return v0

    .line 339
    :cond_18
    sget-object p0, Lcom/google/common/primitives/UnsignedLongs;->maxValueMods:[I

    aget p0, p0, p3

    if-le p2, p0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :cond_20
    :goto_20
    return v0
.end method

.method public static parseUnsignedLong(Ljava/lang/String;)J
    .registers 3

    const/16 v0, 0xa

    .line 254
    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedLongs;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseUnsignedLong(Ljava/lang/String;I)J
    .registers 9

    .line 300
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_70

    const/4 v0, 0x2

    if-lt p1, v0, :cond_59

    const/16 v0, 0x24

    if-gt p1, v0, :cond_59

    .line 308
    sget-object v0, Lcom/google/common/primitives/UnsignedLongs;->maxSafeDigits:[I

    aget v0, v0, p1

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 310
    :goto_19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_58

    .line 311
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_52

    if-le v3, v0, :cond_4a

    .line 315
    invoke-static {v1, v2, v4, p1}, Lcom/google/common/primitives/UnsignedLongs;->overflowInParse(JII)Z

    move-result v5

    if-nez v5, :cond_33

    goto :goto_4a

    .line 316
    :cond_33
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too large for unsigned long: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4a
    :goto_4a
    int-to-long v5, p1

    mul-long v1, v1, v5

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 313
    :cond_52
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_58
    return-wide v1

    .line 305
    :cond_59
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal radix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 302
    :cond_70
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "empty string"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    goto :goto_79

    :goto_78
    throw p0

    :goto_79
    goto :goto_78
.end method

.method public static remainder(JJ)J
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_f

    .line 221
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v0

    if-gez v0, :cond_d

    return-wide p0

    :cond_d
    sub-long/2addr p0, p2

    return-wide p0

    :cond_f
    cmp-long v2, p0, v0

    if-ltz v2, :cond_15

    .line 230
    rem-long/2addr p0, p2

    return-wide p0

    :cond_15
    const/4 v2, 0x1

    ushr-long v3, p0, v2

    .line 239
    div-long/2addr v3, p2

    shl-long v2, v3, v2

    mul-long v2, v2, p2

    sub-long/2addr p0, v2

    .line 241
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v2

    if-ltz v2, :cond_25

    goto :goto_26

    :cond_25
    move-wide p2, v0

    :goto_26
    sub-long/2addr p0, p2

    return-wide p0
.end method

.method public static toString(J)Ljava/lang/String;
    .registers 3

    const/16 v0, 0xa

    .line 350
    invoke-static {p0, p1, v0}, Lcom/google/common/primitives/UnsignedLongs;->toString(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(JI)Ljava/lang/String;
    .registers 14

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-lt p2, v1, :cond_a

    const/16 v1, 0x24

    if-gt p2, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    const-string v2, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX"

    .line 363
    invoke-static {v1, v2, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-nez v3, :cond_19

    const-string p0, "0"

    return-object p0

    :cond_19
    cmp-long v3, p0, v1

    if-lez v3, :cond_22

    .line 371
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    const/16 v3, 0x40

    new-array v4, v3, [C

    add-int/lit8 v5, p2, -0x1

    and-int v6, p2, v5

    if-nez v6, :cond_40

    .line 377
    invoke-static {p2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v6

    :cond_30
    add-int/lit8 v3, v3, -0x1

    long-to-int v0, p0

    and-int/2addr v0, v5

    .line 380
    invoke-static {v0, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    aput-char v0, v4, v3

    ushr-long/2addr p0, v6

    cmp-long v0, p0, v1

    if-nez v0, :cond_30

    goto :goto_70

    :cond_40
    and-int/lit8 v3, p2, 0x1

    if-nez v3, :cond_4b

    ushr-long v5, p0, v0

    ushr-int/lit8 v0, p2, 0x1

    int-to-long v7, v0

    .line 389
    div-long/2addr v5, v7

    goto :goto_50

    :cond_4b
    int-to-long v5, p2

    .line 391
    invoke-static {p0, p1, v5, v6}, Lcom/google/common/primitives/UnsignedLongs;->divide(JJ)J

    move-result-wide v5

    :goto_50
    int-to-long v7, p2

    mul-long v9, v5, v7

    sub-long/2addr p0, v9

    const/16 v0, 0x3f

    long-to-int p1, p0

    .line 394
    invoke-static {p1, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result p0

    aput-char p0, v4, v0

    const/16 v3, 0x3f

    :goto_5f
    cmp-long p0, v5, v1

    if-lez p0, :cond_70

    add-int/lit8 v3, v3, -0x1

    .line 398
    rem-long p0, v5, v7

    long-to-int p1, p0

    invoke-static {p1, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result p0

    aput-char p0, v4, v3

    .line 399
    div-long/2addr v5, v7

    goto :goto_5f

    .line 403
    :cond_70
    :goto_70
    new-instance p0, Ljava/lang/String;

    rsub-int/lit8 p1, v3, 0x40

    invoke-direct {p0, v4, v3, p1}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method
