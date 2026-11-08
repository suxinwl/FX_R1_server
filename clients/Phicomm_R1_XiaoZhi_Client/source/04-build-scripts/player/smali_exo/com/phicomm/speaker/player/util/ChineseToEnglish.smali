.class public Lcom/phicomm/speaker/player/util/ChineseToEnglish;
.super Ljava/lang/Object;


# static fields
.field private static spellMap:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    if-nez v0, :cond_c

    .line 12
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    sput-object v0, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellMap:Ljava/util/LinkedHashMap;

    .line 14
    :cond_c
    invoke-static {}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->initialize()V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCnAscii(C)I
    .registers 5

    .line 431
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    const/4 v0, 0x0

    .line 433
    :try_start_8
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    const-string v1, "gbk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_35

    .line 434
    array-length v1, p0

    const/4 v2, 0x2

    if-gt v1, v2, :cond_35

    array-length v1, p0

    if-gtz v1, :cond_1c

    goto :goto_35

    .line 437
    :cond_1c
    array-length v1, p0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_23

    .line 438
    aget-byte p0, p0, v0

    return p0

    .line 440
    :cond_23
    array-length v1, p0

    if-ne v1, v2, :cond_35

    .line 441
    aget-byte v1, p0, v0

    add-int/lit16 v1, v1, 0x100

    .line 442
    aget-byte p0, p0, v3
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2c} :catch_35

    add-int/lit16 p0, p0, 0x100

    mul-int/lit16 v1, v1, 0x100

    add-int/2addr v1, p0

    const/high16 p0, 0x10000

    sub-int/2addr v1, p0

    return v1

    :catch_35
    :cond_35
    :goto_35
    return v0
.end method

