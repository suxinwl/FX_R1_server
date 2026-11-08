.class final Lcom/google/android/exoplayer2/text/ssa/SsaStyle;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;,
        Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;,
        Lcom/google/android/exoplayer2/text/ssa/SsaStyle$SsaBorderStyle;,
        Lcom/google/android/exoplayer2/text/ssa/SsaStyle$SsaAlignment;
    }
.end annotation


# static fields
.field public static final SSA_ALIGNMENT_BOTTOM_CENTER:I = 0x2

.field public static final SSA_ALIGNMENT_BOTTOM_LEFT:I = 0x1

.field public static final SSA_ALIGNMENT_BOTTOM_RIGHT:I = 0x3

.field public static final SSA_ALIGNMENT_MIDDLE_CENTER:I = 0x5

.field public static final SSA_ALIGNMENT_MIDDLE_LEFT:I = 0x4

.field public static final SSA_ALIGNMENT_MIDDLE_RIGHT:I = 0x6

.field public static final SSA_ALIGNMENT_TOP_CENTER:I = 0x8

.field public static final SSA_ALIGNMENT_TOP_LEFT:I = 0x7

.field public static final SSA_ALIGNMENT_TOP_RIGHT:I = 0x9

.field public static final SSA_ALIGNMENT_UNKNOWN:I = -0x1

.field public static final SSA_BORDER_STYLE_BOX:I = 0x3

.field public static final SSA_BORDER_STYLE_OUTLINE:I = 0x1

.field public static final SSA_BORDER_STYLE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SsaStyle"


# instance fields
.field public final alignment:I

.field public final bold:Z

.field public final borderStyle:I

.field public final fontSize:F

.field public final italic:Z

.field public final name:Ljava/lang/String;

.field public final outlineColor:Ljava/lang/Integer;

.field public final primaryColor:Ljava/lang/Integer;

.field public final strikeout:Z

.field public final underline:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;FZZZZI)V
    .registers 11

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->name:Ljava/lang/String;

    .line 144
    iput p2, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->alignment:I

    .line 145
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->primaryColor:Ljava/lang/Integer;

    .line 146
    iput-object p4, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->outlineColor:Ljava/lang/Integer;

    .line 147
    iput p5, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->fontSize:F

    .line 148
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->bold:Z

    .line 149
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->italic:Z

    .line 150
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->underline:Z

    .line 151
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->strikeout:Z

    .line 152
    iput p10, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->borderStyle:I

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .registers 1

    .line 44
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseAlignment(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static fromStyleLine(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;)Lcom/google/android/exoplayer2/text/ssa/SsaStyle;
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "Style:"

    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    const/4 v2, 0x6

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-static {v2, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 159
    array-length v3, v2

    iget v4, v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->length:I

    const-string v5, "SsaStyle"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v3, v4, :cond_41

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 160
    iget v0, v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->length:I

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v8

    array-length v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const-string v0, "Skipping malformed \'Style:\' line (expected %s values, found %s): \'%s\'"

    .line 162
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 168
    :cond_41
    :try_start_41
    new-instance v3, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;

    iget v4, v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->nameIndex:I

    aget-object v4, v2, v4

    .line 169
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget v9, v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->alignmentIndex:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_5d

    iget v9, v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->alignmentIndex:I

    aget-object v9, v2, v9

    .line 171
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseAlignment(Ljava/lang/String;)I

    move-result v9

    goto :goto_5e

    :cond_5d
    const/4 v9, -0x1

    :goto_5e
    iget v11, v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->primaryColorIndex:I

    if-eq v11, v10, :cond_6f

    iget v11, v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->primaryColorIndex:I

    aget-object v11, v2, v11

    .line 174
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_70

    :cond_6f
    move-object v11, v6

    :goto_70
    iget v12, v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->outlineColorIndex:I

    if-eq v12, v10, :cond_81

    iget v12, v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->outlineColorIndex:I

    aget-object v12, v2, v12

    .line 177
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_82

    :cond_81
    move-object v12, v6

    :goto_82
    iget v13, v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->fontSizeIndex:I

    if-eq v13, v10, :cond_93

    iget v13, v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->fontSizeIndex:I

    aget-object v13, v2, v13

    .line 180
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseFontSize(Ljava/lang/String;)F

    move-result v13

    goto :goto_96

    :cond_93
    const v13, -0x800001

    :goto_96
    iget v14, v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->boldIndex:I

    if-eq v14, v10, :cond_aa

    iget v14, v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->boldIndex:I

    aget-object v14, v2, v14

    .line 183
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_aa

    const/4 v14, 0x1

    goto :goto_ab

    :cond_aa
    const/4 v14, 0x0

    :goto_ab
    iget v15, v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->italicIndex:I

    if-eq v15, v10, :cond_bf

    iget v15, v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->italicIndex:I

    aget-object v15, v2, v15

    .line 185
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_bf

    const/4 v15, 0x1

    goto :goto_c0

    :cond_bf
    const/4 v15, 0x0

    :goto_c0
    iget v7, v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->underlineIndex:I

    if-eq v7, v10, :cond_d5

    iget v7, v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->underlineIndex:I

    aget-object v7, v2, v7

    .line 187
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d5

    const/16 v17, 0x1

    goto :goto_d7

    :cond_d5
    const/16 v17, 0x0

    :goto_d7
    iget v7, v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->strikeoutIndex:I

    if-eq v7, v10, :cond_ec

    iget v7, v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->strikeoutIndex:I

    aget-object v7, v2, v7

    .line 189
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ec

    const/16 v16, 0x1

    goto :goto_ee

    :cond_ec
    const/16 v16, 0x0

    :goto_ee
    iget v7, v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->borderStyleIndex:I

    if-eq v7, v10, :cond_ff

    iget v0, v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->borderStyleIndex:I

    aget-object v0, v2, v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseBorderStyle(Ljava/lang/String;)I

    move-result v0

    goto :goto_100

    :cond_ff
    const/4 v0, -0x1

    :goto_100
    move-object v7, v3

    move-object v8, v4

    move-object v10, v11

    move-object v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v17

    move/from16 v17, v0

    invoke-direct/range {v7 .. v17}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;FZZZZI)V
    :try_end_10e
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_10e} :catch_10f

    return-object v3

    :catch_10f
    move-exception v0

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping malformed \'Style:\' line: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v6
.end method

