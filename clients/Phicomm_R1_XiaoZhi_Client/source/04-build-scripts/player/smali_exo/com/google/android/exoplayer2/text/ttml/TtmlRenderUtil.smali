.class final Lcom/google/android/exoplayer2/text/ttml/TtmlRenderUtil;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "TtmlRenderUtil"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyStylesToSpan(Landroid/text/Spannable;IILcom/google/android/exoplayer2/text/ttml/TtmlStyle;Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "II",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;I)V"
        }
    .end annotation

    .line 92
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getStyle()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x21

    if-eq v0, v1, :cond_15

    .line 93
    new-instance v0, Landroid/text/style/StyleSpan;

    .line 94
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getStyle()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 93
    invoke-interface {p0, v0, p1, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 96
    :cond_15
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->isLinethrough()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 97
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-interface {p0, v0, p1, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 99
    :cond_23
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->isUnderline()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 100
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {p0, v0, p1, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 102
    :cond_31
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->hasFontColor()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 103
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 105
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getFontColor()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 103
    invoke-static {p0, v0, p1, p2, v2}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 110
    :cond_43
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 111
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    .line 113
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getBackgroundColor()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 111
    invoke-static {p0, v0, p1, p2, v2}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 118
    :cond_55
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 119
    new-instance v0, Landroid/text/style/TypefaceSpan;

    .line 121
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-static {p0, v0, p1, p2, v2}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 126
    :cond_67
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getTextEmphasis()Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

    move-result-object v0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_9d

    .line 127
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getTextEmphasis()Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

    .line 130
    iget v6, v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->markShape:I

    if-ne v6, v1, :cond_88

    if-eq p6, v4, :cond_85

    if-ne p6, v5, :cond_83

    goto :goto_85

    :cond_83
    const/4 p6, 0x1

    goto :goto_86

    :cond_85
    :goto_85
    const/4 p6, 0x3

    :goto_86
    const/4 v6, 0x1

    goto :goto_8c

    .line 140
    :cond_88
    iget p6, v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->markShape:I

    .line 141
    iget v6, v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->markFill:I

    .line 145
    :goto_8c
    iget v7, v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->position:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_93

    const/4 v0, 0x1

    goto :goto_95

    .line 150
    :cond_93
    iget v0, v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->position:I

    .line 153
    :goto_95
    new-instance v7, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;

    invoke-direct {v7, p6, v6, v0}, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;-><init>(III)V

    invoke-static {p0, v7, p1, p2, v2}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 160
    :cond_9d
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getRubyType()I

    move-result p6

    if-eq p6, v4, :cond_b2

    if-eq p6, v3, :cond_a9

    const/4 p4, 0x4

    if-eq p6, p4, :cond_a9

    goto :goto_10f

    .line 208
    :cond_a9
    new-instance p4, Lcom/google/android/exoplayer2/text/ttml/DeleteTextSpan;

    invoke-direct {p4}, Lcom/google/android/exoplayer2/text/ttml/DeleteTextSpan;-><init>()V

    invoke-interface {p0, p4, p1, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_10f

    .line 163
    :cond_b2
    invoke-static {p4, p5}, Lcom/google/android/exoplayer2/text/ttml/TtmlRenderUtil;->findRubyContainerNode(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object p4

    if-nez p4, :cond_b9

    goto :goto_10f

    .line 168
    :cond_b9
    invoke-static {p4, p5}, Lcom/google/android/exoplayer2/text/ttml/TtmlRenderUtil;->findRubyTextNode(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object p6

    if-nez p6, :cond_c0

    goto :goto_10f

    .line 174
    :cond_c0
    invoke-virtual {p6}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getChildCount()I

    move-result v0

    if-ne v0, v5, :cond_108

    const/4 v0, 0x0

    invoke-virtual {p6, v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getChild(I)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->text:Ljava/lang/String;

    if-eqz v6, :cond_108

    .line 175
    invoke-virtual {p6, v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getChild(I)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->text:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    iget-object v6, p6, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->style:Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-virtual {p6}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getStyleIds()[Ljava/lang/String;

    move-result-object p6

    invoke-static {v6, p6, p5}, Lcom/google/android/exoplayer2/text/ttml/TtmlRenderUtil;->resolveStyle(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p6

    if-eqz p6, :cond_ec

    .line 187
    invoke-virtual {p6}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getRubyPosition()I

    move-result p6

    goto :goto_ed

    :cond_ec
    const/4 p6, -0x1

    :goto_ed
    if-ne p6, v1, :cond_ff

    .line 192
    iget-object v1, p4, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->style:Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 193
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getStyleIds()[Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4, p5}, Lcom/google/android/exoplayer2/text/ttml/TtmlRenderUtil;->resolveStyle(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p4

    if-eqz p4, :cond_ff

    .line 194
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getRubyPosition()I

    move-result p6

    .line 197
    :cond_ff
    new-instance p4, Lcom/google/android/exoplayer2/text/span/RubySpan;

    invoke-direct {p4, v0, p6}, Lcom/google/android/exoplayer2/text/span/RubySpan;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, p4, p1, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_10f

    :cond_108
    const-string p4, "TtmlRenderUtil"

    const-string p5, "Skipping rubyText node without exactly one text child."

    .line 177
    invoke-static {p4, p5}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_10f
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getTextCombine()Z

    move-result p4

    if-eqz p4, :cond_11d

    .line 217
    new-instance p4, Lcom/google/android/exoplayer2/text/span/HorizontalTextInVerticalContextSpan;

    invoke-direct {p4}, Lcom/google/android/exoplayer2/text/span/HorizontalTextInVerticalContextSpan;-><init>()V

    invoke-static {p0, p4, p1, p2, v2}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 224
    :cond_11d
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getFontSizeUnit()I

    move-result p4

    if-eq p4, v5, :cond_145

    if-eq p4, v4, :cond_138

    if-eq p4, v3, :cond_128

    goto :goto_152

    .line 242
    :cond_128
    new-instance p4, Landroid/text/style/RelativeSizeSpan;

    .line 244
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getFontSize()F

    move-result p3

    const/high16 p5, 0x42c80000    # 100.0f

    div-float/2addr p3, p5

    invoke-direct {p4, p3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 242
    invoke-static {p0, p4, p1, p2, v2}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_152

    .line 234
    :cond_138
    new-instance p4, Landroid/text/style/RelativeSizeSpan;

    .line 236
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getFontSize()F

    move-result p3

    invoke-direct {p4, p3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 234
    invoke-static {p0, p4, p1, p2, v2}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_152

    .line 226
    :cond_145
    new-instance p4, Landroid/text/style/AbsoluteSizeSpan;

    .line 228
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getFontSize()F

    move-result p3

    float-to-int p3, p3

    invoke-direct {p4, p3, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 226
    invoke-static {p0, p4, p1, p2, v2}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :goto_152
    return-void
.end method

.method static applyTextElementSpacePolicy(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "\r\n"

    const-string v1, "\n"

    .line 312
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " *\n *"

    .line 315
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    .line 317
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "[ \t\\x0B\u000c\r]+"

    .line 319
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static endParagraph(Landroid/text/SpannableStringBuilder;)V
    .registers 4

    .line 295
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_13

    .line 296
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_13

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_13
    if-ltz v0, :cond_20

    .line 299
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_20

    .line 300
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_20
    return-void
.end method

.method private static findRubyContainerNode(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;)",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlNode;"
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_19

    .line 279
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->style:Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getStyleIds()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlRenderUtil;->resolveStyle(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 280
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getRubyType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    return-object p0

    .line 283
    :cond_16
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->parent:Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    goto :goto_0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findRubyTextNode(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;)",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlNode;"
        }
    .end annotation

    .line 258
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 259
    invoke-interface {v0, p0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 260
    :cond_8
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3a

    .line 261
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    .line 263
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->style:Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getStyleIds()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlRenderUtil;->resolveStyle(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 264
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getRubyType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_28

    return-object p0

    .line 267
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2e
    if-ltz v1, :cond_8

    .line 268
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getChild(I)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2e

    :cond_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static resolveStyle(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;)",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_2e

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_8
    array-length v2, p1

    if-ne v2, v1, :cond_14

    .line 58
    aget-object p0, p1, v0

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    return-object p0

    .line 59
    :cond_14
    array-length v2, p1

    if-le v2, v1, :cond_56

    .line 61
    new-instance p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;-><init>()V

    .line 62
    array-length v1, p1

    :goto_1d
    if-ge v0, v1, :cond_2d

    aget-object v2, p1, v0

    .line 63
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->chain(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2d
    return-object p0

    :cond_2e
    if-eqz p1, :cond_40

    .line 68
    array-length v2, p1

    if-ne v2, v1, :cond_40

    .line 70
    aget-object p1, p1, v0

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->chain(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p0

    return-object p0

    :cond_40
    if-eqz p1, :cond_56

    .line 71
    array-length v2, p1

    if-le v2, v1, :cond_56

    .line 73
    array-length v1, p1

    :goto_46
    if-ge v0, v1, :cond_56

    aget-object v2, p1, v0

    .line 74
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->chain(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_56
    return-object p0
.end method
