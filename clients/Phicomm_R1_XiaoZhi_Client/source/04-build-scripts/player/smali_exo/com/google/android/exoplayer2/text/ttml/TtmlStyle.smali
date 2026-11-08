.class final Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/ttml/TtmlStyle$RubyType;,
        Lcom/google/android/exoplayer2/text/ttml/TtmlStyle$OptionalBoolean;,
        Lcom/google/android/exoplayer2/text/ttml/TtmlStyle$FontSizeUnit;,
        Lcom/google/android/exoplayer2/text/ttml/TtmlStyle$StyleFlags;
    }
.end annotation


# static fields
.field public static final FONT_SIZE_UNIT_EM:I = 0x2

.field public static final FONT_SIZE_UNIT_PERCENT:I = 0x3

.field public static final FONT_SIZE_UNIT_PIXEL:I = 0x1

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field public static final RUBY_TYPE_BASE:I = 0x2

.field public static final RUBY_TYPE_CONTAINER:I = 0x1

.field public static final RUBY_TYPE_DELIMITER:I = 0x4

.field public static final RUBY_TYPE_TEXT:I = 0x3

.field public static final STYLE_BOLD:I = 0x1

.field public static final STYLE_BOLD_ITALIC:I = 0x3

.field public static final STYLE_ITALIC:I = 0x2

.field public static final STYLE_NORMAL:I = 0x0

.field public static final UNSPECIFIED:I = -0x1

.field public static final UNSPECIFIED_SHEAR:F = 3.4028235E38f


# instance fields
.field private backgroundColor:I

.field private bold:I

.field private fontColor:I

.field private fontFamily:Ljava/lang/String;

.field private fontSize:F

.field private fontSizeUnit:I

.field private hasBackgroundColor:Z

.field private hasFontColor:Z

.field private id:Ljava/lang/String;

.field private italic:I

.field private linethrough:I

.field private multiRowAlign:Landroid/text/Layout$Alignment;

.field private rubyPosition:I

.field private rubyType:I

.field private shearPercentage:F

.field private textAlign:Landroid/text/Layout$Alignment;

.field private textCombine:I

.field private textEmphasis:Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

.field private underline:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 100
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->linethrough:I

    .line 101
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->underline:I

    .line 102
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->bold:I

    .line 103
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->italic:I

    .line 104
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontSizeUnit:I

    .line 105
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->rubyType:I

    .line 106
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->rubyPosition:I

    .line 107
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textCombine:I

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 108
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->shearPercentage:F

    return-void
.end method

