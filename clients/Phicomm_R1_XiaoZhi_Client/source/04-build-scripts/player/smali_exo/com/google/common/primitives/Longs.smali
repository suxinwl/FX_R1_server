.class public final Lcom/google/common/primitives/Longs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Longs$LongArrayAsList;,
        Lcom/google/common/primitives/Longs$LexicographicalComparator;,
        Lcom/google/common/primitives/Longs$LongConverter;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x8

.field public static final MAX_POWER_OF_TWO:J = 0x4000000000000000L

.field private static final asciiDigits:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 304
    invoke-static {}, Lcom/google/common/primitives/Longs;->createAsciiDigits()[B

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/Longs;->asciiDigits:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([JJII)I
    .registers 5

    .line 47
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->indexOf([JJII)I

    move-result p0

    return p0
.end method

.method static synthetic access$100([JJII)I
    .registers 5

    .line 47
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->lastIndexOf([JJII)I

    move-result p0

    return p0
.end method

.method public static varargs asList([J)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 572
    array-length v0, p0

    if-nez v0, :cond_8

    .line 573
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 575
    :cond_8
    new-instance v0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;-><init>([J)V

    return-object v0
.end method

.method public static compare(JJ)I
    .registers 5

    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    const/4 p0, -0x1

    goto :goto_d

    :cond_6
    cmp-long v0, p0, p2

    if-lez v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static varargs concat([[J)[J
    .registers 8

    .line 236
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v2, v0, :cond_d

    aget-object v4, p0, v2

    .line 237
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 239
    :cond_d
    new-array v0, v3, [J

    .line 241
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    if-ge v3, v2, :cond_1f

    aget-object v5, p0, v3

    .line 242
    array-length v6, v5

    invoke-static {v5, v1, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1f
    return-object v0
.end method

.method public static contains([JJ)Z
    .registers 9

    .line 106
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_10

    aget-wide v3, p0, v2

    cmp-long v5, v3, p1

    if-nez v5, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_10
    return v1
.end method

.method private static createAsciiDigits()[B
    .registers 5

    const/16 v0, 0x80

    new-array v0, v0, [B

    const/4 v1, -0x1

    .line 308
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    const/16 v3, 0x9

    if-gt v2, v3, :cond_16

    add-int/lit8 v3, v2, 0x30

    int-to-byte v4, v2

    .line 310
    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_16
    :goto_16
    const/16 v2, 0x1a

    if-gt v1, v2, :cond_28

    add-int/lit8 v2, v1, 0x41

    add-int/lit8 v3, v1, 0xa

    int-to-byte v3, v3

    .line 313
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x61

    .line 314
    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_28
    return-object v0
.end method

.method private static digit(C)I
    .registers 2

    const/16 v0, 0x80

    if-ge p0, v0, :cond_9

    .line 320
    sget-object v0, Lcom/google/common/primitives/Longs;->asciiDigits:[B

    aget-byte p0, v0, p0

    goto :goto_a

    :cond_9
    const/4 p0, -0x1

    :goto_a
    return p0
.end method

.method public static ensureCapacity([JII)[J
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    const-string v3, "Invalid minLength: %s"

    .line 465
    invoke-static {v2, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    if-ltz p2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-string v1, "Invalid padding: %s"

    .line 466
    invoke-static {v0, v1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 467
    array-length v0, p0

    if-ge v0, p1, :cond_1d

    add-int/2addr p1, p2

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    :cond_1d
    return-object p0
.end method

.method public static fromByteArray([B)J
    .registers 15

    .line 281
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-lt v0, v3, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    array-length v4, p0

    const-string v5, "array too small: %s < %s"

    invoke-static {v0, v5, v4, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 282
    aget-byte v6, p0, v2

    aget-byte v7, p0, v1

    const/4 v0, 0x2

    aget-byte v8, p0, v0

    const/4 v0, 0x3

    aget-byte v9, p0, v0

    const/4 v0, 0x4

    aget-byte v10, p0, v0

    const/4 v0, 0x5

    aget-byte v11, p0, v0

    const/4 v0, 0x6

    aget-byte v12, p0, v0

    const/4 v0, 0x7

    aget-byte v13, p0, v0

    invoke-static/range {v6 .. v13}, Lcom/google/common/primitives/Longs;->fromBytes(BBBBBBBB)J

    move-result-wide v0

    return-wide v0
.end method

.method public static fromBytes(BBBBBBBB)J
    .registers 13

    int-to-long v0, p0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 p0, 0x38

    shl-long/2addr v0, p0

    int-to-long p0, p1

    and-long/2addr p0, v2

    const/16 v4, 0x30

    shl-long/2addr p0, v4

    or-long/2addr p0, v0

    int-to-long v0, p2

    and-long/2addr v0, v2

    const/16 p2, 0x28

    shl-long/2addr v0, p2

    or-long/2addr p0, v0

    int-to-long p2, p3

    and-long/2addr p2, v2

    const/16 v0, 0x20

    shl-long/2addr p2, v0

    or-long/2addr p0, p2

    int-to-long p2, p4

    and-long/2addr p2, v2

    const/16 p4, 0x18

    shl-long/2addr p2, p4

    or-long/2addr p0, p2

    int-to-long p2, p5

    and-long/2addr p2, v2

    const/16 p4, 0x10

    shl-long/2addr p2, p4

    or-long/2addr p0, p2

    int-to-long p2, p6

    and-long/2addr p2, v2

    const/16 p4, 0x8

    shl-long/2addr p2, p4

    or-long/2addr p0, p2

    int-to-long p2, p7

    and-long/2addr p2, v2

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public static hashCode(J)I
    .registers 4

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static indexOf([JJ)I
    .registers 5

    .line 123
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/common/primitives/Longs;->indexOf([JJII)I

    move-result p0

    return p0
.end method

.method private static indexOf([JJII)I
    .registers 8

    :goto_0
    if-ge p3, p4, :cond_c

    .line 129
    aget-wide v0, p0, p3

    cmp-long v2, v0, p1

    if-nez v2, :cond_9

    return p3

    :cond_9
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_c
    const/4 p0, -0x1

    return p0
.end method

.method public static indexOf([J[J)I
    .registers 10

    const-string v0, "array"

    .line 148
    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "target"

    .line 149
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return v1

    :cond_f
    const/4 v0, 0x0

    .line 155
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_2c

    const/4 v2, 0x0

    .line 156
    :goto_18
    array-length v3, p1

    if-ge v2, v3, :cond_2b

    add-int v3, v0, v2

    .line 157
    aget-wide v3, p0, v3

    aget-wide v5, p1, v2

    cmp-long v7, v3, v5

    if-eqz v7, :cond_28

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2b
    return v0

    :cond_2c
    const/4 p0, -0x1

    return p0
.end method

.method public static varargs join(Ljava/lang/String;[J)Ljava/lang/String;
    .registers 6

    .line 479
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    array-length v0, p1

    if-nez v0, :cond_9

    const-string p0, ""

    return-object p0

    .line 485
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 486
    aget-wide v1, p1, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 487
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_26

    .line 488
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, p1, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 490
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static lastIndexOf([JJ)I
    .registers 5

    .line 175
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/common/primitives/Longs;->lastIndexOf([JJII)I

    move-result p0

    return p0
.end method

.method private static lastIndexOf([JJII)I
    .registers 8

    add-int/lit8 p4, p4, -0x1

    :goto_2
    if-lt p4, p3, :cond_e

    .line 181
    aget-wide v0, p0, p4

    cmp-long v2, v0, p1

    if-nez v2, :cond_b

    return p4

    :cond_b
    add-int/lit8 p4, p4, -0x1

    goto :goto_2

    :cond_e
    const/4 p0, -0x1

    return p0
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

    .line 507
    sget-object v0, Lcom/google/common/primitives/Longs$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Longs$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([J)J
    .registers 7

    .line 216
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

    .line 217
    aget-wide v0, p0, v1

    .line 218
    :goto_d
    array-length v3, p0

    if-ge v2, v3, :cond_1b

    .line 219
    aget-wide v3, p0, v2

    cmp-long v5, v3, v0

    if-lez v5, :cond_18

    .line 220
    aget-wide v0, p0, v2

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1b
    return-wide v0
.end method

.method public static varargs min([J)J
    .registers 7

    .line 197
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

    .line 198
    aget-wide v0, p0, v1

    .line 199
    :goto_d
    array-length v3, p0

    if-ge v2, v3, :cond_1b

    .line 200
    aget-wide v3, p0, v2

    cmp-long v5, v3, v0

    if-gez v5, :cond_18

    .line 201
    aget-wide v0, p0, v2

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1b
    return-wide v0
.end method

.method public static stringConverter()Lcom/google/common/base/Converter;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 448
    sget-object v0, Lcom/google/common/primitives/Longs$LongConverter;->INSTANCE:Lcom/google/common/primitives/Longs$LongConverter;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[J
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)[J"
        }
    .end annotation

    .line 545
    instance-of v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    if-eqz v0, :cond_b

    .line 546
    check-cast p0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->toLongArray()[J

    move-result-object p0

    return-object p0

    .line 549
    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 550
    array-length v0, p0

    .line 551
    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_26

    .line 554
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_26
    return-object v1
.end method

.method public static toByteArray(J)[B
    .registers 7

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x7

    :goto_5
    if-ltz v2, :cond_12

    const-wide/16 v3, 0xff

    and-long/2addr v3, p0

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 263
    aput-byte v3, v1, v2

    shr-long/2addr p0, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_12
    return-object v1
.end method

.method public static tryParse(Ljava/lang/String;)Ljava/lang/Long;
    .registers 2
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/16 v0, 0xa

    .line 343
    invoke-static {p0, v0}, Lcom/google/common/primitives/Longs;->tryParse(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static tryParse(Ljava/lang/String;I)Ljava/lang/Long;
    .registers 20
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 369
    invoke-static/range {p0 .. p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    return-object v3

    :cond_12
    const/4 v2, 0x2

    if-lt v1, v2, :cond_7a

    const/16 v2, 0x24

    if-gt v1, v2, :cond_7a

    const/4 v2, 0x0

    .line 376
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_23

    const/4 v2, 0x1

    .line 378
    :cond_23
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v2, v4, :cond_2a

    return-object v3

    :cond_2a
    add-int/lit8 v4, v2, 0x1

    .line 381
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/google/common/primitives/Longs;->digit(C)I

    move-result v5

    if-ltz v5, :cond_79

    if-lt v5, v1, :cond_39

    goto :goto_79

    :cond_39
    neg-int v5, v5

    int-to-long v5, v5

    int-to-long v7, v1

    const-wide/high16 v9, -0x8000000000000000L

    .line 387
    div-long v11, v9, v7

    .line 389
    :goto_40
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v4, v13, :cond_67

    add-int/lit8 v13, v4, 0x1

    .line 390
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/Longs;->digit(C)I

    move-result v4

    if-ltz v4, :cond_66

    if-ge v4, v1, :cond_66

    cmp-long v14, v5, v11

    if-gez v14, :cond_59

    goto :goto_66

    :cond_59
    mul-long v5, v5, v7

    int-to-long v14, v4

    add-long v16, v14, v9

    cmp-long v4, v5, v16

    if-gez v4, :cond_63

    return-object v3

    :cond_63
    sub-long/2addr v5, v14

    move v4, v13

    goto :goto_40

    :cond_66
    :goto_66
    return-object v3

    :cond_67
    if-eqz v2, :cond_6e

    .line 402
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_6e
    cmp-long v0, v5, v9

    if-nez v0, :cond_73

    return-object v3

    :cond_73
    neg-long v0, v5

    .line 406
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_79
    :goto_79
    return-object v3

    .line 373
    :cond_7a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radix must be between MIN_RADIX and MAX_RADIX but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_92

    :goto_91
    throw v0

    :goto_92
    goto :goto_91
.end method
