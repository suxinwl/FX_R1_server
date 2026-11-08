.class final Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/ssa/SsaStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Format"
.end annotation


# instance fields
.field public final alignmentIndex:I

.field public final boldIndex:I

.field public final borderStyleIndex:I

.field public final fontSizeIndex:I

.field public final italicIndex:I

.field public final length:I

.field public final nameIndex:I

.field public final outlineColorIndex:I

.field public final primaryColorIndex:I

.field public final strikeoutIndex:I

.field public final underlineIndex:I


# direct methods
.method private constructor <init>(IIIIIIIIIII)V
    .registers 12

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput p1, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->nameIndex:I

    .line 344
    iput p2, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->alignmentIndex:I

    .line 345
    iput p3, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->primaryColorIndex:I

    .line 346
    iput p4, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->outlineColorIndex:I

    .line 347
    iput p5, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->fontSizeIndex:I

    .line 348
    iput p6, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->boldIndex:I

    .line 349
    iput p7, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->italicIndex:I

    .line 350
    iput p8, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->underlineIndex:I

    .line 351
    iput p9, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->strikeoutIndex:I

    .line 352
    iput p10, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->borderStyleIndex:I

    .line 353
    iput p11, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->length:I

    return-void
.end method

.method public static fromFormatLine(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;
    .registers 18

    const/4 v0, 0x7

    move-object/from16 v1, p0

    .line 374
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    .line 375
    :goto_1a
    array-length v5, v1

    if-ge v4, v5, :cond_b3

    .line 376
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_c2

    goto/16 :goto_96

    :sswitch_30
    const-string v0, "outlinecolour"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    const/4 v0, 0x3

    goto :goto_97

    :sswitch_3a
    const-string v0, "alignment"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    const/4 v0, 0x1

    goto :goto_97

    :sswitch_44
    const-string v0, "borderstyle"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    const/16 v0, 0x9

    goto :goto_97

    :sswitch_4f
    const-string v0, "fontsize"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    const/4 v0, 0x4

    goto :goto_97

    :sswitch_59
    const-string v0, "name"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    const/4 v0, 0x0

    goto :goto_97

    :sswitch_63
    const-string v0, "bold"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    const/4 v0, 0x5

    goto :goto_97

    :sswitch_6d
    const-string v0, "primarycolour"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    const/4 v0, 0x2

    goto :goto_97

    :sswitch_77
    const-string v0, "strikeout"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    const/16 v0, 0x8

    goto :goto_97

    :sswitch_82
    const-string v0, "underline"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    const/4 v0, 0x7

    goto :goto_97

    :sswitch_8c
    const-string v0, "italic"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    const/4 v0, 0x6

    goto :goto_97

    :cond_96
    :goto_96
    const/4 v0, -0x1

    :goto_97
    packed-switch v0, :pswitch_data_ec

    goto :goto_ae

    :pswitch_9b
    move v15, v4

    goto :goto_ae

    :pswitch_9d
    move v14, v4

    goto :goto_ae

    :pswitch_9f
    move v13, v4

    goto :goto_ae

    :pswitch_a1
    move v12, v4

    goto :goto_ae

    :pswitch_a3
    move v11, v4

    goto :goto_ae

    :pswitch_a5
    move v10, v4

    goto :goto_ae

    :pswitch_a7
    move v9, v4

    goto :goto_ae

    :pswitch_a9
    move v8, v4

    goto :goto_ae

    :pswitch_ab
    move v7, v4

    goto :goto_ae

    :pswitch_ad
    move v6, v4

    :goto_ae
    add-int/lit8 v4, v4, 0x1

    const/4 v0, 0x7

    goto/16 :goto_1a

    :cond_b3
    if-eq v6, v3, :cond_bf

    .line 409
    new-instance v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;

    array-length v1, v1

    move-object v5, v0

    move/from16 v16, v1

    invoke-direct/range {v5 .. v16}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;-><init>(IIIIIIIIIII)V

    goto :goto_c0

    :cond_bf
    const/4 v0, 0x0

    :goto_c0
    return-object v0

    nop

    :sswitch_data_c2
    .sparse-switch
        -0x4642c5d0 -> :sswitch_8c
        -0x3d363934 -> :sswitch_82
        -0xb7325a4 -> :sswitch_77
        -0x43a3db2 -> :sswitch_6d
        0x2e3a85 -> :sswitch_63
        0x337a8b -> :sswitch_59
        0x15d92cd0 -> :sswitch_4f
        0x2dbc6505 -> :sswitch_44
        0x695fa1e3 -> :sswitch_3a
        0x76840c8e -> :sswitch_30
    .end sparse-switch

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_ad
        :pswitch_ab
        :pswitch_a9
        :pswitch_a7
        :pswitch_a5
        :pswitch_a3
        :pswitch_a1
        :pswitch_9f
        :pswitch_9d
        :pswitch_9b
    .end packed-switch
.end method