.method private static isValidAlignment(I)Z
    .registers 1

    packed-switch p0, :pswitch_data_8

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private static isValidBorderStyle(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v1, 0x3

    if-eq p0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    return v0
.end method

.method private static parseAlignment(Ljava/lang/String;)I
    .registers 3

    .line 201
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 202
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->isValidAlignment(I)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_c} :catch_f

    if-eqz v1, :cond_f

    return v0

    .line 208
    :catch_f
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring unknown alignment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SsaStyle"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method private static parseBooleanValue(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 303
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_5} :catch_d

    const/4 v1, 0x1

    if-eq p0, v1, :cond_b

    const/4 v2, -0x1

    if-ne p0, v2, :cond_c

    :cond_b
    const/4 v0, 0x1

    :cond_c
    return v0

    :catch_d
    move-exception v1

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse boolean value: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "SsaStyle"

    invoke-static {v2, p0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private static parseBorderStyle(Ljava/lang/String;)I
    .registers 3

    .line 232
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 233
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->isValidBorderStyle(I)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_c} :catch_f

    if-eqz v1, :cond_f

    return v0

    .line 239
    :catch_f
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring unknown BorderStyle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SsaStyle"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static parseColor(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 9

    :try_start_0
    const-string v0, "&H"

    .line 273
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x10

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    .line 275
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    goto :goto_18

    .line 277
    :cond_14
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_18
    const-wide v4, 0xffffffffL

    cmp-long v0, v2, v4

    if-gtz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 279
    :goto_24
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_27} :catch_51

    const/16 p0, 0x18

    shr-long v4, v2, p0

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    xor-long/2addr v4, v6

    .line 285
    invoke-static {v4, v5}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result p0

    shr-long v0, v2, v1

    and-long/2addr v0, v6

    .line 286
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v0

    const/16 v1, 0x8

    shr-long v4, v2, v1

    and-long/2addr v4, v6

    .line 287
    invoke-static {v4, v5}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v1

    and-long/2addr v2, v6

    .line 288
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v2

    .line 289
    invoke-static {p0, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catch_51
    move-exception v0

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse color expression: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SsaStyle"

    invoke-static {v1, p0, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseFontSize(Ljava/lang/String;)F
    .registers 4

    .line 294
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception v0

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse font size: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SsaStyle"

    invoke-static {v1, p0, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const p0, -0x800001

    return p0
.end method
