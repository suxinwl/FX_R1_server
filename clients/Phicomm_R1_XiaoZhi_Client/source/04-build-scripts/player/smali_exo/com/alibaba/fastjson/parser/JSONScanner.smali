.class public final Lcom/alibaba/fastjson/parser/JSONScanner;
.super Lcom/alibaba/fastjson/parser/JSONLexerBase;


# instance fields
.field private final len:I

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 38
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 42
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>(I)V

    .line 44
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 49
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const p2, 0xfeff

    if-ne p1, p2, :cond_1b

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    :cond_1b
    return-void
.end method

.method public constructor <init>([CI)V
    .registers 4

    .line 70
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    return-void
.end method

.method public constructor <init>([CII)V
    .registers 6

    .line 74
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static charArrayCompare(Ljava/lang/String;I[C)Z
    .registers 8

    .line 82
    array-length v0, p2

    add-int v1, v0, p1

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_b

    return v3

    :cond_b
    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1c

    .line 88
    aget-char v2, p2, v1

    add-int v4, p1, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v2, v4, :cond_19

    return v3

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method static checkDate(CCCCCCII)Z
    .registers 11

    const/16 v0, 0x30

    const/4 v1, 0x0

    if-lt p0, v0, :cond_49

    const/16 v2, 0x39

    if-le p0, v2, :cond_a

    goto :goto_49

    :cond_a
    if-lt p1, v0, :cond_49

    if-le p1, v2, :cond_f

    goto :goto_49

    :cond_f
    if-lt p2, v0, :cond_49

    if-le p2, v2, :cond_14

    goto :goto_49

    :cond_14
    if-lt p3, v0, :cond_49

    if-le p3, v2, :cond_19

    goto :goto_49

    :cond_19
    const/16 p0, 0x32

    const/16 p1, 0x31

    if-ne p4, v0, :cond_24

    if-lt p5, p1, :cond_23

    if-le p5, v2, :cond_2d

    :cond_23
    return v1

    :cond_24
    if-ne p4, p1, :cond_49

    if-eq p5, v0, :cond_2d

    if-eq p5, p1, :cond_2d

    if-eq p5, p0, :cond_2d

    return v1

    :cond_2d
    if-ne p6, v0, :cond_34

    if-lt p7, p1, :cond_33

    if-le p7, v2, :cond_47

    :cond_33
    return v1

    :cond_34
    if-eq p6, p1, :cond_42

    if-ne p6, p0, :cond_39

    goto :goto_42

    :cond_39
    const/16 p0, 0x33

    if-ne p6, p0, :cond_41

    if-eq p7, v0, :cond_47

    if-eq p7, p1, :cond_47

    :cond_41
    return v1

    :cond_42
    :goto_42
    if-lt p7, v0, :cond_49

    if-le p7, v2, :cond_47

    goto :goto_49

    :cond_47
    const/4 p0, 0x1

    return p0

    :cond_49
    :goto_49
    return v1
.end method

.method private checkTime(CCCCCC)Z
    .registers 11

    const/16 v0, 0x39

    const/4 v1, 0x0

    const/16 v2, 0x30

    if-ne p1, v2, :cond_c

    if-lt p2, v2, :cond_b

    if-le p2, v0, :cond_20

    :cond_b
    return v1

    :cond_c
    const/16 v3, 0x31

    if-ne p1, v3, :cond_15

    if-lt p2, v2, :cond_14

    if-le p2, v0, :cond_20

    :cond_14
    return v1

    :cond_15
    const/16 v3, 0x32

    if-ne p1, v3, :cond_42

    if-lt p2, v2, :cond_42

    const/16 p1, 0x34

    if-le p2, p1, :cond_20

    goto :goto_42

    :cond_20
    const/16 p1, 0x35

    const/16 p2, 0x36

    if-lt p3, v2, :cond_2d

    if-gt p3, p1, :cond_2d

    if-lt p4, v2, :cond_2c

    if-le p4, v0, :cond_32

    :cond_2c
    return v1

    :cond_2d
    if-ne p3, p2, :cond_42

    if-eq p4, v2, :cond_32

    return v1

    :cond_32
    if-lt p5, v2, :cond_3b

    if-gt p5, p1, :cond_3b

    if-lt p6, v2, :cond_3a

    if-le p6, v0, :cond_40

    :cond_3a
    return v1

    :cond_3b
    if-ne p5, p2, :cond_42

    if-eq p6, v2, :cond_40

    return v1

    :cond_40
    const/4 p1, 0x1

    return p1

    :cond_42
    :goto_42
    return v1
.end method

.method private scanISO8601DateIfMatch(ZI)Z
    .registers 37

    move-object/from16 v9, p0

    move/from16 v10, p2

    const/16 v11, 0x8

    const/4 v12, 0x0

    if-ge v10, v11, :cond_a

    return v12

    .line 221
    :cond_a
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    .line 222
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v14, 0x1

    add-int/2addr v0, v14

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v15

    .line 223
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v8, 0x2

    add-int/2addr v0, v8

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 224
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v16, 0x3

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 225
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 226
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v6, 0x5

    add-int/2addr v2, v6

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 227
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v17, 0x6

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 228
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x7

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v5, 0x39

    const/16 v11, 0x30

    if-nez p1, :cond_c8

    const/16 v6, 0xd

    if-le v10, v6, :cond_c7

    .line 231
    iget v6, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v6, v10

    sub-int/2addr v6, v14

    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 232
    iget v14, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v14, v10

    sub-int/2addr v14, v8

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    const/16 v8, 0x2f

    if-ne v13, v8, :cond_c7

    const/16 v8, 0x44

    if-ne v15, v8, :cond_c7

    const/16 v8, 0x61

    if-ne v0, v8, :cond_c7

    const/16 v8, 0x74

    if-ne v7, v8, :cond_c7

    const/16 v8, 0x65

    if-ne v1, v8, :cond_c7

    const/16 v8, 0x28

    if-ne v2, v8, :cond_c7

    const/16 v8, 0x2f

    if-ne v6, v8, :cond_c7

    const/16 v6, 0x29

    if-ne v14, v6, :cond_c7

    const/4 v0, -0x1

    const/4 v1, 0x6

    :goto_88
    if-ge v1, v10, :cond_9f

    .line 237
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v1

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_97

    move v0, v1

    goto :goto_9c

    :cond_97
    if-lt v2, v11, :cond_9f

    if-le v2, v5, :cond_9c

    goto :goto_9f

    :cond_9c
    :goto_9c
    add-int/lit8 v1, v1, 0x1

    goto :goto_88

    :cond_9f
    :goto_9f
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a3

    return v12

    .line 247
    :cond_a3
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x6

    .line 248
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {v9, v1, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 251
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->timeZone:Ljava/util/TimeZone;

    iget-object v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->locale:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 252
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v6, 0x5

    .line 254
    iput v6, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    :goto_c5
    const/4 v0, 0x1

    return v0

    :cond_c7
    const/4 v6, 0x5

    :cond_c8
    const/16 v14, 0x10

    const/16 v11, 0xe

    const/16 v12, 0x2d

    const/16 v21, 0xa

    const/16 v5, 0x8

    if-eq v10, v5, :cond_593

    if-eq v10, v11, :cond_593

    if-ne v10, v14, :cond_e8

    .line 260
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0xa

    .line 262
    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v6, 0x54

    if-eq v5, v6, :cond_593

    const/16 v6, 0x20

    if-eq v5, v6, :cond_593

    :cond_e8
    const/16 v5, 0x11

    if-ne v10, v5, :cond_f8

    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x6

    .line 263
    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    if-eq v5, v12, :cond_f8

    goto/16 :goto_593

    :cond_f8
    const/16 v5, 0x9

    if-ge v10, v5, :cond_fe

    const/4 v6, 0x0

    return v6

    .line 386
    :cond_fe
    iget v6, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v18, 0x8

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 387
    iget v8, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v8, v5

    invoke-virtual {v9, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const v8, 0xc77c

    const/16 v11, 0x65e5

    if-ne v1, v12, :cond_11c

    if-eq v4, v12, :cond_119

    goto :goto_11c

    :cond_119
    :goto_119
    const/16 v14, 0x20

    goto :goto_125

    :cond_11c
    :goto_11c
    const/16 v14, 0x2f

    if-ne v1, v14, :cond_143

    const/16 v14, 0x2f

    if-ne v4, v14, :cond_143

    goto :goto_119

    :goto_125
    if-ne v5, v14, :cond_134

    move v5, v2

    move v4, v7

    move v1, v13

    move v2, v15

    const/16 v7, 0x30

    const/16 v13, 0x9

    :goto_12f
    move v15, v6

    move v6, v3

    :goto_131
    move v3, v0

    goto/16 :goto_1fe

    :cond_134
    move v4, v7

    move v1, v13

    const/16 v13, 0xa

    :goto_138
    move v7, v6

    move v6, v3

    move v3, v0

    move/from16 v32, v5

    move v5, v2

    move v2, v15

    move/from16 v15, v32

    goto/16 :goto_1fe

    :cond_143
    const/16 v14, 0x20

    if-ne v1, v12, :cond_16c

    if-ne v3, v12, :cond_16c

    if-ne v6, v14, :cond_159

    move v3, v0

    move v6, v2

    move v1, v13

    move v2, v15

    const/16 v5, 0x30

    const/16 v13, 0x8

    :goto_153
    move v15, v4

    move v4, v7

    const/16 v7, 0x30

    goto/16 :goto_1fe

    :cond_159
    move v3, v0

    move v1, v13

    const/16 v5, 0x30

    const/16 v13, 0x9

    :goto_15f
    move/from16 v32, v6

    move v6, v2

    move v2, v15

    move/from16 v15, v32

    move/from16 v33, v7

    move v7, v4

    move/from16 v4, v33

    goto/16 :goto_1fe

    :cond_16c
    const/16 v14, 0x2e

    if-ne v0, v14, :cond_174

    const/16 v14, 0x2e

    if-eq v2, v14, :cond_178

    :cond_174
    if-ne v0, v12, :cond_186

    if-ne v2, v12, :cond_186

    :cond_178
    move v2, v4

    move v4, v5

    move v5, v7

    move v7, v13

    const/16 v13, 0xa

    move/from16 v32, v6

    move v6, v1

    move v1, v3

    move/from16 v3, v32

    goto/16 :goto_1fe

    :cond_186
    const/16 v14, 0x54

    if-ne v6, v14, :cond_194

    move v5, v1

    move v6, v2

    move v1, v13

    move v2, v15

    const/16 v13, 0x8

    move v15, v4

    move v4, v7

    move v7, v3

    goto :goto_131

    :cond_194
    const/16 v14, 0x5e74

    if-eq v1, v14, :cond_1a0

    const v14, 0xb144

    if-ne v1, v14, :cond_19e

    goto :goto_1a0

    :cond_19e
    const/4 v1, 0x0

    return v1

    :cond_1a0
    :goto_1a0
    const/16 v1, 0x6708

    if-eq v4, v1, :cond_1d2

    const v1, 0xc6d4

    if-ne v4, v1, :cond_1aa

    goto :goto_1d2

    :cond_1aa
    const/16 v1, 0x6708

    if-eq v3, v1, :cond_1b6

    const v1, 0xc6d4

    if-ne v3, v1, :cond_1b4

    goto :goto_1b6

    :cond_1b4
    const/4 v1, 0x0

    return v1

    :cond_1b6
    :goto_1b6
    const/4 v1, 0x0

    if-eq v6, v11, :cond_1c9

    if-ne v6, v8, :cond_1bc

    goto :goto_1c9

    :cond_1bc
    if-eq v5, v11, :cond_1c2

    if-ne v5, v8, :cond_1c1

    goto :goto_1c2

    :cond_1c1
    return v1

    :cond_1c2
    :goto_1c2
    move v3, v0

    move v1, v13

    const/16 v5, 0x30

    const/16 v13, 0xa

    goto :goto_15f

    :cond_1c9
    :goto_1c9
    move v3, v0

    move v6, v2

    move v1, v13

    move v2, v15

    const/16 v5, 0x30

    const/16 v13, 0xa

    goto :goto_153

    :cond_1d2
    :goto_1d2
    if-eq v5, v11, :cond_1f4

    if-ne v5, v8, :cond_1d7

    goto :goto_1f4

    .line 461
    :cond_1d7
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-eq v1, v11, :cond_1ee

    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_1ec

    goto :goto_1ee

    :cond_1ec
    const/4 v1, 0x0

    return v1

    :cond_1ee
    :goto_1ee
    move v4, v7

    move v1, v13

    const/16 v13, 0xb

    goto/16 :goto_138

    :cond_1f4
    :goto_1f4
    move v5, v2

    move v4, v7

    move v1, v13

    move v2, v15

    const/16 v7, 0x30

    const/16 v13, 0xa

    goto/16 :goto_12f

    :goto_1fe
    move/from16 v24, v1

    move/from16 v25, v2

    move/from16 v26, v3

    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v7

    move/from16 v31, v15

    .line 488
    invoke-static/range {v24 .. v31}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v0

    if-nez v0, :cond_216

    const/4 v0, 0x0

    return v0

    :cond_216
    move-object/from16 v0, p0

    const/16 v14, 0x39

    const/4 v14, 0x5

    const/4 v12, 0x2

    move v8, v15

    .line 492
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 494
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    const/16 v0, 0x54

    if-ne v7, v0, :cond_2ba

    const/16 v0, 0x10

    if-ne v10, v0, :cond_2b8

    const/16 v0, 0x8

    if-ne v13, v0, :cond_2b8

    .line 495
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0xf

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_2b8

    .line 496
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 497
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    add-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 498
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    .line 499
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v11

    .line 500
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    add-int/2addr v0, v14

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    .line 501
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    .line 503
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v0

    if-nez v0, :cond_283

    const/4 v15, 0x0

    return v15

    :cond_283
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    .line 507
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 508
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v15}, Ljava/util/Calendar;->set(II)V

    .line 510
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    if-eqz v0, :cond_2b4

    .line 511
    invoke-static {v15}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v0

    .line 512
    array-length v1, v0

    if-lez v1, :cond_2b4

    .line 513
    aget-object v0, v0, v15

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 514
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 518
    :cond_2b4
    iput v14, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto/16 :goto_c5

    :cond_2b8
    const/16 v0, 0x54

    :cond_2ba
    if-eq v7, v0, :cond_368

    const/16 v0, 0x20

    if-ne v7, v0, :cond_2c4

    if-nez p1, :cond_2c4

    goto/16 :goto_368

    :cond_2c4
    const/16 v0, 0x22

    if-eq v7, v0, :cond_33c

    const/16 v0, 0x1a

    if-eq v7, v0, :cond_33c

    if-eq v7, v11, :cond_33c

    const v0, 0xc77c

    if-ne v7, v0, :cond_2d4

    goto :goto_33c

    :cond_2d4
    const/16 v0, 0x2b

    if-eq v7, v0, :cond_2df

    const/16 v0, 0x2d

    if-ne v7, v0, :cond_2dd

    goto :goto_2df

    :cond_2dd
    const/4 v0, 0x0

    return v0

    .line 535
    :cond_2df
    :goto_2df
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    add-int/lit8 v1, v13, 0x6

    if-ne v0, v1, :cond_33a

    .line 536
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v11, 0x3a

    if-ne v0, v11, :cond_338

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x4

    .line 537
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_338

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    add-int/2addr v0, v14

    .line 538
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_30a

    goto :goto_338

    :cond_30a
    const/16 v1, 0x30

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x30

    move-object/from16 v0, p0

    .line 542
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 543
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 544
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v13

    add-int/2addr v2, v12

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    invoke-virtual {v9, v7, v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCC)V

    return v1

    :cond_338
    :goto_338
    const/4 v0, 0x0

    return v0

    :cond_33a
    const/4 v0, 0x0

    return v0

    :cond_33c
    :goto_33c
    const/4 v0, 0x0

    .line 525
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 526
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 527
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 528
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 530
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 532
    iput v14, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto/16 :goto_c5

    :cond_368
    :goto_368
    const/16 v11, 0x3a

    add-int/lit8 v0, v13, 0x9

    if-ge v10, v0, :cond_370

    const/4 v0, 0x0

    return v0

    :cond_370
    const/4 v0, 0x0

    .line 552
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v13

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-eq v1, v11, :cond_37d

    return v0

    .line 555
    :cond_37d
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v13

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-eq v1, v11, :cond_389

    return v0

    .line 559
    :cond_389
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 560
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    add-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 561
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v15

    .line 562
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    add-int/2addr v0, v14

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v19

    .line 563
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v20

    .line 564
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    const/16 v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v18

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v15

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v18

    .line 566
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v0

    if-nez v0, :cond_3d1

    const/4 v0, 0x0

    return v0

    :cond_3d1
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v15

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v18

    .line 570
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 572
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    const/16 v1, 0x9

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_43c

    add-int/lit8 v0, v13, 0xb

    if-ge v10, v0, :cond_3f4

    const/4 v1, 0x0

    return v1

    .line 580
    :cond_3f4
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v13

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_43a

    const/16 v3, 0x39

    if-le v1, v3, :cond_406

    goto :goto_43a

    :cond_406
    sub-int/2addr v1, v2

    if-le v10, v0, :cond_41d

    .line 588
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    const/16 v4, 0xb

    add-int/2addr v0, v4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    if-lt v0, v2, :cond_41d

    if-gt v0, v3, :cond_41d

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v2

    add-int/2addr v1, v0

    const/4 v8, 0x2

    goto :goto_41e

    :cond_41d
    const/4 v8, 0x1

    :goto_41e
    if-ne v8, v12, :cond_437

    .line 596
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0xc

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-lt v0, v2, :cond_437

    const/16 v3, 0x39

    if-gt v0, v3, :cond_437

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    const/4 v1, 0x3

    goto :goto_43d

    :cond_437
    move v0, v1

    move v1, v8

    goto :goto_43d

    :cond_43a
    :goto_43a
    const/4 v0, 0x0

    return v0

    :cond_43c
    const/4 v0, 0x0

    .line 603
    :goto_43d
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 606
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_45e

    add-int/lit8 v1, v1, 0x1

    .line 610
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    :cond_45e
    move v6, v1

    move v1, v0

    const/16 v0, 0x2b

    if-eq v1, v0, :cond_494

    const/16 v0, 0x2d

    if-ne v1, v0, :cond_469

    goto :goto_494

    :cond_469
    const/16 v0, 0x5a

    if-ne v1, v0, :cond_490

    .line 679
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    if-eqz v0, :cond_48c

    const/4 v0, 0x0

    .line 680
    invoke-static {v0}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    .line 681
    array-length v2, v1

    if-lez v2, :cond_48c

    .line 682
    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 683
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_48c
    const/16 v16, 0x1

    goto/16 :goto_56a

    :cond_490
    const/16 v16, 0x0

    goto/16 :goto_56a

    .line 614
    :cond_494
    :goto_494
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v6

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v0, 0x30

    if-lt v2, v0, :cond_591

    const/16 v3, 0x31

    if-le v2, v3, :cond_4aa

    goto/16 :goto_591

    .line 619
    :cond_4aa
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v3, v13

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v6

    add-int/2addr v3, v12

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-lt v3, v0, :cond_58f

    const/16 v0, 0x39

    if-le v3, v0, :cond_4bd

    goto/16 :goto_58f

    .line 624
    :cond_4bd
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v4, 0x33

    if-ne v0, v11, :cond_515

    .line 627
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 628
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v5, v13

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v6

    add-int/2addr v5, v14

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v7, 0x34

    if-ne v0, v7, :cond_506

    const/16 v7, 0x35

    if-ne v5, v7, :cond_506

    const/16 v7, 0x31

    if-ne v2, v7, :cond_4f7

    const/16 v7, 0x32

    if-eq v3, v7, :cond_511

    if-ne v3, v4, :cond_4f7

    goto :goto_511

    :cond_4f7
    const/16 v4, 0x30

    if-ne v2, v4, :cond_504

    const/16 v4, 0x35

    if-eq v3, v4, :cond_511

    const/16 v4, 0x38

    if-ne v3, v4, :cond_504

    goto :goto_511

    :cond_504
    const/4 v7, 0x0

    return v7

    :cond_506
    const/4 v7, 0x0

    const/16 v8, 0x30

    if-eq v0, v8, :cond_50e

    if-eq v0, v4, :cond_50e

    return v7

    :cond_50e
    if-eq v5, v8, :cond_511

    return v7

    :cond_511
    :goto_511
    move v4, v0

    const/16 v16, 0x6

    goto :goto_565

    :cond_515
    const/16 v8, 0x30

    if-ne v0, v8, :cond_531

    .line 658
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    if-eq v0, v8, :cond_52b

    if-eq v0, v4, :cond_52b

    const/4 v4, 0x0

    return v4

    :cond_52b
    move v4, v0

    :goto_52c
    const/16 v5, 0x30

    :goto_52e
    const/16 v16, 0x5

    goto :goto_565

    :cond_531
    if-ne v0, v4, :cond_544

    .line 663
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v5, v13

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v7, 0x30

    if-ne v5, v7, :cond_544

    goto :goto_52c

    :cond_544
    const/16 v4, 0x34

    if-ne v0, v4, :cond_561

    .line 667
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v4, 0x35

    if-ne v0, v4, :cond_561

    const/16 v0, 0x34

    const/16 v4, 0x35

    const/16 v4, 0x34

    const/16 v5, 0x35

    goto :goto_52e

    :cond_561
    const/16 v4, 0x30

    const/16 v5, 0x30

    :goto_565
    move-object/from16 v0, p0

    .line 675
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCCCC)V

    .line 688
    :goto_56a
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v13, v13, 0xa

    add-int/2addr v13, v6

    add-int v13, v13, v16

    add-int/2addr v0, v13

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_580

    const/16 v1, 0x22

    if-eq v0, v1, :cond_580

    const/4 v5, 0x0

    return v5

    .line 692
    :cond_580
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v13

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 694
    iput v14, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto/16 :goto_c5

    :cond_58f
    :goto_58f
    const/4 v5, 0x0

    return v5

    :cond_591
    :goto_591
    const/4 v5, 0x0

    return v5

    :cond_593
    :goto_593
    const/4 v5, 0x0

    const/16 v11, 0x3a

    const/4 v14, 0x5

    if-eqz p1, :cond_59a

    return v5

    .line 272
    :cond_59a
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v6, 0x8

    add-int/2addr v5, v6

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v5, 0x2d

    if-ne v1, v5, :cond_5ab

    if-ne v4, v5, :cond_5ab

    const/4 v5, 0x1

    goto :goto_5ac

    :cond_5ab
    const/4 v5, 0x0

    :goto_5ac
    if-eqz v5, :cond_5b5

    const/16 v6, 0x10

    if-ne v10, v6, :cond_5b5

    const/16 v16, 0x1

    goto :goto_5b7

    :cond_5b5
    const/16 v16, 0x0

    :goto_5b7
    if-eqz v5, :cond_5c0

    const/16 v5, 0x11

    if-ne v10, v5, :cond_5c0

    const/16 v17, 0x1

    goto :goto_5c2

    :cond_5c0
    const/16 v17, 0x0

    :goto_5c2
    if-nez v17, :cond_5df

    if-eqz v16, :cond_5c7

    goto :goto_5df

    :cond_5c7
    const/16 v5, 0x2d

    if-ne v1, v5, :cond_5d6

    if-ne v3, v5, :cond_5d6

    move/from16 v22, v2

    move/from16 v24, v4

    const/16 v19, 0x30

    const/16 v23, 0x30

    goto :goto_5f0

    :cond_5d6
    move/from16 v19, v1

    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v4

    goto :goto_5f0

    .line 285
    :cond_5df
    :goto_5df
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v4, 0x9

    add-int/2addr v1, v4

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move/from16 v24, v1

    move/from16 v19, v2

    move/from16 v22, v3

    move/from16 v23, v12

    :goto_5f0
    move v1, v13

    move v2, v15

    move v3, v0

    move v4, v7

    move/from16 v5, v19

    move/from16 v6, v22

    move/from16 v25, v7

    move/from16 v7, v23

    move/from16 v8, v24

    .line 307
    invoke-static/range {v1 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v1

    if-nez v1, :cond_606

    const/4 v1, 0x0

    return v1

    :cond_606
    move v3, v0

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move/from16 v4, v25

    move/from16 v5, v19

    move/from16 v6, v22

    move/from16 v7, v23

    move/from16 v8, v24

    .line 311
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    const/16 v0, 0x8

    if-eq v10, v0, :cond_6f3

    .line 315
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v1, 0x9

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 316
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 317
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v3, 0xb

    add-int/2addr v2, v3

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 318
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0xc

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 319
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0xd

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-eqz v17, :cond_65b

    const/16 v5, 0x54

    if-ne v1, v5, :cond_65b

    if-ne v4, v11, :cond_65b

    .line 323
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v6, 0x10

    add-int/2addr v5, v6

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_667

    :cond_65b
    if-eqz v16, :cond_681

    const/16 v5, 0x20

    if-eq v1, v5, :cond_665

    const/16 v5, 0x54

    if-ne v1, v5, :cond_681

    :cond_665
    if-ne v4, v11, :cond_681

    .line 327
    :cond_667
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v1, 0xe

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 328
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0xf

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v13, v0

    move v8, v1

    move v15, v2

    move v7, v3

    const/16 v11, 0x30

    const/16 v12, 0x30

    goto :goto_687

    :cond_681
    move v7, v0

    move v8, v1

    move v13, v2

    move v11, v3

    move v15, v12

    move v12, v4

    :goto_687
    move-object/from16 v0, p0

    move v1, v15

    move v2, v7

    move v3, v8

    move v4, v13

    move v5, v11

    move v6, v12

    .line 340
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v0

    if-nez v0, :cond_697

    const/4 v0, 0x0

    return v0

    :cond_697
    const/16 v0, 0x11

    if-ne v10, v0, :cond_6da

    if-nez v17, :cond_6da

    .line 345
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v1, 0xe

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 346
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xf

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 347
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v3, 0x10

    add-int/2addr v2, v3

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v0, v3, :cond_6d8

    const/16 v4, 0x39

    if-le v0, v4, :cond_6c0

    goto :goto_6d8

    :cond_6c0
    if-lt v1, v3, :cond_6d6

    if-le v1, v4, :cond_6c5

    goto :goto_6d6

    :cond_6c5
    if-lt v2, v3, :cond_6d4

    if-le v2, v4, :cond_6ca

    goto :goto_6d4

    :cond_6ca
    sub-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x64

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    goto :goto_6db

    :cond_6d4
    :goto_6d4
    const/4 v0, 0x0

    return v0

    :cond_6d6
    :goto_6d6
    const/4 v0, 0x0

    return v0

    :cond_6d8
    :goto_6d8
    const/4 v0, 0x0

    return v0

    :cond_6da
    const/4 v0, 0x0

    :goto_6db
    const/16 v1, 0x30

    sub-int/2addr v15, v1

    mul-int/lit8 v15, v15, 0xa

    sub-int/2addr v7, v1

    add-int v2, v15, v7

    sub-int/2addr v8, v1

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v13, v1

    add-int v3, v8, v13

    sub-int/2addr v11, v1

    mul-int/lit8 v11, v11, 0xa

    sub-int/2addr v12, v1

    add-int/2addr v12, v11

    move v1, v12

    move v12, v2

    move v2, v0

    move v0, v3

    goto :goto_6f7

    :cond_6f3
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v12, 0x0

    .line 373
    :goto_6f7
    iget-object v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v12}, Ljava/util/Calendar;->set(II)V

    .line 374
    iget-object v3, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 375
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 376
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 378
    iput v14, v9, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto/16 :goto_c5
.end method

.method private setCalendar(CCCCCCCC)V
    .registers 11

    .line 770
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    add-int/lit8 p1, p1, -0x30

    mul-int/lit16 p1, p1, 0x3e8

    add-int/lit8 p2, p2, -0x30

    mul-int/lit8 p2, p2, 0x64

    add-int/2addr p1, p2

    add-int/lit8 p3, p3, -0x30

    mul-int/lit8 p3, p3, 0xa

    add-int/2addr p1, p3

    add-int/lit8 p4, p4, -0x30

    add-int/2addr p1, p4

    add-int/lit8 p5, p5, -0x30

    mul-int/lit8 p5, p5, 0xa

    add-int/lit8 p6, p6, -0x30

    add-int/2addr p5, p6

    const/4 p2, 0x1

    sub-int/2addr p5, p2

    add-int/lit8 p7, p7, -0x30

    mul-int/lit8 p7, p7, 0xa

    add-int/lit8 p8, p8, -0x30

    add-int/2addr p7, p8

    .line 775
    iget-object p3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {p3, p2, p1}, Ljava/util/Calendar;->set(II)V

    .line 776
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p5}, Ljava/util/Calendar;->set(II)V

    .line 777
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p7}, Ljava/util/Calendar;->set(II)V

    return-void
.end method


# virtual methods
.method public final addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .registers 6

    .line 105
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final arrayCopy(I[CII)V
    .registers 6

    .line 2169
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p4, p1

    invoke-virtual {v0, p1, p4, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public bytesValue()[B
    .registers 11

    .line 109
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ne v0, v2, :cond_5d

    .line 110
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 111
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_46

    .line 115
    div-int/lit8 v2, v2, 0x2

    new-array v3, v2, [B

    :goto_15
    if-ge v1, v2, :cond_45

    .line 117
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 118
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    const/16 v7, 0x37

    const/16 v8, 0x39

    if-gt v4, v8, :cond_33

    const/16 v9, 0x30

    goto :goto_35

    :cond_33
    const/16 v9, 0x37

    :goto_35
    sub-int/2addr v4, v9

    if-gt v5, v8, :cond_39

    goto :goto_3b

    :cond_39
    const/16 v6, 0x37

    :goto_3b
    sub-int/2addr v5, v6

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    .line 122
    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_45
    return-object v3

    .line 112
    :cond_46
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal state. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_5d
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v0, :cond_6e

    .line 129
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0

    .line 131
    :cond_6e
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 132
    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final charArrayCompare([C)Z
    .registers 4

    .line 97
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result p1

    return p1
.end method

.method public final charAt(I)C
    .registers 3

    .line 55
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt p1, v0, :cond_7

    const/16 p1, 0x1a

    return p1

    .line 59
    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method protected final copyTo(II[C)V
    .registers 6

    .line 78
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
    .registers 7

    .line 185
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 187
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_21

    const/16 v2, 0x53

    if-eq v0, v2, :cond_21

    const/16 v2, 0x42

    if-eq v0, v2, :cond_21

    const/16 v2, 0x46

    if-eq v0, v2, :cond_21

    const/16 v2, 0x44

    if-ne v0, v2, :cond_23

    :cond_21
    add-int/lit8 v1, v1, -0x1

    :cond_23
    const v0, 0xffff

    if-gt v1, v0, :cond_54

    .line 196
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    .line 197
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_43

    .line 198
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v4, v0, v1

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v2, v0, v4, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 199
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    sget-object v4, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/math/BigDecimal;-><init>([CIILjava/math/MathContext;)V

    return-object v0

    .line 201
    :cond_43
    new-array v2, v1, [C

    .line 202
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v5, v0, v1

    invoke-virtual {v4, v0, v5, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 203
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v4, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/math/BigDecimal;-><init>([CIILjava/math/MathContext;)V

    return-object v0

    .line 193
    :cond_54
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "decimal overflow"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final indexOf(CI)I
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    return p1
.end method

.method public info()Ljava/lang/String;
    .registers 9

    .line 2173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 2184
    :goto_a
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    if-ge v3, v6, :cond_1f

    .line 2185
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_1b

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v5, v2

    goto :goto_a

    :cond_1f
    const-string v2, "pos "

    .line 2192
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", line "

    .line 2193
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", column "

    .line 2194
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2196
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const v3, 0xffff

    if-ge v2, v3, :cond_4a

    .line 2197
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_53

    .line 2199
    :cond_4a
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2202
    :goto_53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEOF()Z
    .registers 4

    .line 827
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_16

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_15

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt v0, v1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :cond_16
    :goto_16
    return v2
.end method

.method public matchField2([C)Z
    .registers 6

    .line 2310
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2311
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_0

    .line 2314
    :cond_c
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare([C)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-nez v0, :cond_17

    .line 2315
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v1

    .line 2319
    :cond_17
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length p1, p1

    add-int/2addr v0, p1

    .line 2320
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 2321
    :goto_23
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2322
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v3, v0

    goto :goto_23

    :cond_33
    const/16 v0, 0x3a

    if-ne p1, v0, :cond_43

    .line 2326
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2327
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 p1, 0x1

    return p1

    .line 2330
    :cond_43
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v1
.end method

.method public final next()C
    .registers 3

    .line 63
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 64
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt v0, v1, :cond_d

    const/16 v0, 0x1a

    goto :goto_13

    :cond_d
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_13
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    return v0
.end method

.method public final numberString()Ljava/lang/String;
    .registers 4

    .line 174
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 176
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_21

    const/16 v2, 0x53

    if-eq v0, v2, :cond_21

    const/16 v2, 0x42

    if-eq v0, v2, :cond_21

    const/16 v2, 0x46

    if-eq v0, v2, :cond_21

    const/16 v2, 0x44

    if-ne v0, v2, :cond_23

    :cond_21
    add-int/lit8 v1, v1, -0x1

    .line 181
    :cond_23
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scanDate(C)Ljava/util/Date;
    .registers 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2042
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2043
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2044
    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2046
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v4, 0x1

    .line 2048
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v6, 0x22

    const/16 v7, 0x5d

    const/16 v8, 0x2c

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    if-ne v4, v6, :cond_6b

    .line 2053
    invoke-virtual {v0, v6, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v4

    if-eq v4, v10, :cond_63

    sub-int v6, v4, v5

    .line 2059
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2060
    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(ZI)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 2061
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    add-int/lit8 v5, v4, 0x1

    .line 2068
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 2069
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    :goto_3a
    if-eq v5, v8, :cond_55

    if-ne v5, v7, :cond_3f

    goto :goto_55

    .line 2076
    :cond_3f
    invoke-static {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_4e

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v4, 0x1

    .line 2078
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    goto :goto_3a

    .line 2080
    :cond_4e
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2081
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2082
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v9

    :cond_55
    :goto_55
    add-int/2addr v4, v11

    .line 2073
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2074
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_f1

    .line 2063
    :cond_5c
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2064
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2065
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v9

    .line 2055
    :cond_63
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "unclosed str"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6b
    const/16 v6, 0x2d

    const/16 v12, 0x39

    const/16 v13, 0x30

    if-eq v4, v6, :cond_a7

    if-lt v4, v13, :cond_78

    if-gt v4, v12, :cond_78

    goto :goto_a7

    :cond_78
    const/16 v1, 0x6e

    if-ne v4, v1, :cond_a0

    add-int/lit8 v1, v5, 0x1

    .line 2124
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v5, 0x75

    if-ne v4, v5, :cond_a0

    add-int/lit8 v4, v1, 0x1

    .line 2125
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v5, 0x6c

    if-ne v1, v5, :cond_a0

    add-int/lit8 v1, v4, 0x1

    .line 2126
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_a0

    .line 2128
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 2129
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object v1, v9

    goto :goto_f1

    .line 2131
    :cond_a0
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2132
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2133
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v9

    :cond_a7
    :goto_a7
    if-ne v4, v6, :cond_b1

    add-int/lit8 v1, v5, 0x1

    .line 2092
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move v5, v1

    const/4 v1, 0x1

    :cond_b1
    const-wide/16 v14, 0x0

    if-lt v4, v13, :cond_da

    if-gt v4, v12, :cond_da

    add-int/lit8 v4, v4, -0x30

    int-to-long v9, v4

    :goto_ba
    add-int/lit8 v4, v5, 0x1

    .line 2099
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    if-lt v5, v13, :cond_d2

    if-gt v5, v12, :cond_d2

    const-wide/16 v16, 0xa

    mul-long v9, v9, v16

    add-int/lit8 v5, v5, -0x30

    int-to-long v12, v5

    add-long/2addr v9, v12

    move v5, v4

    const/16 v12, 0x39

    const/16 v13, 0x30

    goto :goto_ba

    :cond_d2
    if-eq v5, v8, :cond_d6

    if-ne v5, v7, :cond_dc

    :cond_d6
    sub-int/2addr v4, v11

    .line 2104
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    goto :goto_dc

    :cond_da
    move v5, v4

    move-wide v9, v14

    :cond_dc
    :goto_dc
    cmp-long v4, v9, v14

    if-gez v4, :cond_e9

    .line 2112
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2113
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v1, -0x1

    .line 2114
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/4 v1, 0x0

    return-object v1

    :cond_e9
    if-eqz v1, :cond_ec

    neg-long v9, v9

    .line 2122
    :cond_ec
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v9, v10}, Ljava/util/Date;-><init>(J)V

    :goto_f1
    if-ne v5, v8, :cond_102

    .line 2139
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v11

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v2, 0x3

    .line 2140
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v1

    .line 2144
    :cond_102
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v4, v11

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_11d

    const/16 v2, 0x10

    .line 2146
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2147
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v11

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_14d

    :cond_11d
    if-ne v4, v7, :cond_12f

    const/16 v2, 0xf

    .line 2149
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2150
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v11

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_14d

    :cond_12f
    const/16 v5, 0x7d

    if-ne v4, v5, :cond_143

    const/16 v2, 0xd

    .line 2152
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2153
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v11

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_14d

    :cond_143
    const/16 v5, 0x1a

    if-ne v4, v5, :cond_151

    .line 2155
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v2, 0x14

    .line 2156
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    :goto_14d
    const/4 v2, 0x4

    .line 2163
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v1

    .line 2158
    :cond_151
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2159
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v1, -0x1

    .line 2160
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/4 v1, 0x0

    return-object v1
.end method

.method public scanDouble(C)D
    .registers 23

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1801
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1803
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v2, 0x1

    .line 1804
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v4, 0x22

    if-ne v2, v4, :cond_13

    const/4 v6, 0x1

    goto :goto_14

    :cond_13
    const/4 v6, 0x0

    :goto_14
    if-eqz v6, :cond_21

    add-int/lit8 v2, v3, 0x1

    .line 1807
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move/from16 v20, v3

    move v3, v2

    move/from16 v2, v20

    :cond_21
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_27

    const/4 v8, 0x1

    goto :goto_28

    :cond_27
    const/4 v8, 0x0

    :goto_28
    if-eqz v8, :cond_35

    add-int/lit8 v2, v3, 0x1

    .line 1812
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move/from16 v20, v3

    move v3, v2

    move/from16 v2, v20

    :cond_35
    const/16 v9, 0x10

    const-wide/16 v10, 0x0

    const/4 v12, -0x1

    const/16 v13, 0x30

    if-lt v2, v13, :cond_11e

    const/16 v14, 0x39

    if-gt v2, v14, :cond_11e

    sub-int/2addr v2, v13

    int-to-long v1, v2

    :goto_44
    add-int/lit8 v15, v3, 0x1

    .line 1819
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const-wide/16 v17, 0xa

    if-lt v3, v13, :cond_5a

    if-gt v3, v14, :cond_5a

    mul-long v1, v1, v17

    add-int/lit8 v3, v3, -0x30

    int-to-long v4, v3

    add-long/2addr v1, v4

    move v3, v15

    const/16 v4, 0x22

    goto :goto_44

    :cond_5a
    const/16 v4, 0x2e

    if-ne v3, v4, :cond_60

    const/4 v4, 0x1

    goto :goto_61

    :cond_60
    const/4 v4, 0x0

    :goto_61
    if-eqz v4, :cond_95

    add-int/lit8 v3, v15, 0x1

    .line 1831
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-lt v4, v13, :cond_92

    if-gt v4, v14, :cond_92

    mul-long v1, v1, v17

    sub-int/2addr v4, v13

    int-to-long v4, v4

    add-long/2addr v1, v4

    move-wide/from16 v4, v17

    :goto_74
    add-int/lit8 v15, v3, 0x1

    .line 1836
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-lt v3, v13, :cond_8d

    if-gt v3, v14, :cond_8d

    mul-long v1, v1, v17

    add-int/lit8 v3, v3, -0x30

    move/from16 v19, v15

    int-to-long v14, v3

    add-long/2addr v1, v14

    mul-long v4, v4, v17

    move/from16 v3, v19

    const/16 v14, 0x39

    goto :goto_74

    :cond_8d
    move/from16 v19, v15

    move/from16 v15, v19

    goto :goto_97

    .line 1846
    :cond_92
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v10

    :cond_95
    const-wide/16 v4, 0x1

    :goto_97
    const/16 v14, 0x65

    if-eq v3, v14, :cond_a3

    const/16 v14, 0x45

    if-ne v3, v14, :cond_a0

    goto :goto_a3

    :cond_a0
    const/16 v16, 0x0

    goto :goto_a5

    :cond_a3
    :goto_a3
    const/16 v16, 0x1

    :goto_a5
    if-eqz v16, :cond_cb

    add-int/lit8 v3, v15, 0x1

    .line 1853
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    const/16 v15, 0x2b

    if-eq v14, v15, :cond_b7

    if-ne v14, v7, :cond_b4

    goto :goto_b7

    :cond_b4
    :goto_b4
    move v15, v3

    move v3, v14

    goto :goto_be

    :cond_b7
    :goto_b7
    add-int/lit8 v7, v3, 0x1

    .line 1855
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move v15, v7

    :goto_be
    if-lt v3, v13, :cond_cb

    const/16 v7, 0x39

    if-gt v3, v7, :cond_cb

    add-int/lit8 v3, v15, 0x1

    .line 1859
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    goto :goto_b4

    :cond_cb
    if-eqz v6, :cond_e5

    const/16 v6, 0x22

    if-eq v3, v6, :cond_d4

    .line 1869
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v10

    :cond_d4
    add-int/lit8 v3, v15, 0x1

    .line 1872
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 1874
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v10, 0x1

    add-int/2addr v7, v10

    sub-int v10, v3, v7

    add-int/lit8 v10, v10, -0x2

    move v15, v3

    move v3, v6

    goto :goto_ec

    :cond_e5
    const/4 v10, 0x1

    .line 1877
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    sub-int v6, v15, v7

    add-int/lit8 v10, v6, -0x1

    :goto_ec
    if-nez v16, :cond_ff

    const/16 v6, 0x12

    if-ge v10, v6, :cond_ff

    long-to-double v1, v1

    long-to-double v4, v4

    .line 1882
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v4

    if-eqz v8, :cond_107

    neg-double v1, v1

    goto :goto_107

    .line 1887
    :cond_ff
    invoke-virtual {v0, v7, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 1888
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    :cond_107
    :goto_107
    move/from16 v4, p1

    if-ne v3, v4, :cond_11b

    .line 1929
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1930
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v3, 0x3

    .line 1931
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1932
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-wide v1

    .line 1935
    :cond_11b
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v1

    :cond_11e
    const/16 v1, 0x6e

    if-ne v2, v1, :cond_190

    add-int/lit8 v1, v3, 0x1

    .line 1891
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x75

    if-ne v2, v3, :cond_190

    add-int/lit8 v2, v1, 0x1

    .line 1892
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_190

    add-int/lit8 v1, v2, 0x1

    .line 1893
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_190

    const/4 v2, 0x5

    .line 1894
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    add-int/lit8 v3, v1, 0x1

    .line 1896
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-eqz v6, :cond_158

    const/16 v4, 0x22

    if-ne v1, v4, :cond_158

    add-int/lit8 v1, v3, 0x1

    .line 1899
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    :goto_153
    move/from16 v20, v3

    move v3, v1

    move/from16 v1, v20

    :cond_158
    const/16 v4, 0x2c

    if-ne v1, v4, :cond_16b

    .line 1904
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1905
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1906
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1907
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-wide v10

    :cond_16b
    const/16 v4, 0x5d

    if-ne v1, v4, :cond_180

    .line 1910
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1911
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1912
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v1, 0xf

    .line 1913
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-wide v10

    .line 1915
    :cond_180
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_18d

    add-int/lit8 v1, v3, 0x1

    .line 1916
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    goto :goto_153

    .line 1921
    :cond_18d
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v10

    .line 1924
    :cond_190
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v10
.end method

.method public scanFieldBoolean([C)Z
    .registers 12

    const/4 v0, 0x0

    .line 1558
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1560
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 p1, -0x2

    .line 1561
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    .line 1565
    :cond_11
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1566
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length p1, p1

    add-int/2addr v2, p1

    add-int/lit8 p1, v2, 0x1

    .line 1568
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    const/4 v4, 0x1

    if-ne v2, v3, :cond_24

    const/4 v5, 0x1

    goto :goto_25

    :cond_24
    const/4 v5, 0x0

    :goto_25
    if-eqz v5, :cond_30

    add-int/lit8 v2, p1, 0x1

    .line 1572
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    move v9, v2

    move v2, p1

    move p1, v9

    :cond_30
    const/16 v6, 0x74

    const/16 v7, 0x65

    const/4 v8, -0x1

    if-ne v2, v6, :cond_73

    add-int/lit8 v2, p1, 0x1

    .line 1577
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    const/16 v6, 0x72

    if-eq p1, v6, :cond_44

    .line 1578
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_44
    add-int/lit8 p1, v2, 0x1

    .line 1581
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v6, 0x75

    if-eq v2, v6, :cond_51

    .line 1582
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_51
    add-int/lit8 v2, p1, 0x1

    .line 1585
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    if-eq p1, v7, :cond_5c

    .line 1586
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_5c
    if-eqz v5, :cond_6a

    add-int/lit8 p1, v2, 0x1

    .line 1590
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_69

    .line 1591
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_69
    move v2, p1

    .line 1595
    :cond_6a
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1596
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto :goto_da

    :cond_73
    const/16 v6, 0x66

    if-ne v2, v6, :cond_c0

    add-int/lit8 v2, p1, 0x1

    .line 1599
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    const/16 v6, 0x61

    if-eq p1, v6, :cond_84

    .line 1600
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_84
    add-int/lit8 p1, v2, 0x1

    .line 1603
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v6, 0x6c

    if-eq v2, v6, :cond_91

    .line 1604
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_91
    add-int/lit8 v2, p1, 0x1

    .line 1607
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    const/16 v6, 0x73

    if-eq p1, v6, :cond_9e

    .line 1608
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_9e
    add-int/lit8 p1, v2, 0x1

    .line 1611
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-eq v2, v7, :cond_a9

    .line 1612
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_a9
    if-eqz v5, :cond_b7

    add-int/lit8 v2, p1, 0x1

    .line 1616
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    if-eq p1, v3, :cond_b6

    .line 1617
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_b6
    move p1, v2

    .line 1621
    :cond_b7
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1622
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto :goto_f6

    :cond_c0
    const/16 v6, 0x31

    if-ne v2, v6, :cond_dc

    if-eqz v5, :cond_d2

    add-int/lit8 v2, p1, 0x1

    .line 1625
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    if-eq p1, v3, :cond_d1

    .line 1626
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_d1
    move p1, v2

    .line 1630
    :cond_d2
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1631
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    :goto_da
    const/4 v2, 0x1

    goto :goto_f7

    :cond_dc
    const/16 v6, 0x30

    if-ne v2, v6, :cond_18b

    if-eqz v5, :cond_ee

    add-int/lit8 v2, p1, 0x1

    .line 1634
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    if-eq p1, v3, :cond_ed

    .line 1635
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_ed
    move p1, v2

    .line 1639
    :cond_ee
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1640
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    :goto_f6
    const/4 v2, 0x0

    :goto_f7
    const/16 v3, 0x10

    const/16 v5, 0x2c

    if-ne p1, v5, :cond_10e

    .line 1649
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 p1, 0x3

    .line 1650
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1651
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_15c

    :cond_10e
    const/16 v6, 0x7d

    if-ne p1, v6, :cond_170

    .line 1654
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    :goto_11b
    if-ne p1, v5, :cond_12b

    .line 1657
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1658
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_159

    :cond_12b
    const/16 v1, 0x5d

    if-ne p1, v1, :cond_13f

    const/16 p1, 0xf

    .line 1660
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1661
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_159

    :cond_13f
    if-ne p1, v6, :cond_151

    const/16 p1, 0xd

    .line 1663
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1664
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_159

    :cond_151
    const/16 v1, 0x1a

    if-ne p1, v1, :cond_15d

    const/16 p1, 0x14

    .line 1666
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    :goto_159
    const/4 p1, 0x4

    .line 1676
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    :goto_15c
    return v2

    .line 1667
    :cond_15d
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_16d

    .line 1668
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto :goto_11b

    .line 1671
    :cond_16d
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    .line 1678
    :cond_170
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_181

    .line 1679
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto/16 :goto_f7

    .line 1681
    :cond_181
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1682
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    .line 1683
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    .line 1643
    :cond_18b
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0
.end method

.method public scanFieldDate([C)Ljava/util/Date;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1073
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1074
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1075
    iget-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1077
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v5, v6, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1a

    const/4 v1, -0x2

    .line 1078
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v6

    .line 1082
    :cond_1a
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v1, v1

    add-int/2addr v5, v1

    add-int/lit8 v1, v5, 0x1

    .line 1084
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v7, 0x22

    const/16 v8, 0x7d

    const/16 v9, 0x2c

    const/4 v10, -0x1

    const/4 v11, 0x1

    if-ne v5, v7, :cond_77

    .line 1089
    invoke-virtual {v0, v7, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v5

    if-eq v5, v10, :cond_6f

    sub-int v7, v5, v1

    .line 1095
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1096
    invoke-direct {v0, v2, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(ZI)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 1097
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    add-int/lit8 v2, v5, 0x1

    .line 1103
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1104
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    :goto_4c
    if-eq v2, v9, :cond_63

    if-ne v2, v8, :cond_51

    goto :goto_63

    .line 1111
    :cond_51
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_60

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v5, 0x1

    .line 1113
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    goto :goto_4c

    .line 1115
    :cond_60
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v6

    :cond_63
    :goto_63
    add-int/2addr v5, v11

    .line 1108
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1109
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto/16 :goto_d1

    .line 1099
    :cond_6a
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1100
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v6

    .line 1091
    :cond_6f
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "unclosed str"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_77
    const/16 v7, 0x2d

    const/16 v12, 0x39

    const/16 v13, 0x30

    if-eq v5, v7, :cond_87

    if-lt v5, v13, :cond_84

    if-gt v5, v12, :cond_84

    goto :goto_87

    .line 1155
    :cond_84
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v6

    :cond_87
    :goto_87
    if-ne v5, v7, :cond_91

    add-int/lit8 v2, v1, 0x1

    .line 1125
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    move v1, v2

    const/4 v2, 0x1

    :cond_91
    const-wide/16 v14, 0x0

    if-lt v5, v13, :cond_ba

    if-gt v5, v12, :cond_ba

    add-int/lit8 v5, v5, -0x30

    int-to-long v6, v5

    :goto_9a
    add-int/lit8 v5, v1, 0x1

    .line 1132
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-lt v1, v13, :cond_b2

    if-gt v1, v12, :cond_b2

    const-wide/16 v16, 0xa

    mul-long v6, v6, v16

    add-int/lit8 v1, v1, -0x30

    int-to-long v12, v1

    add-long/2addr v6, v12

    move v1, v5

    const/16 v12, 0x39

    const/16 v13, 0x30

    goto :goto_9a

    :cond_b2
    if-eq v1, v9, :cond_b6

    if-ne v1, v8, :cond_bc

    :cond_b6
    sub-int/2addr v5, v11

    .line 1137
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    goto :goto_bc

    :cond_ba
    move v1, v5

    move-wide v6, v14

    :cond_bc
    :goto_bc
    cmp-long v5, v6, v14

    if-gez v5, :cond_c4

    .line 1145
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/4 v1, 0x0

    return-object v1

    :cond_c4
    if-eqz v2, :cond_c7

    neg-long v6, v6

    .line 1153
    :cond_c7
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v18, v2

    move v2, v1

    move-object/from16 v1, v18

    :goto_d1
    const/16 v5, 0x10

    if-ne v2, v9, :cond_e6

    .line 1161
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v11

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v2, 0x3

    .line 1162
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1163
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-object v1

    .line 1167
    :cond_e6
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v11

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-ne v2, v9, :cond_ff

    .line 1169
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1170
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v11

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_12d

    :cond_ff
    const/16 v5, 0x5d

    if-ne v2, v5, :cond_113

    const/16 v2, 0xf

    .line 1172
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1173
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v11

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_12d

    :cond_113
    if-ne v2, v8, :cond_125

    const/16 v2, 0xd

    .line 1175
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1176
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v11

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_12d

    :cond_125
    const/16 v5, 0x1a

    if-ne v2, v5, :cond_131

    const/16 v2, 0x14

    .line 1178
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    :goto_12d
    const/4 v2, 0x4

    .line 1185
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v1

    .line 1180
    :cond_131
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1181
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1182
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/4 v1, 0x0

    return-object v1
.end method

.method public scanFieldInt([C)I
    .registers 16

    const/4 v0, 0x0

    .line 831
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 832
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 833
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 835
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v3, v4, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v3

    if-nez v3, :cond_15

    const/4 p1, -0x2

    .line 836
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    .line 840
    :cond_15
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length p1, p1

    add-int/2addr v3, p1

    add-int/lit8 p1, v3, 0x1

    .line 842
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    const/4 v5, 0x1

    if-ne v3, v4, :cond_26

    const/4 v6, 0x1

    goto :goto_27

    :cond_26
    const/4 v6, 0x0

    :goto_27
    if-eqz v6, :cond_32

    add-int/lit8 v3, p1, 0x1

    .line 847
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    move v13, v3

    move v3, p1

    move p1, v13

    :cond_32
    const/16 v7, 0x2d

    if-ne v3, v7, :cond_38

    const/4 v7, 0x1

    goto :goto_39

    :cond_38
    const/4 v7, 0x0

    :goto_39
    if-eqz v7, :cond_44

    add-int/lit8 v3, p1, 0x1

    .line 852
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    move v13, v3

    move v3, p1

    move p1, v13

    :cond_44
    const/16 v8, 0x30

    const/4 v9, -0x1

    if-lt v3, v8, :cond_11e

    const/16 v10, 0x39

    if-gt v3, v10, :cond_11e

    sub-int/2addr v3, v8

    :goto_4e
    add-int/lit8 v11, p1, 0x1

    .line 859
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    if-lt p1, v8, :cond_65

    if-gt p1, v10, :cond_65

    mul-int/lit8 v12, v3, 0xa

    if-ge v12, v3, :cond_5f

    .line 863
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_5f
    add-int/lit8 p1, p1, -0x30

    add-int v3, v12, p1

    move p1, v11

    goto :goto_4e

    :cond_65
    const/16 v8, 0x2e

    if-ne p1, v8, :cond_6c

    .line 869
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_6c
    if-gez v3, :cond_71

    .line 877
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_71
    if-eqz v6, :cond_80

    if-eq p1, v4, :cond_78

    .line 883
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_78
    add-int/lit8 p1, v11, 0x1

    .line 886
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    :goto_7e
    move v11, p1

    move p1, v4

    :cond_80
    const/16 v4, 0x7d

    const/16 v6, 0x2c

    if-eq p1, v6, :cond_99

    if-ne p1, v4, :cond_89

    goto :goto_99

    .line 894
    :cond_89
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_96

    add-int/lit8 p1, v11, 0x1

    .line 895
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    goto :goto_7e

    .line 898
    :cond_96
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_99
    :goto_99
    sub-int/2addr v11, v5

    .line 892
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v8, 0x10

    if-ne p1, v6, :cond_b4

    .line 908
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 p1, 0x3

    .line 909
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 910
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    if-eqz v7, :cond_b3

    neg-int v3, v3

    :cond_b3
    return v3

    :cond_b4
    if-ne p1, v4, :cond_11a

    .line 915
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 916
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    :goto_c1
    if-ne p1, v6, :cond_d1

    .line 919
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 920
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_ff

    :cond_d1
    const/16 v10, 0x5d

    if-ne p1, v10, :cond_e5

    const/16 p1, 0xf

    .line 923
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 924
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_ff

    :cond_e5
    if-ne p1, v4, :cond_f7

    const/16 p1, 0xd

    .line 927
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 928
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_ff

    :cond_f7
    const/16 v10, 0x1a

    if-ne p1, v10, :cond_103

    const/16 p1, 0x14

    .line 931
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    :goto_ff
    const/4 p1, 0x4

    .line 943
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_11a

    .line 933
    :cond_103
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_113

    .line 934
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto :goto_c1

    .line 937
    :cond_113
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 938
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 939
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_11a
    :goto_11a
    if-eqz v7, :cond_11d

    neg-int v3, v3

    :cond_11d
    return v3

    .line 903
    :cond_11e
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0
.end method

.method public scanFieldLong([C)J
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1444
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1445
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1446
    iget-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1448
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v5, v6, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-nez v5, :cond_1b

    const/4 v1, -0x2

    .line 1449
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v6

    .line 1453
    :cond_1b
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v1, v1

    add-int/2addr v5, v1

    add-int/lit8 v1, v5, 0x1

    .line 1455
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v8, 0x22

    const/4 v9, 0x1

    if-ne v5, v8, :cond_2c

    const/4 v10, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v10, 0x0

    :goto_2d
    if-eqz v10, :cond_3a

    add-int/lit8 v5, v1, 0x1

    .line 1459
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move/from16 v19, v5

    move v5, v1

    move/from16 v1, v19

    :cond_3a
    const/16 v11, 0x2d

    if-ne v5, v11, :cond_4b

    add-int/lit8 v5, v1, 0x1

    .line 1464
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/4 v11, 0x1

    move/from16 v19, v5

    move v5, v1

    move/from16 v1, v19

    goto :goto_4c

    :cond_4b
    const/4 v11, 0x0

    :goto_4c
    const/16 v12, 0x30

    const/4 v13, -0x1

    if-lt v5, v12, :cond_14a

    const/16 v14, 0x39

    if-gt v5, v14, :cond_14a

    sub-int/2addr v5, v12

    move/from16 v16, v3

    int-to-long v2, v5

    :goto_59
    add-int/lit8 v5, v1, 0x1

    .line 1472
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-lt v1, v12, :cond_6f

    if-gt v1, v14, :cond_6f

    const-wide/16 v17, 0xa

    mul-long v2, v2, v17

    add-int/lit8 v1, v1, -0x30

    int-to-long v14, v1

    add-long/2addr v2, v14

    move v1, v5

    const/16 v14, 0x39

    goto :goto_59

    :cond_6f
    const/16 v12, 0x2e

    if-ne v1, v12, :cond_76

    .line 1476
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v6

    :cond_76
    if-eqz v10, :cond_88

    if-eq v1, v8, :cond_7d

    .line 1481
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v6

    :cond_7d
    add-int/lit8 v1, v5, 0x1

    .line 1484
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    move/from16 v19, v5

    move v5, v1

    move/from16 v1, v19

    :cond_88
    const/16 v8, 0x7d

    const/16 v10, 0x2c

    if-eq v1, v10, :cond_90

    if-ne v1, v8, :cond_94

    :cond_90
    add-int/lit8 v12, v5, -0x1

    .line 1489
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    :cond_94
    cmp-long v12, v2, v6

    if-gez v12, :cond_a4

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v12, v2, v14

    if-nez v12, :cond_a1

    if-eqz v11, :cond_a1

    goto :goto_a4

    :cond_a1
    const/16 v17, 0x0

    goto :goto_a6

    :cond_a4
    :goto_a4
    const/16 v17, 0x1

    :goto_a6
    if-nez v17, :cond_b1

    move/from16 v12, v16

    .line 1497
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1498
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1499
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v6

    :cond_b1
    move/from16 v12, v16

    :goto_b3
    const/16 v14, 0x10

    if-ne v1, v10, :cond_cb

    .line 1511
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v1, 0x3

    .line 1512
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1513
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    if-eqz v11, :cond_ca

    neg-long v2, v2

    :cond_ca
    return-wide v2

    :cond_cb
    if-ne v1, v8, :cond_132

    .line 1516
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    :goto_d6
    if-ne v1, v10, :cond_e6

    .line 1519
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1520
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_114

    :cond_e6
    const/16 v5, 0x5d

    if-ne v1, v5, :cond_fa

    const/16 v1, 0xf

    .line 1523
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1524
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_114

    :cond_fa
    if-ne v1, v8, :cond_10c

    const/16 v1, 0xd

    .line 1527
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1528
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_114

    :cond_10c
    const/16 v5, 0x1a

    if-ne v1, v5, :cond_11b

    const/16 v1, 0x14

    .line 1531
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    :goto_114
    const/4 v1, 0x4

    .line 1542
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    if-eqz v11, :cond_11a

    neg-long v2, v2

    :cond_11a
    return-wide v2

    .line 1533
    :cond_11b
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_12b

    .line 1534
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    goto :goto_d6

    .line 1536
    :cond_12b
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1537
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1538
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v6

    .line 1544
    :cond_132
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_147

    .line 1545
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v5, 0x1

    .line 1546
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    move/from16 v19, v5

    move v5, v1

    move/from16 v1, v19

    goto/16 :goto_b3

    .line 1549
    :cond_147
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v6

    :cond_14a
    move v12, v3

    .line 1503
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1504
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1505
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v6
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .registers 14

    const/4 v0, 0x0

    .line 950
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 951
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 952
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 956
    :cond_7
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v3, v4, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v3

    if-nez v3, :cond_30

    .line 957
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 958
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 960
    :goto_1c
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 961
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_1c

    :cond_28
    const/4 p1, -0x2

    .line 965
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 966
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 972
    :cond_30
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v4, p1

    add-int/2addr v3, v4

    add-int/lit8 v4, v3, 0x1

    .line 975
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v5, 0x22

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v3, v5, :cond_5b

    .line 977
    :goto_40
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_52

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v3, v4, 0x1

    .line 979
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move v11, v4

    move v4, v3

    move v3, v11

    goto :goto_40

    :cond_52
    if-eq v3, v5, :cond_5b

    .line 983
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 985
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 992
    :cond_5b
    invoke-virtual {p0, v5, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v3

    if-eq v3, v6, :cond_149

    sub-int v8, v3, v4

    .line 997
    invoke-virtual {p0, v4, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v4

    const/16 v8, 0x5c

    .line 998
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v6, :cond_a3

    :goto_6f
    add-int/lit8 v4, v3, -0x1

    const/4 v9, 0x0

    :goto_72
    if-ltz v4, :cond_7f

    .line 1002
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_7f

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_72

    .line 1008
    :cond_7f
    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_9c

    .line 1014
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v4, p1

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v7

    sub-int v0, v3, v0

    .line 1015
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length p1, p1

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v7

    invoke-virtual {p0, v4, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->sub_chars(II)[C

    move-result-object p1

    .line 1017
    invoke-static {p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->readString([CI)Ljava/lang/String;

    move-result-object v4

    goto :goto_a3

    :cond_9c
    add-int/lit8 v3, v3, 0x1

    .line 1011
    invoke-virtual {p0, v5, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v3

    goto :goto_6f

    .line 1020
    :cond_a3
    :goto_a3
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->features:I

    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->TrimStringFieldValue:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_b0

    .line 1021
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_b0
    add-int/lit8 p1, v3, 0x1

    .line 1024
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    :goto_b6
    const/16 v0, 0x7d

    const/16 v5, 0x2c

    if-eq p1, v5, :cond_d5

    if-ne p1, v0, :cond_bf

    goto :goto_d5

    .line 1032
    :cond_bf
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_ce

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, v3, 0x1

    .line 1034
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto :goto_b6

    .line 1036
    :cond_ce
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1038
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d5
    :goto_d5
    add-int/lit8 v3, v3, 0x1

    .line 1028
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1029
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne p1, v5, :cond_ed

    .line 1044
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 p1, 0x3

    .line 1045
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v4

    .line 1049
    :cond_ed
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    if-ne p1, v5, :cond_10a

    const/16 p1, 0x10

    .line 1051
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1052
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_13a

    :cond_10a
    const/16 v3, 0x5d

    if-ne p1, v3, :cond_11f

    const/16 p1, 0xf

    .line 1054
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1055
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_13a

    :cond_11f
    if-ne p1, v0, :cond_132

    const/16 p1, 0xd

    .line 1057
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1058
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_13a

    :cond_132
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_13e

    const/16 p1, 0x14

    .line 1060
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    :goto_13a
    const/4 p1, 0x4

    .line 1067
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v4

    .line 1062
    :cond_13e
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1063
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1064
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1065
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 994
    :cond_149
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "unclosed str"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_152

    :goto_151
    throw p1

    :goto_152
    goto :goto_151
.end method

.method public scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1282
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1284
    :goto_7
    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v4, 0xa

    const/4 v6, 0x1

    if-eq v3, v4, :cond_18f

    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v4, 0x20

    if-ne v3, v4, :cond_16

    goto/16 :goto_18f

    .line 1291
    :cond_16
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v3, v4, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_25

    const/4 v1, -0x2

    .line 1292
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v4

    :cond_25
    move-object/from16 v3, p2

    .line 1296
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v3

    .line 1310
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1311
    iget-char v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1313
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v1, v1

    add-int/2addr v9, v1

    add-int/lit8 v1, v9, 0x1

    .line 1315
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v9

    const/16 v10, 0x5b

    const-string v11, "ull"

    const/16 v12, 0x5d

    const/16 v13, 0x2c

    const/4 v15, -0x1

    if-ne v9, v10, :cond_f3

    add-int/lit8 v9, v1, 0x1

    .line 1318
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    :goto_4a
    const/16 v10, 0x22

    if-ne v1, v10, :cond_9d

    .line 1323
    invoke-virtual {v0, v10, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v1

    if-eq v1, v15, :cond_95

    sub-int v2, v1, v9

    .line 1328
    invoke-virtual {v0, v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x5c

    .line 1329
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-eq v14, v15, :cond_8a

    :goto_62
    add-int/lit8 v2, v1, -0x1

    const/4 v14, 0x0

    :goto_65
    if-ltz v2, :cond_73

    .line 1333
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v15

    if-ne v15, v5, :cond_73

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v15, -0x1

    goto :goto_65

    .line 1339
    :cond_73
    rem-int/lit8 v14, v14, 0x2

    if-nez v14, :cond_82

    sub-int v2, v1, v9

    .line 1346
    invoke-virtual {v0, v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->sub_chars(II)[C

    move-result-object v5

    .line 1348
    invoke-static {v5, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->readString([CI)Ljava/lang/String;

    move-result-object v2

    goto :goto_8a

    :cond_82
    add-int/lit8 v1, v1, 0x1

    .line 1342
    invoke-virtual {v0, v10, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v1

    const/4 v15, -0x1

    goto :goto_62

    :cond_8a
    :goto_8a
    add-int/2addr v1, v6

    add-int/lit8 v5, v1, 0x1

    .line 1352
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1354
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b4

    .line 1325
    :cond_95
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "unclosed str"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9d
    const/16 v2, 0x6e

    if-ne v1, v2, :cond_dd

    .line 1355
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2, v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_dd

    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v5, v9, 0x1

    .line 1357
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1358
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_b4
    if-ne v1, v13, :cond_bf

    add-int/lit8 v9, v5, 0x1

    .line 1368
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    const/4 v15, -0x1

    goto :goto_4a

    :cond_bf
    if-ne v1, v12, :cond_d9

    add-int/lit8 v1, v5, 0x1

    .line 1373
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1374
    :goto_c7
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_eb

    add-int/lit8 v2, v1, 0x1

    .line 1375
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move/from16 v16, v2

    move v2, v1

    move/from16 v1, v16

    goto :goto_c7

    :cond_d9
    const/4 v1, -0x1

    .line 1380
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v4

    :cond_dd
    if-ne v1, v12, :cond_ef

    .line 1359
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_ef

    add-int/lit8 v1, v9, 0x1

    .line 1360
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    :cond_eb
    move-object v5, v3

    move v3, v2

    const/4 v2, 0x3

    goto :goto_109

    :cond_ef
    const/4 v1, -0x1

    .line 1363
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v4

    .line 1383
    :cond_f3
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2, v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_18b

    const/4 v2, 0x3

    add-int/2addr v1, v2

    add-int/lit8 v3, v1, 0x1

    .line 1385
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move-object v5, v4

    move/from16 v16, v3

    move v3, v1

    move/from16 v1, v16

    .line 1392
    :goto_109
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    if-ne v3, v13, :cond_118

    .line 1394
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1395
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v5

    :cond_118
    const/16 v2, 0x7d

    if-ne v3, v2, :cond_183

    .line 1398
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    :goto_122
    if-ne v3, v13, :cond_134

    const/16 v1, 0x10

    .line 1401
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1402
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_162

    :cond_134
    if-ne v3, v12, :cond_146

    const/16 v1, 0xf

    .line 1405
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1406
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_162

    :cond_146
    if-ne v3, v2, :cond_158

    const/16 v1, 0xd

    .line 1409
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1410
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_162

    :cond_158
    const/16 v7, 0x1a

    if-ne v3, v7, :cond_166

    const/16 v1, 0x14

    .line 1413
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1414
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_162
    const/4 v1, 0x4

    .line 1432
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v5

    :cond_166
    const/4 v8, 0x0

    .line 1418
    :goto_167
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_17c

    add-int/lit8 v3, v1, 0x1

    .line 1419
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1420
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v8, 0x1

    move/from16 v16, v3

    move v3, v1

    move/from16 v1, v16

    goto :goto_167

    :cond_17c
    if-eqz v8, :cond_17f

    goto :goto_122

    :cond_17f
    const/4 v1, -0x1

    .line 1427
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v4

    :cond_183
    const/4 v1, -0x1

    .line 1434
    iput-char v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1435
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1436
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v4

    :cond_18b
    const/4 v1, -0x1

    .line 1388
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v4

    :cond_18f
    :goto_18f
    move-object/from16 v3, p2

    const/16 v7, 0x1a

    .line 1285
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1286
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt v2, v4, :cond_19f

    const/16 v5, 0x1a

    goto :goto_1a5

    :cond_19f
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 1288
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_1a5
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v2, 0x0

    goto/16 :goto_7
.end method

.method public scanFieldStringArray([CILcom/alibaba/fastjson/parser/SymbolTable;)[Ljava/lang/String;
    .registers 12

    .line 2207
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2208
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2210
    :goto_4
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2211
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_4

    :cond_10
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_5c

    .line 2217
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2218
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare([C)Z

    move-result v5

    if-nez v5, :cond_21

    const/4 p1, -0x2

    .line 2219
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v3

    .line 2223
    :cond_21
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length p1, p1

    add-int/2addr v5, p1

    .line 2224
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 2225
    :goto_2d
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 2226
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v6, v5

    goto :goto_2d

    :cond_3d
    const/16 v5, 0x3a

    if-ne p1, v5, :cond_59

    .line 2230
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 2236
    :goto_49
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 2237
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v5, v6

    goto :goto_49

    .line 2232
    :cond_59
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v3

    .line 2240
    :cond_5c
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, p1, 0x1

    .line 2241
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :cond_62
    const/16 v6, 0x5b

    const/4 v7, 0x4

    if-ne p1, v6, :cond_ea

    .line 2245
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2246
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ltz p2, :cond_78

    .line 2256
    new-array p1, p2, [Ljava/lang/String;

    goto :goto_7a

    :cond_78
    new-array p1, v7, [Ljava/lang/String;

    :goto_7a
    const/4 p2, 0x0

    .line 2259
    :goto_7b
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 2260
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_7b

    .line 2263
    :cond_87
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v6, 0x22

    if-eq v5, v6, :cond_94

    .line 2264
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2265
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2266
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v3

    .line 2270
    :cond_94
    invoke-virtual {p0, p3, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v5

    .line 2271
    array-length v6, p1

    if-ne p2, v6, :cond_a9

    .line 2272
    array-length v6, p1

    array-length v7, p1

    shr-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    .line 2273
    new-array v6, v6, [Ljava/lang/String;

    .line 2274
    array-length v7, p1

    invoke-static {p1, v4, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v6

    :cond_a9
    add-int/lit8 v6, p2, 0x1

    .line 2277
    aput-object v5, p1, p2

    .line 2278
    :goto_ad
    iget-char p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {p2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result p2

    if-eqz p2, :cond_b9

    .line 2279
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_ad

    .line 2281
    :cond_b9
    iget-char p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v5, 0x2c

    if-ne p2, v5, :cond_c4

    .line 2282
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    move p2, v6

    goto :goto_7b

    .line 2287
    :cond_c4
    array-length p2, p1

    if-eq p2, v6, :cond_cd

    .line 2288
    new-array p2, v6, [Ljava/lang/String;

    .line 2289
    invoke-static {p1, v4, p2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p2

    .line 2293
    :cond_cd
    :goto_cd
    iget-char p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {p2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result p2

    if-eqz p2, :cond_d9

    .line 2294
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_cd

    .line 2297
    :cond_d9
    iget-char p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 p3, 0x5d

    if-ne p2, p3, :cond_e3

    .line 2298
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    return-object p1

    .line 2300
    :cond_e3
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2301
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2302
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v3

    :cond_ea
    const/16 p2, 0x6e

    if-ne p1, p2, :cond_10c

    .line 2247
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p2, p2, 0x1

    const-string p3, "ull"

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_10c

    .line 2248
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v7

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2249
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    return-object v3

    .line 2252
    :cond_10c
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v3
.end method

.method public scanFieldSymbol([C)J
    .registers 12

    const/4 v0, 0x0

    .line 1191
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1194
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_2a

    .line 1195
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1196
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 1198
    :goto_1a
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1199
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_1a

    :cond_26
    const/4 p1, -0x2

    .line 1203
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v1

    .line 1210
    :cond_2a
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length p1, p1

    add-int/2addr v0, p1

    add-int/lit8 p1, v0, 0x1

    .line 1212
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v3, 0x22

    const/4 v4, -0x1

    if-eq v0, v3, :cond_4e

    .line 1214
    :goto_39
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_49

    add-int/lit8 v0, p1, 0x1

    .line 1215
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    move v9, v0

    move v0, p1

    move p1, v9

    goto :goto_39

    :cond_49
    if-eq v0, v3, :cond_4e

    .line 1220
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v1

    :cond_4e
    const-wide v5, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    :goto_53
    add-int/lit8 v0, p1, 0x1

    .line 1228
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    if-ne p1, v3, :cond_e5

    .line 1230
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1231
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_65
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_79

    .line 1244
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 p1, 0x3

    .line 1245
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v5

    :cond_79
    const/16 v3, 0x7d

    if-ne p1, v3, :cond_d1

    .line 1248
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 1249
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 1250
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCurrent()C

    move-result p1

    if-ne p1, v0, :cond_9a

    const/16 p1, 0x10

    .line 1252
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1253
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_ca

    :cond_9a
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_af

    const/16 p1, 0xf

    .line 1255
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1256
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_ca

    :cond_af
    if-ne p1, v3, :cond_c2

    const/16 p1, 0xd

    .line 1258
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1259
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_ca

    :cond_c2
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_ce

    const/16 p1, 0x14

    .line 1261
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    :goto_ca
    const/4 p1, 0x4

    .line 1266
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v5

    .line 1263
    :cond_ce
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v1

    .line 1268
    :cond_d1
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_e2

    .line 1269
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto :goto_65

    .line 1272
    :cond_e2
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v1

    .line 1233
    :cond_e5
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-le v0, v7, :cond_ec

    .line 1234
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v1

    :cond_ec
    int-to-long v7, p1

    xor-long/2addr v5, v7

    const-wide v7, 0x100000001b3L

    mul-long v5, v5, v7

    move p1, v0

    goto/16 :goto_53
.end method

.method public scanISO8601DateIfMatch()Z
    .registers 2

    const/4 v0, 0x1

    .line 208
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    return v0
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .registers 4

    .line 212
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    sub-int/2addr v0, v1

    .line 213
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(ZI)Z

    move-result p1

    return p1
.end method

.method public final scanInt(C)I
    .registers 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1692
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1694
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1695
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v3, 0x1

    .line 1696
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 1698
    :goto_f
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_1f

    add-int/lit8 v3, v4, 0x1

    .line 1699
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move v15, v4

    move v4, v3

    move v3, v15

    goto :goto_f

    :cond_1f
    const/16 v5, 0x22

    const/4 v6, 0x1

    if-ne v3, v5, :cond_26

    const/4 v7, 0x1

    goto :goto_27

    :cond_26
    const/4 v7, 0x0

    :goto_27
    if-eqz v7, :cond_32

    add-int/lit8 v3, v4, 0x1

    .line 1705
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move v15, v4

    move v4, v3

    move v3, v15

    :cond_32
    const/16 v8, 0x2d

    if-ne v3, v8, :cond_38

    const/4 v8, 0x1

    goto :goto_39

    :cond_38
    const/4 v8, 0x0

    :goto_39
    if-eqz v8, :cond_44

    add-int/lit8 v3, v4, 0x1

    .line 1710
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move v15, v4

    move v4, v3

    move v3, v15

    :cond_44
    const/16 v9, 0x10

    const/16 v10, 0x30

    const/4 v11, -0x1

    if-lt v3, v10, :cond_c5

    const/16 v12, 0x39

    if-gt v3, v12, :cond_c5

    sub-int/2addr v3, v10

    :goto_50
    add-int/lit8 v13, v4, 0x1

    .line 1717
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-lt v4, v10, :cond_80

    if-gt v4, v12, :cond_80

    mul-int/lit8 v14, v3, 0xa

    if-lt v14, v3, :cond_64

    add-int/lit8 v4, v4, -0x30

    add-int v3, v14, v4

    move v4, v13

    goto :goto_50

    .line 1721
    :cond_64
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseInt error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v13, v6

    .line 1722
    invoke-virtual {v0, v2, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_80
    const/16 v2, 0x2e

    if-ne v4, v2, :cond_87

    .line 1726
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v1

    :cond_87
    if-eqz v7, :cond_95

    if-eq v4, v5, :cond_8e

    .line 1731
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v1

    :cond_8e
    add-int/lit8 v2, v13, 0x1

    .line 1734
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move v13, v2

    :cond_95
    if-gez v3, :cond_9a

    .line 1741
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v1

    :cond_9a
    move/from16 v1, p1

    :goto_9c
    if-ne v4, v1, :cond_b1

    .line 1784
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1785
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v1, 0x3

    .line 1786
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1787
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    if-eqz v8, :cond_b0

    neg-int v3, v3

    :cond_b0
    return v3

    .line 1790
    :cond_b1
    invoke-static {v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_bf

    add-int/lit8 v2, v13, 0x1

    .line 1791
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move v13, v2

    goto :goto_9c

    .line 1794
    :cond_bf
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    if-eqz v8, :cond_c4

    neg-int v3, v3

    :cond_c4
    return v3

    :cond_c5
    const/16 v2, 0x6e

    if-ne v3, v2, :cond_133

    add-int/lit8 v2, v4, 0x1

    .line 1745
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v4, 0x75

    if-ne v3, v4, :cond_133

    add-int/lit8 v3, v2, 0x1

    .line 1746
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v4, 0x6c

    if-ne v2, v4, :cond_133

    add-int/lit8 v2, v3, 0x1

    .line 1747
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_133

    const/4 v3, 0x5

    .line 1748
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    add-int/lit8 v4, v2, 0x1

    .line 1750
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-eqz v7, :cond_fb

    if-ne v2, v5, :cond_fb

    add-int/lit8 v2, v4, 0x1

    .line 1753
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    :goto_f8
    move v15, v4

    move v4, v2

    move v2, v15

    :cond_fb
    const/16 v5, 0x2c

    if-ne v2, v5, :cond_10e

    .line 1758
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1759
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1760
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1761
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v1

    :cond_10e
    const/16 v5, 0x5d

    if-ne v2, v5, :cond_123

    .line 1764
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1765
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1766
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v2, 0xf

    .line 1767
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v1

    .line 1769
    :cond_123
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_130

    add-int/lit8 v2, v4, 0x1

    .line 1770
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    goto :goto_f8

    .line 1775
    :cond_130
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v1

    .line 1778
    :cond_133
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v1
.end method

.method public scanLong(C)J
    .registers 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1941
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1943
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v2, 0x1

    .line 1944
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v4, 0x22

    const/4 v5, 0x1

    if-ne v2, v4, :cond_14

    const/4 v6, 0x1

    goto :goto_15

    :cond_14
    const/4 v6, 0x0

    :goto_15
    if-eqz v6, :cond_22

    add-int/lit8 v2, v3, 0x1

    .line 1948
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move/from16 v18, v3

    move v3, v2

    move/from16 v2, v18

    :cond_22
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_28

    const/4 v7, 0x1

    goto :goto_29

    :cond_28
    const/4 v7, 0x0

    :goto_29
    if-eqz v7, :cond_36

    add-int/lit8 v2, v3, 0x1

    .line 1953
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move/from16 v18, v3

    move v3, v2

    move/from16 v2, v18

    :cond_36
    const/16 v9, 0x30

    const/4 v10, -0x1

    const-wide/16 v11, 0x0

    if-lt v2, v9, :cond_b2

    const/16 v13, 0x39

    if-gt v2, v13, :cond_b2

    sub-int/2addr v2, v9

    int-to-long v14, v2

    :goto_43
    add-int/lit8 v2, v3, 0x1

    .line 1960
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-lt v3, v9, :cond_59

    if-gt v3, v13, :cond_59

    const-wide/16 v16, 0xa

    mul-long v14, v14, v16

    add-int/lit8 v3, v3, -0x30

    int-to-long v8, v3

    add-long/2addr v14, v8

    move v3, v2

    const/16 v9, 0x30

    goto :goto_43

    :cond_59
    const/16 v8, 0x2e

    if-ne v3, v8, :cond_60

    .line 1964
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v11

    :cond_60
    if-eqz v6, :cond_72

    if-eq v3, v4, :cond_67

    .line 1969
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v11

    :cond_67
    add-int/lit8 v3, v2, 0x1

    .line 1972
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move/from16 v18, v3

    move v3, v2

    move/from16 v2, v18

    :cond_72
    cmp-long v4, v14, v11

    if-gez v4, :cond_7e

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v4, v14, v8

    if-nez v4, :cond_7f

    if-eqz v7, :cond_7f

    :cond_7e
    const/4 v1, 0x1

    :cond_7f
    if-nez v1, :cond_84

    .line 1981
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v11

    :cond_84
    move/from16 v1, p1

    :goto_86
    if-ne v3, v1, :cond_9d

    .line 2024
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2025
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v1, 0x3

    .line 2026
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v1, 0x10

    .line 2027
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    if-eqz v7, :cond_9c

    neg-long v14, v14

    :cond_9c
    return-wide v14

    .line 2030
    :cond_9d
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_af

    add-int/lit8 v3, v2, 0x1

    .line 2031
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move/from16 v18, v3

    move v3, v2

    move/from16 v2, v18

    goto :goto_86

    .line 2035
    :cond_af
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v14

    :cond_b2
    const/16 v1, 0x6e

    if-ne v2, v1, :cond_126

    add-int/lit8 v1, v3, 0x1

    .line 1985
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x75

    if-ne v2, v3, :cond_126

    add-int/lit8 v2, v1, 0x1

    .line 1986
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_126

    add-int/lit8 v1, v2, 0x1

    .line 1987
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_126

    const/4 v2, 0x5

    .line 1988
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    add-int/lit8 v3, v1, 0x1

    .line 1990
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-eqz v6, :cond_ea

    if-ne v1, v4, :cond_ea

    add-int/lit8 v1, v3, 0x1

    .line 1993
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    :goto_e5
    move/from16 v18, v3

    move v3, v1

    move/from16 v1, v18

    :cond_ea
    const/16 v4, 0x2c

    if-ne v1, v4, :cond_ff

    .line 1998
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1999
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2000
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v4, 0x10

    .line 2001
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-wide v11

    :cond_ff
    const/16 v4, 0x10

    const/16 v5, 0x5d

    if-ne v1, v5, :cond_116

    .line 2004
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2005
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2006
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v1, 0xf

    .line 2007
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-wide v11

    .line 2009
    :cond_116
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_123

    add-int/lit8 v1, v3, 0x1

    .line 2010
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    goto :goto_e5

    .line 2015
    :cond_123
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v11

    .line 2018
    :cond_126
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v11
.end method

.method public scanTypeName(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .registers 7

    .line 3032
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const-string v2, "\"@type\":\""

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5d

    .line 3033
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const/16 v2, 0x22

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x9

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5d

    .line 3035
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x9

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v2, 0x0

    .line 3037
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    :goto_25
    if-ge v3, v0, :cond_33

    mul-int/lit8 v2, v2, 0x1f

    .line 3038
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 3040
    :cond_33
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v3, v4, v2, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object p1

    .line 3041
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_4e

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_4e

    return-object v1

    :cond_4e
    add-int/lit8 v0, v0, 0x2

    .line 3045
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 3046
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    return-object p1

    :cond_5d
    return-object v1
.end method

.method public seekArrayToItem(I)Z
    .registers 12

    if-ltz p1, :cond_c5

    .line 2494
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v1, 0x14

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    return v2

    .line 2498
    :cond_a
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_bf

    const/4 v0, 0x0

    :goto_11
    const/4 v3, 0x1

    if-ge v0, p1, :cond_bb

    .line 2504
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2505
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v5, 0x22

    const/16 v6, 0x10

    const-string v7, "illegal json."

    const/16 v8, 0x5d

    const/16 v9, 0x2c

    if-eq v4, v5, :cond_9c

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v5, 0x27

    if-ne v4, v5, :cond_2d

    goto/16 :goto_9c

    .line 2517
    :cond_2d
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v5, 0x7b

    if-ne v4, v5, :cond_3e

    .line 2518
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    const/16 v3, 0xc

    .line 2519
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2520
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipObject(Z)V

    goto :goto_4c

    .line 2521
    :cond_3e
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_5e

    .line 2522
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2523
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2524
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipArray(Z)V

    .line 2549
    :goto_4c
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    if-ne v3, v6, :cond_51

    goto :goto_a6

    .line 2551
    :cond_51
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v0, 0xf

    if-ne p1, v0, :cond_58

    return v2

    .line 2554
    :cond_58
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 2527
    :cond_5e
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v4, v3

    :goto_61
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_92

    .line 2528
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_7e

    add-int/lit8 v4, v4, 0x1

    .line 2531
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2532
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_93

    :cond_7e
    if-ne v5, v8, :cond_8f

    add-int/2addr v4, v3

    .line 2535
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2536
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2537
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    return v2

    :cond_8f
    add-int/lit8 v4, v4, 0x1

    goto :goto_61

    :cond_92
    const/4 v3, 0x0

    :goto_93
    if-eqz v3, :cond_96

    goto :goto_a6

    .line 2543
    :cond_96
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2506
    :cond_9c
    :goto_9c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipString()V

    .line 2507
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v3, v9, :cond_aa

    .line 2508
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    :goto_a6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_11

    .line 2510
    :cond_aa
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne p1, v8, :cond_b5

    .line 2511
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2512
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    return v2

    .line 2515
    :cond_b5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2559
    :cond_bb
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    return v3

    .line 2499
    :cond_bf
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 2491
    :cond_c5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index must > 0, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_dd

    :goto_dc
    throw v0

    :goto_dd
    goto :goto_dc
.end method

.method public seekObjectToField(JZ)I
    .registers 21

    move-object/from16 v0, p0

    .line 2564
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/4 v2, -0x1

    const/16 v3, 0x14

    if-ne v1, v3, :cond_a

    return v2

    .line 2568
    :cond_a
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v3, 0xd

    if-eq v1, v3, :cond_386

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v4, 0xf

    if-ne v1, v4, :cond_18

    goto/16 :goto_386

    .line 2573
    :cond_18
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v5, 0x10

    const/16 v6, 0xc

    if-eq v1, v6, :cond_31

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    if-ne v1, v5, :cond_25

    goto :goto_31

    .line 2574
    :cond_25
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2578
    :cond_31
    :goto_31
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v7, 0x7d

    if-ne v1, v7, :cond_3e

    .line 2579
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2580
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    return v2

    .line 2583
    :cond_3e
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v8, 0x1a

    if-ne v1, v8, :cond_45

    return v2

    .line 2587
    :cond_45
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v9, 0x22

    if-eq v1, v9, :cond_4e

    .line 2588
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2592
    :cond_4e
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v9, :cond_380

    const-wide v10, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 2595
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v12, 0x1

    add-int/2addr v1, v12

    :goto_5b
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v1, v13, :cond_c3

    .line 2596
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x5c

    if-ne v13, v14, :cond_99

    add-int/lit8 v1, v1, 0x1

    .line 2599
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eq v1, v13, :cond_7e

    .line 2602
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    goto :goto_99

    .line 2600
    :cond_7e
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unclosed str, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_99
    :goto_99
    if-ne v13, v9, :cond_b7

    add-int/lit8 v1, v1, 0x1

    .line 2606
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2607
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v1, v13, :cond_ac

    const/16 v1, 0x1a

    goto :goto_b4

    :cond_ac
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2609
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_b4
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_c3

    :cond_b7
    int-to-long v13, v13

    xor-long/2addr v10, v13

    const-wide v13, 0x100000001b3L

    mul-long v10, v10, v13

    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    :cond_c3
    :goto_c3
    const/4 v1, 0x2

    const/4 v13, 0x0

    const/16 v14, 0x3a

    const/16 v15, 0x39

    const/16 v8, 0x30

    const/16 v2, 0x2c

    cmp-long v16, v10, p1

    if-nez v16, :cond_16a

    .line 2621
    iget-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v6, v14, :cond_d8

    .line 2622
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2624
    :cond_d8
    iget-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v6, v14, :cond_168

    .line 2626
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v6, v12

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2627
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v6, v9, :cond_ec

    const/16 v6, 0x1a

    goto :goto_f2

    :cond_ec
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2629
    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_f2
    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2631
    iget-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v6, v2, :cond_113

    .line 2633
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2634
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_108

    const/16 v8, 0x1a

    goto :goto_10e

    :cond_108
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2636
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_10e
    iput-char v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2638
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_168

    .line 2639
    :cond_113
    iget-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v5, 0x5d

    if-ne v2, v5, :cond_134

    .line 2641
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2642
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_129

    const/16 v8, 0x1a

    goto :goto_12f

    :cond_129
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2644
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_12f
    iput-char v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2646
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_168

    .line 2647
    :cond_134
    iget-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v2, v7, :cond_153

    .line 2649
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2650
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_148

    const/16 v8, 0x1a

    goto :goto_14e

    :cond_148
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2652
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_14e
    iput-char v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2654
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_168

    .line 2655
    :cond_153
    iget-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v2, v8, :cond_165

    iget-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v2, v15, :cond_165

    .line 2656
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 2657
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    .line 2658
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanNumber()V

    goto :goto_168

    .line 2660
    :cond_165
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    :cond_168
    :goto_168
    const/4 v1, 0x3

    return v1

    .line 2666
    :cond_16a
    iget-char v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v10, v14, :cond_171

    .line 2667
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2670
    :cond_171
    iget-char v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v10, v14, :cond_365

    .line 2671
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v10, v12

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2672
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v10, v11, :cond_185

    const/16 v10, 0x1a

    goto :goto_18b

    :cond_185
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2674
    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_18b
    iput-char v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2679
    iget-char v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v11, 0x5b

    const/16 v14, 0x7b

    const/16 v4, 0x2b

    const/16 v5, 0x2d

    if-eq v10, v9, :cond_1ea

    iget-char v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x27

    if-eq v10, v1, :cond_1ea

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v14, :cond_1ea

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v11, :cond_1ea

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v8, :cond_1ea

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v10, 0x31

    if-eq v1, v10, :cond_1ea

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v10, 0x32

    if-eq v1, v10, :cond_1ea

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v10, 0x33

    if-eq v1, v10, :cond_1ea

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v10, 0x34

    if-eq v1, v10, :cond_1ea

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v10, 0x35

    if-eq v1, v10, :cond_1ea

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v10, 0x36

    if-eq v1, v10, :cond_1ea

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v10, 0x37

    if-eq v1, v10, :cond_1ea

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v10, 0x38

    if-eq v1, v10, :cond_1ea

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v15, :cond_1ea

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v4, :cond_1ea

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v5, :cond_1ea

    .line 2695
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2699
    :cond_1ea
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v10, 0x65

    if-eq v1, v5, :cond_308

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v4, :cond_308

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v1, v8, :cond_1fe

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v1, v15, :cond_1fe

    goto/16 :goto_308

    .line 2730
    :cond_1fe
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v9, :cond_219

    .line 2731
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipString()V

    .line 2733
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v2, :cond_210

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v7, :cond_210

    .line 2734
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2737
    :cond_210
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v2, :cond_35e

    .line 2738
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto/16 :goto_35e

    .line 2740
    :cond_219
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v4, 0x74

    const/16 v5, 0x75

    if-ne v1, v4, :cond_24f

    .line 2741
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2742
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v4, 0x72

    if-ne v1, v4, :cond_23b

    .line 2743
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2744
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v5, :cond_23b

    .line 2745
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2746
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v10, :cond_23b

    .line 2747
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2752
    :cond_23b
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v2, :cond_246

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v7, :cond_246

    .line 2753
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2756
    :cond_246
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v2, :cond_35e

    .line 2757
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto/16 :goto_35e

    .line 2759
    :cond_24f
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v4, 0x6e

    const/16 v8, 0x6c

    if-ne v1, v4, :cond_283

    .line 2760
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2761
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v5, :cond_26f

    .line 2762
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2763
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v8, :cond_26f

    .line 2764
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2765
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v8, :cond_26f

    .line 2766
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2771
    :cond_26f
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v2, :cond_27a

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v7, :cond_27a

    .line 2772
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2775
    :cond_27a
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v2, :cond_35e

    .line 2776
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto/16 :goto_35e

    .line 2778
    :cond_283
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v4, 0x66

    if-ne v1, v4, :cond_2c0

    .line 2779
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2780
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v4, 0x61

    if-ne v1, v4, :cond_2ac

    .line 2781
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2782
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v8, :cond_2ac

    .line 2783
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2784
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v4, 0x73

    if-ne v1, v4, :cond_2ac

    .line 2785
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2786
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v10, :cond_2ac

    .line 2787
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2793
    :cond_2ac
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v2, :cond_2b7

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v7, :cond_2b7

    .line 2794
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2797
    :cond_2b7
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v2, :cond_35e

    .line 2798
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto/16 :goto_35e

    .line 2800
    :cond_2c0
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v14, :cond_2ea

    .line 2802
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2803
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_2d4

    const/16 v8, 0x1a

    goto :goto_2da

    :cond_2d4
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2805
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_2da
    iput-char v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eqz p3, :cond_2e1

    .line 2808
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v12

    .line 2812
    :cond_2e1
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipObject(Z)V

    .line 2813
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    if-ne v1, v3, :cond_35e

    const/4 v1, -0x1

    return v1

    .line 2816
    :cond_2ea
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v11, :cond_302

    .line 2817
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    if-eqz p3, :cond_2f9

    const/16 v1, 0xe

    .line 2819
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/4 v1, 0x2

    return v1

    .line 2822
    :cond_2f9
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipArray(Z)V

    .line 2823
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    if-ne v1, v3, :cond_35e

    const/4 v1, -0x1

    return v1

    .line 2827
    :cond_302
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 2700
    :cond_308
    :goto_308
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2701
    :goto_30b
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v1, v8, :cond_317

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v1, v15, :cond_317

    .line 2702
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_30b

    .line 2706
    :cond_317
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v7, 0x2e

    if-ne v1, v7, :cond_32c

    .line 2707
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2708
    :goto_320
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v1, v8, :cond_32c

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v1, v15, :cond_32c

    .line 2709
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_320

    .line 2714
    :cond_32c
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v7, 0x45

    if-eq v1, v7, :cond_336

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v10, :cond_350

    .line 2715
    :cond_336
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2716
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v5, :cond_341

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v4, :cond_344

    .line 2717
    :cond_341
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2719
    :cond_344
    :goto_344
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v1, v8, :cond_350

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v1, v15, :cond_350

    .line 2720
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_344

    .line 2724
    :cond_350
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v2, :cond_357

    .line 2725
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2727
    :cond_357
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v2, :cond_35e

    .line 2728
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    :cond_35e
    :goto_35e
    const/4 v2, -0x1

    const/16 v4, 0xf

    const/16 v5, 0x10

    goto/16 :goto_31

    .line 2676
    :cond_365
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal json, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2617
    :cond_380
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 2569
    :cond_386
    :goto_386
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    const/4 v1, -0x1

    return v1
.end method

.method public seekObjectToField([J)I
    .registers 16

    .line 2833
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v1, 0x10

    const/16 v2, 0xc

    if-eq v0, v2, :cond_13

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    if-ne v0, v1, :cond_d

    goto :goto_13

    .line 2834
    :cond_d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 2838
    :cond_13
    :goto_13
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v2, 0x7d

    const/4 v3, -0x1

    if-ne v0, v2, :cond_23

    .line 2839
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2840
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 2841
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v3

    .line 2844
    :cond_23
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v4, 0x1a

    if-ne v0, v4, :cond_2c

    .line 2845
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v3

    .line 2849
    :cond_2c
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v5, 0x22

    if-eq v0, v5, :cond_35

    .line 2850
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2854
    :cond_35
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v5, :cond_2b4

    const-wide v6, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 2857
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    :goto_40
    add-int/lit8 v0, v0, 0x1

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_a8

    .line 2858
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_80

    add-int/lit8 v0, v0, 0x1

    .line 2861
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v0, v8, :cond_65

    .line 2864
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_80

    .line 2862
    :cond_65
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unclosed str, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_80
    :goto_80
    if-ne v8, v5, :cond_9e

    add-int/lit8 v0, v0, 0x1

    .line 2868
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2869
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v0, v8, :cond_93

    const/16 v0, 0x1a

    goto :goto_9b

    :cond_93
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2871
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_9b
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_a8

    :cond_9e
    int-to-long v8, v8

    xor-long/2addr v6, v8

    const-wide v8, 0x100000001b3L

    mul-long v6, v6, v8

    goto :goto_40

    :cond_a8
    :goto_a8
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 2883
    :goto_aa
    array-length v9, p1

    if-ge v8, v9, :cond_b7

    .line 2884
    aget-wide v9, p1, v8

    cmp-long v11, v6, v9

    if-nez v11, :cond_b4

    goto :goto_b8

    :cond_b4
    add-int/lit8 v8, v8, 0x1

    goto :goto_aa

    :cond_b7
    const/4 v8, -0x1

    :goto_b8
    const/16 v6, 0x3a

    const/16 v7, 0x2c

    const/16 v9, 0x39

    const/16 v10, 0x30

    if-eq v8, v3, :cond_160

    .line 2891
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq p1, v6, :cond_c9

    .line 2892
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2894
    :cond_c9
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne p1, v6, :cond_15c

    .line 2896
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2897
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt p1, v3, :cond_de

    const/16 p1, 0x1a

    goto :goto_e4

    :cond_de
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2899
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_e4
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2901
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne p1, v7, :cond_104

    .line 2903
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2904
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_f9

    goto :goto_ff

    :cond_f9
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2906
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_ff
    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2908
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_15c

    .line 2909
    :cond_104
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x5d

    if-ne p1, v1, :cond_126

    .line 2911
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2912
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_119

    goto :goto_11f

    :cond_119
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2914
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_11f
    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 p1, 0xf

    .line 2916
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_15c

    .line 2917
    :cond_126
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne p1, v2, :cond_146

    .line 2919
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2920
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_139

    goto :goto_13f

    :cond_139
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2922
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_13f
    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 p1, 0xd

    .line 2924
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_15c

    .line 2925
    :cond_146
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt p1, v10, :cond_158

    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt p1, v9, :cond_158

    .line 2926
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 2927
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    .line 2928
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanNumber()V

    goto :goto_15c

    :cond_158
    const/4 p1, 0x2

    .line 2930
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    :cond_15c
    :goto_15c
    const/4 p1, 0x3

    .line 2934
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v8

    .line 2938
    :cond_160
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v3, v6, :cond_167

    .line 2939
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2942
    :cond_167
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v3, v6, :cond_299

    .line 2943
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2944
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v3, v6, :cond_17c

    const/16 v3, 0x1a

    goto :goto_182

    :cond_17c
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2946
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_182
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2951
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v6, 0x5b

    const/16 v8, 0x7b

    const/16 v11, 0x2b

    const/16 v12, 0x2d

    if-eq v3, v5, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v13, 0x27

    if-eq v3, v13, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v3, v8, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v3, v6, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v3, v10, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v13, 0x31

    if-eq v3, v13, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v13, 0x32

    if-eq v3, v13, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v13, 0x33

    if-eq v3, v13, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v13, 0x34

    if-eq v3, v13, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v13, 0x35

    if-eq v3, v13, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v13, 0x36

    if-eq v3, v13, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v13, 0x37

    if-eq v3, v13, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v13, 0x38

    if-eq v3, v13, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v3, v9, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v3, v11, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v3, v12, :cond_1e1

    .line 2967
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2971
    :cond_1e1
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v3, v12, :cond_23f

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v3, v11, :cond_23f

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v3, v10, :cond_1f2

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v3, v9, :cond_1f2

    goto :goto_23f

    .line 3002
    :cond_1f2
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v3, v5, :cond_20d

    .line 3003
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipString()V

    .line 3005
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v7, :cond_204

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v2, :cond_204

    .line 3006
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 3009
    :cond_204
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v7, :cond_13

    .line 3010
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto/16 :goto_13

    .line 3012
    :cond_20d
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v2, v8, :cond_22d

    .line 3014
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 3015
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_220

    goto :goto_226

    :cond_220
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 3017
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_226
    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 3020
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipObject(Z)V

    goto/16 :goto_13

    .line 3021
    :cond_22d
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v2, v6, :cond_239

    .line 3022
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 3024
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipArray(Z)V

    goto/16 :goto_13

    .line 3026
    :cond_239
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 2972
    :cond_23f
    :goto_23f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2973
    :goto_242
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v0, v10, :cond_24e

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v0, v9, :cond_24e

    .line 2974
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_242

    .line 2978
    :cond_24e
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_263

    .line 2979
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2980
    :goto_257
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v0, v10, :cond_263

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v0, v9, :cond_263

    .line 2981
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_257

    .line 2986
    :cond_263
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v2, 0x45

    if-eq v0, v2, :cond_26f

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v2, 0x65

    if-ne v0, v2, :cond_289

    .line 2987
    :cond_26f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2988
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v12, :cond_27a

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v11, :cond_27d

    .line 2989
    :cond_27a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2991
    :cond_27d
    :goto_27d
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v0, v10, :cond_289

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v0, v9, :cond_289

    .line 2992
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_27d

    .line 2996
    :cond_289
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v7, :cond_290

    .line 2997
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2999
    :cond_290
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v7, :cond_13

    .line 3000
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto/16 :goto_13

    .line 2948
    :cond_299
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal json, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2879
    :cond_2b4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto :goto_2bb

    :goto_2ba
    throw p1

    :goto_2bb
    goto :goto_2ba
.end method

.method protected setTime(CCCCCC)V
    .registers 7

    add-int/lit8 p1, p1, -0x30

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 p2, p2, -0x30

    add-int/2addr p1, p2

    add-int/lit8 p3, p3, -0x30

    mul-int/lit8 p3, p3, 0xa

    add-int/lit8 p4, p4, -0x30

    add-int/2addr p3, p4

    add-int/lit8 p5, p5, -0x30

    mul-int/lit8 p5, p5, 0xa

    add-int/lit8 p6, p6, -0x30

    add-int/2addr p5, p6

    .line 702
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 p4, 0xb

    invoke-virtual {p2, p4, p1}, Ljava/util/Calendar;->set(II)V

    .line 703
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 704
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 p2, 0xd

    invoke-virtual {p1, p2, p5}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method protected setTimeZone(CCC)V
    .registers 10

    const/16 v4, 0x30

    const/16 v5, 0x30

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 708
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCCCC)V

    return-void
.end method

.method protected setTimeZone(CCCCC)V
    .registers 6

    add-int/lit8 p2, p2, -0x30

    mul-int/lit8 p2, p2, 0xa

    add-int/lit8 p3, p3, -0x30

    add-int/2addr p2, p3

    mul-int/lit16 p2, p2, 0xe10

    mul-int/lit16 p2, p2, 0x3e8

    add-int/lit8 p4, p4, -0x30

    mul-int/lit8 p4, p4, 0xa

    add-int/lit8 p5, p5, -0x30

    add-int/2addr p4, p5

    mul-int/lit8 p4, p4, 0x3c

    mul-int/lit16 p4, p4, 0x3e8

    add-int/2addr p2, p4

    const/16 p3, 0x2d

    if-ne p1, p3, :cond_1c

    neg-int p2, p2

    .line 720
    :cond_1c
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p1

    if-eq p1, p2, :cond_36

    .line 721
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    new-instance p3, Ljava/util/SimpleTimeZone;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p2, p4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_36
    return-void
.end method

.method public final skipArray()V
    .registers 2

    const/4 v0, 0x0

    .line 2410
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipArray(Z)V

    return-void
.end method

.method public final skipArray(Z)V
    .registers 8

    .line 2416
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2417
    :goto_4
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "illegal str, "

    if-ge v0, v3, :cond_a8

    .line 2418
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_3f

    .line 2420
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_22

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a4

    .line 2424
    :cond_22
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2425
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2426
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    const/16 v4, 0x22

    if-ne v3, v4, :cond_46

    xor-int/lit8 v1, v1, 0x1

    goto :goto_a4

    :cond_46
    const/16 v4, 0x5b

    if-ne v3, v4, :cond_50

    if-eqz v1, :cond_4d

    goto :goto_a4

    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a4

    :cond_50
    const/16 v4, 0x7b

    const/16 v5, 0x1a

    if-ne v3, v4, :cond_73

    if-eqz p1, :cond_73

    .line 2437
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2438
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_67

    goto :goto_6d

    :cond_67
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2440
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_6d
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2443
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipObject(Z)V

    goto :goto_a4

    :cond_73
    const/16 v4, 0x5d

    if-ne v3, v4, :cond_a4

    if-eqz v1, :cond_7a

    goto :goto_a4

    :cond_7a
    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a4

    add-int/lit8 v0, v0, 0x1

    .line 2451
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2452
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p1, v0, :cond_94

    .line 2453
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 p1, 0x14

    .line 2454
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-void

    .line 2457
    :cond_94
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 p1, 0x10

    .line 2458
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    return-void

    :cond_a4
    :goto_a4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 2464
    :cond_a8
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eq v0, p1, :cond_b1

    return-void

    .line 2465
    :cond_b1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_cb

    :goto_ca
    throw p1

    :goto_cb
    goto :goto_ca
.end method

.method public final skipObject()V
    .registers 2

    const/4 v0, 0x0

    .line 2336
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipObject(Z)V

    return-void
.end method

.method public final skipObject(Z)V
    .registers 8

    .line 2342
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2343
    :goto_5
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "illegal str, "

    if-ge p1, v3, :cond_c4

    .line 2344
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_40

    .line 2346
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    add-int/lit8 v5, v5, -0x1

    if-ge p1, v5, :cond_23

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_c0

    .line 2350
    :cond_23
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2351
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2352
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    const/16 v4, 0x22

    if-ne v3, v4, :cond_48

    xor-int/lit8 v1, v1, 0x1

    goto/16 :goto_c0

    :cond_48
    const/16 v4, 0x7b

    if-ne v3, v4, :cond_53

    if-eqz v1, :cond_50

    goto/16 :goto_c0

    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_c0

    :cond_53
    const/16 v4, 0x7d

    if-ne v3, v4, :cond_c0

    if-eqz v1, :cond_5a

    goto :goto_c0

    :cond_5a
    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c0

    add-int/lit8 p1, p1, 0x1

    .line 2368
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2369
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1a

    if-ne p1, v0, :cond_76

    .line 2370
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 p1, 0x14

    .line 2371
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-void

    .line 2374
    :cond_76
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2375
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v0, 0x2c

    const/16 v2, 0x10

    if-ne p1, v0, :cond_a2

    .line 2376
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2377
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2378
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_99

    goto :goto_9f

    :cond_99
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2380
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_9f
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    return-void

    .line 2382
    :cond_a2
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne p1, v4, :cond_ae

    const/16 p1, 0xd

    .line 2383
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2384
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    return-void

    .line 2386
    :cond_ae
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v0, 0x5d

    if-ne p1, v0, :cond_bc

    const/16 p1, 0xf

    .line 2387
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2388
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    return-void

    .line 2391
    :cond_bc
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    return-void

    :cond_c0
    :goto_c0
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_5

    .line 2398
    :cond_c4
    :goto_c4
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    if-ge v0, v1, :cond_df

    .line 2399
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_dc

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_dc

    add-int/lit8 p1, p1, 0x1

    :cond_dc
    add-int/lit8 v0, v0, 0x1

    goto :goto_c4

    .line 2404
    :cond_df
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p1, v0, :cond_e8

    return-void

    .line 2405
    :cond_e8
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_102

    :goto_101
    throw p1

    :goto_102
    goto :goto_101
.end method

.method public final skipString()V
    .registers 5

    .line 2470
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_3c

    .line 2471
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    :cond_8
    :goto_8
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_34

    .line 2472
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_25

    .line 2474
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_25
    if-ne v2, v1, :cond_8

    .line 2479
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    return-void

    .line 2483
    :cond_34
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "unclosed str"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2485
    :cond_3c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto :goto_43

    :goto_42
    throw v0

    :goto_43
    goto :goto_42
.end method

.method public final stringVal()Ljava/lang/String;
    .registers 5

    .line 140
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v0, :cond_f

    .line 141
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 143
    :cond_f
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final subString(II)Ljava/lang/String;
    .registers 7

    .line 148
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-eqz v0, :cond_29

    .line 149
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v0, v0

    const/4 v1, 0x0

    if-ge p2, v0, :cond_1b

    .line 150
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v0, p1, v2, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 151
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-direct {p1, v0, v1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 153
    :cond_1b
    new-array v0, p2, [C

    .line 154
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v2, p1, p2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 155
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    .line 158
    :cond_29
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final sub_chars(II)[C
    .registers 6

    .line 163
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v0, v0

    if-ge p2, v0, :cond_15

    .line 164
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v0, p1, p2, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 165
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    return-object p1

    .line 167
    :cond_15
    new-array v0, p2, [C

    .line 168
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v2, p1, p2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    return-object v0
.end method
