.class Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Element"
.end annotation


# static fields
.field private static final BY_START_POSITION_ASC:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final endPosition:I

.field private final startTag:Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 968
    sget-object v0, Lcom/google/android/exoplayer2/text/webvtt/-$$Lambda$WebvttCueParser$Element$4KhPRsWvpiZYEaC2rBkxMGYdSI8;->INSTANCE:Lcom/google/android/exoplayer2/text/webvtt/-$$Lambda$WebvttCueParser$Element$4KhPRsWvpiZYEaC2rBkxMGYdSI8;

    sput-object v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->BY_START_POSITION_ASC:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;I)V
    .registers 3

    .line 978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 979
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->startTag:Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    .line 980
    iput p2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->endPosition:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;ILcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$1;)V
    .registers 4

    .line 967
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;-><init>(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;I)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/Comparator;
    .registers 1

    .line 967
    sget-object v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->BY_START_POSITION_ASC:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;
    .registers 1

    .line 967
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->startTag:Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;)I
    .registers 1

    .line 967
    iget p0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->endPosition:I

    return p0
.end method

.method static synthetic lambda$static$0(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;)I
    .registers 2

    .line 969
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->startTag:Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    iget p0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->position:I

    iget-object p1, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->startTag:Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    iget p1, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->position:I

    invoke-static {p0, p1}, L$r8$backportedMethods$utility$Integer$2$compare;->compare(II)I

    move-result p0

    return p0
.end method
