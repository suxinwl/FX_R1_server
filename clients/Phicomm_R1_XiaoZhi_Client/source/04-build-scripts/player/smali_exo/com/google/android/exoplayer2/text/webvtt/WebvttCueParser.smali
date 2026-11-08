.class public final Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;,
        Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;,
        Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;,
        Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;,
        Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$TextAlignment;
    }
.end annotation


# static fields
.field private static final CHAR_AMPERSAND:C = '&'

.field private static final CHAR_GREATER_THAN:C = '>'

.field private static final CHAR_LESS_THAN:C = '<'

.field private static final CHAR_SEMI_COLON:C = ';'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field public static final CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

.field private static final CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

.field private static final DEFAULT_BACKGROUND_COLORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_POSITION:F = 0.5f

.field private static final DEFAULT_TEXT_COLORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTITY_AMPERSAND:Ljava/lang/String; = "amp"

.field private static final ENTITY_GREATER_THAN:Ljava/lang/String; = "gt"

.field private static final ENTITY_LESS_THAN:Ljava/lang/String; = "lt"

.field private static final ENTITY_NON_BREAK_SPACE:Ljava/lang/String; = "nbsp"

.field private static final STYLE_BOLD:I = 0x1

.field private static final STYLE_ITALIC:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WebvttCueParser"

.field private static final TAG_BOLD:Ljava/lang/String; = "b"

.field private static final TAG_CLASS:Ljava/lang/String; = "c"

.field private static final TAG_ITALIC:Ljava/lang/String; = "i"

.field private static final TAG_LANG:Ljava/lang/String; = "lang"

.field private static final TAG_RUBY:Ljava/lang/String; = "ruby"

.field private static final TAG_RUBY_TEXT:Ljava/lang/String; = "rt"

.field private static final TAG_UNDERLINE:Ljava/lang/String; = "u"

.field private static final TAG_VOICE:Ljava/lang/String; = "v"

.field private static final TEXT_ALIGNMENT_CENTER:I = 0x2

.field private static final TEXT_ALIGNMENT_END:I = 0x3

.field private static final TEXT_ALIGNMENT_LEFT:I = 0x4

.field private static final TEXT_ALIGNMENT_RIGHT:I = 0x5

