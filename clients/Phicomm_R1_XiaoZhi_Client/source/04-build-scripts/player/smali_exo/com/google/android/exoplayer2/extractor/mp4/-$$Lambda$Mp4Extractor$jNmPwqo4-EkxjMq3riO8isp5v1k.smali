.class public final synthetic Lcom/google/android/exoplayer2/extractor/mp4/-$$Lambda$Mp4Extractor$jNmPwqo4-EkxjMq3riO8isp5v1k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/extractor/mp4/-$$Lambda$Mp4Extractor$jNmPwqo4-EkxjMq3riO8isp5v1k;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/-$$Lambda$Mp4Extractor$jNmPwqo4-EkxjMq3riO8isp5v1k;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp4/-$$Lambda$Mp4Extractor$jNmPwqo4-EkxjMq3riO8isp5v1k;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/-$$Lambda$Mp4Extractor$jNmPwqo4-EkxjMq3riO8isp5v1k;->INSTANCE:Lcom/google/android/exoplayer2/extractor/mp4/-$$Lambda$Mp4Extractor$jNmPwqo4-EkxjMq3riO8isp5v1k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->lambda$processMoovAtom$1(Lcom/google/android/exoplayer2/extractor/mp4/Track;)Lcom/google/android/exoplayer2/extractor/mp4/Track;

    move-result-object p1

    return-object p1
.end method
