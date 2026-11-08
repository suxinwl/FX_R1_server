.class public final synthetic Lcom/google/android/exoplayer2/upstream/-$$Lambda$SlidingPercentile$-Io6bvslmz1ZIWSbxaR0nQzsmDM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/upstream/-$$Lambda$SlidingPercentile$-Io6bvslmz1ZIWSbxaR0nQzsmDM;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/upstream/-$$Lambda$SlidingPercentile$-Io6bvslmz1ZIWSbxaR0nQzsmDM;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/-$$Lambda$SlidingPercentile$-Io6bvslmz1ZIWSbxaR0nQzsmDM;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/-$$Lambda$SlidingPercentile$-Io6bvslmz1ZIWSbxaR0nQzsmDM;->INSTANCE:Lcom/google/android/exoplayer2/upstream/-$$Lambda$SlidingPercentile$-Io6bvslmz1ZIWSbxaR0nQzsmDM;

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

    check-cast p1, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;

    check-cast p2, Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->lambda$static$1(Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;Lcom/google/android/exoplayer2/upstream/SlidingPercentile$Sample;)I

    move-result p1

    return p1
.end method
