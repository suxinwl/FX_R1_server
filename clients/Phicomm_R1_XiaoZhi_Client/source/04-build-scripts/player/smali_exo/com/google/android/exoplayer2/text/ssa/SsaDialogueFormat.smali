.class final Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;
.super Ljava/lang/Object;


# instance fields
.field public final endTimeIndex:I

.field public final length:I

.field public final startTimeIndex:I

.field public final styleIndex:I

.field public final textIndex:I


# direct methods
.method private constructor <init>(IIIII)V
    .registers 6

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->startTimeIndex:I

    .line 44
    iput p2, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->endTimeIndex:I

    .line 45
    iput p3, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->styleIndex:I

    .line 46
    iput p4, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->textIndex:I

    .line 47
    iput p5, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->length:I

    return-void
.end method

.method public static fromFormatLine(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;
    .registers 13

    const-string v0, "Format:"

    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    const/4 v0, 0x7

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    .line 63
    :goto_1b
    array-length v3, p0

    if-ge v2, v3, :cond_6f

    .line 64
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    sparse-switch v8, :sswitch_data_80

    goto :goto_5b

    :sswitch_33
    const-string v8, "style"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    const/4 v3, 0x2

    goto :goto_5c

    :sswitch_3d
    const-string v8, "start"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    const/4 v3, 0x0

    goto :goto_5c

    :sswitch_47
    const-string v8, "text"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    const/4 v3, 0x3

    goto :goto_5c

    :sswitch_51
    const-string v8, "end"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    const/4 v3, 0x1

    goto :goto_5c

    :cond_5b
    :goto_5b
    const/4 v3, -0x1

    :goto_5c
    if-eqz v3, :cond_6b

    if-eq v3, v11, :cond_69

    if-eq v3, v10, :cond_67

    if-eq v3, v9, :cond_65

    goto :goto_6c

    :cond_65
    move v7, v2

    goto :goto_6c

    :cond_67
    move v6, v2

    goto :goto_6c

    :cond_69
    move v5, v2

    goto :goto_6c

    :cond_6b
    move v4, v2

    :goto_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_6f
    if-eq v4, v1, :cond_7d

    if-eq v5, v1, :cond_7d

    if-eq v7, v1, :cond_7d

    .line 79
    new-instance v0, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;

    array-length v8, p0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;-><init>(IIIII)V

    goto :goto_7e

    :cond_7d
    const/4 v0, 0x0

    :goto_7e
    return-object v0

    nop

    :sswitch_data_80
    .sparse-switch
        0x188db -> :sswitch_51
        0x36452d -> :sswitch_47
        0x68ac462 -> :sswitch_3d
        0x68b1db1 -> :sswitch_33
    .end sparse-switch
.end method