.field private static final TEXT_ALIGNMENT_START:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "^(\\S+)\\s+-->\\s+(\\S+)(.*)?$"

    .line 118
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(\\S+?):(\\S+)"

    .line 119
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0xff

    .line 157
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "white"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 158
    invoke-static {v2, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "lime"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {v2, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cyan"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {v1, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "red"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static {v1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "yellow"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {v1, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "magenta"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {v2, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "blue"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "black"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->DEFAULT_TEXT_COLORS:Ljava/util/Map;

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 176
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_white"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {v2, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_lime"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static {v2, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_cyan"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-static {v1, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_red"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {v1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_yellow"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-static {v1, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_magenta"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {v2, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "bg_blue"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bg_black"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->DEFAULT_BACKGROUND_COLORS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyDefaultColors(Landroid/text/SpannableStringBuilder;Ljava/util/Set;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 645
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 646
    sget-object v1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->DEFAULT_TEXT_COLORS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x21

    if-eqz v1, :cond_2f

    .line 647
    sget-object v1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->DEFAULT_TEXT_COLORS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 648
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v1, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 649
    :cond_2f
    sget-object v1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->DEFAULT_BACKGROUND_COLORS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 650
    sget-object v1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->DEFAULT_BACKGROUND_COLORS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 651
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v1, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    :cond_4c
    return-void
.end method

.method private static applyEntity(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V
    .registers 7

    .line 493
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xced

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_38

    const/16 v1, 0xd88

    if-eq v0, v1, :cond_2e

    const v1, 0x179c4

    if-eq v0, v1, :cond_24

    const v1, 0x337f11

    if-eq v0, v1, :cond_1a

    goto :goto_42

    :cond_1a
    const-string v0, "nbsp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v0, 0x2

    goto :goto_43

    :cond_24
    const-string v0, "amp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v0, 0x3

    goto :goto_43

    :cond_2e
    const-string v0, "lt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v0, 0x0

    goto :goto_43

    :cond_38
    const-string v0, "gt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v0, 0x1

    goto :goto_43

    :cond_42
    :goto_42
    const/4 v0, -0x1

    :goto_43
    if-eqz v0, :cond_79

    if-eq v0, v4, :cond_73

    if-eq v0, v3, :cond_6d

    if-eq v0, v2, :cond_67

    .line 507
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ignoring unsupported entity: \'&"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";\'"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WebvttCueParser"

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7e

    :cond_67
    const/16 p0, 0x26

    .line 504
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_7e

    :cond_6d
    const/16 p0, 0x20

    .line 501
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_7e

    :cond_73
    const/16 p0, 0x3e

    .line 498
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_7e

    :cond_79
    const/16 p0, 0x3c

    .line 495
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :goto_7e
    return-void
.end method

.method private static applyRubySpans(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;)V"
        }
    .end annotation

    .line 573
    invoke-static {p4, p1, p2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->getRubyPosition(Ljava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;)I

    move-result v0

    .line 574
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 575
    invoke-interface {v1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 576
    # getter for: Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->BY_START_POSITION_ASC:Ljava/util/Comparator;
    invoke-static {}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->access$100()Ljava/util/Comparator;

    move-result-object p3

    invoke-static {v1, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 578
    iget p2, p2, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->position:I

    const/4 p3, 0x0

    const/4 v2, 0x0

    .line 579
    :goto_1b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge p3, v3, :cond_73

    .line 580
    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;

    # getter for: Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->startTag:Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->access$200(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    const-string v4, "rt"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    goto :goto_70

    .line 583
    :cond_36
    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;

    .line 589
    # getter for: Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->startTag:Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->access$200(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v4

    invoke-static {p4, p1, v4}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->getRubyPosition(Ljava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;)I

    move-result v4

    const/4 v5, 0x1

    .line 588
    invoke-static {v4, v0, v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->firstKnownRubyPosition(III)I

    move-result v4

    .line 593
    # getter for: Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->startTag:Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->access$200(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v5

    iget v5, v5, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->position:I

    sub-int/2addr v5, v2

    .line 594
    # getter for: Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->endPosition:I
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->access$300(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;)I

    move-result v3

    sub-int/2addr v3, v2

    .line 595
    invoke-virtual {p0, v5, v3}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 596
    invoke-virtual {p0, v5, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 597
    new-instance v3, Lcom/google/android/exoplayer2/text/span/RubySpan;

    .line 598
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v4}, Lcom/google/android/exoplayer2/text/span/RubySpan;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x21

    .line 597
    invoke-virtual {p0, v3, p2, v5, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 602
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result p2

    add-int/2addr v2, p2

    move p2, v5

    :goto_70
    add-int/lit8 p3, p3, 0x1

    goto :goto_1b

    :cond_73
    return-void
.end method

.method private static applySpansForTag(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;",
            ">;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;)V"
        }
    .end annotation

    .line 534
    iget v0, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->position:I

    .line 535
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 537
    iget-object v2, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_76

    const/16 v7, 0x69

    if-eq v3, v7, :cond_6c

    const v7, 0x3291ee

    if-eq v3, v7, :cond_62

    const v7, 0x3595da

    if-eq v3, v7, :cond_58

    const/16 v7, 0x62

    if-eq v3, v7, :cond_4e

    const/16 v7, 0x63

    if-eq v3, v7, :cond_44

    const/16 v7, 0x75

    if-eq v3, v7, :cond_3a

    const/16 v7, 0x76

    if-eq v3, v7, :cond_30

    goto :goto_80

    :cond_30
    const-string v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    const/4 v2, 0x6

    goto :goto_81

    :cond_3a
    const-string v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    const/4 v2, 0x3

    goto :goto_81

    :cond_44
    const-string v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    const/4 v2, 0x4

    goto :goto_81

    :cond_4e
    const-string v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    const/4 v2, 0x0

    goto :goto_81

    :cond_58
    const-string v3, "ruby"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    const/4 v2, 0x2

    goto :goto_81

    :cond_62
    const-string v3, "lang"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    const/4 v2, 0x5

    goto :goto_81

    :cond_6c
    const-string v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    const/4 v2, 0x1

    goto :goto_81

    :cond_76
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    const/4 v2, 0x7

    goto :goto_81

    :cond_80
    :goto_80
    const/4 v2, -0x1

    :goto_81
    const/16 v3, 0x21

    packed-switch v2, :pswitch_data_c4

    return-void

    .line 551
    :pswitch_87
    iget-object p2, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->classes:Ljava/util/Set;

    invoke-static {p3, p2, v0, v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->applyDefaultColors(Landroid/text/SpannableStringBuilder;Ljava/util/Set;II)V

    goto :goto_ab

    .line 548
    :pswitch_8d
    new-instance p2, Landroid/text/style/UnderlineSpan;

    invoke-direct {p2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p3, p2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_ab

    .line 545
    :pswitch_96
    invoke-static {p3, p0, p1, p2, p4}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->applyRubySpans(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Ljava/util/List;)V

    goto :goto_ab

    .line 542
    :pswitch_9a
    new-instance p2, Landroid/text/style/StyleSpan;

    invoke-direct {p2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p3, p2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_ab

    .line 539
    :pswitch_a3
    new-instance p2, Landroid/text/style/StyleSpan;

    invoke-direct {p2, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p3, p2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 561
    :goto_ab
    :pswitch_ab
    invoke-static {p4, p0, p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->getApplicableStyles(Ljava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;)Ljava/util/List;

    move-result-object p0

    .line 562
    :goto_af
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v4, p1, :cond_c3

    .line 563
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;

    iget-object p1, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;->style:Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    invoke-static {p3, p1, v0, v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->applyStyleToText(Landroid/text/SpannableStringBuilder;Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_af

    :cond_c3
    return-void

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_a3
        :pswitch_9a
        :pswitch_96
        :pswitch_8d
        :pswitch_87
        :pswitch_ab
        :pswitch_ab
        :pswitch_ab
    .end packed-switch
.end method

.method private static applyStyleToText(Landroid/text/SpannableStringBuilder;Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;II)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 661
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getStyle()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x21

    if-eq v0, v1, :cond_18

    .line 662
    new-instance v0, Landroid/text/style/StyleSpan;

    .line 664
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getStyle()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 662
    invoke-static {p0, v0, p2, p3, v2}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 669
    :cond_18
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->isLinethrough()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 670
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 672
    :cond_26
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->isUnderline()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 673
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 675
    :cond_34
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->hasFontColor()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 676
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 678
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getFontColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 676
    invoke-static {p0, v0, p2, p3, v2}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 683
    :cond_46
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 684
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    .line 686
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getBackgroundColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 684
    invoke-static {p0, v0, p2, p3, v2}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 691
    :cond_58
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 692
    new-instance v0, Landroid/text/style/TypefaceSpan;

    .line 694
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 692
    invoke-static {p0, v0, p2, p3, v2}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 699
    :cond_6a
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getFontSizeUnit()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_95

    const/4 v1, 0x2

    if-eq v0, v1, :cond_88

    const/4 v1, 0x3

    if-eq v0, v1, :cond_78

    goto :goto_a2

    .line 717
    :cond_78
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    .line 719
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 717
    invoke-static {p0, v0, p2, p3, v2}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_a2

    .line 709
    :cond_88
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    .line 711
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 709
    invoke-static {p0, v0, p2, p3, v2}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_a2

    .line 701
    :cond_95
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    .line 703
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v3, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 701
    invoke-static {p0, v0, p2, p3, v2}, Lcom/google/android/exoplayer2/text/span/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 728
    :goto_a2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getCombineUpright()Z

    move-result p1

    if-eqz p1, :cond_b0

    .line 729
    new-instance p1, Lcom/google/android/exoplayer2/text/span/HorizontalTextInVerticalContextSpan;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/text/span/HorizontalTextInVerticalContextSpan;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_b0
    return-void
.end method

.method private static findEndOfTag(Ljava/lang/String;I)I
    .registers 3

    const/16 v0, 0x3e

    .line 488
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_e

    .line 489
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    goto :goto_10

    :cond_e
    add-int/lit8 p0, p1, 0x1

    :goto_10
    return p0
.end method

.method private static firstKnownRubyPosition(III)I
    .registers 4

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    return p0

    :cond_4
    if-eq p1, v0, :cond_7

    return p1

    :cond_7
    if-eq p2, v0, :cond_a

    return p2

    .line 633
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static getApplicableStyles(Ljava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;",
            ">;"
        }
    .end annotation

    .line 748
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 749
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 750
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    .line 751
    iget-object v3, p2, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    iget-object v4, p2, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->classes:Ljava/util/Set;

    iget-object v5, p2, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->voice:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getSpecificityScore(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_26

    .line 753
    new-instance v4, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;

    invoke-direct {v4, v3, v2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;-><init>(ILcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 756
    :cond_29
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method private static getRubyPosition(Ljava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;",
            ")I"
        }
    .end annotation

    .line 610
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->getApplicableStyles(Ljava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    .line 611
    :goto_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, -0x1

    if-ge p1, p2, :cond_22

    .line 612
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;

    iget-object p2, p2, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;->style:Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    .line 613
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getRubyPosition()I

    move-result v1

    if-eq v1, v0, :cond_1f

    .line 614
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->getRubyPosition()I

    move-result p0

    return p0

    :cond_1f
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_22
    return v0
.end method

.method private static getTagName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 741
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 742
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    const-string v0, "[ \\.]"

    .line 743
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .registers 5

    .line 513
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x62

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_6f

    const/16 v1, 0x63

    if-eq v0, v1, :cond_65

    const/16 v1, 0x69

    if-eq v0, v1, :cond_5b

    const/16 v1, 0xe42

    if-eq v0, v1, :cond_51

    const v1, 0x3291ee

    if-eq v0, v1, :cond_47

    const v1, 0x3595da

    if-eq v0, v1, :cond_3d

    const/16 v1, 0x75

    if-eq v0, v1, :cond_33

    const/16 v1, 0x76

    if-eq v0, v1, :cond_29

    goto :goto_79

    :cond_29
    const-string v0, "v"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_79

    const/4 p0, 0x7

    goto :goto_7a

    :cond_33
    const-string v0, "u"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_79

    const/4 p0, 0x6

    goto :goto_7a

    :cond_3d
    const-string v0, "ruby"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_79

    const/4 p0, 0x4

    goto :goto_7a

    :cond_47
    const-string v0, "lang"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_79

    const/4 p0, 0x3

    goto :goto_7a

    :cond_51
    const-string v0, "rt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_79

    const/4 p0, 0x5

    goto :goto_7a

    :cond_5b
    const-string v0, "i"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_79

    const/4 p0, 0x2

    goto :goto_7a

    :cond_65
    const-string v0, "c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_79

    const/4 p0, 0x1

    goto :goto_7a

    :cond_6f
    const-string v0, "b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_79

    const/4 p0, 0x0

    goto :goto_7a

    :cond_79
    :goto_79
    const/4 p0, -0x1

    :goto_7a
    packed-switch p0, :pswitch_data_80

    return v2

    :pswitch_7e
    return v3

    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
    .end packed-switch
.end method

.method static newCueForText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/Cue;
    .registers 2

    .line 232
    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;-><init>()V

    .line 233
    iput-object p0, v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->text:Ljava/lang/CharSequence;

    .line 234
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->toCueBuilder()Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object p0

    return-object p0
.end method

.method public static parseCue(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/List;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;)",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;"
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 200
    :cond_8
    sget-object v2, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 201
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 203
    invoke-static {v1, v2, p0, p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/List;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;

    move-result-object p0

    return-object p0

    .line 206
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_20

    return-object v1

    .line 210
    :cond_20
    sget-object v3, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 211
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 213
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, p0, p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/List;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;

    move-result-object p0

    return-object p0

    :cond_35
    return-object v1
.end method

.method private static parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/List;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Matcher;",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;)",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;"
        }
    .end annotation

    .line 337
    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;-><init>()V

    const/4 v1, 0x1

    .line 341
    :try_start_6
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->startTimeUs:J

    const/4 v1, 0x2

    .line 343
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->endTimeUs:J
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_27} :catch_6a

    const/4 v1, 0x3

    .line 349
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V

    .line 352
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 354
    :goto_3e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 356
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4f

    const-string v2, "\n"

    .line 357
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :cond_4f
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_3e

    .line 361
    :cond_5b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseCueText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->text:Ljava/lang/CharSequence;

    .line 362
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->build()Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;

    move-result-object p0

    return-object p0

    .line 345
    :catch_6a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skipping cue with bad header: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WebvttCueParser"

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static parseCueSettingsList(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .registers 2

    .line 225
    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;-><init>()V

    .line 226
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V

    .line 227
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->toCueBuilder()Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static parseCueSettingsList(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V
    .registers 7

    const-string v0, "WebvttCueParser"

    .line 367
    sget-object v1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 369
    :goto_8
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_a0

    const/4 v1, 0x1

    .line 370
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    .line 371
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_24
    const-string v3, "line"

    .line 373
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 374
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseLineAttribute(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V

    goto :goto_8

    :cond_30
    const-string v3, "align"

    .line 375
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 376
    invoke-static {v2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseTextAlignment(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->textAlignment:I

    goto :goto_8

    :cond_3f
    const-string v3, "position"

    .line 377
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 378
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parsePositionAttribute(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V

    goto :goto_8

    :cond_4b
    const-string v3, "size"

    .line 379
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 380
    invoke-static {v2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result v1

    iput v1, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->size:F

    goto :goto_8

    :cond_5a
    const-string v3, "vertical"

    .line 381
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 382
    invoke-static {v2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseVerticalAttribute(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->verticalType:I

    goto :goto_8

    .line 384
    :cond_69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown cue setting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_85} :catch_86

    goto :goto_8

    .line 387
    :catch_86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping bad cue setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_a0
    return-void
.end method

.method static parseCueText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;)",
            "Landroid/text/SpannedString;"
        }
    .end annotation

    .line 247
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 248
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 250
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 251
    :goto_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_e5

    .line 252
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x26

    if-eq v5, v6, :cond_b1

    const/16 v6, 0x3c

    if-eq v5, v6, :cond_29

    .line 311
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_29
    add-int/lit8 v5, v4, 0x1

    .line 255
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v5, v6, :cond_32

    goto :goto_6f

    .line 260
    :cond_32
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    const/4 v8, 0x1

    if-ne v6, v7, :cond_3d

    const/4 v6, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v6, 0x0

    .line 261
    :goto_3e
    invoke-static {p1, v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->findEndOfTag(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v9, v5, -0x2

    .line 262
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v7, :cond_4c

    const/4 v7, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v7, 0x0

    :goto_4d
    if-eqz v6, :cond_50

    const/4 v8, 0x2

    :cond_50
    add-int/2addr v4, v8

    if-eqz v7, :cond_54

    goto :goto_56

    :cond_54
    add-int/lit8 v9, v5, -0x1

    .line 264
    :goto_56
    invoke-virtual {p1, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 265
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_65

    goto :goto_6f

    .line 268
    :cond_65
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->getTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 269
    invoke-static {v8}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->isSupportedTag(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_71

    :cond_6f
    :goto_6f
    move v4, v5

    goto :goto_11

    :cond_71
    if-eqz v6, :cond_a3

    .line 275
    :cond_73
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7a

    goto :goto_6f

    .line 278
    :cond_7a
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    .line 279
    invoke-static {p0, v4, v2, v0, p2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 280
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_97

    .line 281
    new-instance v6, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/4 v9, 0x0

    invoke-direct {v6, v4, v7, v9}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;-><init>(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;ILcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$1;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    .line 283
    :cond_97
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 285
    :goto_9a
    iget-object v4, v4, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    goto :goto_6f

    :cond_a3
    if-nez v7, :cond_6f

    .line 287
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->buildStartTag(Ljava/lang/String;I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_6f

    :cond_b1
    const/16 v6, 0x3b

    add-int/lit8 v4, v4, 0x1

    .line 291
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/16 v7, 0x20

    .line 292
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    const/4 v8, -0x1

    if-ne v6, v8, :cond_c4

    move v6, v7

    goto :goto_cb

    :cond_c4
    if-ne v7, v8, :cond_c7

    goto :goto_cb

    .line 298
    :cond_c7
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_cb
    if-eq v6, v8, :cond_e0

    .line 300
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->applyEntity(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V

    if-ne v6, v7, :cond_db

    const-string v4, " "

    .line 302
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_db
    add-int/lit8 v6, v6, 0x1

    move v4, v6

    goto/16 :goto_11

    .line 306
    :cond_e0
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_11

    .line 317
    :cond_e5
    :goto_e5
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f5

    .line 318
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    invoke-static {p0, p1, v2, v0, p2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    goto :goto_e5

    .line 322
    :cond_f5
    invoke-static {}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->buildWholeCueVirtualTag()Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    move-result-object p1

    .line 323
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 320
    invoke-static {p0, p1, v1, v0, p2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 326
    invoke-static {v0}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object p0

    return-object p0
.end method

.method private static parseLineAnchor(Ljava/lang/String;)I
    .registers 6

    .line 408
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_5a

    goto :goto_34

    :sswitch_c
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x0

    goto :goto_35

    :sswitch_16
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x3

    goto :goto_35

    :sswitch_20
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x2

    goto :goto_35

    :sswitch_2a
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    goto :goto_35

    :cond_34
    :goto_34
    const/4 v0, -0x1

    :goto_35
    if-eqz v0, :cond_58

    if-eq v0, v4, :cond_57

    if-eq v0, v3, :cond_57

    if-eq v0, v2, :cond_56

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid anchor value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebvttCueParser"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, -0x80000000

    return p0

    :cond_56
    return v3

    :cond_57
    return v4

    :cond_58
    return v1

    nop

    :sswitch_data_5a
    .sparse-switch
        -0x514d33ab -> :sswitch_2a
        -0x4009266b -> :sswitch_20
        0x188db -> :sswitch_16
        0x68ac462 -> :sswitch_c
    .end sparse-switch
.end method

.method private static parseLineAttribute(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V
    .registers 5

    const/16 v0, 0x2c

    .line 393
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1a

    add-int/lit8 v2, v0, 0x1

    .line 395
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseLineAnchor(Ljava/lang/String;)I

    move-result v2

    iput v2, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineAnchor:I

    .line 396
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1a
    const-string v0, "%"

    .line 398
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 399
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result p0

    iput p0, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->line:F

    .line 400
    iput v1, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    goto :goto_35

    .line 402
    :cond_2b
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    iput p0, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->line:F

    const/4 p0, 0x1

    .line 403
    iput p0, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    :goto_35
    return-void
.end method

.method private static parsePositionAnchor(Ljava/lang/String;)I
    .registers 8

    .line 432
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v0, :sswitch_data_74

    goto :goto_4a

    :sswitch_e
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v0, 0x1

    goto :goto_4b

    :sswitch_18
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v0, 0x5

    goto :goto_4b

    :sswitch_22
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v0, 0x3

    goto :goto_4b

    :sswitch_2c
    const-string v0, "line-right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v0, 0x4

    goto :goto_4b

    :sswitch_36
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v0, 0x2

    goto :goto_4b

    :sswitch_40
    const-string v0, "line-left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v0, 0x0

    goto :goto_4b

    :cond_4a
    :goto_4a
    const/4 v0, -0x1

    :goto_4b
    if-eqz v0, :cond_72

    if-eq v0, v6, :cond_72

    if-eq v0, v5, :cond_71

    if-eq v0, v4, :cond_71

    if-eq v0, v3, :cond_70

    if-eq v0, v2, :cond_70

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid anchor value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebvttCueParser"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, -0x80000000

    return p0

    :cond_70
    return v5

    :cond_71
    return v6

    :cond_72
    return v1

    nop

    :sswitch_data_74
    .sparse-switch
        -0x6dd215c0 -> :sswitch_40
        -0x514d33ab -> :sswitch_36
        -0x4c1a40fd -> :sswitch_2c
        -0x4009266b -> :sswitch_22
        0x188db -> :sswitch_18
        0x68ac462 -> :sswitch_e
    .end sparse-switch
.end method

.method private static parsePositionAttribute(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V
    .registers 4

    const/16 v0, 0x2c

    .line 423
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    add-int/lit8 v1, v0, 0x1

    .line 425
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parsePositionAnchor(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->positionAnchor:I

    const/4 v1, 0x0

    .line 426
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 428
    :cond_1a
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result p0

    iput p0, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->position:F

    return-void
.end method

.method private static parseTextAlignment(Ljava/lang/String;)I
    .registers 7

    .line 461
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    sparse-switch v0, :sswitch_data_72

    goto :goto_49

    :sswitch_d
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x0

    goto :goto_4a

    :sswitch_17
    const-string v0, "right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x5

    goto :goto_4a

    :sswitch_21
    const-string v0, "left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x1

    goto :goto_4a

    :sswitch_2b
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x4

    goto :goto_4a

    :sswitch_35
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x3

    goto :goto_4a

    :sswitch_3f
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x2

    goto :goto_4a

    :cond_49
    :goto_49
    const/4 v0, -0x1

    :goto_4a
    if-eqz v0, :cond_71

    if-eq v0, v4, :cond_70

    if-eq v0, v5, :cond_6f

    if-eq v0, v3, :cond_6f

    if-eq v0, v2, :cond_6e

    if-eq v0, v1, :cond_6d

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid alignment value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebvttCueParser"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_6d
    return v1

    :cond_6e
    return v3

    :cond_6f
    return v5

    :cond_70
    return v2

    :cond_71
    return v4

    :sswitch_data_72
    .sparse-switch
        -0x514d33ab -> :sswitch_3f
        -0x4009266b -> :sswitch_35
        0x188db -> :sswitch_2b
        0x32a007 -> :sswitch_21
        0x677c21c -> :sswitch_17
        0x68ac462 -> :sswitch_d
    .end sparse-switch
.end method

.method private static parseVerticalAttribute(Ljava/lang/String;)I
    .registers 4

    .line 449
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xd86

    const/4 v2, 0x1

    if-eq v0, v1, :cond_18

    const/16 v1, 0xe3a

    if-eq v0, v1, :cond_e

    goto :goto_22

    :cond_e
    const-string v0, "rl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    goto :goto_23

    :cond_18
    const-string v0, "lr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    :goto_22
    const/4 v0, -0x1

    :goto_23
    if-eqz v0, :cond_42

    if-eq v0, v2, :cond_40

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid \'vertical\' value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebvttCueParser"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, -0x80000000

    return p0

    :cond_40
    const/4 p0, 0x2

    return p0

    :cond_42
    return v2
.end method
