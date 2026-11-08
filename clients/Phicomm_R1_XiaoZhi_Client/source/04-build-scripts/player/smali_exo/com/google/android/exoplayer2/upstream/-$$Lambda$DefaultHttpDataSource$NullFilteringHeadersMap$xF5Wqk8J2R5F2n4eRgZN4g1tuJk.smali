.class public final synthetic Lcom/google/android/exoplayer2/upstream/-$$Lambda$DefaultHttpDataSource$NullFilteringHeadersMap$xF5Wqk8J2R5F2n4eRgZN4g1tuJk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/upstream/-$$Lambda$DefaultHttpDataSource$NullFilteringHeadersMap$xF5Wqk8J2R5F2n4eRgZN4g1tuJk;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/upstream/-$$Lambda$DefaultHttpDataSource$NullFilteringHeadersMap$xF5Wqk8J2R5F2n4eRgZN4g1tuJk;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/-$$Lambda$DefaultHttpDataSource$NullFilteringHeadersMap$xF5Wqk8J2R5F2n4eRgZN4g1tuJk;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/-$$Lambda$DefaultHttpDataSource$NullFilteringHeadersMap$xF5Wqk8J2R5F2n4eRgZN4g1tuJk;->INSTANCE:Lcom/google/android/exoplayer2/upstream/-$$Lambda$DefaultHttpDataSource$NullFilteringHeadersMap$xF5Wqk8J2R5F2n4eRgZN4g1tuJk;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$NullFilteringHeadersMap;->lambda$keySet$0(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
