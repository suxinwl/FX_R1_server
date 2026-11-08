.class public abstract Lcom/alibaba/fastjson/parser/JSONLexerBase;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/parser/JSONLexer;
.implements Ljava/io/Closeable;


# static fields
.field protected static final INT_MULTMIN_RADIX_TEN:I = -0xccccccc

.field protected static final MULTMIN_RADIX_TEN:J = -0xcccccccccccccccL

.field private static final SBUF_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field

.field protected static final digits:[I

.field protected static final typeFieldName:[C


# instance fields
.field protected bp:I

.field protected calendar:Ljava/util/Calendar;

.field protected ch:C

.field protected eofPos:I

.field protected features:I

.field protected hasSpecial:Z

.field protected locale:Ljava/util/Locale;

.field public matchStat:I

.field protected nanos:I

.field protected np:I

.field protected pos:I

.field protected sbuf:[C

.field protected sp:I

.field protected stringDefaultValue:Ljava/lang/String;

.field protected timeZone:Ljava/util/TimeZone;

.field protected token:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 67
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    const/16 v0, 0x67

    new-array v0, v0, [I

    .line 5310
    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    const/16 v0, 0x30

    :goto_2d
    const/16 v1, 0x39

    if-gt v0, v1, :cond_3a

    .line 5314
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x30

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_3a
    const/16 v0, 0x61

    :goto_3c
    const/16 v1, 0x66

    if-gt v0, v1, :cond_4b

    .line 5318
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_4b
    const/16 v0, 0x41

    :goto_4d
    const/16 v1, 0x46

    if-gt v0, v1, :cond_5c

    .line 5321
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x41

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    :cond_5c
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    .line 62
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    .line 63
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    const/4 v1, 0x0

    .line 65
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 69
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    .line 70
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nanos:I

    .line 73
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    .line 75
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_22

    const-string p1, ""

    .line 76
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    .line 79
    :cond_22
    sget-object p1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    if-nez p1, :cond_34

    const/16 p1, 0x200

    new-array p1, p1, [C

    .line 82
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    :cond_34
    return-void
.end method

.method public static isWhitespace(C)Z
    .registers 2

    const/16 v0, 0x20

    if-gt p0, v0, :cond_1c

    if-eq p0, v0, :cond_1a

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1a

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1a

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1c

    :cond_1a
    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public static readString([CI)Ljava/lang/String;
    .registers 14

    .line 4826
    new-array v0, p1, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v2, p1, :cond_fd

    .line 4829
    aget-char v4, p0, v2

    const/16 v5, 0x5c

    const/4 v6, 0x1

    if-eq v4, v5, :cond_15

    add-int/lit8 v5, v3, 0x1

    .line 4832
    aput-char v4, v0, v3

    move v3, v5

    goto/16 :goto_fa

    :cond_15
    add-int/lit8 v2, v2, 0x1

    .line 4835
    aget-char v4, p0, v2

    const/16 v7, 0x22

    if-eq v4, v7, :cond_f5

    const/16 v7, 0x27

    if-eq v4, v7, :cond_f0

    const/16 v7, 0x46

    if-eq v4, v7, :cond_e9

    if-eq v4, v5, :cond_e4

    const/16 v5, 0x62

    if-eq v4, v5, :cond_dd

    const/16 v5, 0x66

    if-eq v4, v5, :cond_e9

    const/16 v5, 0x6e

    if-eq v4, v5, :cond_d6

    const/16 v5, 0x72

    if-eq v4, v5, :cond_cf

    const/16 v5, 0x78

    const/16 v7, 0x10

    if-eq v4, v5, :cond_b9

    const/4 v5, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    packed-switch v4, :pswitch_data_104

    packed-switch v4, :pswitch_data_11a

    .line 4904
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string p1, "unclosed.str.lit"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4e
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xb

    .line 4872
    aput-char v5, v0, v3

    goto/16 :goto_f9

    :pswitch_56
    add-int/lit8 v4, v3, 0x1

    .line 4897
    new-instance v10, Ljava/lang/String;

    new-array v5, v5, [C

    add-int/lit8 v2, v2, 0x1

    aget-char v11, p0, v2

    aput-char v11, v5, v1

    add-int/2addr v2, v6

    aget-char v11, p0, v2

    aput-char v11, v5, v6

    add-int/2addr v2, v6

    aget-char v11, p0, v2

    aput-char v11, v5, v9

    add-int/2addr v2, v6

    aget-char v9, p0, v2

    aput-char v9, v5, v8

    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([C)V

    invoke-static {v10, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v0, v3

    goto/16 :goto_f9

    :pswitch_7d
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x9

    .line 4866
    aput-char v5, v0, v3

    goto/16 :goto_f9

    :pswitch_85
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x7

    .line 4860
    aput-char v5, v0, v3

    goto/16 :goto_f9

    :pswitch_8c
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x6

    .line 4857
    aput-char v5, v0, v3

    goto/16 :goto_f9

    :pswitch_93
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x5

    .line 4854
    aput-char v5, v0, v3

    goto :goto_f9

    :pswitch_99
    add-int/lit8 v4, v3, 0x1

    .line 4851
    aput-char v5, v0, v3

    goto :goto_f9

    :pswitch_9e
    add-int/lit8 v4, v3, 0x1

    .line 4848
    aput-char v8, v0, v3

    goto :goto_f9

    :pswitch_a3
    add-int/lit8 v4, v3, 0x1

    .line 4845
    aput-char v9, v0, v3

    goto :goto_f9

    :pswitch_a8
    add-int/lit8 v4, v3, 0x1

    .line 4842
    aput-char v6, v0, v3

    goto :goto_f9

    :pswitch_ad
    add-int/lit8 v4, v3, 0x1

    .line 4839
    aput-char v1, v0, v3

    goto :goto_f9

    :pswitch_b2
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x2f

    .line 4888
    aput-char v5, v0, v3

    goto :goto_f9

    :cond_b9
    add-int/lit8 v4, v3, 0x1

    .line 4894
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v2, 0x1

    aget-char v8, p0, v2

    aget v8, v5, v8

    mul-int/lit8 v8, v8, 0x10

    add-int/2addr v2, v6

    aget-char v7, p0, v2

    aget v5, v5, v7

    add-int/2addr v8, v5

    int-to-char v5, v8

    aput-char v5, v0, v3

    goto :goto_f9

    :cond_cf
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xd

    .line 4879
    aput-char v5, v0, v3

    goto :goto_f9

    :cond_d6
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xa

    .line 4869
    aput-char v5, v0, v3

    goto :goto_f9

    :cond_dd
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x8

    .line 4863
    aput-char v5, v0, v3

    goto :goto_f9

    :cond_e4
    add-int/lit8 v4, v3, 0x1

    .line 4891
    aput-char v5, v0, v3

    goto :goto_f9

    :cond_e9
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xc

    .line 4876
    aput-char v5, v0, v3

    goto :goto_f9

    :cond_f0
    add-int/lit8 v4, v3, 0x1

    .line 4885
    aput-char v7, v0, v3

    goto :goto_f9

    :cond_f5
    add-int/lit8 v4, v3, 0x1

    .line 4882
    aput-char v7, v0, v3

    :goto_f9
    move v3, v4

    :goto_fa
    add-int/2addr v2, v6

    goto/16 :goto_5

    .line 4907
    :cond_fd
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    nop

    :pswitch_data_104
    .packed-switch 0x2f
        :pswitch_b2
        :pswitch_ad
        :pswitch_a8
        :pswitch_a3
        :pswitch_9e
        :pswitch_99
        :pswitch_93
        :pswitch_8c
        :pswitch_85
    .end packed-switch

    :pswitch_data_11a
    .packed-switch 0x74
        :pswitch_7d
        :pswitch_56
        :pswitch_4e
    .end packed-switch
.end method

.method private scanStringSingleQuote()V
    .registers 13

    .line 4952
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v0, 0x0

    .line 4953
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 4956
    :goto_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x27

    if-ne v1, v3, :cond_16

    .line 5081
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 5082
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_16
    const-string v4, "unclosed single-quote string"

    const/16 v5, 0x1a

    if-ne v1, v5, :cond_2c

    .line 4963
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v1

    if-nez v1, :cond_26

    .line 4964
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_7

    .line 4967
    :cond_26
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    const/16 v5, 0x5c

    const/4 v6, 0x1

    if-ne v1, v5, :cond_176

    .line 4971
    iget-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v1, :cond_52

    .line 4972
    iput-boolean v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 4974
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v8, v7

    if-le v1, v8, :cond_48

    mul-int/lit8 v1, v1, 0x2

    .line 4975
    new-array v1, v1, [C

    .line 4976
    array-length v8, v7

    invoke-static {v7, v0, v1, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4977
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 4981
    :cond_48
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v1, v6

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-virtual {p0, v1, v7, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->copyTo(II[C)V

    .line 4985
    :cond_52
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    const/16 v7, 0x22

    if-eq v1, v7, :cond_171

    if-eq v1, v3, :cond_16c

    const/16 v3, 0x46

    if-eq v1, v3, :cond_165

    if-eq v1, v5, :cond_160

    const/16 v5, 0x62

    if-eq v1, v5, :cond_159

    const/16 v5, 0x66

    if-eq v1, v5, :cond_165

    const/16 v7, 0x6e

    if-eq v1, v7, :cond_152

    const/16 v7, 0x72

    if-eq v1, v7, :cond_14b

    const/16 v7, 0x78

    const/16 v8, 0x10

    if-eq v1, v7, :cond_f1

    const/4 v3, 0x3

    const/4 v5, 0x2

    packed-switch v1, :pswitch_data_196

    packed-switch v1, :pswitch_data_1ac

    .line 5063
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 5064
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_88
    const/16 v1, 0xb

    .line 5022
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 5060
    :pswitch_8f
    new-instance v1, Ljava/lang/String;

    new-array v2, v2, [C

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    aput-char v4, v2, v0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    aput-char v4, v2, v6

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    aput-char v4, v2, v5

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    aput-char v4, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :pswitch_b8
    const/16 v1, 0x9

    .line 5016
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :pswitch_bf
    const/4 v1, 0x7

    .line 5010
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :pswitch_c5
    const/4 v1, 0x6

    .line 5007
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :pswitch_cb
    const/4 v1, 0x5

    .line 5004
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 5001
    :pswitch_d1
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 4998
    :pswitch_d6
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 4995
    :pswitch_db
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 4992
    :pswitch_e0
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 4989
    :pswitch_e5
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :pswitch_ea
    const/16 v1, 0x2f

    .line 5038
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 5044
    :cond_f1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 5045
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v2

    const/16 v4, 0x41

    const/16 v7, 0x39

    const/16 v9, 0x61

    const/16 v10, 0x30

    if-lt v1, v10, :cond_105

    if-le v1, v7, :cond_10d

    :cond_105
    if-lt v1, v9, :cond_109

    if-le v1, v5, :cond_10d

    :cond_109
    if-lt v1, v4, :cond_10f

    if-gt v1, v3, :cond_10f

    :cond_10d
    const/4 v11, 0x1

    goto :goto_110

    :cond_10f
    const/4 v11, 0x0

    :goto_110
    if-lt v2, v10, :cond_114

    if-le v2, v7, :cond_11e

    :cond_114
    if-lt v2, v9, :cond_118

    if-le v2, v5, :cond_11e

    :cond_118
    if-lt v2, v4, :cond_11d

    if-gt v2, v3, :cond_11d

    goto :goto_11e

    :cond_11d
    const/4 v6, 0x0

    :cond_11e
    :goto_11e
    if-eqz v11, :cond_131

    if-eqz v6, :cond_131

    .line 5057
    sget-object v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v1, v3, v1

    mul-int/lit8 v1, v1, 0x10

    aget v2, v3, v2

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 5054
    :cond_131
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid escape character \\x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14b
    const/16 v1, 0xd

    .line 5029
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :cond_152
    const/16 v1, 0xa

    .line 5019
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :cond_159
    const/16 v1, 0x8

    .line 5013
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 5041
    :cond_160
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :cond_165
    const/16 v1, 0xc

    .line 5026
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 5035
    :cond_16c
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 5032
    :cond_171
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 5069
    :cond_176
    iget-boolean v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v2, :cond_181

    .line 5070
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_7

    .line 5074
    :cond_181
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v4, v3

    if-ne v2, v4, :cond_18d

    .line 5075
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :cond_18d
    add-int/lit8 v4, v2, 0x1

    .line 5077
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v1, v3, v2

    goto/16 :goto_7

    nop

    :pswitch_data_196
    .packed-switch 0x2f
        :pswitch_ea
        :pswitch_e5
        :pswitch_e0
        :pswitch_db
        :pswitch_d6
        :pswitch_d1
        :pswitch_cb
        :pswitch_c5
        :pswitch_bf
    .end packed-switch

    :pswitch_data_1ac
    .packed-switch 0x74
        :pswitch_b8
        :pswitch_8f
        :pswitch_88
    .end packed-switch
.end method


# virtual methods
.method public abstract addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
.end method

.method protected abstract arrayCopy(I[CII)V
.end method

.method public abstract bytesValue()[B
.end method

.method protected abstract charArrayCompare([C)Z
.end method

.method public abstract charAt(I)C
.end method

.method public close()V
    .registers 4

    .line 1099
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v1, v0

    const/16 v2, 0x2000

    if-gt v1, v2, :cond_c

    .line 1100
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_c
    const/4 v0, 0x0

    .line 1102
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    return-void
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .registers 4

    .line 526
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    .line 528
    sget-object p2, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget p2, p2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_13

    const-string p1, ""

    .line 529
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    :cond_13
    return-void
.end method

.method protected abstract copyTo(II[C)V
.end method

.method public final decimalValue(Z)Ljava/lang/Number;
    .registers 4

    .line 5274
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x46

    if-ne v0, v1, :cond_1e

    .line 5277
    :try_start_f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :catch_1c
    move-exception p1

    goto :goto_3f

    :cond_1e
    const/16 v1, 0x44

    if-ne v0, v1, :cond_2f

    .line 5281
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_2f
    if-eqz p1, :cond_36

    .line 5285
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->decimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 5287
    :cond_36
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_3e} :catch_1c

    return-object p1

    .line 5290
    :goto_3f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract decimalValue()Ljava/math/BigDecimal;
.end method

.method public doubleValue()D
    .registers 3

    .line 522
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .registers 5

    .line 510
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v0

    .line 511
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_13

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v2, v1, v2

    if-nez v2, :cond_38

    :cond_13
    const/4 v2, 0x0

    .line 513
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-le v2, v3, :cond_38

    const/16 v3, 0x39

    if-le v2, v3, :cond_21

    goto :goto_38

    .line 515
    :cond_21
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "float overflow : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    :goto_38
    return v1
.end method

.method public getCalendar()Ljava/util/Calendar;
    .registers 2

    .line 1023
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public final getCurrent()C
    .registers 2

    .line 550
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    return v0
.end method

.method public getFeatures()I
    .registers 2

    .line 5341
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .line 1035
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .registers 2

    .line 1027
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public abstract indexOf(CI)I
.end method

.method public info()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public final intValue()I
    .registers 14

    .line 1043
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_8

    .line 1044
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 1049
    :cond_8
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v2, v0

    .line 1053
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1c

    const/high16 v3, -0x80000000

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    goto :goto_20

    :cond_1c
    const v3, -0x7fffffff

    const/4 v4, 0x0

    :goto_20
    const-wide/32 v6, -0xccccccc

    if-ge v0, v2, :cond_31

    add-int/lit8 v1, v0, 0x1

    .line 1062
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    neg-int v0, v0

    move v12, v1

    move v1, v0

    move v0, v12

    :cond_31
    :goto_31
    if-ge v0, v2, :cond_6b

    add-int/lit8 v8, v0, 0x1

    .line 1067
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v9, 0x4c

    if-eq v0, v9, :cond_6a

    const/16 v9, 0x53

    if-eq v0, v9, :cond_6a

    const/16 v9, 0x42

    if-ne v0, v9, :cond_46

    goto :goto_6a

    :cond_46
    add-int/lit8 v0, v0, -0x30

    int-to-long v9, v1

    cmp-long v11, v9, v6

    if-ltz v11, :cond_60

    mul-int/lit8 v1, v1, 0xa

    add-int v9, v3, v0

    if-lt v1, v9, :cond_56

    sub-int/2addr v1, v0

    move v0, v8

    goto :goto_31

    .line 1080
    :cond_56
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1076
    :cond_60
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    :goto_6a
    move v0, v8

    :cond_6b
    if-eqz v4, :cond_7d

    .line 1086
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v2, v5

    if-le v0, v2, :cond_73

    return v1

    .line 1089
    :cond_73
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7d
    neg-int v0, v1

    return v0
.end method

.method public final integerValue()Ljava/lang/Number;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 419
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_a

    .line 420
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 422
    :cond_a
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v3, v1

    const/16 v4, 0x20

    add-int/lit8 v5, v3, -0x1

    .line 429
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x53

    const/16 v7, 0x4c

    const/16 v8, 0x42

    if-eq v5, v8, :cond_2e

    if-eq v5, v7, :cond_29

    if-eq v5, v6, :cond_24

    goto :goto_32

    :cond_24
    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x53

    goto :goto_32

    :cond_29
    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x4c

    goto :goto_32

    :cond_2e
    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x42

    .line 446
    :goto_32
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v9, 0x2d

    const/4 v10, 0x1

    if-ne v5, v9, :cond_43

    const-wide/high16 v11, -0x8000000000000000L

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    goto :goto_48

    :cond_43
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    :goto_48
    const-wide v13, -0xcccccccccccccccL

    if-ge v1, v3, :cond_5b

    add-int/lit8 v5, v1, 0x1

    .line 455
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    neg-int v1, v1

    int-to-long v8, v1

    move v1, v5

    goto :goto_5d

    :cond_5b
    const-wide/16 v8, 0x0

    :goto_5d
    if-ge v1, v3, :cond_94

    add-int/lit8 v5, v1, 0x1

    .line 460
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    const/16 v15, 0xa

    cmp-long v16, v8, v13

    if-gez v16, :cond_77

    .line 462
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v15}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v1

    :cond_77
    const-wide/16 v16, 0xa

    mul-long v8, v8, v16

    int-to-long v13, v1

    add-long v18, v11, v13

    cmp-long v1, v8, v18

    if-gez v1, :cond_8c

    .line 466
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v15}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v1

    :cond_8c
    sub-long/2addr v8, v13

    move v1, v5

    const-wide v13, -0xcccccccccccccccL

    goto :goto_5d

    :cond_94
    if-eqz v2, :cond_cd

    .line 472
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v2, v10

    if-le v1, v2, :cond_c3

    const-wide/32 v1, -0x80000000

    cmp-long v3, v8, v1

    if-ltz v3, :cond_be

    if-eq v4, v7, :cond_be

    if-ne v4, v6, :cond_ad

    long-to-int v1, v8

    int-to-short v1, v1

    .line 475
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    :cond_ad
    const/16 v1, 0x42

    if-ne v4, v1, :cond_b8

    long-to-int v1, v8

    int-to-byte v1, v1

    .line 479
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    :cond_b8
    long-to-int v1, v8

    .line 482
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 484
    :cond_be
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 486
    :cond_c3
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_cd
    neg-long v1, v8

    const-wide/32 v8, 0x7fffffff

    cmp-long v3, v1, v8

    if-gtz v3, :cond_f1

    if-eq v4, v7, :cond_f1

    if-ne v4, v6, :cond_e0

    long-to-int v2, v1

    int-to-short v1, v2

    .line 492
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    :cond_e0
    const/16 v3, 0x42

    if-ne v4, v3, :cond_eb

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 496
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    :cond_eb
    long-to-int v2, v1

    .line 499
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 501
    :cond_f1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public isBlankInput()Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4914
    :goto_2
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_10

    const/16 v0, 0x14

    .line 4916
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/4 v0, 0x1

    return v0

    .line 4920
    :cond_10
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_17

    return v0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public abstract isEOF()Z
.end method

.method public final isEnabled(I)Z
    .registers 3

    .line 538
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method public final isEnabled(II)Z
    .registers 4

    .line 542
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    and-int/2addr v0, p2

    if-nez v0, :cond_b

    and-int/2addr p1, p2

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method

.method public final isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .registers 2

    .line 534
    iget p1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public final isRef()Z
    .registers 6

    .line 1106
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_7

    return v1

    .line 1110
    :cond_7
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v4, 0x24

    if-ne v0, v4, :cond_37

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x2

    .line 1111
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v4, 0x72

    if-ne v0, v4, :cond_37

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x3

    .line 1112
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v4, 0x65

    if-ne v0, v4, :cond_37

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v0, v2

    .line 1113
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v2, 0x66

    if-ne v0, v2, :cond_37

    const/4 v1, 0x1

    :cond_37
    return v1
.end method

.method protected varargs lexError(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    const/4 p1, 0x1

    .line 36
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void
.end method

.method public final longValue()J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 5225
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_8

    .line 5226
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 5229
    :cond_8
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v2, v0

    .line 5231
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1c

    const-wide/high16 v3, -0x8000000000000000L

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    goto :goto_21

    :cond_1c
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    :goto_21
    const-wide v6, -0xcccccccccccccccL

    if-ge v0, v2, :cond_34

    add-int/lit8 v8, v0, 0x1

    .line 5240
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    neg-int v0, v0

    int-to-long v9, v0

    :goto_32
    move v0, v8

    goto :goto_36

    :cond_34
    const-wide/16 v9, 0x0

    :goto_36
    if-ge v0, v2, :cond_73

    add-int/lit8 v8, v0, 0x1

    .line 5245
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v11, 0x4c

    if-eq v0, v11, :cond_72

    const/16 v11, 0x53

    if-eq v0, v11, :cond_72

    const/16 v11, 0x42

    if-ne v0, v11, :cond_4b

    goto :goto_72

    :cond_4b
    add-int/lit8 v0, v0, -0x30

    cmp-long v11, v9, v6

    if-ltz v11, :cond_68

    const-wide/16 v11, 0xa

    mul-long v9, v9, v11

    int-to-long v11, v0

    add-long v13, v3, v11

    cmp-long v0, v9, v13

    if-ltz v0, :cond_5e

    sub-long/2addr v9, v11

    goto :goto_32

    .line 5257
    :cond_5e
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5253
    :cond_68
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_72
    :goto_72
    move v0, v8

    :cond_73
    if-eqz v1, :cond_85

    .line 5263
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v1, v5

    if-le v0, v1, :cond_7b

    return-wide v9

    .line 5266
    :cond_7b
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_85
    neg-long v0, v9

    return-wide v0
.end method

.method public matchField(J)I
    .registers 3

    .line 1206
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final matchField([C)Z
    .registers 5

    .line 1174
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1175
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1176
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    :cond_12
    const/4 p1, 0x0

    return p1

    .line 1185
    :cond_14
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1186
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v0, 0x7b

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2d

    .line 1189
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 p1, 0xc

    .line 1190
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_72

    :cond_2d
    const/16 v0, 0x5b

    if-ne p1, v0, :cond_39

    .line 1192
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 p1, 0xe

    .line 1193
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_72

    :cond_39
    const/16 v2, 0x53

    if-ne p1, v2, :cond_6f

    .line 1194
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v2, 0x65

    if-ne p1, v2, :cond_6f

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v2, 0x74

    if-ne p1, v2, :cond_6f

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v0, :cond_6f

    .line 1195
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1196
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 p1, 0x15

    .line 1197
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_72

    .line 1199
    :cond_6f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    :goto_72
    return v1
.end method

.method public matchField2([C)Z
    .registers 2

    .line 5337
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final matchStat()I
    .registers 2

    .line 87
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1652
    const-class v0, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1653
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    .line 1654
    :cond_e
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1655
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 1656
    :cond_1c
    const-class v0, Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1657
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    return-object p1

    .line 1660
    :cond_2a
    :try_start_2a
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_30} :catch_31

    return-object p1

    :catch_31
    move-exception p1

    .line 1662
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract next()C
.end method

.method public final nextIdent()V
    .registers 3

    .line 367
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 368
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 370
    :cond_c
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_21

    const/16 v1, 0x24

    if-eq v0, v1, :cond_21

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_21

    .line 373
    :cond_1d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto :goto_24

    .line 371
    :cond_21
    :goto_21
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanIdent()V

    :goto_24
    return-void
.end method

.method public final nextToken()V
    .registers 4

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 102
    :goto_3
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 104
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_11

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipComment()V

    goto :goto_3

    :cond_11
    const/16 v2, 0x22

    if-ne v1, v2, :cond_19

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    return-void

    :cond_19
    const/16 v2, 0x2c

    if-ne v1, v2, :cond_25

    .line 115
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0x10

    .line 116
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    :cond_25
    const/16 v2, 0x30

    if-lt v1, v2, :cond_31

    const/16 v2, 0x39

    if-gt v1, v2, :cond_31

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    return-void

    .line 125
    :cond_31
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_3b

    .line 126
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    return-void

    :cond_3b
    sparse-switch v1, :sswitch_data_fa

    .line 204
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 205
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_d0

    .line 209
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 210
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->eofPos:I

    goto/16 :goto_f4

    .line 181
    :sswitch_54
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xd

    .line 182
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 177
    :sswitch_5c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xc

    .line 178
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 201
    :sswitch_64
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanHex()V

    return-void

    .line 146
    :sswitch_68
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanTrue()V

    return-void

    .line 152
    :sswitch_6c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNullOrNew()V

    return-void

    .line 149
    :sswitch_70
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFalse()V

    return-void

    .line 173
    :sswitch_74
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xf

    .line 174
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 169
    :sswitch_7c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xe

    .line 170
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 158
    :sswitch_84
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanIdent()V

    return-void

    .line 189
    :sswitch_88
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0x18

    .line 190
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 185
    :sswitch_90
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0x11

    .line 186
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 193
    :sswitch_98
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0x19

    .line 194
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 197
    :sswitch_a0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 198
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    return-void

    .line 165
    :sswitch_a7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xb

    .line 166
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 161
    :sswitch_af
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xa

    .line 162
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 132
    :sswitch_b7
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 135
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanStringSingleQuote()V

    return-void

    .line 133
    :cond_c3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "Feature.AllowSingleQuotes is false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :sswitch_cb
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_3

    .line 206
    :cond_d0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "EOF error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_d8
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x1f

    if-le v1, v2, :cond_f5

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_e3

    goto :goto_f5

    :cond_e3
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 217
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "illegal.char"

    invoke-virtual {p0, v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    :goto_f4
    return-void

    .line 213
    :cond_f5
    :goto_f5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_3

    :sswitch_data_fa
    .sparse-switch
        0x8 -> :sswitch_cb
        0x9 -> :sswitch_cb
        0xa -> :sswitch_cb
        0xc -> :sswitch_cb
        0xd -> :sswitch_cb
        0x20 -> :sswitch_cb
        0x27 -> :sswitch_b7
        0x28 -> :sswitch_af
        0x29 -> :sswitch_a7
        0x2b -> :sswitch_a0
        0x2e -> :sswitch_98
        0x3a -> :sswitch_90
        0x3b -> :sswitch_88
        0x4e -> :sswitch_84
        0x53 -> :sswitch_84
        0x54 -> :sswitch_84
        0x5b -> :sswitch_7c
        0x5d -> :sswitch_74
        0x66 -> :sswitch_70
        0x6e -> :sswitch_6c
        0x74 -> :sswitch_68
        0x75 -> :sswitch_84
        0x78 -> :sswitch_64
        0x7b -> :sswitch_5c
        0x7d -> :sswitch_54
    .end sparse-switch
.end method

.method public final nextToken(I)V
    .registers 12

    const/4 v0, 0x0

    .line 228
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    :goto_3
    const/4 v1, 0x2

    const/16 v2, 0xd

    const/16 v3, 0x39

    const/16 v4, 0x22

    const/16 v5, 0x30

    const/16 v6, 0xe

    const/16 v7, 0x5b

    const/16 v8, 0x7b

    const/16 v9, 0xc

    if-eq p1, v1, :cond_be

    const/4 v1, 0x4

    if-eq p1, v1, :cond_94

    if-eq p1, v9, :cond_82

    const/16 v1, 0x12

    if-eq p1, v1, :cond_7e

    const/16 v1, 0x1a

    const/16 v3, 0x14

    if-eq p1, v3, :cond_77

    const/16 v4, 0xf

    const/16 v5, 0x5d

    packed-switch p1, :pswitch_data_108

    goto/16 :goto_e8

    .line 245
    :pswitch_2e
    iget-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_3c

    const/16 p1, 0x10

    .line 246
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 247
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_3c
    const/16 v7, 0x7d

    if-ne v6, v7, :cond_46

    .line 252
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 253
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_46
    if-ne v6, v5, :cond_4e

    .line 258
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 259
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_4e
    if-ne v6, v1, :cond_53

    .line 264
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    :cond_53
    const/16 v1, 0x6e

    if-ne v6, v1, :cond_e8

    .line 269
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNullOrNew(Z)V

    return-void

    .line 338
    :pswitch_5b
    iget-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v6, v5, :cond_77

    .line 339
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 340
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    .line 325
    :pswitch_65
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v7, :cond_6f

    .line 326
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 327
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_6f
    if-ne v1, v8, :cond_e8

    .line 332
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 333
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    .line 344
    :cond_77
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v4, v1, :cond_e8

    .line 345
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 350
    :cond_7e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextIdent()V

    return-void

    .line 233
    :cond_82
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v8, :cond_8c

    .line 234
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 235
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_8c
    if-ne v1, v7, :cond_e8

    .line 239
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 240
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    .line 300
    :cond_94
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v4, :cond_a0

    .line 301
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 302
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    return-void

    :cond_a0
    if-lt v1, v5, :cond_ac

    if-gt v1, v3, :cond_ac

    .line 307
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 308
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    return-void

    .line 312
    :cond_ac
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v7, :cond_b6

    .line 313
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 314
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_b6
    if-ne v1, v8, :cond_e8

    .line 319
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 320
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    .line 274
    :cond_be
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v1, v5, :cond_cc

    if-gt v1, v3, :cond_cc

    .line 275
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 276
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    return-void

    .line 280
    :cond_cc
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v4, :cond_d8

    .line 281
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 282
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    return-void

    :cond_d8
    if-ne v1, v7, :cond_e0

    .line 287
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 288
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_e0
    if-ne v1, v8, :cond_e8

    .line 293
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 294
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    .line 356
    :cond_e8
    :goto_e8
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x20

    if-eq v1, v3, :cond_103

    const/16 v3, 0xa

    if-eq v1, v3, :cond_103

    if-eq v1, v2, :cond_103

    const/16 v2, 0x9

    if-eq v1, v2, :cond_103

    if-eq v1, v9, :cond_103

    const/16 v2, 0x8

    if-ne v1, v2, :cond_ff

    goto :goto_103

    .line 361
    :cond_ff
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    return-void

    .line 357
    :cond_103
    :goto_103
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_3

    :pswitch_data_108
    .packed-switch 0xe
        :pswitch_65
        :pswitch_5b
        :pswitch_2e
    .end packed-switch
.end method

.method public final nextTokenWithChar(C)V
    .registers 5

    const/4 v0, 0x0

    .line 382
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 385
    :goto_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, p1, :cond_e

    .line 386
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 387
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    return-void

    :cond_e
    const/16 v1, 0x20

    if-eq v0, v1, :cond_54

    const/16 v1, 0xa

    if-eq v0, v1, :cond_54

    const/16 v1, 0xd

    if-eq v0, v1, :cond_54

    const/16 v1, 0x9

    if-eq v0, v1, :cond_54

    const/16 v1, 0xc

    if-eq v0, v1, :cond_54

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    goto :goto_54

    .line 396
    :cond_27
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, ", info : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_54
    :goto_54
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_3
.end method

.method public final nextTokenWithColon()V
    .registers 2

    const/16 v0, 0x3a

    .line 378
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithChar(C)V

    return-void
.end method

.method public final nextTokenWithColon(I)V
    .registers 2

    const/16 p1, 0x3a

    .line 506
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithChar(C)V

    return-void
.end method

.method public abstract numberString()Ljava/lang/String;
.end method

.method public final pos()I
    .registers 2

    .line 409
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    return v0
.end method

.method protected final putChar(C)V
    .registers 6

    .line 5089
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v2, v1

    if-ne v0, v2, :cond_13

    .line 5090
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 5091
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5092
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 5094
    :cond_13
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char p1, v0, v1

    return-void
.end method

.method public final resetStringPosition()V
    .registers 2

    const/4 v0, 0x0

    .line 815
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    return-void
.end method

.method public scanBoolean(C)Z
    .registers 11

    const/4 v0, 0x0

    .line 2095
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2098
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/16 v4, 0x65

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/16 v8, 0x74

    if-ne v1, v8, :cond_43

    .line 2102
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v8, 0x72

    if-ne v1, v8, :cond_40

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/2addr v1, v7

    .line 2103
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v8, 0x75

    if-ne v1, v8, :cond_40

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/2addr v1, v6

    .line 2104
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_40

    .line 2106
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/4 v0, 0x1

    goto :goto_9c

    .line 2109
    :cond_40
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_43
    const/16 v8, 0x66

    if-ne v1, v8, :cond_81

    .line 2113
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v8, 0x61

    if-ne v1, v8, :cond_7e

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/2addr v1, v7

    .line 2114
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v8, 0x6c

    if-ne v1, v8, :cond_7e

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/2addr v1, v6

    .line 2115
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v6, 0x73

    if-ne v1, v6, :cond_7e

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/2addr v1, v2

    .line 2116
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_7e

    .line 2118
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v4, 0x6

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/4 v3, 0x6

    goto :goto_9c

    .line 2121
    :cond_7e
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_81
    const/16 v3, 0x31

    if-ne v1, v3, :cond_8f

    .line 2125
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v7

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/4 v0, 0x1

    :goto_8d
    const/4 v3, 0x2

    goto :goto_9c

    :cond_8f
    const/16 v3, 0x30

    if-ne v1, v3, :cond_9b

    .line 2128
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    goto :goto_8d

    :cond_9b
    const/4 v3, 0x1

    :goto_9c
    if-ne v1, p1, :cond_ac

    .line 2134
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2135
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2136
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2139
    :cond_ac
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 2140
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v3, v4

    goto :goto_9c

    .line 2143
    :cond_bd
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public scanDate(C)Ljava/util/Date;
    .registers 19

    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 4087
    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4090
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x5

    const/16 v5, 0x22

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-ne v2, v5, :cond_94

    .line 4094
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v8

    .line 4095
    invoke-virtual {v1, v5, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v2

    if-eq v2, v7, :cond_8c

    .line 4100
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v8

    sub-int v9, v2, v4

    .line 4101
    invoke-virtual {v1, v4, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v4

    const/16 v9, 0x5c

    .line 4102
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-eq v10, v7, :cond_5a

    :goto_2f
    add-int/lit8 v4, v2, -0x1

    const/4 v10, 0x0

    :goto_32
    if-ltz v4, :cond_3f

    .line 4106
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    if-ne v11, v9, :cond_3f

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_32

    .line 4112
    :cond_3f
    rem-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_53

    .line 4118
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v4, 0x1

    sub-int v5, v2, v5

    add-int/2addr v4, v8

    .line 4119
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v4

    .line 4121
    invoke-static {v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v4

    goto :goto_5a

    :cond_53
    add-int/lit8 v2, v2, 0x1

    .line 4115
    invoke-virtual {v1, v5, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v2

    goto :goto_2f

    .line 4124
    :cond_5a
    :goto_5a
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v5, 0x1

    sub-int/2addr v2, v9

    add-int/2addr v2, v8

    add-int/2addr v2, v8

    add-int/lit8 v9, v2, 0x1

    add-int/2addr v5, v2

    .line 4125
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4127
    new-instance v5, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v5, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 4129
    :try_start_6d
    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 4130
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 4131
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0
    :try_end_7b
    .catchall {:try_start_6d .. :try_end_7b} :catchall_87

    .line 4137
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    move v4, v9

    goto/16 :goto_115

    .line 4133
    :cond_81
    :try_start_81
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I
    :try_end_83
    .catchall {:try_start_81 .. :try_end_83} :catchall_87

    .line 4137
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    return-object v6

    :catchall_87
    move-exception v0

    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 4138
    throw v0

    .line 4097
    :cond_8c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "unclosed str"

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_94
    const/16 v5, 0x2d

    const/16 v9, 0x39

    const/4 v10, 0x2

    const/16 v11, 0x30

    if-eq v2, v5, :cond_d5

    if-lt v2, v11, :cond_a2

    if-gt v2, v9, :cond_a2

    goto :goto_d5

    :cond_a2
    const/16 v0, 0x6e

    if-ne v2, v0, :cond_d2

    .line 4170
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v8

    .line 4171
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v2, 0x75

    if-ne v0, v2, :cond_d2

    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v8

    add-int/2addr v0, v8

    .line 4172
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v2, 0x6c

    if-ne v0, v2, :cond_d2

    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v8

    add-int/2addr v0, v10

    .line 4173
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_d2

    .line 4174
    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4177
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move-object v0, v6

    goto :goto_115

    .line 4179
    :cond_d2
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v6

    :cond_d5
    :goto_d5
    if-ne v2, v5, :cond_e0

    .line 4144
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v8

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/4 v0, 0x1

    goto :goto_e1

    :cond_e0
    const/4 v10, 0x1

    :goto_e1
    const-wide/16 v4, 0x0

    if-lt v2, v11, :cond_103

    if-gt v2, v9, :cond_103

    add-int/lit8 v2, v2, -0x30

    int-to-long v12, v2

    .line 4151
    :goto_ea
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v10, 0x1

    add-int/2addr v2, v10

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-lt v2, v11, :cond_105

    if-gt v2, v9, :cond_105

    const-wide/16 v15, 0xa

    mul-long v12, v12, v15

    add-int/lit8 v2, v2, -0x30

    int-to-long v9, v2

    add-long/2addr v12, v9

    move v10, v14

    const/16 v9, 0x39

    goto :goto_ea

    :cond_103
    move-wide v12, v4

    move v14, v10

    :cond_105
    cmp-long v9, v12, v4

    if-gez v9, :cond_10c

    .line 4161
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v6

    :cond_10c
    if-eqz v0, :cond_10f

    neg-long v12, v12

    .line 4169
    :cond_10f
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v12, v13}, Ljava/util/Date;-><init>(J)V

    move v4, v14

    :goto_115
    const/16 v5, 0x10

    const/16 v9, 0x2c

    if-ne v2, v9, :cond_12c

    .line 4184
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4185
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v2, 0x3

    .line 4186
    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4187
    iput v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v0

    :cond_12c
    const/16 v10, 0x5d

    if-ne v2, v10, :cond_185

    .line 4192
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-ne v2, v9, :cond_149

    .line 4194
    iput v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4195
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v11

    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4196
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_17f

    :cond_149
    if-ne v2, v10, :cond_15b

    const/16 v2, 0xf

    .line 4198
    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4199
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v11

    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4200
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_17f

    :cond_15b
    const/16 v4, 0x7d

    if-ne v2, v4, :cond_16f

    const/16 v2, 0xd

    .line 4202
    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4203
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v11

    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4204
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_17f

    :cond_16f
    const/16 v4, 0x1a

    if-ne v2, v4, :cond_182

    const/16 v2, 0x14

    .line 4206
    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4207
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v11, v8

    add-int/2addr v2, v11

    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4208
    iput-char v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4213
    :goto_17f
    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v0

    .line 4210
    :cond_182
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v6

    .line 4215
    :cond_185
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v6
.end method

.method public scanDecimal(C)Ljava/math/BigDecimal;
    .registers 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2972
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2975
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    const/4 v4, 0x1

    if-ne v2, v3, :cond_13

    const/4 v5, 0x1

    goto :goto_14

    :cond_13
    const/4 v5, 0x0

    :goto_14
    const/4 v6, 0x2

    if-eqz v5, :cond_20

    .line 2978
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/4 v7, 0x2

    goto :goto_21

    :cond_20
    const/4 v7, 0x1

    :goto_21
    const/16 v8, 0x2d

    if-ne v2, v8, :cond_27

    const/4 v9, 0x1

    goto :goto_28

    :cond_27
    const/4 v9, 0x0

    :goto_28
    if-eqz v9, :cond_34

    .line 2983
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v7, v9

    :cond_34
    const/4 v11, 0x3

    const/16 v12, 0x10

    const/16 v13, 0x2c

    const/16 v14, 0x30

    const/4 v15, -0x1

    const/16 v16, 0x0

    if-lt v2, v14, :cond_166

    const/16 v9, 0x39

    if-gt v2, v9, :cond_166

    .line 2989
    :goto_44
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-lt v2, v14, :cond_54

    if-gt v2, v9, :cond_54

    move/from16 v7, v17

    goto :goto_44

    :cond_54
    const/16 v7, 0x2e

    if-ne v2, v7, :cond_5a

    const/4 v7, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v7, 0x0

    :goto_5b
    if-eqz v7, :cond_7e

    .line 2999
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v17, 0x1

    add-int v2, v2, v17

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-lt v2, v14, :cond_7b

    if-gt v2, v9, :cond_7b

    .line 3002
    :goto_6b
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-lt v2, v14, :cond_7e

    if-gt v2, v9, :cond_7e

    move/from16 v7, v17

    goto :goto_6b

    .line 3010
    :cond_7b
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    :cond_7e
    const/16 v7, 0x65

    if-eq v2, v7, :cond_89

    const/16 v7, 0x45

    if-ne v2, v7, :cond_87

    goto :goto_89

    :cond_87
    const/4 v7, 0x0

    goto :goto_8a

    :cond_89
    :goto_89
    const/4 v7, 0x1

    :goto_8a
    if-eqz v7, :cond_ba

    .line 3017
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v17, 0x1

    add-int v2, v2, v17

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v10, 0x2b

    if-eq v2, v10, :cond_a0

    if-ne v2, v8, :cond_9d

    goto :goto_a0

    :cond_9d
    :goto_9d
    move/from16 v17, v7

    goto :goto_ab

    .line 3019
    :cond_a0
    :goto_a0
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move/from16 v17, v8

    :goto_ab
    if-lt v2, v14, :cond_ba

    if-gt v2, v9, :cond_ba

    .line 3023
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v17, 0x1

    add-int v2, v2, v17

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    goto :goto_9d

    :cond_ba
    if-eqz v5, :cond_d5

    if-eq v2, v3, :cond_c1

    .line 3033
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    .line 3036
    :cond_c1
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v17, 0x1

    add-int v2, v2, v17

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3038
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v5, 0x1

    add-int/2addr v5, v3

    sub-int/2addr v5, v7

    sub-int/2addr v5, v6

    move/from16 v17, v3

    goto :goto_dc

    .line 3041
    :cond_d5
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v3, v7, v17

    sub-int/2addr v3, v7

    add-int/lit8 v5, v3, -0x1

    :goto_dc
    const v3, 0xffff

    if-gt v5, v3, :cond_15e

    .line 3048
    invoke-virtual {v0, v7, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v3

    .line 3049
    new-instance v5, Ljava/math/BigDecimal;

    array-length v6, v3

    sget-object v7, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    invoke-direct {v5, v3, v1, v6, v7}, Ljava/math/BigDecimal;-><init>([CIILjava/math/MathContext;)V

    if-ne v2, v13, :cond_100

    .line 3087
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v1, v1, v17

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3088
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3089
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3090
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v5

    :cond_100
    const/16 v1, 0x5d

    if-ne v2, v1, :cond_15b

    .line 3095
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v17, 0x1

    add-int v2, v2, v17

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-ne v2, v13, :cond_11e

    .line 3097
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3098
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3099
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_154

    :cond_11e
    if-ne v2, v1, :cond_130

    const/16 v1, 0xf

    .line 3101
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3102
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3103
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_154

    :cond_130
    const/16 v1, 0x7d

    if-ne v2, v1, :cond_144

    const/16 v1, 0xd

    .line 3105
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3106
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3107
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_154

    :cond_144
    const/16 v1, 0x1a

    if-ne v2, v1, :cond_158

    const/16 v2, 0x14

    .line 3109
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3110
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3111
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_154
    const/4 v1, 0x4

    .line 3116
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    .line 3113
    :cond_158
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    .line 3118
    :cond_15b
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    .line 3046
    :cond_15e
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "decimal overflow"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_166
    const/16 v1, 0x6e

    if-ne v2, v1, :cond_1e4

    .line 3050
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1e4

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1e4

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/2addr v1, v6

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1e4

    const/4 v1, 0x5

    .line 3051
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    add-int/2addr v7, v11

    .line 3054
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-eqz v5, :cond_1a6

    if-ne v2, v3, :cond_1a6

    .line 3057
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v4, v3

    :cond_1a6
    :goto_1a6
    if-ne v2, v13, :cond_1b8

    .line 3062
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3063
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3064
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3065
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v16

    :cond_1b8
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_1ce

    .line 3068
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3069
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3070
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v5, 0xd

    .line 3071
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v16

    :cond_1ce
    const/16 v5, 0xd

    .line 3073
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1e1

    .line 3074
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v4, v6

    goto :goto_1a6

    .line 3079
    :cond_1e1
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    .line 3082
    :cond_1e4
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16
.end method

.method public scanDouble(C)D
    .registers 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2834
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2837
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    const/4 v4, 0x1

    if-ne v2, v3, :cond_13

    const/4 v5, 0x1

    goto :goto_14

    :cond_13
    const/4 v5, 0x0

    :goto_14
    if-eqz v5, :cond_1f

    .line 2840
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/4 v7, 0x2

    goto :goto_20

    :cond_1f
    const/4 v7, 0x1

    :goto_20
    const/16 v8, 0x2d

    if-ne v2, v8, :cond_26

    const/4 v9, 0x1

    goto :goto_27

    :cond_26
    const/4 v9, 0x0

    :goto_27
    if-eqz v9, :cond_33

    .line 2845
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v7, v10

    :cond_33
    const-wide/16 v12, 0x0

    const/4 v14, -0x1

    const/16 v15, 0x30

    if-lt v2, v15, :cond_131

    const/16 v1, 0x39

    if-gt v2, v1, :cond_131

    sub-int/2addr v2, v15

    int-to-long v10, v2

    .line 2852
    :goto_40
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const-wide/16 v18, 0xa

    if-lt v2, v15, :cond_58

    if-gt v2, v1, :cond_58

    mul-long v10, v10, v18

    add-int/lit8 v2, v2, -0x30

    int-to-long v6, v2

    add-long/2addr v10, v6

    move/from16 v7, v17

    goto :goto_40

    :cond_58
    const/16 v6, 0x2e

    if-ne v2, v6, :cond_5e

    const/4 v6, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v6, 0x0

    :goto_5f
    if-eqz v6, :cond_94

    .line 2864
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v17, 0x1

    add-int v2, v2, v17

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-lt v2, v15, :cond_91

    if-gt v2, v1, :cond_91

    mul-long v10, v10, v18

    sub-int/2addr v2, v15

    int-to-long v3, v2

    add-long/2addr v10, v3

    move-wide/from16 v2, v18

    .line 2869
    :goto_76
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v6, 0x1

    add-int/2addr v4, v6

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    if-lt v4, v15, :cond_8e

    if-gt v4, v1, :cond_8e

    mul-long v10, v10, v18

    add-int/lit8 v4, v4, -0x30

    int-to-long v6, v4

    add-long/2addr v10, v6

    mul-long v2, v2, v18

    move/from16 v6, v17

    goto :goto_76

    :cond_8e
    move-wide v6, v2

    move v2, v4

    goto :goto_96

    .line 2879
    :cond_91
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v12

    :cond_94
    const-wide/16 v6, 0x1

    :goto_96
    const/16 v3, 0x65

    if-eq v2, v3, :cond_a2

    const/16 v3, 0x45

    if-ne v2, v3, :cond_9f

    goto :goto_a2

    :cond_9f
    const/16 v16, 0x0

    goto :goto_a4

    :cond_a2
    :goto_a2
    const/16 v16, 0x1

    :goto_a4
    if-eqz v16, :cond_d4

    .line 2886
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v17, 0x1

    add-int v2, v2, v17

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_ba

    if-ne v2, v8, :cond_b7

    goto :goto_ba

    :cond_b7
    :goto_b7
    move/from16 v17, v3

    goto :goto_c5

    .line 2888
    :cond_ba
    :goto_ba
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move/from16 v17, v4

    :goto_c5
    if-lt v2, v15, :cond_d4

    if-gt v2, v1, :cond_d4

    .line 2892
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v17, 0x1

    add-int v2, v2, v17

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    goto :goto_b7

    :cond_d4
    if-eqz v5, :cond_f3

    const/16 v1, 0x22

    if-eq v2, v1, :cond_dd

    .line 2902
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v12

    .line 2905
    :cond_dd
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v17, 0x1

    add-int v1, v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2907
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v3, v2

    sub-int/2addr v3, v4

    const/4 v5, 0x2

    sub-int/2addr v3, v5

    move/from16 v17, v2

    move v2, v1

    goto :goto_fb

    .line 2910
    :cond_f3
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v1, v4, v17

    sub-int/2addr v1, v4

    const/4 v3, 0x1

    add-int/lit8 v3, v1, -0x1

    :goto_fb
    if-nez v16, :cond_10e

    const/16 v1, 0x11

    if-ge v3, v1, :cond_10e

    long-to-double v3, v10

    long-to-double v5, v6

    .line 2915
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    if-eqz v9, :cond_116

    neg-double v3, v3

    goto :goto_116

    .line 2920
    :cond_10e
    invoke-virtual {v0, v4, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 2921
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    :cond_116
    :goto_116
    move/from16 v1, p1

    if-ne v2, v1, :cond_12e

    .line 2960
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v1, v1, v17

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2961
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v1, 0x3

    .line 2962
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v1, 0x10

    .line 2963
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v3

    .line 2966
    :cond_12e
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v3

    :cond_131
    const/16 v1, 0x6e

    if-ne v2, v1, :cond_1b8

    .line 2923
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1b8

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1b8

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    const/4 v3, 0x2

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1b8

    const/4 v1, 0x5

    .line 2924
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v2, 0x3

    add-int/2addr v7, v2

    .line 2927
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-eqz v5, :cond_176

    const/16 v4, 0x22

    if-ne v2, v4, :cond_176

    .line 2930
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v4

    :cond_176
    :goto_176
    const/16 v4, 0x2c

    if-ne v2, v4, :cond_18c

    .line 2935
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2936
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2937
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v4, 0x10

    .line 2938
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v12

    :cond_18c
    const/16 v4, 0x10

    const/16 v5, 0x5d

    if-ne v2, v5, :cond_1a4

    .line 2941
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2942
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2943
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v1, 0xf

    .line 2944
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v12

    .line 2946
    :cond_1a4
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1b5

    .line 2947
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v5

    goto :goto_176

    .line 2952
    :cond_1b5
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v12

    .line 2955
    :cond_1b8
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v12
.end method

.method public scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/parser/SymbolTable;",
            "C)",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 1572
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 1576
    :cond_8
    invoke-static {p1, p2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public scanEnumSymbol([C)J
    .registers 12

    const/4 v0, 0x0

    .line 1500
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1502
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_f

    const/4 p1, -0x2

    .line 1503
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    .line 1507
    :cond_f
    array-length p1, p1

    .line 1508
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, p1, 0x1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v0, 0x22

    const/4 v4, -0x1

    if-eq p1, v0, :cond_21

    .line 1511
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    :cond_21
    const-wide v5, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 1517
    :goto_26
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v3, 0x1

    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v0, :cond_ad

    .line 1519
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v7, 0x1

    add-int/2addr p1, v7

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v3, 0x2c

    if-ne p1, v3, :cond_4d

    .line 1533
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1534
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p1, 0x3

    .line 1535
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v5

    :cond_4d
    const/16 v7, 0x7d

    if-ne p1, v7, :cond_aa

    .line 1540
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v3, :cond_6c

    const/16 p1, 0x10

    .line 1542
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1543
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1544
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a3

    :cond_6c
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_80

    const/16 p1, 0xf

    .line 1546
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1547
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1548
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a3

    :cond_80
    if-ne p1, v7, :cond_92

    const/16 p1, 0xd

    .line 1550
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1551
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1552
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a3

    :cond_92
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_a7

    const/16 p1, 0x14

    .line 1554
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1555
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v8, -0x1

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1556
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_a3
    const/4 p1, 0x4

    .line 1561
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v5

    .line 1558
    :cond_a7
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    .line 1563
    :cond_aa
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    :cond_ad
    const/16 v3, 0x41

    if-lt p1, v3, :cond_b8

    const/16 v3, 0x5a

    if-gt p1, v3, :cond_b8

    add-int/lit8 v3, p1, 0x20

    goto :goto_b9

    :cond_b8
    move v3, p1

    :goto_b9
    int-to-long v8, v3

    xor-long/2addr v5, v8

    const-wide v8, 0x100000001b3L

    mul-long v5, v5, v8

    const/16 v3, 0x5c

    if-ne p1, v3, :cond_c9

    .line 1527
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    :cond_c9
    move v3, v7

    goto/16 :goto_26
.end method

.method public final scanFalse()V
    .registers 4

    .line 4741
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const-string v1, "error parse false"

    const/16 v2, 0x66

    if-ne v0, v2, :cond_86

    .line 4744
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4746
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x61

    if-ne v0, v2, :cond_80

    .line 4749
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4751
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x6c

    if-ne v0, v2, :cond_7a

    .line 4754
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4756
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x73

    if-ne v0, v2, :cond_74

    .line 4759
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4761
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x65

    if-ne v0, v2, :cond_6e

    .line 4764
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4766
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_6a

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_6a

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_6a

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_6a

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6a

    const/16 v1, 0xd

    if-eq v0, v1, :cond_6a

    const/16 v1, 0x9

    if-eq v0, v1, :cond_6a

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_6a

    const/16 v1, 0xc

    if-eq v0, v1, :cond_6a

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6a

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_6a

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_62

    goto :goto_6a

    .line 4780
    :cond_62
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan false error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    :goto_6a
    const/4 v0, 0x7

    .line 4778
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 4762
    :cond_6e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4757
    :cond_74
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4752
    :cond_7a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4747
    :cond_80
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4742
    :cond_86
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scanFieldBigInteger([C)Ljava/math/BigInteger;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 3807
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3809
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_12

    const/4 v1, -0x2

    .line 3810
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    .line 3814
    :cond_12
    array-length v3, v1

    .line 3815
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    add-int/2addr v5, v3

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v5, 0x22

    const/4 v7, 0x1

    if-ne v3, v5, :cond_23

    const/4 v8, 0x1

    goto :goto_24

    :cond_23
    const/4 v8, 0x0

    :goto_24
    if-eqz v8, :cond_30

    .line 3818
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v6, v9

    :cond_30
    const/16 v9, 0x2d

    if-ne v3, v9, :cond_36

    const/4 v9, 0x1

    goto :goto_37

    :cond_36
    const/4 v9, 0x0

    :goto_37
    if-eqz v9, :cond_43

    .line 3823
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v6, v10

    :cond_43
    const/16 v14, 0x2c

    const/16 v15, 0x30

    const/4 v2, -0x1

    if-lt v3, v15, :cond_13e

    const/16 v10, 0x39

    if-gt v3, v10, :cond_13e

    sub-int/2addr v3, v15

    int-to-long v12, v3

    .line 3832
    :goto_50
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-lt v3, v15, :cond_73

    if-gt v3, v10, :cond_73

    const-wide/16 v18, 0xa

    mul-long v18, v18, v12

    add-int/lit8 v6, v3, -0x30

    int-to-long v10, v6

    add-long v10, v18, v10

    cmp-long v6, v10, v12

    if-gez v6, :cond_6d

    const/16 v16, 0x1

    goto :goto_75

    :cond_6d
    move-wide v12, v10

    move/from16 v6, v17

    const/16 v10, 0x39

    goto :goto_50

    :cond_73
    const/16 v16, 0x0

    :goto_75
    if-eqz v8, :cond_92

    if-eq v3, v5, :cond_7c

    .line 3849
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    .line 3852
    :cond_7c
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v17, 0x1

    add-int v3, v3, v17

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3854
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v1, v6

    add-int/2addr v1, v7

    add-int/2addr v6, v5

    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x2

    move/from16 v17, v5

    goto :goto_9b

    .line 3857
    :cond_92
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v1, v5

    add-int v5, v5, v17

    sub-int/2addr v5, v1

    add-int/lit8 v6, v5, -0x1

    :goto_9b
    const/16 v5, 0x14

    if-nez v16, :cond_af

    if-lt v6, v5, :cond_a7

    if-eqz v9, :cond_af

    const/16 v8, 0x15

    if-ge v6, v8, :cond_af

    :cond_a7
    if-eqz v9, :cond_aa

    neg-long v12, v12

    .line 3862
    :cond_aa
    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_c0

    :cond_af
    const v8, 0xffff

    if-gt v6, v8, :cond_136

    .line 3871
    invoke-virtual {v0, v1, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 3872
    new-instance v6, Ljava/math/BigInteger;

    const/16 v8, 0xa

    invoke-direct {v6, v1, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object v1, v6

    :goto_c0
    if-ne v3, v14, :cond_d6

    .line 3914
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v2, v2, v17

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3915
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v2, 0x3

    .line 3916
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v6, 0x10

    .line 3917
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v1

    :cond_d6
    const/16 v6, 0x10

    const/16 v8, 0x7d

    if-ne v3, v8, :cond_133

    .line 3922
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v17, 0x1

    add-int v3, v3, v17

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-ne v3, v14, :cond_f6

    .line 3924
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3925
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3926
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_12c

    :cond_f6
    const/16 v6, 0x5d

    if-ne v3, v6, :cond_10a

    const/16 v2, 0xf

    .line 3928
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3929
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3930
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_12c

    :cond_10a
    const/16 v6, 0x7d

    if-ne v3, v6, :cond_11e

    const/16 v6, 0xd

    .line 3932
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3933
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3934
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_12c

    :cond_11e
    const/16 v6, 0x1a

    if-ne v3, v6, :cond_130

    .line 3936
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3937
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v8, v7

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3938
    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_12c
    const/4 v2, 0x4

    .line 3943
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v1

    .line 3940
    :cond_130
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    .line 3945
    :cond_133
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    .line 3868
    :cond_136
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "scanInteger overflow"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13e
    const/16 v1, 0x6e

    if-ne v3, v1, :cond_1c2

    .line 3874
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    .line 3875
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v3, 0x75

    if-ne v1, v3, :cond_1c2

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    add-int/2addr v1, v7

    .line 3876
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_1c2

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x2

    .line 3877
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1c2

    const/4 v1, 0x5

    .line 3878
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v3, 0x3

    add-int/2addr v6, v3

    .line 3881
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-eqz v8, :cond_180

    if-ne v3, v5, :cond_180

    .line 3884
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v7, 0x1

    add-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v7, v5

    :cond_180
    :goto_180
    if-ne v3, v14, :cond_194

    .line 3889
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v7

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3890
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3891
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v5, 0x10

    .line 3892
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v4

    :cond_194
    const/16 v5, 0x10

    const/16 v6, 0x7d

    if-ne v3, v6, :cond_1ac

    .line 3895
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v7

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3896
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3897
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v8, 0xd

    .line 3898
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v4

    :cond_1ac
    const/16 v8, 0xd

    .line 3900
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1bf

    .line 3901
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v7, 0x1

    add-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v7, v9

    goto :goto_180

    .line 3906
    :cond_1bf
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    .line 3909
    :cond_1c2
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4
.end method

.method public scanFieldBoolean([C)Z
    .registers 11

    const/4 v0, 0x0

    .line 2238
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2240
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 p1, -0x2

    .line 2241
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2245
    :cond_d
    array-length p1, p1

    .line 2246
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, p1, 0x1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v1, 0x74

    const/16 v3, 0x65

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne p1, v1, :cond_4f

    .line 2250
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v2, 0x72

    if-eq p1, v2, :cond_2f

    .line 2251
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2254
    :cond_2f
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v1, 0x75

    if-eq p1, v1, :cond_3f

    .line 2255
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2258
    :cond_3f
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-eq p1, v3, :cond_4d

    .line 2259
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_4d
    const/4 p1, 0x1

    goto :goto_93

    :cond_4f
    const/16 v1, 0x66

    if-ne p1, v1, :cond_110

    .line 2265
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v2, 0x61

    if-eq p1, v2, :cond_63

    .line 2266
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2269
    :cond_63
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v1, 0x6c

    if-eq p1, v1, :cond_73

    .line 2270
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2273
    :cond_73
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v2, 0x73

    if-eq p1, v2, :cond_83

    .line 2274
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2277
    :cond_83
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-eq p1, v3, :cond_91

    .line 2278
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_91
    move v1, v2

    const/4 p1, 0x0

    .line 2288
    :goto_93
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x10

    const/16 v6, 0x2c

    if-ne v1, v6, :cond_b3

    .line 2290
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2291
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v0, 0x3

    .line 2292
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2293
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return p1

    :cond_b3
    const/16 v7, 0x7d

    if-ne v1, v7, :cond_10d

    .line 2299
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_d0

    .line 2301
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2302
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2303
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_106

    :cond_d0
    const/16 v2, 0x5d

    if-ne v1, v2, :cond_e4

    const/16 v0, 0xf

    .line 2305
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2306
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2307
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_106

    :cond_e4
    if-ne v1, v7, :cond_f6

    const/16 v0, 0xd

    .line 2309
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2310
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2311
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_106

    :cond_f6
    const/16 v2, 0x1a

    if-ne v1, v2, :cond_10a

    const/16 v0, 0x14

    .line 2313
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2314
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v8, v5

    add-int/2addr v0, v8

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2315
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_106
    const/4 v0, 0x4

    .line 2320
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return p1

    .line 2317
    :cond_10a
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2322
    :cond_10d
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2284
    :cond_110
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public scanFieldDate([C)Ljava/util/Date;
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    .line 3953
    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3955
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_12

    const/4 v0, -0x2

    .line 3956
    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    .line 3962
    :cond_12
    array-length v3, v0

    .line 3963
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    add-int/2addr v5, v3

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v5, 0x22

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-ne v3, v5, :cond_a8

    .line 3967
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v9, v0

    add-int/2addr v3, v9

    add-int/2addr v3, v8

    .line 3968
    invoke-virtual {v1, v5, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v3

    if-eq v3, v7, :cond_a0

    .line 3973
    iget v9, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v10, v0

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    sub-int v10, v3, v9

    .line 3974
    invoke-virtual {v1, v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x5c

    .line 3975
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eq v11, v7, :cond_6e

    :goto_40
    add-int/lit8 v9, v3, -0x1

    const/4 v11, 0x0

    :goto_43
    if-ltz v9, :cond_50

    .line 3979
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    if-ne v12, v10, :cond_50

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_43

    .line 3985
    :cond_50
    rem-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_67

    .line 3991
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v9, v0

    add-int/2addr v9, v5

    add-int/2addr v9, v8

    sub-int v9, v3, v9

    .line 3992
    array-length v10, v0

    add-int/2addr v5, v10

    add-int/2addr v5, v8

    invoke-virtual {v1, v5, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v5

    .line 3994
    invoke-static {v5, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v9

    goto :goto_6e

    :cond_67
    add-int/lit8 v3, v3, 0x1

    .line 3988
    invoke-virtual {v1, v5, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v3

    goto :goto_40

    .line 3997
    :cond_6e
    :goto_6e
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v0, v0

    add-int/2addr v0, v5

    add-int/2addr v0, v8

    sub-int/2addr v3, v0

    add-int/2addr v3, v8

    add-int/2addr v6, v3

    add-int/lit8 v0, v6, 0x1

    add-int/2addr v5, v6

    .line 3998
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 4000
    new-instance v5, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v5, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 4002
    :try_start_82
    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 4003
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    .line 4004
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2
    :try_end_90
    .catchall {:try_start_82 .. :try_end_90} :catchall_9b

    .line 4010
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    goto/16 :goto_fc

    .line 4006
    :cond_95
    :try_start_95
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I
    :try_end_97
    .catchall {:try_start_95 .. :try_end_97} :catchall_9b

    .line 4010
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    return-object v4

    :catchall_9b
    move-exception v0

    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 4011
    throw v0

    .line 3970
    :cond_a0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "unclosed str"

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a8
    const/16 v0, 0x2d

    const/16 v5, 0x39

    const/16 v9, 0x30

    if-eq v3, v0, :cond_b8

    if-lt v3, v9, :cond_b5

    if-gt v3, v5, :cond_b5

    goto :goto_b8

    .line 4044
    :cond_b5
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    :cond_b8
    :goto_b8
    if-ne v3, v0, :cond_c5

    .line 4017
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v6, 0x1

    add-int/2addr v0, v6

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v6, v2

    const/4 v2, 0x1

    :cond_c5
    const-wide/16 v10, 0x0

    if-lt v3, v9, :cond_eb

    if-gt v3, v5, :cond_eb

    add-int/lit8 v3, v3, -0x30

    int-to-long v12, v3

    .line 4024
    :goto_ce
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, 0x1

    add-int/2addr v0, v6

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-lt v0, v9, :cond_e5

    if-gt v0, v5, :cond_e5

    const-wide/16 v14, 0xa

    mul-long v12, v12, v14

    add-int/lit8 v0, v0, -0x30

    int-to-long v14, v0

    add-long/2addr v12, v14

    move v6, v3

    goto :goto_ce

    :cond_e5
    move/from16 v16, v3

    move v3, v0

    move/from16 v0, v16

    goto :goto_ed

    :cond_eb
    move v0, v6

    move-wide v12, v10

    :goto_ed
    cmp-long v5, v12, v10

    if-gez v5, :cond_f4

    .line 4034
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    :cond_f4
    if-eqz v2, :cond_f7

    neg-long v12, v12

    .line 4042
    :cond_f7
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v12, v13}, Ljava/util/Date;-><init>(J)V

    :goto_fc
    const/16 v5, 0x2c

    if-ne v3, v5, :cond_10f

    .line 4049
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v0

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4050
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v0, 0x3

    .line 4051
    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    :cond_10f
    const/16 v6, 0x7d

    if-ne v3, v6, :cond_16b

    .line 4056
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v0, 0x1

    add-int/2addr v3, v0

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_12e

    const/16 v0, 0x10

    .line 4058
    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4059
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v9

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4060
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_164

    :cond_12e
    const/16 v3, 0x5d

    if-ne v0, v3, :cond_142

    const/16 v0, 0xf

    .line 4062
    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4063
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v9

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4064
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_164

    :cond_142
    if-ne v0, v6, :cond_154

    const/16 v0, 0xd

    .line 4066
    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4067
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v9

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4068
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_164

    :cond_154
    const/16 v3, 0x1a

    if-ne v0, v3, :cond_168

    const/16 v0, 0x14

    .line 4070
    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4071
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v9, v8

    add-int/2addr v0, v9

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4072
    iput-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_164
    const/4 v0, 0x4

    .line 4077
    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    .line 4074
    :cond_168
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    .line 4079
    :cond_16b
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4
.end method

.method public scanFieldDecimal([C)Ljava/math/BigDecimal;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 3644
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3646
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_12

    const/4 v1, -0x2

    .line 3647
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    .line 3651
    :cond_12
    array-length v3, v1

    .line 3652
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    add-int/2addr v5, v3

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v5, 0x22

    const/4 v7, 0x1

    if-ne v3, v5, :cond_23

    const/4 v8, 0x1

    goto :goto_24

    :cond_23
    const/4 v8, 0x0

    :goto_24
    if-eqz v8, :cond_30

    .line 3655
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v6, v9

    :cond_30
    const/16 v9, 0x2d

    if-ne v3, v9, :cond_36

    const/4 v10, 0x1

    goto :goto_37

    :cond_36
    const/4 v10, 0x0

    :goto_37
    if-eqz v10, :cond_43

    .line 3660
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v6, v10

    :cond_43
    const/4 v11, 0x3

    const/16 v14, 0x2c

    const/16 v15, 0x30

    const/4 v10, -0x1

    if-lt v3, v15, :cond_17b

    const/16 v13, 0x39

    if-gt v3, v13, :cond_17b

    .line 3666
    :goto_4f
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-lt v3, v15, :cond_5f

    if-gt v3, v13, :cond_5f

    move/from16 v6, v16

    goto :goto_4f

    :cond_5f
    const/16 v6, 0x2e

    if-ne v3, v6, :cond_65

    const/4 v6, 0x1

    goto :goto_66

    :cond_65
    const/4 v6, 0x0

    :goto_66
    if-eqz v6, :cond_89

    .line 3676
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v16, 0x1

    add-int v3, v3, v16

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-lt v3, v15, :cond_86

    if-gt v3, v13, :cond_86

    .line 3679
    :goto_76
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-lt v3, v15, :cond_89

    if-gt v3, v13, :cond_89

    move/from16 v6, v16

    goto :goto_76

    .line 3687
    :cond_86
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    :cond_89
    const/16 v6, 0x65

    if-eq v3, v6, :cond_94

    const/16 v6, 0x45

    if-ne v3, v6, :cond_92

    goto :goto_94

    :cond_92
    const/4 v6, 0x0

    goto :goto_95

    :cond_94
    :goto_94
    const/4 v6, 0x1

    :goto_95
    if-eqz v6, :cond_c5

    .line 3694
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v16, 0x1

    add-int v3, v3, v16

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v12, 0x2b

    if-eq v3, v12, :cond_ab

    if-ne v3, v9, :cond_a8

    goto :goto_ab

    :cond_a8
    :goto_a8
    move/from16 v16, v6

    goto :goto_b6

    .line 3696
    :cond_ab
    :goto_ab
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move/from16 v16, v9

    :goto_b6
    if-lt v3, v15, :cond_c5

    if-gt v3, v13, :cond_c5

    .line 3700
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v16, 0x1

    add-int v3, v3, v16

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    goto :goto_a8

    :cond_c5
    if-eqz v8, :cond_e2

    if-eq v3, v5, :cond_cc

    .line 3710
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    .line 3713
    :cond_cc
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v16, 0x1

    add-int v3, v3, v16

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3715
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v1, v6

    add-int/2addr v1, v7

    add-int/2addr v6, v5

    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x2

    move/from16 v16, v5

    goto :goto_eb

    .line 3718
    :cond_e2
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v1, v5

    add-int v5, v5, v16

    sub-int/2addr v5, v1

    add-int/lit8 v6, v5, -0x1

    :goto_eb
    const v5, 0xffff

    if-gt v6, v5, :cond_173

    .line 3726
    invoke-virtual {v0, v1, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v1

    .line 3727
    new-instance v5, Ljava/math/BigDecimal;

    array-length v6, v1

    sget-object v8, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    invoke-direct {v5, v1, v2, v6, v8}, Ljava/math/BigDecimal;-><init>([CIILjava/math/MathContext;)V

    if-ne v3, v14, :cond_111

    .line 3768
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v1, v1, v16

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3769
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3770
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v1, 0x10

    .line 3771
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v5

    :cond_111
    const/16 v1, 0x10

    const/16 v2, 0x7d

    if-ne v3, v2, :cond_170

    .line 3776
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v16, 0x1

    add-int v2, v2, v16

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-ne v2, v14, :cond_131

    .line 3778
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3779
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3780
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_169

    :cond_131
    const/16 v1, 0x5d

    if-ne v2, v1, :cond_145

    const/16 v1, 0xf

    .line 3782
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3783
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3784
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_169

    :cond_145
    const/16 v1, 0x7d

    if-ne v2, v1, :cond_159

    const/16 v1, 0xd

    .line 3786
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3787
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3788
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_169

    :cond_159
    const/16 v1, 0x1a

    if-ne v2, v1, :cond_16d

    const/16 v2, 0x14

    .line 3790
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3791
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v3, v7

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3792
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_169
    const/4 v1, 0x4

    .line 3797
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    .line 3794
    :cond_16d
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    .line 3799
    :cond_170
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    .line 3723
    :cond_173
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "scan decimal overflow"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17b
    const/16 v1, 0x6e

    if-ne v3, v1, :cond_1fe

    .line 3728
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    .line 3729
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1fe

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    add-int/2addr v1, v7

    .line 3730
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1fe

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x2

    .line 3731
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1fe

    const/4 v1, 0x5

    .line 3732
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    add-int/2addr v6, v11

    .line 3735
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, 0x1

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-eqz v8, :cond_1bc

    if-ne v2, v5, :cond_1bc

    .line 3738
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v5

    :cond_1bc
    :goto_1bc
    if-ne v2, v14, :cond_1d0

    .line 3743
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3744
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3745
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v5, 0x10

    .line 3746
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v4

    :cond_1d0
    const/16 v5, 0x10

    const/16 v6, 0x7d

    if-ne v2, v6, :cond_1e8

    .line 3749
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3750
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3751
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v7, 0xd

    .line 3752
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v4

    :cond_1e8
    const/16 v7, 0xd

    .line 3754
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1fb

    .line 3755
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v8

    goto :goto_1bc

    .line 3760
    :cond_1fb
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    .line 3763
    :cond_1fe
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4
.end method

.method public final scanFieldDouble([C)D
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 3470
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3472
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_13

    const/4 v1, -0x2

    .line 3473
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4

    .line 3477
    :cond_13
    array-length v3, v1

    .line 3478
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v3, 0x1

    add-int/2addr v6, v3

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v6, 0x22

    if-ne v3, v6, :cond_23

    const/4 v9, 0x1

    goto :goto_24

    :cond_23
    const/4 v9, 0x0

    :goto_24
    if-eqz v9, :cond_30

    .line 3481
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v7, 0x1

    add-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v7, v10

    :cond_30
    const/16 v10, 0x2d

    if-ne v3, v10, :cond_36

    const/4 v11, 0x1

    goto :goto_37

    :cond_36
    const/4 v11, 0x0

    :goto_37
    if-eqz v11, :cond_43

    .line 3486
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v7, 0x1

    add-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v7, v12

    :cond_43
    const/4 v12, -0x1

    const/16 v15, 0x30

    if-lt v3, v15, :cond_1ac

    const/16 v14, 0x39

    if-gt v3, v14, :cond_1ac

    sub-int/2addr v3, v15

    int-to-long v2, v3

    .line 3494
    :goto_4e
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v7, 0x1

    add-int/2addr v13, v7

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const-wide/16 v18, 0xa

    if-lt v7, v15, :cond_68

    if-gt v7, v14, :cond_68

    mul-long v2, v2, v18

    add-int/lit8 v7, v7, -0x30

    int-to-long v6, v7

    add-long/2addr v2, v6

    move/from16 v7, v17

    const/16 v6, 0x22

    goto :goto_4e

    :cond_68
    const-wide/16 v20, 0x1

    const/16 v6, 0x2e

    if-ne v7, v6, :cond_70

    const/4 v6, 0x1

    goto :goto_71

    :cond_70
    const/4 v6, 0x0

    :goto_71
    if-eqz v6, :cond_a5

    .line 3506
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v17, 0x1

    add-int v6, v6, v17

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    if-lt v6, v15, :cond_a2

    if-gt v6, v14, :cond_a2

    mul-long v2, v2, v18

    sub-int/2addr v6, v15

    move/from16 v22, v9

    int-to-long v8, v6

    add-long/2addr v2, v8

    move-wide/from16 v20, v18

    .line 3511
    :goto_8a
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v7, 0x1

    add-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    if-lt v7, v15, :cond_a7

    if-gt v7, v14, :cond_a7

    mul-long v2, v2, v18

    add-int/lit8 v7, v7, -0x30

    int-to-long v6, v7

    add-long/2addr v2, v6

    mul-long v20, v20, v18

    move/from16 v7, v17

    goto :goto_8a

    .line 3521
    :cond_a2
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4

    :cond_a5
    move/from16 v22, v9

    :cond_a7
    move-wide/from16 v8, v20

    const/16 v6, 0x65

    if-eq v7, v6, :cond_b5

    const/16 v6, 0x45

    if-ne v7, v6, :cond_b2

    goto :goto_b5

    :cond_b2
    const/16 v16, 0x0

    goto :goto_b7

    :cond_b5
    :goto_b5
    const/16 v16, 0x1

    :goto_b7
    if-eqz v16, :cond_e9

    .line 3528
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v17, 0x1

    add-int v6, v6, v17

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v13, 0x2b

    if-eq v6, v13, :cond_ce

    if-ne v6, v10, :cond_ca

    goto :goto_ce

    :cond_ca
    :goto_ca
    move/from16 v17, v7

    move v7, v6

    goto :goto_da

    .line 3530
    :cond_ce
    :goto_ce
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v7, 0x1

    add-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    move v7, v6

    move/from16 v17, v10

    :goto_da
    if-lt v7, v15, :cond_e9

    if-gt v7, v14, :cond_e9

    .line 3534
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v17, 0x1

    add-int v6, v6, v17

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    goto :goto_ca

    :cond_e9
    if-eqz v22, :cond_10a

    const/16 v6, 0x22

    if-eq v7, v6, :cond_f2

    .line 3544
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4

    .line 3547
    :cond_f2
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v17, 0x1

    add-int v6, v6, v17

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    .line 3549
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v1, v10

    const/4 v13, 0x1

    add-int/2addr v1, v13

    add-int/2addr v10, v7

    sub-int/2addr v10, v1

    add-int/lit8 v10, v10, -0x2

    move/from16 v17, v7

    move v7, v6

    goto :goto_114

    :cond_10a
    const/4 v13, 0x1

    .line 3552
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v1, v6

    add-int v6, v6, v17

    sub-int/2addr v6, v1

    add-int/lit8 v10, v6, -0x1

    :goto_114
    if-nez v16, :cond_127

    const/16 v6, 0x11

    if-ge v10, v6, :cond_127

    long-to-double v1, v2

    long-to-double v8, v8

    .line 3557
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v8

    if-eqz v11, :cond_12f

    neg-double v1, v1

    goto :goto_12f

    .line 3562
    :cond_127
    invoke-virtual {v0, v1, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 3563
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    :cond_12f
    :goto_12f
    const/16 v3, 0x2c

    if-ne v7, v3, :cond_147

    .line 3605
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v3, v3, v17

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3606
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v3, 0x3

    .line 3607
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v3, 0x10

    .line 3608
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v1

    :cond_147
    const/16 v3, 0x10

    const/16 v6, 0x7d

    if-ne v7, v6, :cond_1a9

    .line 3613
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v17, 0x1

    add-int v6, v6, v17

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v8, 0x2c

    if-ne v6, v8, :cond_169

    .line 3615
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3616
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v7

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3617
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1a2

    :cond_169
    const/16 v3, 0x5d

    if-ne v6, v3, :cond_17d

    const/16 v3, 0xf

    .line 3619
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3620
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v7

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3621
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1a2

    :cond_17d
    const/16 v3, 0x7d

    if-ne v6, v3, :cond_191

    const/16 v3, 0xd

    .line 3623
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3624
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v7

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3625
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1a2

    :cond_191
    const/16 v3, 0x1a

    if-ne v6, v3, :cond_1a6

    const/16 v4, 0x14

    .line 3627
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3628
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v5, 0x1

    sub-int/2addr v7, v5

    add-int/2addr v4, v7

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3629
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_1a2
    const/4 v3, 0x4

    .line 3634
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    .line 3631
    :cond_1a6
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4

    .line 3636
    :cond_1a9
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4

    :cond_1ac
    move/from16 v22, v9

    const/16 v1, 0x6e

    if-ne v3, v1, :cond_237

    .line 3565
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    .line 3566
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_237

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 3567
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_237

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/lit8 v1, v1, 0x2

    .line 3568
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_237

    const/4 v1, 0x5

    .line 3569
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v2, 0x3

    add-int/2addr v7, v2

    .line 3572
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-eqz v22, :cond_1f3

    const/16 v6, 0x22

    if-ne v2, v6, :cond_1f3

    .line 3575
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v6

    :cond_1f3
    const/16 v6, 0x2c

    :goto_1f5
    if-ne v2, v6, :cond_209

    .line 3580
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3581
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3582
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v7, 0x10

    .line 3583
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v4

    :cond_209
    const/16 v7, 0x10

    const/16 v8, 0x7d

    if-ne v2, v8, :cond_221

    .line 3586
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3587
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3588
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v9, 0xd

    .line 3589
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v4

    :cond_221
    const/16 v9, 0xd

    .line 3591
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_234

    .line 3592
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v10

    goto :goto_1f5

    .line 3597
    :cond_234
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4

    .line 3600
    :cond_237
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4
.end method

.method public final scanFieldFloat([C)F
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 2510
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2512
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_12

    const/4 v1, -0x2

    .line 2513
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v4

    .line 2517
    :cond_12
    array-length v3, v1

    .line 2518
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    add-int/2addr v5, v3

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v5, 0x22

    if-ne v3, v5, :cond_22

    const/4 v8, 0x1

    goto :goto_23

    :cond_22
    const/4 v8, 0x0

    :goto_23
    if-eqz v8, :cond_2f

    .line 2522
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v6, v9

    :cond_2f
    const/16 v9, 0x2d

    if-ne v3, v9, :cond_35

    const/4 v10, 0x1

    goto :goto_36

    :cond_35
    const/4 v10, 0x0

    :goto_36
    if-eqz v10, :cond_42

    .line 2527
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v6, v11

    :cond_42
    const/4 v2, -0x1

    const/16 v11, 0x30

    if-lt v3, v11, :cond_1ab

    const/16 v14, 0x39

    if-gt v3, v14, :cond_1ab

    sub-int/2addr v3, v11

    int-to-long v12, v3

    .line 2534
    :goto_4d
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const-wide/16 v18, 0xa

    if-lt v3, v11, :cond_67

    if-gt v3, v14, :cond_67

    mul-long v12, v12, v18

    add-int/lit8 v3, v3, -0x30

    int-to-long v5, v3

    add-long/2addr v12, v5

    move/from16 v6, v17

    const/16 v5, 0x22

    goto :goto_4d

    :cond_67
    const/16 v5, 0x2e

    if-ne v3, v5, :cond_6d

    const/4 v5, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v5, 0x0

    :goto_6e
    if-eqz v5, :cond_a4

    .line 2546
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v17, 0x1

    add-int v3, v3, v17

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-lt v3, v11, :cond_a1

    if-gt v3, v14, :cond_a1

    mul-long v12, v12, v18

    sub-int/2addr v3, v11

    move/from16 v20, v8

    int-to-long v7, v3

    add-long/2addr v12, v7

    move-wide/from16 v6, v18

    .line 2551
    :goto_87
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-lt v3, v11, :cond_a8

    if-gt v3, v14, :cond_a8

    mul-long v12, v12, v18

    add-int/lit8 v3, v3, -0x30

    int-to-long v14, v3

    add-long/2addr v12, v14

    mul-long v6, v6, v18

    move/from16 v5, v17

    const/16 v14, 0x39

    goto :goto_87

    .line 2561
    :cond_a1
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v4

    :cond_a4
    move/from16 v20, v8

    const-wide/16 v6, 0x1

    :cond_a8
    const/16 v14, 0x65

    if-eq v3, v14, :cond_b4

    const/16 v14, 0x45

    if-ne v3, v14, :cond_b1

    goto :goto_b4

    :cond_b1
    const/16 v16, 0x0

    goto :goto_b6

    :cond_b4
    :goto_b4
    const/16 v16, 0x1

    :goto_b6
    if-eqz v16, :cond_e8

    .line 2568
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v17, 0x1

    add-int v3, v3, v17

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v15, 0x2b

    if-eq v3, v15, :cond_cc

    if-ne v3, v9, :cond_c9

    goto :goto_cc

    :cond_c9
    move/from16 v17, v14

    goto :goto_d7

    .line 2570
    :cond_cc
    :goto_cc
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v14, 0x1

    add-int/2addr v3, v14

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    :goto_d5
    move/from16 v17, v9

    :goto_d7
    if-lt v3, v11, :cond_e8

    const/16 v8, 0x39

    if-gt v3, v8, :cond_e8

    .line 2574
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v17, 0x1

    add-int v3, v3, v17

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    goto :goto_d5

    :cond_e8
    if-eqz v20, :cond_108

    const/16 v8, 0x22

    if-eq v3, v8, :cond_f1

    .line 2584
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v4

    .line 2587
    :cond_f1
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v17, 0x1

    add-int v3, v3, v17

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2589
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v1, v9

    const/4 v11, 0x1

    add-int/2addr v1, v11

    add-int/2addr v9, v8

    sub-int/2addr v9, v1

    add-int/lit8 v9, v9, -0x2

    move/from16 v17, v8

    goto :goto_112

    :cond_108
    const/4 v11, 0x1

    .line 2592
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v1, v8

    add-int v8, v8, v17

    sub-int/2addr v8, v1

    add-int/lit8 v9, v8, -0x1

    :goto_112
    if-nez v16, :cond_126

    const/16 v8, 0x11

    if-ge v9, v8, :cond_126

    long-to-double v8, v12

    long-to-double v6, v6

    .line 2597
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v6

    double-to-float v1, v8

    if-eqz v10, :cond_12e

    neg-float v1, v1

    goto :goto_12e

    .line 2602
    :cond_126
    invoke-virtual {v0, v1, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 2603
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    :cond_12e
    :goto_12e
    const/16 v5, 0x2c

    if-ne v3, v5, :cond_146

    .line 2642
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v2, v2, v17

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2643
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v2, 0x3

    .line 2644
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v6, 0x10

    .line 2645
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v1

    :cond_146
    const/16 v6, 0x10

    const/16 v7, 0x7d

    if-ne v3, v7, :cond_1a8

    .line 2650
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v17, 0x1

    add-int v3, v3, v17

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v5, 0x2c

    if-ne v3, v5, :cond_168

    .line 2652
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2653
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v7

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2654
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1a1

    :cond_168
    const/16 v5, 0x5d

    if-ne v3, v5, :cond_17c

    const/16 v2, 0xf

    .line 2656
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2657
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v7

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2658
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1a1

    :cond_17c
    const/16 v5, 0x7d

    if-ne v3, v5, :cond_190

    const/16 v5, 0xd

    .line 2660
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2661
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v7

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2662
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1a1

    :cond_190
    const/16 v5, 0x1a

    if-ne v3, v5, :cond_1a5

    .line 2664
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v3, 0x1

    sub-int/2addr v7, v3

    add-int/2addr v2, v7

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v2, 0x14

    .line 2665
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2666
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_1a1
    const/4 v2, 0x4

    .line 2671
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v1

    .line 2668
    :cond_1a5
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v4

    .line 2673
    :cond_1a8
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v4

    :cond_1ab
    move/from16 v20, v8

    const/16 v1, 0x6e

    if-ne v3, v1, :cond_236

    .line 2605
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v3, 0x75

    if-ne v1, v3, :cond_236

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_236

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_236

    const/4 v1, 0x5

    .line 2606
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v3, 0x3

    add-int/2addr v6, v3

    .line 2609
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-eqz v20, :cond_1f2

    const/16 v6, 0x22

    if-ne v3, v6, :cond_1f2

    .line 2612
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v7, 0x1

    add-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v7, v6

    :cond_1f2
    const/16 v5, 0x2c

    :goto_1f4
    if-ne v3, v5, :cond_208

    .line 2617
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v7

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2618
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2619
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v6, 0x10

    .line 2620
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v4

    :cond_208
    const/16 v6, 0x10

    const/16 v8, 0x7d

    if-ne v3, v8, :cond_220

    .line 2623
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v7

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2624
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2625
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v9, 0xd

    .line 2626
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v4

    :cond_220
    const/16 v9, 0xd

    .line 2628
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_233

    .line 2629
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v7, 0x1

    add-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v7, v10

    goto :goto_1f4

    .line 2634
    :cond_233
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v4

    .line 2637
    :cond_236
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v4
.end method

.method public final scanFieldFloatArray([C)[F
    .registers 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 3126
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3128
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-nez v2, :cond_10

    .line 3129
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    :cond_10
    move-object/from16 v2, p1

    .line 3133
    array-length v2, v2

    .line 3134
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v2, 0x1

    add-int/2addr v5, v2

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v5, 0x5b

    if-eq v2, v5, :cond_23

    .line 3136
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    .line 3139
    :cond_23
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, 0x1

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v5, 0x10

    new-array v6, v5, [F

    const/4 v7, 0x0

    .line 3145
    :goto_31
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v8, v3

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    const/16 v10, 0x2d

    if-ne v2, v10, :cond_3c

    const/4 v11, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v11, 0x0

    :goto_3d
    if-eqz v11, :cond_49

    .line 3149
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v12

    :cond_49
    const/4 v12, -0x1

    const/16 v13, 0x30

    if-lt v2, v13, :cond_1bb

    const/16 v14, 0x39

    if-gt v2, v14, :cond_1bb

    add-int/lit8 v2, v2, -0x30

    .line 3155
    :goto_54
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v3, 0x1

    add-int/2addr v15, v3

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-lt v3, v13, :cond_69

    if-gt v3, v14, :cond_69

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    move/from16 v3, v16

    goto :goto_54

    :cond_69
    const/16 v15, 0x2e

    if-ne v3, v15, :cond_6f

    const/4 v15, 0x1

    goto :goto_70

    :cond_6f
    const/4 v15, 0x0

    :goto_70
    const/16 v5, 0xa

    if-eqz v15, :cond_a9

    .line 3167
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v15, v16, 0x1

    add-int v3, v3, v16

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-lt v3, v13, :cond_a6

    if-gt v3, v14, :cond_a6

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    const/16 v3, 0xa

    .line 3172
    :goto_89
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v15, 0x1

    add-int/2addr v1, v15

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-lt v1, v13, :cond_a0

    if-gt v1, v14, :cond_a0

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    mul-int/lit8 v3, v3, 0xa

    move/from16 v15, v16

    goto :goto_89

    :cond_a0
    move/from16 v18, v3

    move v3, v1

    move/from16 v1, v18

    goto :goto_aa

    .line 3183
    :cond_a6
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    :cond_a9
    const/4 v1, 0x1

    :goto_aa
    const/16 v15, 0x65

    if-eq v3, v15, :cond_b5

    const/16 v15, 0x45

    if-ne v3, v15, :cond_b3

    goto :goto_b5

    :cond_b3
    const/4 v15, 0x0

    goto :goto_b6

    :cond_b5
    :goto_b5
    const/4 v15, 0x1

    :goto_b6
    if-eqz v15, :cond_e7

    .line 3190
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v16, 0x1

    add-int v3, v3, v16

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_cc

    if-ne v3, v10, :cond_c9

    goto :goto_cc

    :cond_c9
    move/from16 v16, v17

    goto :goto_d8

    .line 3192
    :cond_cc
    :goto_cc
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v17, 0x1

    add-int v3, v3, v17

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    :goto_d6
    move/from16 v16, v4

    :goto_d8
    if-lt v3, v13, :cond_e7

    if-gt v3, v14, :cond_e7

    .line 3196
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v16, 0x1

    add-int v3, v3, v16

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    goto :goto_d6

    .line 3203
    :cond_e7
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v4, v4, v16

    sub-int/2addr v4, v8

    sub-int/2addr v4, v9

    if-nez v15, :cond_f8

    if-ge v4, v5, :cond_f8

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    if-eqz v11, :cond_100

    neg-float v2, v2

    goto :goto_100

    .line 3212
    :cond_f8
    invoke-virtual {v0, v8, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 3213
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 3216
    :cond_100
    :goto_100
    array-length v1, v6

    const/4 v4, 0x3

    if-lt v7, v1, :cond_110

    .line 3217
    array-length v1, v6

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [F

    const/4 v5, 0x0

    .line 3218
    invoke-static {v6, v5, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v1

    :cond_110
    add-int/lit8 v5, v7, 0x1

    .line 3221
    aput v2, v6, v7

    const/16 v1, 0x2c

    if-ne v3, v1, :cond_12a

    .line 3224
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v16, 0x1

    add-int v1, v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v3, v2

    const/16 v4, 0x10

    const/4 v10, 0x0

    move v2, v1

    const/4 v1, 0x0

    goto/16 :goto_1b4

    :cond_12a
    const/16 v2, 0x5d

    if-ne v3, v2, :cond_1ad

    .line 3226
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v16, 0x1

    add-int v3, v3, v16

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3236
    array-length v8, v6

    if-eq v5, v8, :cond_142

    .line 3237
    new-array v8, v5, [F

    const/4 v10, 0x0

    .line 3238
    invoke-static {v6, v10, v8, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v8

    :cond_142
    if-ne v3, v1, :cond_154

    .line 3243
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v7, v9

    add-int/2addr v1, v7

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3244
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3245
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v4, 0x10

    .line 3246
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v6

    :cond_154
    const/16 v4, 0x10

    const/16 v5, 0x7d

    if-ne v3, v5, :cond_1a9

    .line 3251
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v7, 0x1

    add-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_171

    .line 3253
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3254
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v8, v9

    add-int/2addr v1, v8

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3255
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1a1

    :cond_171
    if-ne v3, v2, :cond_181

    const/16 v1, 0xf

    .line 3257
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3258
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v8, v9

    add-int/2addr v1, v8

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3259
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1a1

    :cond_181
    if-ne v3, v5, :cond_191

    const/16 v1, 0xd

    .line 3261
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3262
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v8, v9

    add-int/2addr v1, v8

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3263
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1a1

    :cond_191
    const/16 v1, 0x1a

    if-ne v3, v1, :cond_1a5

    .line 3265
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v8, v9

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v2, 0x14

    .line 3266
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3267
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_1a1
    const/4 v1, 0x4

    .line 3272
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v6

    .line 3269
    :cond_1a5
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v1, 0x0

    return-object v1

    :cond_1a9
    const/4 v1, 0x0

    .line 3274
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v1

    :cond_1ad
    const/4 v1, 0x0

    const/16 v4, 0x10

    const/4 v10, 0x0

    move v2, v3

    move/from16 v3, v16

    :goto_1b4
    move-object v4, v1

    move v7, v5

    const/4 v1, 0x0

    const/16 v5, 0x10

    goto/16 :goto_31

    :cond_1bb
    move-object v1, v4

    .line 3230
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v1
.end method

.method public final scanFieldFloatArray2([C)[[F
    .registers 23

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 3282
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3284
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-nez v2, :cond_12

    .line 3285
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3286
    check-cast v4, [[F

    return-object v4

    :cond_12
    move-object/from16 v2, p1

    .line 3289
    array-length v2, v2

    .line 3290
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v2, 0x1

    add-int/2addr v5, v2

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v5, 0x5b

    if-eq v2, v5, :cond_27

    .line 3293
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3294
    check-cast v4, [[F

    return-object v4

    .line 3296
    :cond_27
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, 0x1

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v6, 0x10

    new-array v7, v6, [[F

    const/4 v8, 0x0

    :goto_35
    const/4 v11, -0x1

    const/4 v13, 0x1

    if-ne v2, v5, :cond_1a0

    .line 3303
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    new-array v3, v6, [F

    const/4 v15, 0x0

    .line 3309
    :goto_45
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v14

    sub-int/2addr v5, v13

    const/16 v6, 0x2d

    if-ne v2, v6, :cond_50

    const/16 v16, 0x1

    goto :goto_52

    :cond_50
    const/16 v16, 0x0

    :goto_52
    if-eqz v16, :cond_5f

    .line 3312
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v14, 0x1

    add-int/2addr v2, v14

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move/from16 v14, v17

    :cond_5f
    const/16 v9, 0x30

    if-lt v2, v9, :cond_199

    const/16 v12, 0x39

    if-gt v2, v12, :cond_199

    add-int/lit8 v2, v2, -0x30

    .line 3318
    :goto_69
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v14, 0x1

    add-int/2addr v1, v14

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-lt v1, v9, :cond_7e

    if-gt v1, v12, :cond_7e

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    move/from16 v14, v18

    goto :goto_69

    :cond_7e
    const/16 v14, 0x2e

    if-ne v1, v14, :cond_ba

    .line 3330
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v18, 0x1

    add-int v1, v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-lt v1, v9, :cond_b5

    if-gt v1, v12, :cond_b5

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    const/16 v1, 0xa

    .line 3336
    :goto_97
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v14, 0x1

    add-int/2addr v10, v14

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    if-lt v10, v9, :cond_ae

    if-gt v10, v12, :cond_ae

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v10, v10, -0x30

    add-int/2addr v2, v10

    mul-int/lit8 v1, v1, 0xa

    move/from16 v14, v18

    goto :goto_97

    :cond_ae
    move/from16 v20, v2

    move v2, v1

    move v1, v10

    move/from16 v10, v20

    goto :goto_bc

    .line 3347
    :cond_b5
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3348
    check-cast v4, [[F

    return-object v4

    :cond_ba
    move v10, v2

    const/4 v2, 0x1

    :goto_bc
    const/16 v14, 0x65

    if-eq v1, v14, :cond_c7

    const/16 v14, 0x45

    if-ne v1, v14, :cond_c5

    goto :goto_c7

    :cond_c5
    const/4 v14, 0x0

    goto :goto_c8

    :cond_c7
    :goto_c7
    const/4 v14, 0x1

    :goto_c8
    if-eqz v14, :cond_f9

    .line 3354
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v19, v18, 0x1

    add-int v1, v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v4, 0x2b

    if-eq v1, v4, :cond_de

    if-ne v1, v6, :cond_db

    goto :goto_de

    :cond_db
    move/from16 v18, v19

    goto :goto_ea

    .line 3356
    :cond_de
    :goto_de
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v19, 0x1

    add-int v1, v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    :goto_e8
    move/from16 v18, v4

    :goto_ea
    if-lt v1, v9, :cond_f9

    if-gt v1, v12, :cond_f9

    .line 3360
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v18, 0x1

    add-int v1, v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    goto :goto_e8

    .line 3367
    :cond_f9
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v4, v4, v18

    sub-int/2addr v4, v5

    sub-int/2addr v4, v13

    if-nez v14, :cond_10c

    const/16 v6, 0xa

    if-ge v4, v6, :cond_10c

    int-to-float v4, v10

    int-to-float v2, v2

    div-float/2addr v4, v2

    if-eqz v16, :cond_114

    neg-float v4, v4

    goto :goto_114

    .line 3375
    :cond_10c
    invoke-virtual {v0, v5, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v2

    .line 3376
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 3379
    :cond_114
    :goto_114
    array-length v2, v3

    if-lt v15, v2, :cond_124

    .line 3380
    array-length v2, v3

    const/4 v5, 0x3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [F

    const/4 v5, 0x0

    .line 3381
    invoke-static {v3, v5, v2, v5, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v2

    :cond_124
    add-int/lit8 v2, v15, 0x1

    .line 3384
    aput v4, v3, v15

    const/16 v4, 0x2c

    if-ne v1, v4, :cond_138

    .line 3387
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v18, 0x1

    add-int v1, v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v14, v4

    goto :goto_191

    :cond_138
    const/16 v4, 0x5d

    if-ne v1, v4, :cond_18f

    .line 3389
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v18, 0x1

    add-int v1, v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 3399
    array-length v5, v3

    if-eq v2, v5, :cond_151

    .line 3400
    new-array v5, v2, [F

    const/4 v6, 0x0

    .line 3401
    invoke-static {v3, v6, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v5

    goto :goto_152

    :cond_151
    const/4 v6, 0x0

    .line 3405
    :goto_152
    array-length v5, v7

    if-lt v8, v5, :cond_161

    .line 3406
    array-length v5, v7

    const/4 v7, 0x3

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x2

    new-array v5, v5, [[F

    .line 3407
    invoke-static {v3, v6, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v5

    :cond_161
    add-int/lit8 v5, v8, 0x1

    .line 3410
    aput-object v3, v7, v8

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_175

    .line 3413
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v4, 0x1

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v3, v2

    move v2, v1

    goto :goto_186

    :cond_175
    const/16 v2, 0x5d

    if-ne v1, v2, :cond_184

    .line 3415
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v8, v5

    goto :goto_1a0

    :cond_184
    move v2, v1

    move v3, v4

    :goto_186
    move v8, v5

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x5b

    const/16 v6, 0x10

    goto/16 :goto_35

    :cond_18f
    move/from16 v14, v18

    :goto_191
    move v15, v2

    const/4 v4, 0x0

    const/16 v6, 0x10

    move v2, v1

    const/4 v1, 0x0

    goto/16 :goto_45

    .line 3393
    :cond_199
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v1, 0x0

    .line 3394
    move-object v4, v1

    check-cast v4, [[F

    return-object v4

    .line 3424
    :cond_1a0
    :goto_1a0
    array-length v1, v7

    if-eq v8, v1, :cond_1aa

    .line 3425
    new-array v1, v8, [[F

    const/4 v4, 0x0

    .line 3426
    invoke-static {v7, v4, v1, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v1

    :cond_1aa
    const/16 v1, 0x2c

    if-ne v2, v1, :cond_1bf

    .line 3431
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v3, v13

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3432
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/4 v1, 0x3

    .line 3433
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v1, 0x10

    .line 3434
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v7

    :cond_1bf
    const/16 v1, 0x10

    const/16 v4, 0x7d

    if-ne v2, v4, :cond_21b

    .line 3439
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_1de

    .line 3441
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3442
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v5, v13

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3443
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_210

    :cond_1de
    const/16 v1, 0x5d

    if-ne v2, v1, :cond_1f0

    const/16 v1, 0xf

    .line 3445
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3446
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v5, v13

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3447
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_210

    :cond_1f0
    if-ne v2, v4, :cond_200

    const/16 v1, 0xd

    .line 3449
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3450
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v5, v13

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3451
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_210

    :cond_200
    const/16 v1, 0x1a

    if-ne v2, v1, :cond_214

    .line 3453
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v5, v13

    add-int/2addr v2, v5

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v2, 0x14

    .line 3454
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3455
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_210
    const/4 v1, 0x4

    .line 3460
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v7

    .line 3457
    :cond_214
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v1, 0x0

    .line 3458
    move-object v4, v1

    check-cast v4, [[F

    return-object v4

    :cond_21b
    const/4 v1, 0x0

    .line 3462
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3463
    move-object v4, v1

    check-cast v4, [[F

    return-object v4
.end method

.method public scanFieldInt([C)I
    .registers 12

    const/4 v0, 0x0

    .line 1905
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1907
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 p1, -0x2

    .line 1908
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 1912
    :cond_d
    array-length v1, p1

    .line 1913
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    if-eqz v2, :cond_2b

    .line 1917
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v3, v5

    :cond_2b
    const/16 v5, 0x30

    const/4 v6, -0x1

    if-lt v1, v5, :cond_e0

    const/16 v7, 0x39

    if-gt v1, v7, :cond_e0

    sub-int/2addr v1, v5

    .line 1924
    :goto_35
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v3, 0x1

    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_49

    if-gt v3, v7, :cond_49

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v1, v3

    move v3, v9

    goto :goto_35

    :cond_49
    const/16 v5, 0x2e

    if-ne v3, v5, :cond_50

    .line 1928
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_50
    if-ltz v1, :cond_57

    .line 1934
    array-length p1, p1

    add-int/lit8 p1, p1, 0xe

    if-le v9, p1, :cond_63

    :cond_57
    const/high16 p1, -0x80000000

    if-ne v1, p1, :cond_dd

    const/16 p1, 0x11

    if-ne v9, p1, :cond_dd

    if-nez v2, :cond_63

    goto/16 :goto_dd

    :cond_63
    const/16 p1, 0x10

    const/16 v5, 0x2c

    if-ne v3, v5, :cond_7d

    .line 1949
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v9

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1950
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v0, 0x3

    .line 1951
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1952
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-eqz v2, :cond_7c

    neg-int v1, v1

    :cond_7c
    return v1

    :cond_7d
    const/16 v7, 0x7d

    if-ne v3, v7, :cond_da

    .line 1957
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v9, 0x1

    add-int/2addr v3, v9

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_9a

    .line 1959
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1960
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1961
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_d0

    :cond_9a
    const/16 p1, 0x5d

    if-ne v3, p1, :cond_ae

    const/16 p1, 0xf

    .line 1963
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1964
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1965
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_d0

    :cond_ae
    if-ne v3, v7, :cond_c0

    const/16 p1, 0xd

    .line 1967
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1968
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1969
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_d0

    :cond_c0
    const/16 p1, 0x1a

    if-ne v3, p1, :cond_d7

    const/16 v0, 0x14

    .line 1971
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1972
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v8, v4

    add-int/2addr v0, v8

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1973
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_d0
    const/4 p1, 0x4

    .line 1978
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-eqz v2, :cond_d6

    neg-int v1, v1

    :cond_d6
    return v1

    .line 1975
    :cond_d7
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 1980
    :cond_da
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 1939
    :cond_dd
    :goto_dd
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 1944
    :cond_e0
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public final scanFieldIntArray([C)[I
    .registers 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1988
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1990
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-nez v2, :cond_10

    .line 1991
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    :cond_10
    move-object/from16 v2, p1

    .line 1995
    array-length v2, v2

    .line 1996
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v2, 0x1

    add-int/2addr v5, v2

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v5, 0x5b

    if-eq v2, v5, :cond_23

    .line 1999
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    .line 2002
    :cond_23
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, 0x1

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v5, 0x10

    new-array v6, v5, [I

    const/4 v7, 0x3

    const/16 v8, 0x2c

    const/4 v9, -0x1

    const/16 v10, 0x5d

    const/4 v11, 0x1

    if-ne v2, v10, :cond_44

    .line 2008
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/4 v4, 0x0

    goto :goto_a7

    :cond_44
    const/4 v12, 0x0

    :goto_45
    const/16 v13, 0x2d

    if-ne v2, v13, :cond_55

    .line 2013
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v13, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v13

    const/4 v13, 0x1

    goto :goto_56

    :cond_55
    const/4 v13, 0x0

    :goto_56
    const/16 v14, 0x30

    if-lt v2, v14, :cond_11f

    const/16 v15, 0x39

    if-gt v2, v15, :cond_11f

    add-int/lit8 v2, v2, -0x30

    .line 2019
    :goto_60
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v3, 0x1

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-lt v3, v14, :cond_75

    if-gt v3, v15, :cond_75

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    move/from16 v3, v16

    goto :goto_60

    .line 2028
    :cond_75
    array-length v4, v6

    if-lt v12, v4, :cond_83

    .line 2029
    array-length v4, v6

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [I

    .line 2030
    invoke-static {v6, v1, v4, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v4

    :cond_83
    add-int/lit8 v4, v12, 0x1

    if-eqz v13, :cond_88

    neg-int v2, v2

    .line 2033
    :cond_88
    aput v2, v6, v12

    if-ne v3, v8, :cond_9b

    .line 2036
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v16, 0x1

    add-int v2, v2, v16

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move/from16 v16, v3

    move v3, v2

    goto/16 :goto_117

    :cond_9b
    if-ne v3, v10, :cond_117

    .line 2038
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v16, 0x1

    add-int v2, v2, v16

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2049
    :goto_a7
    array-length v3, v6

    if-eq v4, v3, :cond_b0

    .line 2050
    new-array v3, v4, [I

    .line 2051
    invoke-static {v6, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v3

    :cond_b0
    if-ne v2, v8, :cond_c0

    .line 2056
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v12, v11

    add-int/2addr v1, v12

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2057
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2058
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2059
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v6

    :cond_c0
    const/16 v1, 0x7d

    if-ne v2, v1, :cond_113

    .line 2064
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v12, 0x1

    add-int/2addr v2, v12

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_db

    .line 2066
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2067
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v3, v11

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2068
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_10b

    :cond_db
    if-ne v2, v10, :cond_eb

    const/16 v1, 0xf

    .line 2070
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2071
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v3, v11

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2072
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_10b

    :cond_eb
    if-ne v2, v1, :cond_fb

    const/16 v1, 0xd

    .line 2074
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2075
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v3, v11

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2076
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_10b

    :cond_fb
    const/16 v1, 0x1a

    if-ne v2, v1, :cond_10f

    .line 2078
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v3, v11

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v2, 0x14

    .line 2079
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2080
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_10b
    const/4 v1, 0x4

    .line 2085
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v6

    .line 2082
    :cond_10f
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v2, 0x0

    return-object v2

    :cond_113
    const/4 v2, 0x0

    .line 2087
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    :cond_117
    :goto_117
    const/4 v2, 0x0

    move v12, v4

    move-object v4, v2

    move v2, v3

    move/from16 v3, v16

    goto/16 :goto_45

    :cond_11f
    move-object v2, v4

    .line 2042
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2
.end method

.method public scanFieldLong([C)J
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 2330
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2332
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_13

    const/4 v1, -0x2

    .line 2333
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4

    .line 2337
    :cond_13
    array-length v3, v1

    .line 2338
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v3, 0x1

    add-int/2addr v6, v3

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v6, 0x2d

    const/4 v8, 0x1

    if-ne v3, v6, :cond_2e

    .line 2342
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v7, 0x1

    add-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v7, v6

    const/4 v6, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v6, 0x0

    :goto_2f
    const/16 v9, 0x30

    const/4 v10, -0x1

    if-lt v3, v9, :cond_ee

    const/16 v11, 0x39

    if-gt v3, v11, :cond_ee

    sub-int/2addr v3, v9

    int-to-long v12, v3

    .line 2350
    :goto_3a
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v7, 0x1

    add-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-lt v3, v9, :cond_52

    if-gt v3, v11, :cond_52

    const-wide/16 v15, 0xa

    mul-long v12, v12, v15

    add-int/lit8 v3, v3, -0x30

    int-to-long v2, v3

    add-long/2addr v12, v2

    move v7, v14

    const/4 v2, 0x0

    goto :goto_3a

    :cond_52
    const/16 v2, 0x2e

    if-ne v3, v2, :cond_59

    .line 2354
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4

    .line 2361
    :cond_59
    array-length v1, v1

    sub-int v1, v14, v1

    const/16 v2, 0x15

    if-ge v1, v2, :cond_6e

    cmp-long v1, v12, v4

    if-gez v1, :cond_6c

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v9, v12, v1

    if-nez v9, :cond_6e

    if-eqz v6, :cond_6e

    :cond_6c
    const/4 v2, 0x1

    goto :goto_6f

    :cond_6e
    const/4 v2, 0x0

    :goto_6f
    if-nez v2, :cond_74

    .line 2364
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4

    :cond_74
    const/16 v1, 0x10

    const/16 v2, 0x2c

    if-ne v3, v2, :cond_8e

    .line 2373
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v14

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2374
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v2, 0x3

    .line 2375
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2376
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-eqz v6, :cond_8d

    neg-long v12, v12

    :cond_8d
    return-wide v12

    :cond_8e
    const/16 v7, 0x7d

    if-ne v3, v7, :cond_eb

    .line 2381
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v14, 0x1

    add-int/2addr v3, v14

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_ab

    .line 2383
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2384
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2385
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_e1

    :cond_ab
    const/16 v1, 0x5d

    if-ne v3, v1, :cond_bf

    const/16 v1, 0xf

    .line 2387
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2388
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2389
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_e1

    :cond_bf
    if-ne v3, v7, :cond_d1

    const/16 v1, 0xd

    .line 2391
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2392
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2393
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_e1

    :cond_d1
    const/16 v1, 0x1a

    if-ne v3, v1, :cond_e8

    const/16 v2, 0x14

    .line 2395
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2396
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v9, v8

    add-int/2addr v2, v9

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2397
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_e1
    const/4 v1, 0x4

    .line 2402
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-eqz v6, :cond_e7

    neg-long v12, v12

    :cond_e7
    return-wide v12

    .line 2399
    :cond_e8
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4

    .line 2404
    :cond_eb
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4

    .line 2368
    :cond_ee
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x0

    .line 1242
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1244
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 p1, -0x2

    .line 1245
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1246
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1251
    :cond_11
    array-length v1, p1

    .line 1252
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    const/4 v4, -0x1

    if-eq v1, v2, :cond_27

    .line 1255
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1257
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1262
    :cond_27
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v5, p1

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x1

    .line 1263
    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v1

    if-eq v1, v4, :cond_103

    .line 1268
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v6, p1

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    sub-int v6, v1, v5

    .line 1269
    invoke-virtual {p0, v5, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x5c

    .line 1270
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v4, :cond_77

    :goto_47
    add-int/lit8 v5, v1, -0x1

    const/4 v7, 0x0

    :goto_4a
    if-ltz v5, :cond_57

    .line 1274
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_57

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_4a

    .line 1280
    :cond_57
    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_70

    .line 1286
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v2, p1

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    sub-int v2, v1, v2

    .line 1287
    array-length v5, p1

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v0

    .line 1289
    invoke-static {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v5

    goto :goto_77

    :cond_70
    add-int/lit8 v1, v1, 0x1

    .line 1283
    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v1

    goto :goto_47

    .line 1292
    :cond_77
    :goto_77
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length p1, p1

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v3, v1

    add-int/lit8 p1, v3, 0x1

    add-int/2addr v0, v3

    .line 1293
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_9b

    .line 1298
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1299
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p1, 0x3

    .line 1300
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    :cond_9b
    const/16 v2, 0x7d

    if-ne v0, v2, :cond_fc

    .line 1305
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, p1, 0x1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v1, :cond_ba

    const/16 p1, 0x10

    .line 1307
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1308
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1309
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_f1

    :cond_ba
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_ce

    const/16 p1, 0xf

    .line 1311
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1312
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1313
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_f1

    :cond_ce
    if-ne p1, v2, :cond_e0

    const/16 p1, 0xd

    .line 1315
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1316
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1317
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_f1

    :cond_e0
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_f5

    const/16 p1, 0x14

    .line 1319
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1320
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1321
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_f1
    const/4 p1, 0x4

    .line 1326
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    .line 1323
    :cond_f5
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1324
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1328
    :cond_fc
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1329
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1265
    :cond_103
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "unclosed str"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_10c

    :goto_10b
    throw p1

    :goto_10c
    goto :goto_10b
.end method

.method public scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
    .registers 14
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

    const/4 v0, 0x0

    .line 1669
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1671
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    const/4 p1, -0x2

    .line 1672
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    .line 1676
    :cond_e
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object p2

    .line 1692
    array-length p1, p1

    .line 1693
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, p1, 0x1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v1, 0x5b

    const/4 v4, -0x1

    if-eq p1, v1, :cond_24

    .line 1696
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    .line 1700
    :cond_24
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v3, 0x1

    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    :goto_2d
    const/16 v3, 0x2c

    const/16 v5, 0x5d

    const/16 v6, 0x22

    if-ne p1, v6, :cond_95

    .line 1705
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v1

    .line 1706
    invoke-virtual {p0, v6, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result p1

    if-eq p1, v4, :cond_8d

    .line 1711
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v1

    sub-int v8, p1, v7

    .line 1712
    invoke-virtual {p0, v7, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x5c

    .line 1713
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v4, :cond_7a

    :goto_4f
    add-int/lit8 v7, p1, -0x1

    const/4 v9, 0x0

    :goto_52
    if-ltz v7, :cond_5f

    .line 1717
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_5f

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_52

    .line 1723
    :cond_5f
    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_73

    .line 1729
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v7, v6, v1

    sub-int v7, p1, v7

    add-int/2addr v6, v1

    .line 1730
    invoke-virtual {p0, v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v6

    .line 1732
    invoke-static {v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v7

    goto :goto_7a

    :cond_73
    add-int/lit8 p1, p1, 0x1

    .line 1726
    invoke-virtual {p0, v6, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result p1

    goto :goto_4f

    .line 1735
    :cond_7a
    :goto_7a
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v8, v6, v1

    sub-int/2addr p1, v8

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v1, p1

    add-int/lit8 p1, v1, 0x1

    add-int/2addr v6, v1

    .line 1736
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1738
    invoke-interface {p2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_cb

    .line 1708
    :cond_8d
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "unclosed str"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_95
    const/16 v6, 0x6e

    if-ne p1, v6, :cond_e8

    .line 1739
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v1

    .line 1740
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v7, 0x75

    if-ne v6, v7, :cond_e8

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    .line 1741
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v7, 0x6c

    if-ne v6, v7, :cond_e8

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x2

    .line 1742
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_e8

    add-int/lit8 v1, v1, 0x3

    .line 1744
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1745
    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move p1, v6

    :goto_cb
    if-ne v1, v3, :cond_d9

    .line 1754
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, p1, 0x1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    move v1, v3

    goto/16 :goto_2d

    :cond_d9
    if-ne v1, v5, :cond_e5

    .line 1759
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, p1, 0x1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    goto :goto_fa

    .line 1763
    :cond_e5
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    :cond_e8
    if-ne p1, v5, :cond_169

    .line 1746
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    if-nez p1, :cond_169

    .line 1747
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    move v1, v0

    :goto_fa
    if-ne p1, v3, :cond_10b

    .line 1768
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1769
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p1, 0x3

    .line 1770
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object p2

    :cond_10b
    const/16 v0, 0x7d

    if-ne p1, v0, :cond_166

    .line 1775
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v3, :cond_12a

    const/16 p1, 0x10

    .line 1777
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1778
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1779
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_15f

    :cond_12a
    if-ne p1, v5, :cond_13c

    const/16 p1, 0xf

    .line 1781
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1782
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1783
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_15f

    :cond_13c
    if-ne p1, v0, :cond_14e

    const/16 p1, 0xd

    .line 1785
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1786
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1787
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_15f

    :cond_14e
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_163

    .line 1789
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v6, -0x1

    add-int/2addr p1, v6

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 p1, 0x14

    .line 1790
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1791
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_15f
    const/4 p1, 0x4

    .line 1796
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object p2

    .line 1793
    :cond_163
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    .line 1798
    :cond_166
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    .line 1750
    :cond_169
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "illega str"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_172

    :goto_171
    throw p1

    :goto_172
    goto :goto_171
.end method

.method public scanFieldStringArray([CILcom/alibaba/fastjson/parser/SymbolTable;)[Ljava/lang/String;
    .registers 4

    .line 5333
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public scanFieldSymbol([C)J
    .registers 12

    const/4 v0, 0x0

    .line 1429
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1431
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_f

    const/4 p1, -0x2

    .line 1432
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    .line 1436
    :cond_f
    array-length p1, p1

    .line 1437
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, p1, 0x1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v0, 0x22

    const/4 v4, -0x1

    if-eq p1, v0, :cond_21

    .line 1440
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    :cond_21
    const-wide v5, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 1446
    :goto_26
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v3, 0x1

    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v0, :cond_ad

    .line 1448
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v7, 0x1

    add-int/2addr p1, v7

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v3, 0x2c

    if-ne p1, v3, :cond_4d

    .line 1462
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1463
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p1, 0x3

    .line 1464
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v5

    :cond_4d
    const/16 v7, 0x7d

    if-ne p1, v7, :cond_aa

    .line 1469
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v3, :cond_6c

    const/16 p1, 0x10

    .line 1471
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1472
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1473
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a3

    :cond_6c
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_80

    const/16 p1, 0xf

    .line 1475
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1476
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1477
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a3

    :cond_80
    if-ne p1, v7, :cond_92

    const/16 p1, 0xd

    .line 1479
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1480
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1481
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a3

    :cond_92
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_a7

    const/16 p1, 0x14

    .line 1483
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1484
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v8, -0x1

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1485
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_a3
    const/4 p1, 0x4

    .line 1490
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v5

    .line 1487
    :cond_a7
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    .line 1492
    :cond_aa
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    :cond_ad
    int-to-long v8, p1

    xor-long/2addr v5, v8

    const-wide v8, 0x100000001b3L

    mul-long v5, v5, v8

    const/16 v3, 0x5c

    if-ne p1, v3, :cond_bd

    .line 1456
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    :cond_bd
    move v3, v7

    goto/16 :goto_26
.end method

.method public scanFieldUUID([C)Ljava/util/UUID;
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 4223
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4225
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const/4 v4, -0x2

    const/4 v5, 0x0

    if-nez v3, :cond_12

    .line 4226
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    .line 4232
    :cond_12
    array-length v3, v1

    .line 4233
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v3, 0x1

    add-int/2addr v6, v3

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v8, 0x22

    const/4 v10, -0x1

    const/4 v11, 0x4

    if-ne v3, v8, :cond_211

    .line 4237
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v12, v1

    add-int/2addr v3, v12

    add-int/lit8 v3, v3, 0x1

    .line 4238
    invoke-virtual {v0, v8, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v3

    if-eq v3, v10, :cond_209

    .line 4243
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v12, v1

    add-int/2addr v8, v12

    add-int/lit8 v8, v8, 0x1

    sub-int v12, v3, v8

    const/16 v13, 0x24

    const/16 v2, 0x46

    const/16 v14, 0x66

    const/16 v15, 0x39

    const/16 v10, 0x41

    const/16 v9, 0x61

    const/16 v6, 0x30

    if-ne v12, v13, :cond_172

    const/4 v12, 0x0

    const-wide/16 v19, 0x0

    :goto_49
    const/16 v13, 0x8

    if-ge v12, v13, :cond_7b

    add-int v13, v8, v12

    .line 4248
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_5a

    if-gt v13, v15, :cond_5a

    add-int/lit8 v13, v13, -0x30

    goto :goto_6a

    :cond_5a
    if-lt v13, v9, :cond_63

    if-gt v13, v14, :cond_63

    add-int/lit8 v13, v13, -0x61

    :goto_60
    add-int/lit8 v13, v13, 0xa

    goto :goto_6a

    :cond_63
    if-lt v13, v10, :cond_78

    if-gt v13, v2, :cond_78

    add-int/lit8 v13, v13, -0x41

    goto :goto_60

    :goto_6a
    shl-long v19, v19, v11

    move/from16 v21, v3

    int-to-long v2, v13

    or-long v19, v19, v2

    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v21

    const/16 v2, 0x46

    goto :goto_49

    .line 4257
    :cond_78
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    :cond_7b
    move/from16 v21, v3

    const/16 v2, 0x9

    const/16 v3, 0xd

    :goto_81
    if-ge v2, v3, :cond_b2

    add-int v3, v8, v2

    .line 4265
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_90

    if-gt v3, v15, :cond_90

    add-int/lit8 v3, v3, -0x30

    goto :goto_a2

    :cond_90
    if-lt v3, v9, :cond_99

    if-gt v3, v14, :cond_99

    add-int/lit8 v3, v3, -0x61

    :goto_96
    add-int/lit8 v3, v3, 0xa

    goto :goto_a2

    :cond_99
    if-lt v3, v10, :cond_af

    const/16 v12, 0x46

    if-gt v3, v12, :cond_af

    add-int/lit8 v3, v3, -0x41

    goto :goto_96

    :goto_a2
    shl-long v12, v19, v11

    int-to-long v10, v3

    or-long v19, v12, v10

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xd

    const/16 v10, 0x41

    const/4 v11, 0x4

    goto :goto_81

    .line 4274
    :cond_af
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    :cond_b2
    const/16 v2, 0xe

    move-wide/from16 v10, v19

    :goto_b6
    const/16 v3, 0x12

    if-ge v2, v3, :cond_e5

    add-int v3, v8, v2

    .line 4282
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_c8

    if-gt v3, v15, :cond_c8

    add-int/lit8 v3, v3, -0x30

    :goto_c6
    const/4 v12, 0x4

    goto :goto_dc

    :cond_c8
    if-lt v3, v9, :cond_d1

    if-gt v3, v14, :cond_d1

    add-int/lit8 v3, v3, -0x61

    :goto_ce
    add-int/lit8 v3, v3, 0xa

    goto :goto_c6

    :cond_d1
    const/16 v12, 0x41

    if-lt v3, v12, :cond_e2

    const/16 v12, 0x46

    if-gt v3, v12, :cond_e2

    add-int/lit8 v3, v3, -0x41

    goto :goto_ce

    :goto_dc
    shl-long/2addr v10, v12

    int-to-long v12, v3

    or-long/2addr v10, v12

    add-int/lit8 v2, v2, 0x1

    goto :goto_b6

    .line 4291
    :cond_e2
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    :cond_e5
    const/16 v2, 0x13

    const-wide/16 v17, 0x0

    :goto_e9
    const/16 v3, 0x17

    if-ge v2, v3, :cond_11c

    add-int v3, v8, v2

    .line 4299
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_fb

    if-gt v3, v15, :cond_fb

    add-int/lit8 v3, v3, -0x30

    :goto_f9
    const/4 v12, 0x4

    goto :goto_10f

    :cond_fb
    if-lt v3, v9, :cond_104

    if-gt v3, v14, :cond_104

    add-int/lit8 v3, v3, -0x61

    :goto_101
    add-int/lit8 v3, v3, 0xa

    goto :goto_f9

    :cond_104
    const/16 v12, 0x41

    if-lt v3, v12, :cond_119

    const/16 v12, 0x46

    if-gt v3, v12, :cond_119

    add-int/lit8 v3, v3, -0x41

    goto :goto_101

    :goto_10f
    shl-long v16, v17, v12

    int-to-long v12, v3

    or-long v12, v16, v12

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v17, v12

    goto :goto_e9

    .line 4308
    :cond_119
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    :cond_11c
    const/16 v2, 0x18

    move-wide/from16 v12, v17

    const/16 v3, 0x24

    :goto_122
    if-ge v2, v3, :cond_157

    add-int v3, v8, v2

    .line 4316
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_132

    if-gt v3, v15, :cond_132

    add-int/lit8 v3, v3, -0x30

    :goto_130
    const/4 v14, 0x4

    goto :goto_146

    :cond_132
    if-lt v3, v9, :cond_13b

    if-gt v3, v14, :cond_13b

    add-int/lit8 v3, v3, -0x61

    :goto_138
    add-int/lit8 v3, v3, 0xa

    goto :goto_130

    :cond_13b
    const/16 v14, 0x41

    if-lt v3, v14, :cond_154

    const/16 v14, 0x46

    if-gt v3, v14, :cond_154

    add-int/lit8 v3, v3, -0x41

    goto :goto_138

    :goto_146
    shl-long/2addr v12, v14

    move v14, v7

    int-to-long v6, v3

    or-long/2addr v12, v6

    add-int/lit8 v2, v2, 0x1

    move v7, v14

    const/16 v3, 0x24

    const/16 v6, 0x30

    const/16 v14, 0x66

    goto :goto_122

    .line 4325
    :cond_154
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    :cond_157
    move v14, v7

    .line 4332
    new-instance v2, Ljava/util/UUID;

    invoke-direct {v2, v10, v11, v12, v13}, Ljava/util/UUID;-><init>(JJ)V

    .line 4334
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    sub-int v1, v21, v1

    add-int/lit8 v1, v1, 0x1

    add-int v7, v14, v1

    add-int/lit8 v1, v7, 0x1

    add-int/2addr v3, v7

    .line 4335
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    goto/16 :goto_246

    :cond_172
    move/from16 v21, v3

    move v14, v7

    const/16 v2, 0x20

    if-ne v12, v2, :cond_205

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    :goto_17c
    const/16 v10, 0x10

    if-ge v3, v10, :cond_1af

    add-int v10, v8, v3

    .line 4339
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-lt v10, v11, :cond_190

    if-gt v10, v15, :cond_190

    add-int/lit8 v10, v10, -0x30

    :goto_18e
    const/4 v11, 0x4

    goto :goto_1a6

    :cond_190
    if-lt v10, v9, :cond_19b

    const/16 v11, 0x66

    if-gt v10, v11, :cond_19b

    add-int/lit8 v10, v10, -0x61

    :goto_198
    add-int/lit8 v10, v10, 0xa

    goto :goto_18e

    :cond_19b
    const/16 v11, 0x41

    if-lt v10, v11, :cond_1ac

    const/16 v11, 0x46

    if-gt v10, v11, :cond_1ac

    add-int/lit8 v10, v10, -0x41

    goto :goto_198

    :goto_1a6
    shl-long/2addr v6, v11

    int-to-long v10, v10

    or-long/2addr v6, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_17c

    .line 4348
    :cond_1ac
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    :cond_1af
    const/16 v10, 0x10

    const-wide/16 v11, 0x0

    :goto_1b3
    if-ge v10, v2, :cond_1ec

    add-int v3, v8, v10

    .line 4356
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v13, 0x30

    if-lt v3, v13, :cond_1c8

    if-gt v3, v15, :cond_1c8

    add-int/lit8 v3, v3, -0x30

    :goto_1c3
    const/16 v2, 0x46

    :goto_1c5
    const/16 v17, 0x4

    goto :goto_1e0

    :cond_1c8
    if-lt v3, v9, :cond_1d3

    const/16 v2, 0x66

    if-gt v3, v2, :cond_1d3

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    goto :goto_1c3

    :cond_1d3
    const/16 v2, 0x41

    if-lt v3, v2, :cond_1e9

    const/16 v2, 0x46

    if-gt v3, v2, :cond_1e9

    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0xa

    goto :goto_1c5

    :goto_1e0
    shl-long v11, v11, v17

    int-to-long v2, v3

    or-long/2addr v11, v2

    add-int/lit8 v10, v10, 0x1

    const/16 v2, 0x20

    goto :goto_1b3

    .line 4365
    :cond_1e9
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    .line 4373
    :cond_1ec
    new-instance v2, Ljava/util/UUID;

    invoke-direct {v2, v6, v7, v11, v12}, Ljava/util/UUID;-><init>(JJ)V

    .line 4375
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    sub-int v1, v21, v1

    add-int/lit8 v1, v1, 0x1

    add-int v7, v14, v1

    add-int/lit8 v1, v7, 0x1

    add-int/2addr v3, v7

    .line 4376
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    goto :goto_246

    :cond_205
    const/4 v1, -0x1

    .line 4378
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    .line 4240
    :cond_209
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "unclosed str"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_211
    move v14, v7

    const/16 v1, 0x6e

    if-ne v3, v1, :cond_2be

    .line 4381
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v14, 0x1

    add-int/2addr v1, v14

    .line 4382
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_2be

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v7, 0x1

    add-int/2addr v1, v7

    .line 4383
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_2be

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v2, 0x1

    add-int/2addr v1, v2

    .line 4384
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_2be

    .line 4386
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v4, 0x1

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v1, v2

    move-object v2, v5

    :goto_246
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_259

    .line 4393
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4394
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v1, 0x3

    .line 4395
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    :cond_259
    const/16 v6, 0x7d

    if-ne v3, v6, :cond_2ba

    .line 4400
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v1, 0x1

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_279

    const/16 v3, 0x10

    .line 4402
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4403
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4404
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_277
    const/4 v1, 0x4

    goto :goto_2b3

    :cond_279
    const/16 v3, 0x5d

    if-ne v1, v3, :cond_28d

    const/16 v1, 0xf

    .line 4406
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4407
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4408
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_277

    :cond_28d
    if-ne v1, v6, :cond_29f

    const/16 v3, 0xd

    .line 4410
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4411
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4412
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_277

    :cond_29f
    const/16 v3, 0x1a

    if-ne v1, v3, :cond_2b6

    const/16 v1, 0x14

    .line 4414
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4415
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, -0x1

    add-int/2addr v1, v7

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v1, 0x1a

    .line 4416
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_277

    .line 4421
    :goto_2b3
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    :cond_2b6
    const/4 v1, -0x1

    .line 4418
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    :cond_2ba
    const/4 v1, -0x1

    .line 4423
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    :cond_2be
    const/4 v1, -0x1

    .line 4388
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5
.end method

.method public final scanFloat(C)F
    .registers 24

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2681
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2684
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    const/4 v4, 0x1

    if-ne v2, v3, :cond_13

    const/4 v5, 0x1

    goto :goto_14

    :cond_13
    const/4 v5, 0x0

    :goto_14
    if-eqz v5, :cond_1f

    .line 2687
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/4 v7, 0x2

    goto :goto_20

    :cond_1f
    const/4 v7, 0x1

    :goto_20
    const/16 v8, 0x2d

    if-ne v2, v8, :cond_26

    const/4 v9, 0x1

    goto :goto_27

    :cond_26
    const/4 v9, 0x0

    :goto_27
    if-eqz v9, :cond_33

    .line 2692
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v7, v10

    :cond_33
    const/4 v12, 0x0

    const/4 v13, -0x1

    const/16 v14, 0x30

    if-lt v2, v14, :cond_12e

    const/16 v15, 0x39

    if-gt v2, v15, :cond_12e

    sub-int/2addr v2, v14

    int-to-long v1, v2

    .line 2699
    :goto_3f
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v7, 0x1

    add-int/2addr v10, v7

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const-wide/16 v18, 0xa

    if-lt v7, v14, :cond_57

    if-gt v7, v15, :cond_57

    mul-long v1, v1, v18

    add-int/lit8 v7, v7, -0x30

    int-to-long v6, v7

    add-long/2addr v1, v6

    move/from16 v7, v17

    goto :goto_3f

    :cond_57
    const-wide/16 v20, 0x1

    const/16 v6, 0x2e

    if-ne v7, v6, :cond_5f

    const/4 v6, 0x1

    goto :goto_60

    :cond_5f
    const/4 v6, 0x0

    :goto_60
    if-eqz v6, :cond_92

    .line 2711
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v17, 0x1

    add-int v6, v6, v17

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    if-lt v6, v14, :cond_8f

    if-gt v6, v15, :cond_8f

    mul-long v1, v1, v18

    sub-int/2addr v6, v14

    int-to-long v10, v6

    add-long/2addr v1, v10

    move-wide/from16 v20, v18

    .line 2716
    :goto_77
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v7, 0x1

    add-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    if-lt v7, v14, :cond_92

    if-gt v7, v15, :cond_92

    mul-long v1, v1, v18

    add-int/lit8 v7, v7, -0x30

    int-to-long v6, v7

    add-long/2addr v1, v6

    mul-long v20, v20, v18

    move/from16 v7, v17

    goto :goto_77

    .line 2726
    :cond_8f
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v12

    :cond_92
    move-wide/from16 v10, v20

    const/16 v6, 0x65

    if-eq v7, v6, :cond_a0

    const/16 v6, 0x45

    if-ne v7, v6, :cond_9d

    goto :goto_a0

    :cond_9d
    const/16 v16, 0x0

    goto :goto_a2

    :cond_a0
    :goto_a0
    const/16 v16, 0x1

    :goto_a2
    if-eqz v16, :cond_d4

    .line 2733
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v17, 0x1

    add-int v6, v6, v17

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v4, 0x2b

    if-eq v6, v4, :cond_b9

    if-ne v6, v8, :cond_b5

    goto :goto_b9

    :cond_b5
    move/from16 v17, v7

    move v7, v6

    goto :goto_c5

    .line 2735
    :cond_b9
    :goto_b9
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v7, 0x1

    add-int/2addr v4, v7

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    move v7, v4

    :goto_c3
    move/from16 v17, v6

    :goto_c5
    if-lt v7, v14, :cond_d4

    if-gt v7, v15, :cond_d4

    .line 2739
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v17, 0x1

    add-int v4, v4, v17

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    goto :goto_c3

    :cond_d4
    if-eqz v5, :cond_f0

    if-eq v7, v3, :cond_db

    .line 2764
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v12

    .line 2767
    :cond_db
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v17, 0x1

    add-int v3, v3, v17

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    .line 2769
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v3, 0x1

    add-int/2addr v3, v4

    sub-int/2addr v3, v5

    const/4 v6, 0x2

    sub-int/2addr v3, v6

    move/from16 v17, v4

    goto :goto_f7

    .line 2772
    :cond_f0
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v3, v5, v17

    sub-int/2addr v3, v5

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_f7
    if-nez v16, :cond_10b

    const/16 v4, 0x11

    if-ge v3, v4, :cond_10b

    long-to-double v1, v1

    long-to-double v3, v10

    .line 2777
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    double-to-float v1, v1

    if-eqz v9, :cond_113

    neg-float v1, v1

    goto :goto_113

    .line 2782
    :cond_10b
    invoke-virtual {v0, v5, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 2783
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    :cond_113
    :goto_113
    move/from16 v2, p1

    if-ne v7, v2, :cond_12b

    .line 2822
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v2, v2, v17

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2823
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v2, 0x3

    .line 2824
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v2, 0x10

    .line 2825
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v1

    .line 2828
    :cond_12b
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v1

    :cond_12e
    const/16 v1, 0x6e

    if-ne v2, v1, :cond_1b3

    .line 2785
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1b3

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1b3

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    const/4 v4, 0x2

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1b3

    const/4 v1, 0x5

    .line 2786
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v2, 0x3

    add-int/2addr v7, v2

    .line 2789
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-eqz v5, :cond_171

    if-ne v2, v3, :cond_171

    .line 2792
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v4, v3

    :cond_171
    :goto_171
    const/16 v3, 0x2c

    if-ne v2, v3, :cond_187

    .line 2797
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2798
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2799
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v3, 0x10

    .line 2800
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v12

    :cond_187
    const/16 v3, 0x10

    const/16 v5, 0x5d

    if-ne v2, v5, :cond_19f

    .line 2803
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2804
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2805
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v1, 0xf

    .line 2806
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v12

    .line 2808
    :cond_19f
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1b0

    .line 2809
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v4, v5

    goto :goto_171

    .line 2814
    :cond_1b0
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v12

    .line 2817
    :cond_1b3
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v12
.end method

.method public final scanHex()V
    .registers 6

    .line 5098
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const-string v1, "illegal state. "

    const/16 v2, 0x78

    if-ne v0, v2, :cond_79

    .line 5101
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5102
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x27

    if-ne v0, v2, :cond_62

    .line 5106
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 5107
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5109
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x1a

    if-ne v0, v2, :cond_24

    .line 5110
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5111
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 5116
    :cond_24
    :goto_24
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    const/16 v4, 0x30

    if-lt v0, v4, :cond_30

    const/16 v4, 0x39

    if-le v0, v4, :cond_38

    :cond_30
    const/16 v4, 0x41

    if-lt v0, v4, :cond_3f

    const/16 v4, 0x46

    if-gt v0, v4, :cond_3f

    .line 5118
    :cond_38
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto :goto_24

    :cond_3f
    if-ne v0, v2, :cond_4d

    .line 5121
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5122
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5128
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 5125
    :cond_4d
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5103
    :cond_62
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5099
    :cond_79
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_91

    :goto_90
    throw v0

    :goto_91
    goto :goto_90
.end method

.method public final scanIdent()V
    .registers 3

    .line 4785
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v0, 0x0

    .line 4786
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 4789
    :goto_9
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4791
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4792
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_9

    .line 4796
    :cond_1b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    .line 4798
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/16 v0, 0x8

    .line 4799
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_7c

    :cond_2c
    const-string v1, "new"

    .line 4800
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    const/16 v0, 0x9

    .line 4801
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_7c

    :cond_39
    const-string v1, "true"

    .line 4802
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    const/4 v0, 0x6

    .line 4803
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_7c

    :cond_45
    const-string v1, "false"

    .line 4804
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    const/4 v0, 0x7

    .line 4805
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_7c

    :cond_51
    const-string v1, "undefined"

    .line 4806
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    const/16 v0, 0x17

    .line 4807
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_7c

    :cond_5e
    const-string v1, "Set"

    .line 4808
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    const/16 v0, 0x15

    .line 4809
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_7c

    :cond_6b
    const-string v1, "TreeSet"

    .line 4810
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    const/16 v0, 0x16

    .line 4811
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_7c

    :cond_78
    const/16 v0, 0x12

    .line 4813
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    :goto_7c
    return-void
.end method

.method public scanInt(C)I
    .registers 15

    const/4 v0, 0x0

    .line 2150
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2153
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    const/4 v3, 0x1

    if-ne v1, v2, :cond_11

    const/4 v4, 0x1

    goto :goto_12

    :cond_11
    const/4 v4, 0x0

    :goto_12
    const/4 v5, 0x2

    if-eqz v4, :cond_1e

    .line 2157
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/4 v6, 0x2

    goto :goto_1f

    :cond_1e
    const/4 v6, 0x1

    :goto_1f
    const/16 v7, 0x2d

    if-ne v1, v7, :cond_25

    const/4 v7, 0x1

    goto :goto_26

    :cond_25
    const/4 v7, 0x0

    :goto_26
    if-eqz v7, :cond_32

    .line 2162
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v6, 0x1

    add-int/2addr v1, v6

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v6, v8

    :cond_32
    const/16 v8, 0x10

    const/4 v9, 0x3

    const/16 v10, 0x30

    const/4 v11, -0x1

    if-lt v1, v10, :cond_8c

    const/16 v12, 0x39

    if-gt v1, v12, :cond_8c

    sub-int/2addr v1, v10

    .line 2169
    :goto_3f
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, 0x1

    add-int/2addr v2, v6

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-lt v2, v10, :cond_53

    if-gt v2, v12, :cond_53

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    move v6, v3

    goto :goto_3f

    :cond_53
    const/16 v4, 0x2e

    if-ne v2, v4, :cond_5a

    .line 2173
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_5a
    if-gez v1, :cond_5f

    .line 2180
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_5f
    :goto_5f
    if-ne v2, p1, :cond_74

    .line 2221
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2222
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2223
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2224
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-eqz v7, :cond_73

    neg-int v1, v1

    :cond_73
    return v1

    .line 2227
    :cond_74
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 2228
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v3, v2

    move v2, v0

    goto :goto_5f

    .line 2231
    :cond_86
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-eqz v7, :cond_8b

    neg-int v1, v1

    :cond_8b
    return v1

    :cond_8c
    const/16 p1, 0x6e

    if-ne v1, p1, :cond_109

    .line 2183
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v6

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v1, 0x75

    if-ne p1, v1, :cond_109

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v6

    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_109

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v6

    add-int/2addr p1, v5

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v1, :cond_109

    const/4 p1, 0x5

    .line 2184
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    add-int/2addr v6, v9

    .line 2187
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, 0x1

    add-int/2addr v1, v6

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-eqz v4, :cond_cc

    if-ne v1, v2, :cond_cc

    .line 2190
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    :goto_cb
    move v3, v2

    :cond_cc
    const/16 v2, 0x2c

    if-ne v1, v2, :cond_e0

    .line 2195
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2196
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2197
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2198
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v0

    :cond_e0
    const/16 v2, 0x5d

    if-ne v1, v2, :cond_f6

    .line 2201
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2202
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2203
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 p1, 0xf

    .line 2204
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v0

    .line 2206
    :cond_f6
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_106

    .line 2207
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    goto :goto_cb

    .line 2212
    :cond_106
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2215
    :cond_109
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public scanLong(C)J
    .registers 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2412
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2415
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    const/4 v4, 0x1

    if-ne v2, v3, :cond_13

    const/4 v5, 0x1

    goto :goto_14

    :cond_13
    const/4 v5, 0x0

    :goto_14
    const/4 v6, 0x2

    if-eqz v5, :cond_20

    .line 2418
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/4 v7, 0x2

    goto :goto_21

    :cond_20
    const/4 v7, 0x1

    :goto_21
    const/16 v8, 0x2d

    if-ne v2, v8, :cond_27

    const/4 v8, 0x1

    goto :goto_28

    :cond_27
    const/4 v8, 0x0

    :goto_28
    if-eqz v8, :cond_34

    .line 2423
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v7, v9

    :cond_34
    const/16 v9, 0x10

    const/4 v10, 0x3

    const/16 v11, 0x30

    const/4 v12, -0x1

    const-wide/16 v13, 0x0

    if-lt v2, v11, :cond_c9

    const/16 v15, 0x39

    if-gt v2, v15, :cond_c9

    sub-int/2addr v2, v11

    int-to-long v1, v2

    .line 2430
    :goto_44
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v7, 0x1

    add-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    if-lt v6, v11, :cond_5c

    if-gt v6, v15, :cond_5c

    const-wide/16 v18, 0xa

    mul-long v1, v1, v18

    add-int/lit8 v6, v6, -0x30

    int-to-long v6, v6

    add-long/2addr v1, v6

    move/from16 v7, v17

    goto :goto_44

    :cond_5c
    const/16 v7, 0x2e

    if-ne v6, v7, :cond_63

    .line 2434
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v13

    :cond_63
    cmp-long v7, v1, v13

    if-gez v7, :cond_73

    const-wide/high16 v18, -0x8000000000000000L

    cmp-long v7, v1, v18

    if-nez v7, :cond_70

    if-eqz v8, :cond_70

    goto :goto_73

    :cond_70
    const/16 v16, 0x0

    goto :goto_75

    :cond_73
    :goto_73
    const/16 v16, 0x1

    :goto_75
    if-eqz v16, :cond_bb

    if-eqz v5, :cond_8d

    if-eq v6, v3, :cond_7e

    .line 2483
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v13

    .line 2486
    :cond_7e
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v17, 0x1

    add-int v3, v3, v17

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    move/from16 v3, p1

    move/from16 v17, v4

    goto :goto_8f

    :cond_8d
    move/from16 v3, p1

    :goto_8f
    if-ne v6, v3, :cond_a5

    .line 2492
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v3, v3, v17

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2493
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2494
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2495
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-eqz v8, :cond_a4

    neg-long v1, v1

    :cond_a4
    return-wide v1

    .line 2498
    :cond_a5
    invoke-static {v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_b8

    .line 2499
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v17, 0x1

    add-int v4, v4, v17

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    move/from16 v17, v5

    goto :goto_8f

    .line 2503
    :cond_b8
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    .line 2442
    :cond_bb
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v17, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 2443
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c9
    const/16 v1, 0x6e

    if-ne v2, v1, :cond_146

    .line 2445
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_146

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_146

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/2addr v1, v6

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_146

    const/4 v1, 0x5

    .line 2446
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    add-int/2addr v7, v10

    .line 2449
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-eqz v5, :cond_109

    if-ne v2, v3, :cond_109

    .line 2452
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    :goto_108
    move v4, v3

    :cond_109
    const/16 v3, 0x2c

    if-ne v2, v3, :cond_11d

    .line 2457
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2458
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2459
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2460
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v13

    :cond_11d
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_133

    .line 2463
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2464
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2465
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v1, 0xf

    .line 2466
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v13

    .line 2468
    :cond_133
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_143

    .line 2469
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    goto :goto_108

    .line 2474
    :cond_143
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v13

    .line 2477
    :cond_146
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v13
.end method

.method public final scanNullOrNew()V
    .registers 2

    const/4 v0, 0x1

    .line 4673
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNullOrNew(Z)V

    return-void
.end method

.method public final scanNullOrNew(Z)V
    .registers 15

    .line 4677
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_ae

    .line 4680
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4682
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x75

    const/16 v2, 0xc

    const/16 v3, 0x1a

    const/16 v4, 0xd

    const/16 v5, 0xa

    const/16 v6, 0x5d

    const/16 v7, 0x7d

    const/16 v8, 0x2c

    const/16 v9, 0x20

    const/16 v10, 0x8

    const/16 v11, 0x9

    if-ne v0, v1, :cond_6e

    .line 4683
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4684
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const-string v1, "error parse null"

    const/16 v12, 0x6c

    if-ne v0, v12, :cond_68

    .line 4687
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4689
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v12, :cond_62

    .line 4692
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4695
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v9, :cond_5f

    if-eq v0, v8, :cond_5f

    if-eq v0, v7, :cond_5f

    if-eq v0, v6, :cond_5f

    if-eq v0, v5, :cond_5f

    if-eq v0, v4, :cond_5f

    if-eq v0, v11, :cond_5f

    if-eq v0, v3, :cond_5f

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_50

    if-nez p1, :cond_5f

    :cond_50
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq p1, v2, :cond_5f

    if-ne p1, v10, :cond_57

    goto :goto_5f

    .line 4709
    :cond_57
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "scan null error"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4707
    :cond_5f
    :goto_5f
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 4690
    :cond_62
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4685
    :cond_68
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6e
    const/16 p1, 0x65

    const-string v1, "error parse new"

    if-ne v0, p1, :cond_a8

    .line 4717
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4719
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v0, 0x77

    if-ne p1, v0, :cond_a2

    .line 4722
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4724
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq p1, v9, :cond_9f

    if-eq p1, v8, :cond_9f

    if-eq p1, v7, :cond_9f

    if-eq p1, v6, :cond_9f

    if-eq p1, v5, :cond_9f

    if-eq p1, v4, :cond_9f

    if-eq p1, v11, :cond_9f

    if-eq p1, v3, :cond_9f

    if-eq p1, v2, :cond_9f

    if-ne p1, v10, :cond_97

    goto :goto_9f

    .line 4736
    :cond_97
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "scan new error"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4734
    :cond_9f
    :goto_9f
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 4720
    :cond_a2
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4715
    :cond_a8
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4678
    :cond_ae
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "error parse null or new"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final scanNumber()V
    .registers 10

    .line 5132
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 5134
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2d

    const/4 v2, 0x1

    if-ne v0, v1, :cond_13

    .line 5135
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5136
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5140
    :cond_13
    :goto_13
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x39

    const/16 v4, 0x30

    if-lt v0, v4, :cond_26

    if-gt v0, v3, :cond_26

    .line 5141
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5145
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_13

    :cond_26
    const/4 v0, 0x0

    .line 5150
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_45

    .line 5151
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5152
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5156
    :goto_35
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v0, v4, :cond_44

    if-gt v0, v3, :cond_44

    .line 5157
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5161
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_35

    :cond_44
    const/4 v0, 0x1

    .line 5165
    :cond_45
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const v6, 0xffff

    if-gt v5, v6, :cond_cf

    .line 5169
    iget-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v7, 0x4c

    if-ne v6, v7, :cond_59

    add-int/2addr v5, v2

    .line 5170
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5171
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_8e

    :cond_59
    const/16 v7, 0x53

    if-ne v6, v7, :cond_64

    add-int/2addr v5, v2

    .line 5173
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5174
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_8e

    :cond_64
    const/16 v7, 0x42

    if-ne v6, v7, :cond_6f

    add-int/2addr v5, v2

    .line 5176
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5177
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_8e

    :cond_6f
    const/16 v7, 0x46

    if-ne v6, v7, :cond_7a

    add-int/2addr v5, v2

    .line 5179
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5180
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_c5

    :cond_7a
    const/16 v8, 0x44

    if-ne v6, v8, :cond_85

    add-int/2addr v5, v2

    .line 5183
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5184
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_c5

    :cond_85
    const/16 v5, 0x65

    if-eq v6, v5, :cond_90

    const/16 v5, 0x45

    if-ne v6, v5, :cond_8e

    goto :goto_90

    :cond_8e
    :goto_8e
    move v2, v0

    goto :goto_c5

    .line 5187
    :cond_90
    :goto_90
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5188
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5190
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v5, 0x2b

    if-eq v0, v5, :cond_a0

    if-ne v0, v1, :cond_a8

    .line 5191
    :cond_a0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5192
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5196
    :cond_a8
    :goto_a8
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v0, v4, :cond_b7

    if-gt v0, v3, :cond_b7

    .line 5197
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5201
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_a8

    .line 5204
    :cond_b7
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v8, :cond_bd

    if-ne v0, v7, :cond_c5

    .line 5205
    :cond_bd
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5206
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    :cond_c5
    :goto_c5
    if-eqz v2, :cond_cb

    const/4 v0, 0x3

    .line 5213
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_ce

    :cond_cb
    const/4 v0, 0x2

    .line 5215
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    :goto_ce
    return-void

    .line 5166
    :cond_cf
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scanNumber overflow"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_d8

    :goto_d7
    throw v0

    :goto_d8
    goto :goto_d7
.end method

.method public scanString(C)Ljava/lang/String;
    .registers 14

    const/4 v0, 0x0

    .line 1336
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1339
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/16 v5, 0x6e

    if-ne v1, v5, :cond_53

    .line 1342
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x75

    const/4 v5, 0x0

    if-ne v0, v1, :cond_50

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v4

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_50

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_50

    .line 1344
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_4d

    .line 1351
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1352
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1353
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    .line 1356
    :cond_4d
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    .line 1346
    :cond_50
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    :cond_53
    const/4 v5, 0x1

    :goto_54
    const/16 v6, 0x22

    if-ne v1, v6, :cond_e6

    .line 1364
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v5

    .line 1365
    invoke-virtual {p0, v6, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v7

    if-eq v7, v3, :cond_de

    .line 1370
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v8, v5

    sub-int v9, v7, v1

    invoke-virtual {p0, v8, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x5c

    .line 1371
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-eq v10, v3, :cond_9b

    :goto_72
    add-int/lit8 v8, v7, -0x1

    const/4 v10, 0x0

    :goto_75
    if-ltz v8, :cond_82

    .line 1375
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    if-ne v11, v9, :cond_82

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_75

    .line 1381
    :cond_82
    rem-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_94

    sub-int v0, v7, v1

    .line 1388
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v4

    invoke-virtual {p0, v6, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v6

    .line 1390
    invoke-static {v6, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v8

    goto :goto_9b

    :cond_94
    add-int/lit8 v7, v7, 0x1

    .line 1384
    invoke-virtual {p0, v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v7

    goto :goto_72

    :cond_9b
    :goto_9b
    sub-int/2addr v7, v1

    add-int/2addr v7, v4

    add-int/2addr v5, v7

    .line 1394
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v5, 0x1

    add-int/2addr v0, v5

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    :goto_a7
    if-ne v0, p1, :cond_bb

    .line 1409
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1410
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1411
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 p1, 0x10

    .line 1412
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v8

    .line 1414
    :cond_bb
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 1415
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v1, v4

    goto :goto_a7

    :cond_cc
    const/16 p1, 0x5d

    if-ne v0, p1, :cond_dd

    .line 1419
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1420
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1421
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    :cond_dd
    return-object v8

    .line 1367
    :cond_de
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "unclosed str"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1397
    :cond_e6
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 1398
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v1, v5

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v5, v6

    goto/16 :goto_54

    .line 1401
    :cond_f8
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1403
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final scanString()V
    .registers 13

    .line 879
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v0, 0x0

    .line 880
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 883
    :goto_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x22

    if-ne v1, v3, :cond_19

    .line 1018
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1019
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    return-void

    :cond_19
    const-string v4, "unclosed string : "

    const/16 v5, 0x1a

    if-ne v1, v5, :cond_3e

    .line 890
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v2

    if-nez v2, :cond_29

    .line 891
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_7

    .line 894
    :cond_29
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    const/16 v5, 0x5c

    const/4 v6, 0x1

    if-ne v1, v5, :cond_19e

    .line 898
    iget-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    const/4 v7, 0x2

    if-nez v1, :cond_6c

    .line 899
    iput-boolean v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 901
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v9, v8

    if-lt v1, v9, :cond_62

    .line 902
    array-length v8, v8

    mul-int/lit8 v8, v8, 0x2

    if-le v1, v8, :cond_57

    goto :goto_58

    :cond_57
    move v1, v8

    .line 906
    :goto_58
    new-array v1, v1, [C

    .line 907
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v9, v8

    invoke-static {v8, v0, v1, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 908
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 911
    :cond_62
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v1, v6

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-virtual {p0, v1, v8, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->copyTo(II[C)V

    .line 916
    :cond_6c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    if-eq v1, v3, :cond_199

    const/16 v3, 0x27

    if-eq v1, v3, :cond_194

    const/16 v3, 0x46

    if-eq v1, v3, :cond_18d

    if-eq v1, v5, :cond_188

    const/16 v5, 0x62

    if-eq v1, v5, :cond_181

    const/16 v5, 0x66

    if-eq v1, v5, :cond_18d

    const/16 v8, 0x6e

    if-eq v1, v8, :cond_17a

    const/16 v8, 0x72

    if-eq v1, v8, :cond_173

    const/16 v8, 0x78

    const/16 v9, 0x10

    if-eq v1, v8, :cond_119

    const/4 v3, 0x3

    packed-switch v1, :pswitch_data_1be

    packed-switch v1, :pswitch_data_1d4

    .line 1000
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1001
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b0
    const/16 v1, 0xb

    .line 953
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 992
    :pswitch_b7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 993
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    .line 994
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v5

    .line 995
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v8

    .line 996
    new-instance v10, Ljava/lang/String;

    new-array v2, v2, [C

    aput-char v1, v2, v0

    aput-char v4, v2, v6

    aput-char v5, v2, v7

    aput-char v8, v2, v3

    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v10, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    .line 997
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :pswitch_e0
    const/16 v1, 0x9

    .line 947
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :pswitch_e7
    const/4 v1, 0x7

    .line 941
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :pswitch_ed
    const/4 v1, 0x6

    .line 938
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :pswitch_f3
    const/4 v1, 0x5

    .line 935
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 932
    :pswitch_f9
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 929
    :pswitch_fe
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 926
    :pswitch_103
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 923
    :pswitch_108
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 920
    :pswitch_10d
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :pswitch_112
    const/16 v1, 0x2f

    .line 969
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 975
    :cond_119
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 976
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v2

    const/16 v4, 0x41

    const/16 v7, 0x39

    const/16 v8, 0x61

    const/16 v10, 0x30

    if-lt v1, v10, :cond_12d

    if-le v1, v7, :cond_135

    :cond_12d
    if-lt v1, v8, :cond_131

    if-le v1, v5, :cond_135

    :cond_131
    if-lt v1, v4, :cond_137

    if-gt v1, v3, :cond_137

    :cond_135
    const/4 v11, 0x1

    goto :goto_138

    :cond_137
    const/4 v11, 0x0

    :goto_138
    if-lt v2, v10, :cond_13c

    if-le v2, v7, :cond_146

    :cond_13c
    if-lt v2, v8, :cond_140

    if-le v2, v5, :cond_146

    :cond_140
    if-lt v2, v4, :cond_145

    if-gt v2, v3, :cond_145

    goto :goto_146

    :cond_145
    const/4 v6, 0x0

    :cond_146
    :goto_146
    if-eqz v11, :cond_159

    if-eqz v6, :cond_159

    .line 988
    sget-object v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v1, v3, v1

    mul-int/lit8 v1, v1, 0x10

    aget v2, v3, v2

    add-int/2addr v1, v2

    int-to-char v1, v1

    .line 989
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 985
    :cond_159
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid escape character \\x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_173
    const/16 v1, 0xd

    .line 960
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :cond_17a
    const/16 v1, 0xa

    .line 950
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :cond_181
    const/16 v1, 0x8

    .line 944
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 972
    :cond_188
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :cond_18d
    const/16 v1, 0xc

    .line 957
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 966
    :cond_194
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 963
    :cond_199
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 1006
    :cond_19e
    iget-boolean v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v2, :cond_1a9

    .line 1007
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_7

    .line 1011
    :cond_1a9
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v4, v3

    if-ne v2, v4, :cond_1b5

    .line 1012
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :cond_1b5
    add-int/lit8 v4, v2, 0x1

    .line 1014
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v1, v3, v2

    goto/16 :goto_7

    nop

    :pswitch_data_1be
    .packed-switch 0x2f
        :pswitch_112
        :pswitch_10d
        :pswitch_108
        :pswitch_103
        :pswitch_fe
        :pswitch_f9
        :pswitch_f3
        :pswitch_ed
        :pswitch_e7
    .end packed-switch

    :pswitch_data_1d4
    .packed-switch 0x74
        :pswitch_e0
        :pswitch_b7
        :pswitch_b0
    .end packed-switch
.end method

.method public scanStringArray(Ljava/util/Collection;C)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;C)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 1806
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1809
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x75

    const/16 v6, 0x6e

    const/4 v7, 0x3

    const/16 v8, 0x6c

    const/4 v9, 0x2

    if-ne v4, v6, :cond_55

    .line 1811
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x1

    .line 1812
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    if-ne v10, v5, :cond_55

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 1813
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_55

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v10, v9

    .line 1814
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_55

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v10, v7

    .line 1815
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    if-ne v10, v2, :cond_55

    .line 1817
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v2, 0x5

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1818
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1819
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-void

    :cond_55
    const/16 v10, 0x5b

    const/4 v11, -0x1

    if-eq v4, v10, :cond_5d

    .line 1824
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-void

    .line 1828
    :cond_5d
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/4 v10, 0x2

    :goto_66
    const/16 v12, 0x5d

    if-ne v4, v6, :cond_99

    .line 1831
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v10

    .line 1832
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    if-ne v13, v5, :cond_99

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v10

    add-int/lit8 v13, v13, 0x1

    .line 1833
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    if-ne v13, v8, :cond_99

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v10

    add-int/2addr v13, v9

    .line 1834
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    if-ne v13, v8, :cond_99

    add-int/lit8 v10, v10, 0x3

    .line 1836
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v13, v10, 0x1

    add-int/2addr v4, v10

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/4 v10, 0x0

    .line 1837
    invoke-interface {v1, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10c

    :cond_99
    if-ne v4, v12, :cond_ac

    .line 1838
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v13

    if-nez v13, :cond_ac

    .line 1839
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v10, 0x1

    add-int/2addr v1, v10

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    goto/16 :goto_12b

    :cond_ac
    const/16 v13, 0x22

    if-eq v4, v13, :cond_b3

    .line 1842
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-void

    .line 1845
    :cond_b3
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v10

    .line 1846
    invoke-virtual {v0, v13, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v14

    if-eq v14, v11, :cond_141

    .line 1851
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v15, v10

    sub-int v3, v14, v4

    invoke-virtual {v0, v15, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v3

    const/16 v15, 0x5c

    .line 1852
    invoke-virtual {v3, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v11, :cond_fa

    :goto_cd
    add-int/lit8 v3, v14, -0x1

    const/4 v5, 0x0

    :goto_d0
    if-ltz v3, :cond_df

    .line 1856
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    if-ne v6, v15, :cond_df

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, -0x1

    const/16 v6, 0x6e

    goto :goto_d0

    .line 1862
    :cond_df
    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_f1

    sub-int v3, v14, v4

    .line 1869
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v10

    invoke-virtual {v0, v4, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v4

    .line 1871
    invoke-static {v4, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v3

    goto :goto_fa

    :cond_f1
    add-int/lit8 v14, v14, 0x1

    .line 1865
    invoke-virtual {v0, v13, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v14

    const/16 v6, 0x6e

    goto :goto_cd

    .line 1874
    :cond_fa
    :goto_fa
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v5, v4, v10

    sub-int/2addr v14, v5

    add-int/lit8 v14, v14, 0x1

    add-int/2addr v10, v14

    add-int/lit8 v13, v10, 0x1

    add-int/2addr v4, v10

    .line 1875
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .line 1876
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_10c
    const/16 v3, 0x2c

    if-ne v4, v3, :cond_120

    .line 1880
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v13, 0x1

    add-int/2addr v3, v13

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/4 v3, 0x0

    const/16 v5, 0x75

    const/16 v6, 0x6e

    goto/16 :goto_66

    :cond_120
    if-ne v4, v12, :cond_13e

    .line 1885
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v13, 0x1

    add-int/2addr v1, v13

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    :goto_12b
    if-ne v1, v2, :cond_13b

    .line 1894
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1895
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1896
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-void

    .line 1899
    :cond_13b
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-void

    .line 1889
    :cond_13e
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-void

    .line 1848
    :cond_141
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "unclosed str"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_14a

    :goto_149
    throw v1

    :goto_14a
    goto :goto_149
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .registers 6

    .line 598
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 600
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_e

    .line 601
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_e
    const-string v1, "syntax error"

    const/16 v2, 0x27

    if-ne v0, v2, :cond_27

    .line 605
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 609
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 606
    :cond_21
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    const/16 v2, 0x7d

    const/4 v3, 0x0

    if-ne v0, v2, :cond_34

    .line 613
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 p1, 0xd

    .line 614
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v3

    :cond_34
    const/16 v2, 0x2c

    if-ne v0, v2, :cond_40

    .line 619
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 p1, 0x10

    .line 620
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v3

    :cond_40
    const/16 v2, 0x1a

    if-ne v0, v2, :cond_49

    const/16 p1, 0x14

    .line 625
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v3

    .line 629
    :cond_49
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 633
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 630
    :cond_56
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .registers 16

    .line 643
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v0, 0x0

    .line 644
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 648
    :goto_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ne v3, p2, :cond_32

    .line 792
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-nez v1, :cond_24

    .line 798
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1c

    const/4 p2, 0x0

    goto :goto_1d

    :cond_1c
    add-int/2addr p2, v5

    .line 803
    :goto_1d
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, p2, v1, v2, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2c

    .line 805
    :cond_24
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object p1

    .line 808
    :goto_2c
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 809
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-object p1

    :cond_32
    const/16 v6, 0x1a

    if-eq v3, v6, :cond_1a4

    const/16 v6, 0x5c

    if-ne v3, v6, :cond_184

    const/4 v3, 0x2

    if-nez v1, :cond_60

    .line 662
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v8, v7

    if-lt v1, v8, :cond_55

    .line 663
    array-length v7, v7

    mul-int/lit8 v7, v7, 0x2

    if-le v1, v7, :cond_4a

    goto :goto_4b

    :cond_4a
    move v1, v7

    .line 667
    :goto_4b
    new-array v1, v1, [C

    .line 668
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v8, v7

    invoke-static {v7, v0, v1, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 669
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 674
    :cond_55
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v1, v5

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, v1, v7, v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->arrayCopy(I[CII)V

    const/4 v1, 0x1

    .line 677
    :cond_60
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v7

    const/16 v8, 0x22

    if-eq v7, v8, :cond_17c

    const/16 v8, 0x27

    if-eq v7, v8, :cond_174

    const/16 v8, 0x46

    if-eq v7, v8, :cond_16a

    if-eq v7, v6, :cond_162

    const/16 v6, 0x62

    if-eq v7, v6, :cond_158

    const/16 v6, 0x66

    if-eq v7, v6, :cond_16a

    const/16 v6, 0x6e

    if-eq v7, v6, :cond_14e

    const/16 v6, 0x72

    if-eq v7, v6, :cond_144

    const/16 v6, 0x78

    const/16 v8, 0x10

    if-eq v7, v6, :cond_126

    const/4 v6, 0x3

    packed-switch v7, :pswitch_data_1ae

    packed-switch v7, :pswitch_data_1c4

    .line 772
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 773
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "unclosed.str.lit"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_99
    mul-int/lit8 v2, v2, 0x1f

    const/16 v3, 0xb

    add-int/2addr v2, v3

    .line 726
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    .line 763
    :pswitch_a3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v7

    .line 764
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    .line 765
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v10

    .line 766
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v11

    .line 767
    new-instance v12, Ljava/lang/String;

    new-array v4, v4, [C

    aput-char v7, v4, v0

    aput-char v9, v4, v5

    aput-char v10, v4, v3

    aput-char v11, v4, v6

    invoke-direct {v12, v4}, Ljava/lang/String;-><init>([C)V

    invoke-static {v12, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v3

    int-to-char v3, v3

    .line 769
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :pswitch_cf
    mul-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x9

    add-int/2addr v2, v3

    .line 718
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :pswitch_d9
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v7

    const/4 v3, 0x7

    .line 710
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :pswitch_e2
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v7

    const/4 v3, 0x6

    .line 706
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :pswitch_eb
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v7

    const/4 v3, 0x5

    .line 702
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :pswitch_f4
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v7

    .line 698
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :pswitch_fc
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v7

    .line 694
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :pswitch_104
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v7

    .line 690
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :pswitch_10c
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v7

    .line 686
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :pswitch_114
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v7

    .line 682
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :pswitch_11c
    mul-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x2f

    add-int/2addr v2, v3

    .line 747
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    .line 754
    :cond_126
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 755
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 757
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v3, v5, v3

    mul-int/lit8 v3, v3, 0x10

    aget v4, v5, v4

    add-int/2addr v3, v4

    int-to-char v3, v3

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v3

    .line 760
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :cond_144
    mul-int/lit8 v2, v2, 0x1f

    const/16 v3, 0xd

    add-int/2addr v2, v3

    .line 735
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :cond_14e
    mul-int/lit8 v2, v2, 0x1f

    const/16 v3, 0xa

    add-int/2addr v2, v3

    .line 722
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :cond_158
    mul-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x8

    add-int/2addr v2, v3

    .line 714
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :cond_162
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v6

    .line 751
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :cond_16a
    mul-int/lit8 v2, v2, 0x1f

    const/16 v3, 0xc

    add-int/2addr v2, v3

    .line 731
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :cond_174
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v8

    .line 743
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :cond_17c
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v8

    .line 739
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :cond_184
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v3

    if-nez v1, :cond_190

    .line 781
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_9

    .line 785
    :cond_190
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v6, v5

    if-ne v4, v6, :cond_19c

    .line 786
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :cond_19c
    add-int/lit8 v6, v4, 0x1

    .line 788
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v3, v5, v4

    goto/16 :goto_9

    .line 655
    :cond_1a4
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "unclosed.str"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_1ad

    :goto_1ac
    throw p1

    :goto_1ad
    goto :goto_1ac

    :pswitch_data_1ae
    .packed-switch 0x2f
        :pswitch_11c
        :pswitch_114
        :pswitch_10c
        :pswitch_104
        :pswitch_fc
        :pswitch_f4
        :pswitch_eb
        :pswitch_e2
        :pswitch_d9
    .end packed-switch

    :pswitch_data_1c4
    .packed-switch 0x74
        :pswitch_cf
        :pswitch_a3
        :pswitch_99
    .end packed-switch
.end method

.method public final scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .registers 7

    .line 823
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    if-nez v0, :cond_10

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    if-ne v0, v2, :cond_10

    .line 824
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 826
    :cond_10
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    .line 827
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 829
    array-length v4, v0

    if-ge v3, v4, :cond_1b

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_1c

    :cond_1b
    const/4 v1, 0x1

    :cond_1c
    if-eqz v1, :cond_91

    .line 835
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    .line 839
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 840
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 843
    :goto_26
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 845
    array-length v4, v0

    if-ge v1, v4, :cond_88

    .line 846
    aget-boolean v4, v0, v1

    if-nez v4, :cond_88

    .line 857
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v0, 0x12

    .line 858
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 861
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_74

    const v0, 0x33c587

    if-ne v3, v0, :cond_74

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_74

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x75

    if-ne v0, v1, :cond_74

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_74

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x3

    .line 862
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_74

    const/4 p1, 0x0

    return-object p1

    :cond_74
    if-nez p1, :cond_7f

    .line 869
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 872
    :cond_7f
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, v0, v1, v3, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_88
    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v1

    .line 853
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto :goto_26

    .line 831
    :cond_91
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal identifier : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 832
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_b2

    :goto_b1
    throw p1

    :goto_b2
    goto :goto_b1
.end method

.method public scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    .line 1580
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1583
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/16 v6, 0x6e

    if-ne v1, v6, :cond_53

    .line 1586
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v5

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v0, 0x75

    if-ne p1, v0, :cond_50

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v5

    add-int/2addr p1, v5

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v0, 0x6c

    if-ne p1, v0, :cond_50

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v5

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v0, :cond_50

    .line 1588
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, p2, :cond_4d

    .line 1595
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1596
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1597
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v3

    .line 1600
    :cond_4d
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v3

    .line 1590
    :cond_50
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v3

    :cond_53
    const/16 v6, 0x22

    if-eq v1, v6, :cond_5a

    .line 1606
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v3

    :cond_5a
    const/4 v1, 0x1

    .line 1614
    :goto_5b
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v1, 0x1

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_9f

    .line 1618
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x0

    add-int/2addr v3, v5

    add-int/2addr v1, v8

    sub-int/2addr v1, v3

    sub-int/2addr v1, v5

    .line 1620
    invoke-virtual {p0, v3, v1, v0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object p1

    .line 1621
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v8, 0x1

    add-int/2addr v0, v8

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    :goto_7b
    if-ne v0, p2, :cond_8b

    .line 1635
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1636
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p2

    iput-char p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1637
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object p1

    .line 1640
    :cond_8b
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 1641
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v1, v3

    goto :goto_7b

    .line 1645
    :cond_9c
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object p1

    :cond_9f
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    const/16 v7, 0x5c

    if-ne v1, v7, :cond_a9

    .line 1628
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v3

    :cond_a9
    move v1, v8

    goto :goto_5b
.end method

.method public final scanTrue()V
    .registers 4

    .line 4634
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const-string v1, "error parse true"

    const/16 v2, 0x74

    if-ne v0, v2, :cond_77

    .line 4637
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4639
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x72

    if-ne v0, v2, :cond_71

    .line 4642
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4644
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x75

    if-ne v0, v2, :cond_6b

    .line 4647
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4649
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x65

    if-ne v0, v2, :cond_65

    .line 4652
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4654
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_61

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_61

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_61

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_61

    const/16 v1, 0xa

    if-eq v0, v1, :cond_61

    const/16 v1, 0xd

    if-eq v0, v1, :cond_61

    const/16 v1, 0x9

    if-eq v0, v1, :cond_61

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_61

    const/16 v1, 0xc

    if-eq v0, v1, :cond_61

    const/16 v1, 0x8

    if-eq v0, v1, :cond_61

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_61

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_59

    goto :goto_61

    .line 4668
    :cond_59
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    :goto_61
    const/4 v0, 0x6

    .line 4666
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 4650
    :cond_65
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4645
    :cond_6b
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4640
    :cond_71
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4635
    :cond_77
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanType(Ljava/lang/String;)I
    .registers 8

    const/4 v0, 0x0

    .line 1123
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1125
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 p1, -0x2

    return p1

    .line 1129
    :cond_d
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    array-length v2, v2

    add-int/2addr v1, v2

    .line 1131
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_17
    const/4 v3, -0x1

    if-ge v0, v2, :cond_2a

    .line 1133
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v5, v1, v0

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_27

    return v3

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2a
    add-int/2addr v1, v2

    .line 1138
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v0, 0x22

    if-eq p1, v0, :cond_34

    return v3

    :cond_34
    add-int/lit8 v1, v1, 0x1

    .line 1142
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v0, 0x10

    const/16 v2, 0x2c

    if-ne p1, v2, :cond_50

    add-int/lit8 v1, v1, 0x1

    .line 1145
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1146
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1147
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/4 p1, 0x3

    return p1

    :cond_50
    const/16 v4, 0x7d

    if-ne p1, v4, :cond_96

    add-int/lit8 v1, v1, 0x1

    .line 1150
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne p1, v2, :cond_69

    .line 1152
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    add-int/lit8 v1, v1, 0x1

    .line 1153
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_91

    :cond_69
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_7a

    const/16 p1, 0xf

    .line 1155
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    add-int/lit8 v1, v1, 0x1

    .line 1156
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_91

    :cond_7a
    if-ne p1, v4, :cond_89

    const/16 p1, 0xd

    .line 1158
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    add-int/lit8 v1, v1, 0x1

    .line 1159
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_91

    :cond_89
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_95

    const/16 p1, 0x14

    .line 1161
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    :goto_91
    const/4 p1, 0x4

    .line 1165
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_96

    :cond_95
    return v3

    .line 1168
    :cond_96
    :goto_96
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1169
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return p1
.end method

.method public scanTypeName(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public scanUUID(C)Ljava/util/UUID;
    .registers 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 4431
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4436
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    const/16 v5, 0x22

    const/4 v7, -0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v2, v5, :cond_1e8

    .line 4440
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v10

    .line 4441
    invoke-virtual {v0, v5, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v2

    if-eq v2, v7, :cond_1e0

    .line 4446
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v10

    sub-int v11, v2, v5

    const/16 v12, 0x24

    const/16 v15, 0x46

    const/4 v1, -0x2

    const/16 v13, 0x66

    const/16 v14, 0x39

    const/16 v4, 0x41

    const/16 v7, 0x61

    const/16 v6, 0x30

    if-ne v11, v12, :cond_14f

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    :goto_38
    const/16 v10, 0x8

    if-ge v11, v10, :cond_68

    add-int v10, v5, v11

    .line 4451
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_49

    if-gt v10, v14, :cond_49

    add-int/lit8 v10, v10, -0x30

    goto :goto_59

    :cond_49
    if-lt v10, v7, :cond_52

    if-gt v10, v13, :cond_52

    add-int/lit8 v10, v10, -0x61

    :goto_4f
    add-int/lit8 v10, v10, 0xa

    goto :goto_59

    :cond_52
    if-lt v10, v4, :cond_65

    if-gt v10, v15, :cond_65

    add-int/lit8 v10, v10, -0x41

    goto :goto_4f

    :goto_59
    shl-long v18, v18, v8

    int-to-long v12, v10

    or-long v18, v18, v12

    add-int/lit8 v11, v11, 0x1

    const/16 v12, 0x24

    const/16 v13, 0x66

    goto :goto_38

    .line 4460
    :cond_65
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v9

    :cond_68
    const/16 v10, 0x9

    :goto_6a
    if-ge v10, v3, :cond_9a

    add-int v11, v5, v10

    .line 4468
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_79

    if-gt v11, v14, :cond_79

    add-int/lit8 v11, v11, -0x30

    goto :goto_8b

    :cond_79
    if-lt v11, v7, :cond_84

    const/16 v12, 0x66

    if-gt v11, v12, :cond_84

    add-int/lit8 v11, v11, -0x61

    :goto_81
    add-int/lit8 v11, v11, 0xa

    goto :goto_8b

    :cond_84
    if-lt v11, v4, :cond_97

    if-gt v11, v15, :cond_97

    add-int/lit8 v11, v11, -0x41

    goto :goto_81

    :goto_8b
    shl-long v12, v18, v8

    int-to-long v3, v11

    or-long v18, v12, v3

    add-int/lit8 v10, v10, 0x1

    const/16 v3, 0xd

    const/16 v4, 0x41

    goto :goto_6a

    .line 4477
    :cond_97
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v9

    :cond_9a
    const/16 v3, 0xe

    move-wide/from16 v10, v18

    :goto_9e
    const/16 v4, 0x12

    if-ge v3, v4, :cond_cc

    add-int v4, v5, v3

    .line 4485
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_af

    if-gt v4, v14, :cond_af

    add-int/lit8 v4, v4, -0x30

    goto :goto_c3

    :cond_af
    if-lt v4, v7, :cond_ba

    const/16 v12, 0x66

    if-gt v4, v12, :cond_ba

    add-int/lit8 v4, v4, -0x61

    :goto_b7
    add-int/lit8 v4, v4, 0xa

    goto :goto_c3

    :cond_ba
    const/16 v12, 0x41

    if-lt v4, v12, :cond_c9

    if-gt v4, v15, :cond_c9

    add-int/lit8 v4, v4, -0x41

    goto :goto_b7

    :goto_c3
    shl-long/2addr v10, v8

    int-to-long v12, v4

    or-long/2addr v10, v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_9e

    .line 4494
    :cond_c9
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v9

    :cond_cc
    const/16 v3, 0x13

    const-wide/16 v16, 0x0

    :goto_d0
    const/16 v4, 0x17

    if-ge v3, v4, :cond_103

    add-int v4, v5, v3

    .line 4502
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_e1

    if-gt v4, v14, :cond_e1

    add-int/lit8 v4, v4, -0x30

    goto :goto_f5

    :cond_e1
    if-lt v4, v7, :cond_ec

    const/16 v12, 0x66

    if-gt v4, v12, :cond_ec

    add-int/lit8 v4, v4, -0x61

    :goto_e9
    add-int/lit8 v4, v4, 0xa

    goto :goto_f5

    :cond_ec
    const/16 v12, 0x41

    if-lt v4, v12, :cond_100

    if-gt v4, v15, :cond_100

    add-int/lit8 v4, v4, -0x41

    goto :goto_e9

    :goto_f5
    shl-long v12, v16, v8

    int-to-long v7, v4

    or-long v16, v12, v7

    add-int/lit8 v3, v3, 0x1

    const/16 v7, 0x61

    const/4 v8, 0x4

    goto :goto_d0

    .line 4511
    :cond_100
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v9

    :cond_103
    const/16 v3, 0x18

    move-wide/from16 v7, v16

    const/16 v4, 0x24

    :goto_109
    if-ge v3, v4, :cond_138

    add-int v12, v5, v3

    .line 4519
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_119

    if-gt v12, v14, :cond_119

    add-int/lit8 v12, v12, -0x30

    :goto_117
    const/4 v13, 0x4

    goto :goto_12f

    :cond_119
    const/16 v13, 0x61

    if-lt v12, v13, :cond_126

    const/16 v13, 0x66

    if-gt v12, v13, :cond_126

    add-int/lit8 v12, v12, -0x61

    :goto_123
    add-int/lit8 v12, v12, 0xa

    goto :goto_117

    :cond_126
    const/16 v13, 0x41

    if-lt v12, v13, :cond_135

    if-gt v12, v15, :cond_135

    add-int/lit8 v12, v12, -0x41

    goto :goto_123

    :goto_12f
    shl-long/2addr v7, v13

    int-to-long v12, v12

    or-long/2addr v7, v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_109

    .line 4528
    :cond_135
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v9

    .line 4535
    :cond_138
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v10, v11, v7, v8}, Ljava/util/UUID;-><init>(JJ)V

    .line 4537
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    sub-int/2addr v2, v4

    const/4 v4, 0x1

    add-int/2addr v2, v4

    add-int v10, v4, v2

    add-int/lit8 v2, v10, 0x1

    add-int/2addr v3, v10

    .line 4538
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    goto/16 :goto_218

    :cond_14f
    const/16 v3, 0x20

    if-ne v11, v3, :cond_1dc

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    :goto_156
    const/16 v10, 0x10

    if-ge v4, v10, :cond_187

    add-int v10, v5, v4

    .line 4542
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_168

    if-gt v10, v14, :cond_168

    add-int/lit8 v10, v10, -0x30

    :goto_166
    const/4 v11, 0x4

    goto :goto_17e

    :cond_168
    const/16 v11, 0x61

    if-lt v10, v11, :cond_175

    const/16 v11, 0x66

    if-gt v10, v11, :cond_175

    add-int/lit8 v10, v10, -0x61

    :goto_172
    add-int/lit8 v10, v10, 0xa

    goto :goto_166

    :cond_175
    const/16 v11, 0x41

    if-lt v10, v11, :cond_184

    if-gt v10, v15, :cond_184

    add-int/lit8 v10, v10, -0x41

    goto :goto_172

    :goto_17e
    shl-long/2addr v7, v11

    int-to-long v10, v10

    or-long/2addr v7, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_156

    .line 4551
    :cond_184
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v9

    :cond_187
    const/16 v10, 0x10

    const-wide/16 v11, 0x0

    :goto_18b
    if-ge v10, v3, :cond_1c6

    add-int v4, v5, v10

    .line 4559
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_1a0

    if-gt v4, v14, :cond_1a0

    add-int/lit8 v4, v4, -0x30

    const/16 v3, 0x41

    const/16 v13, 0x61

    :goto_19d
    const/16 v16, 0x4

    goto :goto_1ba

    :cond_1a0
    const/16 v13, 0x61

    if-lt v4, v13, :cond_1af

    const/16 v3, 0x66

    if-gt v4, v3, :cond_1af

    add-int/lit8 v4, v4, -0x61

    add-int/lit8 v4, v4, 0xa

    const/16 v3, 0x41

    goto :goto_19d

    :cond_1af
    const/16 v3, 0x41

    if-lt v4, v3, :cond_1c3

    if-gt v4, v15, :cond_1c3

    add-int/lit8 v4, v4, -0x41

    add-int/lit8 v4, v4, 0xa

    goto :goto_19d

    :goto_1ba
    shl-long v11, v11, v16

    int-to-long v3, v4

    or-long/2addr v11, v3

    add-int/lit8 v10, v10, 0x1

    const/16 v3, 0x20

    goto :goto_18b

    .line 4568
    :cond_1c3
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v9

    .line 4576
    :cond_1c6
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v7, v8, v11, v12}, Ljava/util/UUID;-><init>(JJ)V

    .line 4578
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    sub-int/2addr v2, v4

    const/4 v4, 0x1

    add-int/2addr v2, v4

    add-int v10, v4, v2

    add-int/lit8 v2, v10, 0x1

    add-int/2addr v3, v10

    .line 4579
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    goto :goto_218

    :cond_1dc
    const/4 v1, -0x1

    .line 4581
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v9

    .line 4443
    :cond_1e0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "unclosed str"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1e8
    const/16 v1, 0x6e

    if-ne v2, v1, :cond_292

    .line 4584
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 4585
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_292

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x2

    .line 4586
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_292

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v3, 0x3

    add-int/2addr v1, v3

    .line 4587
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_292

    .line 4589
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move-object v1, v9

    :goto_218
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_22b

    .line 4596
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4597
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v2, 0x3

    .line 4598
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v1

    :cond_22b
    const/16 v5, 0x5d

    if-ne v3, v5, :cond_28e

    .line 4603
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_24b

    const/16 v3, 0x10

    .line 4605
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4606
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4607
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_249
    const/4 v2, 0x4

    goto :goto_287

    :cond_24b
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_25f

    const/16 v2, 0xf

    .line 4609
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4610
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4611
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_249

    :cond_25f
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_273

    const/16 v3, 0xd

    .line 4613
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4614
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4615
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_249

    :cond_273
    const/16 v3, 0x1a

    if-ne v2, v3, :cond_28a

    const/16 v2, 0x14

    .line 4617
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4618
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v3, 0x1

    sub-int/2addr v5, v3

    add-int/2addr v2, v5

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v2, 0x1a

    .line 4619
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_249

    .line 4624
    :goto_287
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v1

    :cond_28a
    const/4 v1, -0x1

    .line 4621
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v9

    :cond_28e
    const/4 v1, -0x1

    .line 4626
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v9

    :cond_292
    const/4 v1, -0x1

    .line 4591
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v9
.end method

.method public seekArrayToItem(I)Z
    .registers 2

    .line 1210
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public seekObjectToField(JZ)I
    .registers 4

    .line 1214
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public seekObjectToField([J)I
    .registers 2

    .line 1218
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public seekObjectToFieldDeepScan(J)I
    .registers 3

    .line 1222
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setFeatures(I)V
    .registers 2

    .line 5345
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 2

    .line 1039
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .registers 2

    .line 1031
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public setToken(I)V
    .registers 2

    .line 95
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void
.end method

.method public skipArray()V
    .registers 2

    .line 1234
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected skipComment()V
    .registers 5

    .line 566
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 567
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_1b

    .line 569
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 570
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0xa

    if-ne v0, v2, :cond_18

    .line 571
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_18
    if-ne v0, v1, :cond_b

    return-void

    :cond_1b
    const/16 v3, 0x2a

    if-ne v0, v3, :cond_38

    .line 578
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 580
    :cond_22
    :goto_22
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v1, :cond_37

    if-ne v0, v3, :cond_33

    .line 582
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 583
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v2, :cond_22

    .line 584
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    .line 590
    :cond_33
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_22

    :cond_37
    return-void

    .line 593
    :cond_38
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "invalid comment"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_41

    :goto_40
    throw v0

    :goto_41
    goto :goto_40
.end method

.method public skipObject()V
    .registers 2

    .line 1226
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public skipObject(Z)V
    .registers 2

    .line 1230
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final skipWhitespace()V
    .registers 4

    .line 4930
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_29

    const/16 v2, 0x20

    if-eq v0, v2, :cond_25

    const/16 v2, 0xd

    if-eq v0, v2, :cond_25

    const/16 v2, 0xa

    if-eq v0, v2, :cond_25

    const/16 v2, 0x9

    if-eq v0, v2, :cond_25

    const/16 v2, 0xc

    if-eq v0, v2, :cond_25

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1f

    goto :goto_25

    :cond_1f
    if-ne v0, v1, :cond_29

    .line 4940
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipComment()V

    goto :goto_0

    .line 4937
    :cond_25
    :goto_25
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    :cond_29
    return-void
.end method

.method public final stringDefaultValue()Ljava/lang/String;
    .registers 2

    .line 413
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public abstract stringVal()Ljava/lang/String;
.end method

.method public abstract subString(II)Ljava/lang/String;
.end method

.method protected abstract sub_chars(II)[C
.end method

.method public final token()I
    .registers 2

    .line 401
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v0
.end method

.method public final tokenName()Ljava/lang/String;
    .registers 2

    .line 405
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