.method public static getFirstSpell(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-eqz p0, :cond_4c

    .line 538
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_4c

    .line 542
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 543
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 544
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v1, :cond_48

    .line 545
    aget-char v4, p0, v3

    invoke-static {v4}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->getCnAscii(C)I

    move-result v4

    if-nez v4, :cond_2b

    .line 548
    aget-char v4, p0, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_45

    .line 550
    :cond_2b
    invoke-static {v4}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->getSpellByAscii(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_37

    .line 552
    aget-char v4, p0, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_45

    :cond_37
    if-nez v3, :cond_3d

    .line 555
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_45

    :cond_3d
    const/4 v5, 0x1

    .line 557
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 563
    :cond_48
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4c
    :goto_4c
    return-object p0
.end method

.method public static getFullSpell(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_40

    .line 508
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_40

    .line 512
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 513
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 514
    array-length v2, p0

    :goto_1a
    if-ge v1, v2, :cond_3c

    .line 515
    aget-char v3, p0, v1

    invoke-static {v3}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->getCnAscii(C)I

    move-result v3

    if-nez v3, :cond_2a

    .line 517
    aget-char v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_39

    .line 519
    :cond_2a
    invoke-static {v3}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->getSpellByAscii(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_36

    .line 521
    aget-char v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_39

    .line 523
    :cond_36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 528
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_40
    :goto_40
    return-object p0
.end method

.method public static getSpellByAscii(I)Ljava/lang/String;
    .registers 8

    if-lez p0, :cond_c

    const/16 v0, 0xa0

    if-ge p0, v0, :cond_c

    int-to-char p0, p0

    .line 465
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const/16 v0, -0x4f5f

    const/4 v1, 0x0

    if-lt p0, v0, :cond_48

    const/16 v2, -0x2807

    if-le p0, v2, :cond_16

    goto :goto_48

    .line 472
    :cond_16
    sget-object v2, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 473
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v1

    .line 480
    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 481
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 482
    sget-object v5, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 483
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_21

    .line 484
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt p0, v0, :cond_45

    if-ge p0, v5, :cond_45

    if-nez v3, :cond_44

    move-object v3, v4

    :cond_44
    return-object v3

    :cond_45
    move-object v3, v4

    move v0, v5

    goto :goto_21

    :cond_48
    :goto_48
    return-object v1
.end method

.method private static initialize()V
    .registers 2

    const-string v0, "a"

    const/16 v1, -0x4f5f

    .line 26
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ai"

    const/16 v1, -0x4f5d

    .line 27
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "an"

    const/16 v1, -0x4f50

    .line 28
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ang"

    const/16 v1, -0x4f47

    .line 29
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ao"

    const/16 v1, -0x4f44

    .line 30
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ba"

    const/16 v1, -0x4f3b

    .line 31
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "bai"

    const/16 v1, -0x4f29

    .line 32
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ban"

    const/16 v1, -0x4f21

    .line 33
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "bang"

    const/16 v1, -0x4f12

    .line 34
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "bao"

    const/16 v1, -0x4f06

    .line 35
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "bei"

    const/16 v1, -0x4e53

    .line 36
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ben"

    const/16 v1, -0x4e44

    .line 37
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "beng"

    const/16 v1, -0x4e40

    .line 38
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "bi"

    const/16 v1, -0x4e3a

    .line 39
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "bian"

    const/16 v1, -0x4e22

    .line 40
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "biao"

    const/16 v1, -0x4e16

    .line 41
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "bie"

    const/16 v1, -0x4e12

    .line 42
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "bin"

    const/16 v1, -0x4e0e

    .line 43
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "bing"

    const/16 v1, -0x4e08

    .line 44
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "bo"

    const/16 v1, -0x4d5d

    .line 45
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "bu"

    const/16 v1, -0x4d48

    .line 46
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ca"

    const/16 v1, -0x4d3f

    .line 47
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "cai"

    const/16 v1, -0x4d3e

    .line 48
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "can"

    const/16 v1, -0x4d33

    .line 49
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "cang"

    const/16 v1, -0x4d2c

    .line 50
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "cao"

    const/16 v1, -0x4d27

    .line 51
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ce"

    const/16 v1, -0x4d22

    .line 52
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ceng"

    const/16 v1, -0x4d1d

    .line 53
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "cha"

    const/16 v1, -0x4d1b

    .line 54
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "chai"

    const/16 v1, -0x4d10

    .line 55
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "chan"

    const/16 v1, -0x4d0d

    .line 56
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "chang"

    const/16 v1, -0x4d03

    .line 57
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "chao"

    const/16 v1, -0x4c54

    .line 58
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "che"

    const/16 v1, -0x4c4b

    .line 59
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "chen"

    const/16 v1, -0x4c45

    .line 60
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "cheng"

    const/16 v1, -0x4c3b

    .line 61
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "chi"

    const/16 v1, -0x4c2c

    .line 62
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "chong"

    const/16 v1, -0x4c1c

    .line 63
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "chou"

    const/16 v1, -0x4c17

    .line 64
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "chu"

    const/16 v1, -0x4c0b

    .line 65
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "chuai"

    const/16 v1, -0x4b59

    .line 66
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "chuan"

    const/16 v1, -0x4b58

    .line 67
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "chuang"

    const/16 v1, -0x4b51

    .line 68
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "chui"

    const/16 v1, -0x4b4b

    .line 69
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "chun"

    const/16 v1, -0x4b46

    .line 70
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "chuo"

    const/16 v1, -0x4b3f

    .line 71
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ci"

    const/16 v1, -0x4b3d

    .line 72
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "cong"

    const/16 v1, -0x4b31

    .line 73
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "cou"

    const/16 v1, -0x4b2b

    .line 74
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "cu"

    const/16 v1, -0x4b2a

    .line 75
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "cuan"

    const/16 v1, -0x4b26

    .line 76
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "cui"

    const/16 v1, -0x4b23

    .line 77
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "cun"

    const/16 v1, -0x4b1b

    .line 78
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "cuo"

    const/16 v1, -0x4b18

    .line 79
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "da"

    const/16 v1, -0x4b12

    .line 80
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "dai"

    const/16 v1, -0x4b0c

    .line 81
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "dan"

    const/16 v1, -0x4a5e

    .line 82
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "dang"

    const/16 v1, -0x4a4f

    .line 83
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "dao"

    const/16 v1, -0x4a4a

    .line 84
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "de"

    const/16 v1, -0x4a3e

    .line 85
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "deng"

    const/16 v1, -0x4a3b

    .line 86
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "di"

    const/16 v1, -0x4a34

    .line 87
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "dian"

    const/16 v1, -0x4a21

    .line 88
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "diao"

    const/16 v1, -0x4a11

    .line 89
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "die"

    const/16 v1, -0x4a08

    .line 90
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ding"

    const/16 v1, -0x495f

    .line 91
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "diu"

    const/16 v1, -0x4956

    .line 92
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "dong"

    const/16 v1, -0x4955

    .line 93
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "dou"

    const/16 v1, -0x494b

    .line 94
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "du"

    const/16 v1, -0x4944

    .line 95
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "duan"

    const/16 v1, -0x4935

    .line 96
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "dui"

    const/16 v1, -0x492f

    .line 97
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "dun"

    const/16 v1, -0x492b

    .line 98
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "duo"

    const/16 v1, -0x4922

    .line 99
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "e"

    const/16 v1, -0x4916

    .line 100
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "en"

    const/16 v1, -0x4909

    .line 101
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "er"

    const/16 v1, -0x4908

    .line 102
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "fa"

    const/16 v1, -0x485e

    .line 103
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "fan"

    const/16 v1, -0x4856

    .line 104
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "fang"

    const/16 v1, -0x4845

    .line 105
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "fei"

    const/16 v1, -0x483a

    .line 106
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "fen"

    const/16 v1, -0x482e

    .line 107
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "feng"

    const/16 v1, -0x481f

    .line 108
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "fo"

    const/16 v1, -0x4810

    .line 109
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "fou"

    const/16 v1, -0x480f

    .line 110
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "fu"

    const/16 v1, -0x480e

    .line 111
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ga"

    const/16 v1, -0x473f

    .line 112
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "gai"

    const/16 v1, -0x473d

    .line 113
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "gan"

    const/16 v1, -0x4737

    .line 114
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "gang"

    const/16 v1, -0x472c

    .line 115
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "gao"

    const/16 v1, -0x4723

    .line 116
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ge"

    const/16 v1, -0x4719

    .line 117
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "gei"

    const/16 v1, -0x4708

    .line 118
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "gen"

    const/16 v1, -0x4707

    .line 119
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "geng"

    const/16 v1, -0x4705

    .line 120
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "gong"

    const/16 v1, -0x465c

    .line 121
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "gou"

    const/16 v1, -0x464d

    .line 122
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "gu"

    const/16 v1, -0x4644

    .line 123
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "gua"

    const/16 v1, -0x4632

    .line 124
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "guai"

    const/16 v1, -0x462c

    .line 125
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "guan"

    const/16 v1, -0x4629

    .line 126
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "guang"

    const/16 v1, -0x461e

    .line 127
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "gui"

    const/16 v1, -0x461b

    .line 128
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "gun"

    const/16 v1, -0x460b

    .line 129
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "guo"

    const/16 v1, -0x4608

    .line 130
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ha"

    const/16 v1, -0x4602

    .line 131
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "hai"

    const/16 v1, -0x455f

    .line 132
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "han"

    const/16 v1, -0x4558

    .line 133
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "hang"

    const/16 v1, -0x4545

    .line 134
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "hao"

    const/16 v1, -0x4542

    .line 135
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "he"

    const/16 v1, -0x4539

    .line 136
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "hei"

    const/16 v1, -0x4527

    .line 137
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "hen"

    const/16 v1, -0x4525

    .line 138
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "heng"

    const/16 v1, -0x4521

    .line 139
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "hong"

    const/16 v1, -0x451c

    .line 140
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "hou"

    const/16 v1, -0x4513

    .line 141
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "hu"

    const/16 v1, -0x450c

    .line 142
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "hua"

    const/16 v1, -0x4458

    .line 143
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "huai"

    const/16 v1, -0x444f

    .line 144
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "huan"

    const/16 v1, -0x444a

    .line 145
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "huang"

    const/16 v1, -0x443c

    .line 146
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "hui"

    const/16 v1, -0x442e

    .line 147
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "hun"

    const/16 v1, -0x4419

    .line 148
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "huo"

    const/16 v1, -0x4413

    .line 149
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ji"

    const/16 v1, -0x4409

    .line 150
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "jia"

    const/16 v1, -0x4332

    .line 151
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "jian"

    const/16 v1, -0x4321

    .line 152
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "jiang"

    const/16 v1, -0x4257

    .line 153
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "jiao"

    const/16 v1, -0x424a

    .line 154
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "jie"

    const/16 v1, -0x422e

    .line 155
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "jin"

    const/16 v1, -0x4213

    .line 156
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "jing"

    const/16 v1, -0x415d

    .line 157
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "jiong"

    const/16 v1, -0x4144

    .line 158
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "jiu"

    const/16 v1, -0x4142

    .line 159
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ju"

    const/16 v1, -0x4131

    .line 160
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "juan"

    const/16 v1, -0x4118

    .line 161
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "jue"

    const/16 v1, -0x4111

    .line 162
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "jun"

    const/16 v1, -0x4107

    .line 163
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ka"

    const/16 v1, -0x405a

    .line 164
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "kai"

    const/16 v1, -0x4056

    .line 165
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "kan"

    const/16 v1, -0x4051

    .line 166
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "kang"

    const/16 v1, -0x404b

    .line 167
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "kao"

    const/16 v1, -0x4044

    .line 168
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ke"

    const/16 v1, -0x4040

    .line 169
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ken"

    const/16 v1, -0x4031

    .line 170
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "keng"

    const/16 v1, -0x402d

    .line 171
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "kong"

    const/16 v1, -0x402b

    .line 172
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "kou"

    const/16 v1, -0x4027

    .line 173
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ku"

    const/16 v1, -0x4023

    .line 174
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "kua"

    const/16 v1, -0x401c

    .line 175
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "kuai"

    const/16 v1, -0x4017

    .line 176
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "kuan"

    const/16 v1, -0x4013

    .line 177
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "kuang"

    const/16 v1, -0x4011

    .line 178
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "kui"

    const/16 v1, -0x4009

    .line 179
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "kun"

    const/16 v1, -0x3f5c

    .line 180
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "kuo"

    const/16 v1, -0x3f58

    .line 181
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "la"

    const/16 v1, -0x3f54

    .line 182
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "lai"

    const/16 v1, -0x3f4d

    .line 183
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "lan"

    const/16 v1, -0x3f4a

    .line 184
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "lang"

    const/16 v1, -0x3f3b

    .line 185
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "lao"

    const/16 v1, -0x3f34

    .line 186
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "le"

    const/16 v1, -0x3f2b

    .line 187
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "lei"

    const/16 v1, -0x3f29

    .line 188
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "leng"

    const/16 v1, -0x3f1e

    .line 189
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "li"

    const/16 v1, -0x3f1b

    .line 190
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "lia"

    const/16 v1, -0x3e57

    .line 191
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "lian"

    const/16 v1, -0x3e56

    .line 192
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "liang"

    const/16 v1, -0x3e48

    .line 193
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "liao"

    const/16 v1, -0x3e3d

    .line 194
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "lie"

    const/16 v1, -0x3e30

    .line 195
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "lin"

    const/16 v1, -0x3e2b

    .line 196
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ling"

    const/16 v1, -0x3e1f

    .line 197
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "liu"

    const/16 v1, -0x3e11

    .line 198
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "long"

    const/16 v1, -0x3e06

    .line 199
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "lou"

    const/16 v1, -0x3d5b

    .line 200
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "lu"

    const/16 v1, -0x3d55

    .line 201
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "lv"

    const/16 v1, -0x3d41

    .line 202
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "luan"

    const/16 v1, -0x3d33

    .line 203
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "lue"

    const/16 v1, -0x3d2d

    .line 204
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "lun"

    const/16 v1, -0x3d2b

    .line 205
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "luo"

    const/16 v1, -0x3d24

    .line 206
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ma"

    const/16 v1, -0x3d18

    .line 207
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "mai"

    const/16 v1, -0x3d0f

    .line 208
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "man"

    const/16 v1, -0x3d09

    .line 209
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "mang"

    const/16 v1, -0x3c5e

    .line 210
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "mao"

    const/16 v1, -0x3c58

    .line 211
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "me"

    const/16 v1, -0x3c4c

    .line 212
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "mei"

    const/16 v1, -0x3c4b

    .line 213
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "men"

    const/16 v1, -0x3c3b

    .line 214
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "meng"

    const/16 v1, -0x3c38

    .line 215
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "mi"

    const/16 v1, -0x3c30

    .line 216
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "mian"

    const/16 v1, -0x3c22

    .line 217
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "miao"

    const/16 v1, -0x3c19

    .line 218
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "mie"

    const/16 v1, -0x3c11

    .line 219
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "min"

    const/16 v1, -0x3c0f

    .line 220
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ming"

    const/16 v1, -0x3c09

    .line 221
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "miu"

    const/16 v1, -0x3c03

    .line 222
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "mo"

    const/16 v1, -0x3c02

    .line 223
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "mou"

    const/16 v1, -0x3b4f

    .line 224
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "mu"

    const/16 v1, -0x3b4c

    .line 225
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "na"

    const/16 v1, -0x3b3d

    .line 226
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "nai"

    const/16 v1, -0x3b36

    .line 227
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "nan"

    const/16 v1, -0x3b31

    .line 228
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "nang"

    const/16 v1, -0x3b2e

    .line 229
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "nao"

    const/16 v1, -0x3b2d

    .line 230
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ne"

    const/16 v1, -0x3b28

    .line 231
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "nei"

    const/16 v1, -0x3b27

    .line 232
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "nen"

    const/16 v1, -0x3b25

    .line 233
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "neng"

    const/16 v1, -0x3b24

    .line 234
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ni"

    const/16 v1, -0x3b23

    .line 235
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "nian"

    const/16 v1, -0x3b18

    .line 236
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "niang"

    const/16 v1, -0x3b11

    .line 237
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "niao"

    const/16 v1, -0x3b0f

    .line 238
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "nie"

    const/16 v1, -0x3b0d

    .line 239
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "nin"

    const/16 v1, -0x3b06

    .line 240
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ning"

    const/16 v1, -0x3b05

    .line 241
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "niu"

    const/16 v1, -0x3a5d

    .line 242
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "nong"

    const/16 v1, -0x3a59

    .line 243
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "nu"

    const/16 v1, -0x3a55

    .line 244
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "nv"

    const/16 v1, -0x3a52

    .line 245
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "nuan"

    const/16 v1, -0x3a51

    .line 246
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "nue"

    const/16 v1, -0x3a50

    .line 247
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "nuo"

    const/16 v1, -0x3a4e

    .line 248
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "o"

    const/16 v1, -0x3a4a

    .line 249
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ou"

    const/16 v1, -0x3a49

    .line 250
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "pa"

    const/16 v1, -0x3a42

    .line 251
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "pai"

    const/16 v1, -0x3a3c

    .line 252
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "pan"

    const/16 v1, -0x3a36

    .line 253
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "pang"

    const/16 v1, -0x3a2e

    .line 254
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "pao"

    const/16 v1, -0x3a29

    .line 255
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "pei"

    const/16 v1, -0x3a22

    .line 256
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "pen"

    const/16 v1, -0x3a19

    .line 257
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "peng"

    const/16 v1, -0x3a17

    .line 258
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "pi"

    const/16 v1, -0x3a09

    .line 259
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "pian"

    const/16 v1, -0x3956

    .line 260
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "piao"

    const/16 v1, -0x3952

    .line 261
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "pie"

    const/16 v1, -0x394e

    .line 262
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "pin"

    const/16 v1, -0x394c

    .line 263
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ping"

    const/16 v1, -0x3947

    .line 264
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "po"

    const/16 v1, -0x393e

    .line 265
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "pu"

    const/16 v1, -0x3935

    .line 266
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "qi"

    const/16 v1, -0x3926

    .line 267
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "qia"

    const/16 v1, -0x3902

    .line 268
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "qian"

    const/16 v1, -0x385d

    .line 269
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "qiang"

    const/16 v1, -0x3847

    .line 270
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "qiao"

    const/16 v1, -0x383f

    .line 271
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "qie"

    const/16 v1, -0x3830

    .line 272
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "qin"

    const/16 v1, -0x382b

    .line 273
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "qing"

    const/16 v1, -0x3820

    .line 274
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "qiong"

    const/16 v1, -0x3813

    .line 275
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "qiu"

    const/16 v1, -0x3811

    .line 276
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "qu"

    const/16 v1, -0x3809

    .line 277
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "quan"

    const/16 v1, -0x375a

    .line 278
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "que"

    const/16 v1, -0x374f

    .line 279
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "qun"

    const/16 v1, -0x3747

    .line 280
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ran"

    const/16 v1, -0x3745

    .line 281
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "rang"

    const/16 v1, -0x3741

    .line 282
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "rao"

    const/16 v1, -0x373c

    .line 283
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "re"

    const/16 v1, -0x3739

    .line 284
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ren"

    const/16 v1, -0x3737

    .line 285
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "reng"

    const/16 v1, -0x372d

    .line 286
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ri"

    const/16 v1, -0x372b

    .line 287
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "rong"

    const/16 v1, -0x372a

    .line 288
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "rou"

    const/16 v1, -0x3720

    .line 289
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ru"

    const/16 v1, -0x371d

    .line 290
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ruan"

    const/16 v1, -0x3713

    .line 291
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "rui"

    const/16 v1, -0x3711

    .line 292
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "run"

    const/16 v1, -0x370e

    .line 293
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ruo"

    const/16 v1, -0x370c

    .line 294
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "sa"

    const/16 v1, -0x370a

    .line 295
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "sai"

    const/16 v1, -0x3707

    .line 296
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "san"

    const/16 v1, -0x3703

    .line 297
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "sang"

    const/16 v1, -0x365d

    .line 298
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "sao"

    const/16 v1, -0x365a

    .line 299
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "se"

    const/16 v1, -0x3656

    .line 300
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "sen"

    const/16 v1, -0x3653

    .line 301
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "seng"

    const/16 v1, -0x3652

    .line 302
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "sha"

    const/16 v1, -0x3651

    .line 303
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "shai"

    const/16 v1, -0x3648

    .line 304
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "shan"

    const/16 v1, -0x3646

    .line 305
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "shang"

    const/16 v1, -0x3636

    .line 306
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "shao"

    const/16 v1, -0x362e

    .line 307
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "she"

    const/16 v1, -0x3623

    .line 308
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "shen"

    const/16 v1, -0x3617

    .line 309
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "sheng"

    const/16 v1, -0x3607

    .line 310
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "shi"

    const/16 v1, -0x355a

    .line 311
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "shou"

    const/16 v1, -0x352b

    .line 312
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "shu"

    const/16 v1, -0x3521

    .line 313
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "shua"

    const/16 v1, -0x345e

    .line 314
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "shuai"

    const/16 v1, -0x345c

    .line 315
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "shuan"

    const/16 v1, -0x3458

    .line 316
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "shuang"

    const/16 v1, -0x3456

    .line 317
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "shui"

    const/16 v1, -0x3453

    .line 318
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "shun"

    const/16 v1, -0x344f

    .line 319
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "shuo"

    const/16 v1, -0x344b

    .line 320
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "si"

    const/16 v1, -0x3447

    .line 321
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "song"

    const/16 v1, -0x3437

    .line 322
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "sou"

    const/16 v1, -0x342f

    .line 323
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "su"

    const/16 v1, -0x342c

    .line 324
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "suan"

    const/16 v1, -0x341f

    .line 325
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "sui"

    const/16 v1, -0x341c

    .line 326
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "sun"

    const/16 v1, -0x3411

    .line 327
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "suo"

    const/16 v1, -0x340e

    .line 328
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ta"

    const/16 v1, -0x3406

    .line 329
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "tai"

    const/16 v1, -0x335b

    .line 330
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "tan"

    const/16 v1, -0x3352

    .line 331
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "tang"

    const/16 v1, -0x3340

    .line 332
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "tao"

    const/16 v1, -0x3333

    .line 333
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "te"

    const/16 v1, -0x3328

    .line 334
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "teng"

    const/16 v1, -0x3327

    .line 335
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ti"

    const/16 v1, -0x3323

    .line 336
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "tian"

    const/16 v1, -0x3314

    .line 337
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "tiao"

    const/16 v1, -0x330c

    .line 338
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "tie"

    const/16 v1, -0x3307

    .line 339
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ting"

    const/16 v1, -0x3304

    .line 340
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "tong"

    const/16 v1, -0x3258

    .line 341
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "tou"

    const/16 v1, -0x324b

    .line 342
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "tu"

    const/16 v1, -0x3247

    .line 343
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "tuan"

    const/16 v1, -0x323c

    .line 344
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "tui"

    const/16 v1, -0x323a

    .line 345
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "tun"

    const/16 v1, -0x3234

    .line 346
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "tuo"

    const/16 v1, -0x3231

    .line 347
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "wa"

    const/16 v1, -0x3226

    .line 348
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "wai"

    const/16 v1, -0x321f

    .line 349
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "wan"

    const/16 v1, -0x321d

    .line 350
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "wang"

    const/16 v1, -0x320c

    .line 351
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "wei"

    const/16 v1, -0x3202

    .line 352
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "wen"

    const/16 v1, -0x313f

    .line 353
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "weng"

    const/16 v1, -0x3135

    .line 354
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "wo"

    const/16 v1, -0x3132

    .line 355
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "wu"

    const/16 v1, -0x3129

    .line 356
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "xi"

    const/16 v1, -0x310c

    .line 357
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "xia"

    const/16 v1, -0x3047

    .line 358
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "xian"

    const/16 v1, -0x303a

    .line 359
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "xiang"

    const/16 v1, -0x3020

    .line 360
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "xiao"

    const/16 v1, -0x300c

    .line 361
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "xie"

    const/16 v1, -0x2f58

    .line 362
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "xin"

    const/16 v1, -0x2f43

    .line 363
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "xing"

    const/16 v1, -0x2f39

    .line 364
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "xiong"

    const/16 v1, -0x2f2a

    .line 365
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "xiu"

    const/16 v1, -0x2f23

    .line 366
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "xu"

    const/16 v1, -0x2f1a

    .line 367
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "xuan"

    const/16 v1, -0x2f07

    .line 368
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "xue"

    const/16 v1, -0x2e5b

    .line 369
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "xun"

    const/16 v1, -0x2e55

    .line 370
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ya"

    const/16 v1, -0x2e47

    .line 371
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "yan"

    const/16 v1, -0x2e37

    .line 372
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "yang"

    const/16 v1, -0x2e16

    .line 373
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "yao"

    const/16 v1, -0x2e05

    .line 374
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ye"

    const/16 v1, -0x2d54

    .line 375
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "yi"

    const/16 v1, -0x2d45

    .line 376
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "yin"

    const/16 v1, -0x2d10

    .line 377
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ying"

    const/16 v1, -0x2c5e

    .line 378
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "yo"

    const/16 v1, -0x2c4c

    .line 379
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "yong"

    const/16 v1, -0x2c4b

    .line 380
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "you"

    const/16 v1, -0x2c3c

    .line 381
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "yu"

    const/16 v1, -0x2c27

    .line 382
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "yuan"

    const/16 v1, -0x2b59

    .line 383
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "yue"

    const/16 v1, -0x2b45

    .line 384
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "yun"

    const/16 v1, -0x2b3b

    .line 385
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "za"

    const/16 v1, -0x2b2f

    .line 386
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zai"

    const/16 v1, -0x2b2c

    .line 387
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zan"

    const/16 v1, -0x2b25

    .line 388
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zang"

    const/16 v1, -0x2b21

    .line 389
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zao"

    const/16 v1, -0x2b1e

    .line 390
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "ze"

    const/16 v1, -0x2b10

    .line 391
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zei"

    const/16 v1, -0x2b0c

    .line 392
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zen"

    const/16 v1, -0x2b0b

    .line 393
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zeng"

    const/16 v1, -0x2b0a

    .line 394
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zha"

    const/16 v1, -0x2b06

    .line 395
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zhai"

    const/16 v1, -0x2a56

    .line 396
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zhan"

    const/16 v1, -0x2a50

    .line 397
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zhang"

    const/16 v1, -0x2a3f

    .line 398
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zhao"

    const/16 v1, -0x2a30

    .line 399
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zhe"

    const/16 v1, -0x2a26

    .line 400
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zhen"

    const/16 v1, -0x2a1c

    .line 401
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zheng"

    const/16 v1, -0x2a0c

    .line 402
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zhi"

    const/16 v1, -0x295b

    .line 403
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zhong"

    const/16 v1, -0x2930

    .line 404
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zhou"

    const/16 v1, -0x2925

    .line 405
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zhu"

    const/16 v1, -0x2917

    .line 406
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zhua"

    const/16 v1, -0x285b

    .line 407
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zhuai"

    const/16 v1, -0x2859

    .line 408
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zhuan"

    const/16 v1, -0x2858

    .line 409
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zhuang"

    const/16 v1, -0x2852

    .line 410
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zhui"

    const/16 v1, -0x284b

    .line 411
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zhun"

    const/16 v1, -0x2845

    .line 412
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zhuo"

    const/16 v1, -0x2843

    .line 413
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zi"

    const/16 v1, -0x2838

    .line 414
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zong"

    const/16 v1, -0x2829

    .line 415
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zou"

    const/16 v1, -0x2822

    .line 416
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zu"

    const/16 v1, -0x281e

    .line 417
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zuan"

    const/16 v1, -0x2816

    .line 418
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zui"

    const/16 v1, -0x2814

    .line 419
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zun"

    const/16 v1, -0x2810

    .line 420
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    const-string v0, "zuo"

    const/16 v1, -0x280e

    .line 421
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellPut(Ljava/lang/String;I)V

    return-void
.end method

.method private static spellPut(Ljava/lang/String;I)V
    .registers 4

    .line 22
    sget-object v0, Lcom/phicomm/speaker/player/util/ChineseToEnglish;->spellMap:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