.method private inherit(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 6

    if-eqz p1, :cond_9a

    .line 228
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->hasFontColor:Z

    if-nez v0, :cond_f

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->hasFontColor:Z

    if-eqz v0, :cond_f

    .line 229
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontColor:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontColor(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 231
    :cond_f
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->bold:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    .line 232
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->bold:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->bold:I

    .line 234
    :cond_18
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->italic:I

    if-ne v0, v1, :cond_20

    .line 235
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->italic:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->italic:I

    .line 237
    :cond_20
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    if-nez v0, :cond_2a

    iget-object v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 238
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    .line 240
    :cond_2a
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->linethrough:I

    if-ne v0, v1, :cond_32

    .line 241
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->linethrough:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->linethrough:I

    .line 243
    :cond_32
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->underline:I

    if-ne v0, v1, :cond_3a

    .line 244
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->underline:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->underline:I

    .line 246
    :cond_3a
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->rubyPosition:I

    if-ne v0, v1, :cond_42

    .line 247
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->rubyPosition:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->rubyPosition:I

    .line 249
    :cond_42
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_4c

    iget-object v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_4c

    .line 250
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    .line 252
    :cond_4c
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->multiRowAlign:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_56

    iget-object v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->multiRowAlign:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_56

    .line 253
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->multiRowAlign:Landroid/text/Layout$Alignment;

    .line 255
    :cond_56
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textCombine:I

    if-ne v0, v1, :cond_5e

    .line 256
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textCombine:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textCombine:I

    .line 258
    :cond_5e
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontSizeUnit:I

    if-ne v0, v1, :cond_6a

    .line 259
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontSizeUnit:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontSizeUnit:I

    .line 260
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontSize:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontSize:F

    .line 262
    :cond_6a
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textEmphasis:Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

    if-nez v0, :cond_72

    .line 263
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textEmphasis:Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textEmphasis:Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

    .line 265
    :cond_72
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->shearPercentage:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v2

    if-nez v0, :cond_7f

    .line 266
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->shearPercentage:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->shearPercentage:F

    :cond_7f
    if-eqz p2, :cond_8e

    .line 269
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->hasBackgroundColor:Z

    if-nez v0, :cond_8e

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->hasBackgroundColor:Z

    if-eqz v0, :cond_8e

    .line 270
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->backgroundColor:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setBackgroundColor(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    :cond_8e
    if-eqz p2, :cond_9a

    .line 272
    iget p2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->rubyType:I

    if-ne p2, v1, :cond_9a

    iget p1, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->rubyType:I

    if-eq p1, v1, :cond_9a

    .line 273
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->rubyType:I

    :cond_9a
    return-object p0
.end method


# virtual methods
.method public chain(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 3

    const/4 v0, 0x1

    .line 212
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->inherit(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    return-object p1
.end method

.method public getBackgroundColor()I
    .registers 3

    .line 180
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->hasBackgroundColor:Z

    if-eqz v0, :cond_7

    .line 183
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->backgroundColor:I

    return v0

    .line 181
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Background color has not been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFontColor()I
    .registers 3

    .line 163
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->hasFontColor:Z

    if-eqz v0, :cond_7

    .line 166
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontColor:I

    return v0

    .line 164
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font color has not been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getFontSize()F
    .registers 2

    .line 362
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontSize:F

    return v0
.end method

.method public getFontSizeUnit()I
    .registers 2

    .line 358
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontSizeUnit:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 286
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiRowAlign()Landroid/text/Layout$Alignment;
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->multiRowAlign:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public getRubyPosition()I
    .registers 2

    .line 304
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->rubyPosition:I

    return v0
.end method

.method public getRubyType()I
    .registers 2

    .line 295
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->rubyType:I

    return v0
.end method

.method public getShearPercentage()F
    .registers 2

    .line 202
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->shearPercentage:F

    return v0
.end method

.method public getStyle()I
    .registers 5

    .line 118
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->bold:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->italic:I

    if-ne v0, v1, :cond_a

    return v1

    .line 121
    :cond_a
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->bold:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    iget v3, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->italic:I

    if-ne v3, v2, :cond_18

    const/4 v1, 0x2

    :cond_18
    or-int/2addr v0, v1

    return v0
.end method

.method public getTextAlign()Landroid/text/Layout$Alignment;
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public getTextCombine()Z
    .registers 3

    .line 329
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textCombine:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public getTextEmphasis()Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;
    .registers 2

    .line 339
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textEmphasis:Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

    return-object v0
.end method

.method public hasBackgroundColor()Z
    .registers 2

    .line 193
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->hasBackgroundColor:Z

    return v0
.end method

.method public hasFontColor()Z
    .registers 2

    .line 176
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->hasFontColor:Z

    return v0
.end method

.method public inherit(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 3

    const/4 v0, 0x0

    .line 223
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->inherit(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    return-object p1
.end method

.method public isLinethrough()Z
    .registers 3

    .line 125
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->linethrough:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public isUnderline()Z
    .registers 3

    .line 134
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->underline:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public setBackgroundColor(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2

    .line 187
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->backgroundColor:I

    const/4 p1, 0x1

    .line 188
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->hasBackgroundColor:Z

    return-object p0
.end method

.method public setBold(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2

    .line 143
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->bold:I

    return-object p0
.end method

.method public setFontColor(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2

    .line 170
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontColor:I

    const/4 p1, 0x1

    .line 171
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->hasFontColor:Z

    return-object p0
.end method

.method public setFontFamily(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    return-object p0
.end method

.method public setFontSize(F)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2

    .line 348
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontSize:F

    return-object p0
.end method

.method public setFontSizeUnit(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2

    .line 353
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontSizeUnit:I

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2

    .line 280
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setItalic(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2

    .line 148
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->italic:I

    return-object p0
.end method

.method public setLinethrough(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2

    .line 129
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->linethrough:I

    return-object p0
.end method

.method public setMultiRowAlign(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2

    .line 323
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->multiRowAlign:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setRubyPosition(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2

    .line 299
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->rubyPosition:I

    return-object p0
.end method

.method public setRubyType(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2

    .line 290
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->rubyType:I

    return-object p0
.end method

.method public setShearPercentage(F)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2

    .line 197
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->shearPercentage:F

    return-object p0
.end method

.method public setTextAlign(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2

    .line 313
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setTextCombine(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2

    .line 333
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textCombine:I

    return-object p0
.end method

.method public setTextEmphasis(Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2

    .line 343
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textEmphasis:Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

    return-object p0
.end method

.method public setUnderline(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2

    .line 138
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->underline:I

    return-object p0
.end method
