.class public final synthetic Lcom/google/android/exoplayer2/text/webvtt/-$$Lambda$WebvttSubtitle$bdSuLW0DtIygw7Z-qAnMxtuNsPw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/text/webvtt/-$$Lambda$WebvttSubtitle$bdSuLW0DtIygw7Z-qAnMxtuNsPw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/-$$Lambda$WebvttSubtitle$bdSuLW0DtIygw7Z-qAnMxtuNsPw;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/webvtt/-$$Lambda$WebvttSubtitle$bdSuLW0DtIygw7Z-qAnMxtuNsPw;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/text/webvtt/-$$Lambda$WebvttSubtitle$bdSuLW0DtIygw7Z-qAnMxtuNsPw;->INSTANCE:Lcom/google/android/exoplayer2/text/webvtt/-$$Lambda$WebvttSubtitle$bdSuLW0DtIygw7Z-qAnMxtuNsPw;

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

    check-cast p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;

    check-cast p2, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->lambda$getCues$0(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;)I

    move-result p1

    return p1
.end method
