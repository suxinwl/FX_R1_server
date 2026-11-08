.class public Lcom/alibaba/fastjson/asm/Type;
.super Ljava/lang/Object;


# static fields
.field public static final BOOLEAN_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final BYTE_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final CHAR_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final DOUBLE_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final FLOAT_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final INT_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final LONG_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final SHORT_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final VOID_TYPE:Lcom/alibaba/fastjson/asm/Type;


# instance fields
.field private final buf:[C

.field private final len:I

.field private final off:I

.field protected final sort:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 42
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x56050000

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->VOID_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 47
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const v1, 0x5a000501

    invoke-direct {v0, v4, v2, v1, v4}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->BOOLEAN_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 52
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x2

    const v3, 0x43000601

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->CHAR_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 57
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x3

    const v3, 0x42000501

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->BYTE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 62
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x4

    const v3, 0x53000701

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->SHORT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 67
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x5

    const v3, 0x49000001

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->INT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 72
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x6

    const v3, 0x46020201

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->FLOAT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 77
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x7

    const v3, 0x4a010102    # 2113600.5f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->LONG_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 82
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/16 v1, 0x8

    const v3, 0x44030302

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->DOUBLE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-void
.end method

.method private constructor <init>(I[CII)V
    .registers 5

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p1, p0, Lcom/alibaba/fastjson/asm/Type;->sort:I

    .line 116
    iput-object p2, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    .line 117
    iput p3, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    .line 118
    iput p4, p0, Lcom/alibaba/fastjson/asm/Type;->len:I

    return-void
.end method

.method static getArgumentTypes(Ljava/lang/String;)[Lcom/alibaba/fastjson/asm/Type;
    .registers 9

    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_8
    add-int/lit8 v4, v2, 0x1

    .line 238
    aget-char v2, p0, v2

    const/16 v5, 0x29

    if-ne v2, v5, :cond_32

    .line 250
    new-array v2, v3, [Lcom/alibaba/fastjson/asm/Type;

    const/4 v3, 0x0

    .line 253
    :goto_13
    aget-char v4, p0, v1

    if-eq v4, v5, :cond_31

    .line 254
    invoke-static {p0, v1}, Lcom/alibaba/fastjson/asm/Type;->getType([CI)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v4

    aput-object v4, v2, v3

    .line 255
    aget-object v4, v2, v3

    iget v4, v4, Lcom/alibaba/fastjson/asm/Type;->len:I

    aget-object v6, v2, v3

    iget v6, v6, Lcom/alibaba/fastjson/asm/Type;->sort:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_2b

    const/4 v6, 0x2

    goto :goto_2c

    :cond_2b
    const/4 v6, 0x0

    :goto_2c
    add-int/2addr v4, v6

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_31
    return-object v2

    :cond_32
    const/16 v5, 0x4c

    if-ne v2, v5, :cond_43

    :goto_36
    add-int/lit8 v2, v4, 0x1

    .line 242
    aget-char v4, p0, v4

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_40

    move v4, v2

    goto :goto_36

    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_43
    const/16 v5, 0x5b

    if-eq v2, v5, :cond_49

    add-int/lit8 v3, v3, 0x1

    :cond_49
    move v2, v4

    goto :goto_8
.end method

.method public static getArgumentsAndReturnSizes(Ljava/lang/String;)I
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_3
    add-int/lit8 v3, v1, 0x1

    .line 135
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x29

    const/16 v5, 0x4a

    const/16 v6, 0x44

    if-ne v1, v4, :cond_25

    .line 137
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/4 v1, 0x2

    shl-int/2addr v2, v1

    const/16 v3, 0x56

    if-ne p0, v3, :cond_1d

    const/4 v0, 0x0

    goto :goto_22

    :cond_1d
    if-eq p0, v6, :cond_21

    if-ne p0, v5, :cond_22

    :cond_21
    const/4 v0, 0x2

    :cond_22
    :goto_22
    or-int p0, v2, v0

    return p0

    :cond_25
    const/16 v4, 0x4c

    if-ne v1, v4, :cond_38

    :goto_29
    add-int/lit8 v1, v3, 0x1

    .line 140
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_35

    move v3, v1

    goto :goto_29

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_38
    if-eq v1, v6, :cond_40

    if-ne v1, v5, :cond_3d

    goto :goto_40

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :cond_40
    :goto_40
    add-int/lit8 v2, v2, 0x2

    :goto_42
    move v1, v3

    goto :goto_3
.end method

.method private getDimensions()I
    .registers 4

    const/4 v0, 0x1

    .line 227
    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_f

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return v0
.end method

.method public static getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;
    .registers 2

    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/asm/Type;->getType([CI)Lcom/alibaba/fastjson/asm/Type;

    move-result-object p0

    return-object p0
.end method

.method private static getType([CI)Lcom/alibaba/fastjson/asm/Type;
    .registers 8

    .line 167
    aget-char v0, p0, p1

    const/16 v1, 0x46

    if-eq v0, v1, :cond_72

    const/16 v1, 0x53

    if-eq v0, v1, :cond_6f

    const/16 v1, 0x56

    if-eq v0, v1, :cond_6c

    const/16 v1, 0x49

    if-eq v0, v1, :cond_69

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_66

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_63

    const/16 v1, 0x3b

    const/16 v2, 0x5b

    const/4 v3, 0x1

    if-eq v0, v2, :cond_41

    packed-switch v0, :pswitch_data_76

    const/4 v0, 0x1

    :goto_25
    add-int v2, p1, v0

    .line 201
    aget-char v2, p0, v2

    if-eq v2, v1, :cond_2e

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 204
    :cond_2e
    new-instance v1, Lcom/alibaba/fastjson/asm/Type;

    const/16 v2, 0xa

    add-int/2addr p1, v3

    sub-int/2addr v0, v3

    invoke-direct {v1, v2, p0, p1, v0}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    return-object v1

    .line 185
    :pswitch_38
    sget-object p0, Lcom/alibaba/fastjson/asm/Type;->DOUBLE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object p0

    .line 173
    :pswitch_3b
    sget-object p0, Lcom/alibaba/fastjson/asm/Type;->CHAR_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object p0

    .line 175
    :pswitch_3e
    sget-object p0, Lcom/alibaba/fastjson/asm/Type;->BYTE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object p0

    :cond_41
    const/4 v0, 0x1

    :goto_42
    add-int v4, p1, v0

    .line 188
    aget-char v5, p0, v4

    if-ne v5, v2, :cond_4b

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 191
    :cond_4b
    aget-char v2, p0, v4

    const/16 v4, 0x4c

    if-ne v2, v4, :cond_5a

    :goto_51
    add-int/lit8 v0, v0, 0x1

    add-int v2, p1, v0

    .line 193
    aget-char v2, p0, v2

    if-eq v2, v1, :cond_5a

    goto :goto_51

    .line 197
    :cond_5a
    new-instance v1, Lcom/alibaba/fastjson/asm/Type;

    const/16 v2, 0x9

    add-int/2addr v0, v3

    invoke-direct {v1, v2, p0, p1, v0}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    return-object v1

    .line 171
    :cond_63
    sget-object p0, Lcom/alibaba/fastjson/asm/Type;->BOOLEAN_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object p0

    .line 183
    :cond_66
    sget-object p0, Lcom/alibaba/fastjson/asm/Type;->LONG_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object p0

    .line 179
    :cond_69
    sget-object p0, Lcom/alibaba/fastjson/asm/Type;->INT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object p0

    .line 169
    :cond_6c
    sget-object p0, Lcom/alibaba/fastjson/asm/Type;->VOID_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object p0

    .line 177
    :cond_6f
    sget-object p0, Lcom/alibaba/fastjson/asm/Type;->SHORT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object p0

    .line 181
    :cond_72
    sget-object p0, Lcom/alibaba/fastjson/asm/Type;->FLOAT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object p0

    nop

    :pswitch_data_76
    .packed-switch 0x42
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
    .end packed-switch
.end method


# virtual methods
.method protected getClassName()Ljava/lang/String;
    .registers 5

    .line 262
    iget v0, p0, Lcom/alibaba/fastjson/asm/Type;->sort:I

    packed-switch v0, :pswitch_data_5e

    .line 290
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    iget v3, p0, Lcom/alibaba/fastjson/asm/Type;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 282
    :pswitch_19
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    invoke-direct {p0}, Lcom/alibaba/fastjson/asm/Type;->getDimensions()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/asm/Type;->getType([CI)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-direct {p0}, Lcom/alibaba/fastjson/asm/Type;->getDimensions()I

    move-result v0

    :goto_33
    if-lez v0, :cond_3d

    const-string v2, "[]"

    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_33

    .line 287
    :cond_3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_42
    const-string v0, "double"

    return-object v0

    :pswitch_45
    const-string v0, "long"

    return-object v0

    :pswitch_48
    const-string v0, "float"

    return-object v0

    :pswitch_4b
    const-string v0, "int"

    return-object v0

    :pswitch_4e
    const-string v0, "short"

    return-object v0

    :pswitch_51
    const-string v0, "byte"

    return-object v0

    :pswitch_54
    const-string v0, "char"

    return-object v0

    :pswitch_57
    const-string v0, "boolean"

    return-object v0

    :pswitch_5a
    const-string v0, "void"

    return-object v0

    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_19
    .end packed-switch
.end method

.method getDescriptor()Ljava/lang/String;
    .registers 5

    .line 222
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    iget v3, p0, Lcom/alibaba/fastjson/asm/Type;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .registers 5

    .line 209
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    iget v3, p0, Lcom/alibaba/fastjson/asm/Type;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
