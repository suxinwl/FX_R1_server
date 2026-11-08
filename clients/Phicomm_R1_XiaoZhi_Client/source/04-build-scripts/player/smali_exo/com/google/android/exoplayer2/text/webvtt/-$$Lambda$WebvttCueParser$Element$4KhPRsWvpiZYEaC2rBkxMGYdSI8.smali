.class public final synthetic Lcom/google/android/exoplayer2/text/webvtt/-$$Lambda$WebvttCueParser$Element$4KhPRsWvpiZYEaC2rBkxMGYdSI8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/text/webvtt/-$$Lambda$WebvttCueParser$Element$4KhPRsWvpiZYEaC2rBkxMGYdSI8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/-$$Lambda$WebvttCueParser$Element$4KhPRsWvpiZYEaC2rBkxMGYdSI8;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/webvtt/-$$Lambda$WebvttCueParser$Element$4KhPRsWvpiZYEaC2rBkxMGYdSI8;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/text/webvtt/-$$Lambda$WebvttCueParser$Element$4KhPRsWvpiZYEaC2rBkxMGYdSI8;->INSTANCE:Lcom/google/android/exoplayer2/text/webvtt/-$$Lambda$WebvttCueParser$Element$4KhPRsWvpiZYEaC2rBkxMGYdSI8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;

    check-cast p2, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;->lambda$static$0(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$Element;)I

    move-result p1

    return p1
.end method
