.class public final synthetic Lcom/google/android/exoplayer2/extractor/amr/-$$Lambda$AmrExtractor$lVuGuaAcylUV-_XE4-hSR1hBylI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/extractor/amr/-$$Lambda$AmrExtractor$lVuGuaAcylUV-_XE4-hSR1hBylI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/extractor/amr/-$$Lambda$AmrExtractor$lVuGuaAcylUV-_XE4-hSR1hBylI;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/amr/-$$Lambda$AmrExtractor$lVuGuaAcylUV-_XE4-hSR1hBylI;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/amr/-$$Lambda$AmrExtractor$lVuGuaAcylUV-_XE4-hSR1hBylI;->INSTANCE:Lcom/google/android/exoplayer2/extractor/amr/-$$Lambda$AmrExtractor$lVuGuaAcylUV-_XE4-hSR1hBylI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 2

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lcom/google/android/exoplayer2/extractor/Extractor;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorsFactory$-CC;->$default$createExtractors(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p1

    return-object p1
.end method
