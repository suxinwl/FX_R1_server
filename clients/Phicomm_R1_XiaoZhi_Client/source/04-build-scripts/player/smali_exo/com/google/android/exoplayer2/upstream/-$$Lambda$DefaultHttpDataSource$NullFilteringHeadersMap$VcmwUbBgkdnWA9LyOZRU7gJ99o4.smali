.class public final synthetic Lcom/google/android/exoplayer2/upstream/-$$Lambda$DefaultHttpDataSource$NullFilteringHeadersMap$VcmwUbBgkdnWA9LyOZRU7gJ99o4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/upstream/-$$Lambda$DefaultHttpDataSource$NullFilteringHeadersMap$VcmwUbBgkdnWA9LyOZRU7gJ99o4;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/upstream/-$$Lambda$DefaultHttpDataSource$NullFilteringHeadersMap$VcmwUbBgkdnWA9LyOZRU7gJ99o4;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/-$$Lambda$DefaultHttpDataSource$NullFilteringHeadersMap$VcmwUbBgkdnWA9LyOZRU7gJ99o4;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/-$$Lambda$DefaultHttpDataSource$NullFilteringHeadersMap$VcmwUbBgkdnWA9LyOZRU7gJ99o4;->INSTANCE:Lcom/google/android/exoplayer2/upstream/-$$Lambda$DefaultHttpDataSource$NullFilteringHeadersMap$VcmwUbBgkdnWA9LyOZRU7gJ99o4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$NullFilteringHeadersMap;->lambda$entrySet$1(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
