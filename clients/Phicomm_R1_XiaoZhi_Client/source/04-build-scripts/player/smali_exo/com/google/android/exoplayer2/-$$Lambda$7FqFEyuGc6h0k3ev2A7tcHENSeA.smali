.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$7FqFEyuGc6h0k3ev2A7tcHENSeA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$7FqFEyuGc6h0k3ev2A7tcHENSeA;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/-$$Lambda$7FqFEyuGc6h0k3ev2A7tcHENSeA;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/-$$Lambda$7FqFEyuGc6h0k3ev2A7tcHENSeA;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/-$$Lambda$7FqFEyuGc6h0k3ev2A7tcHENSeA;->INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$7FqFEyuGc6h0k3ev2A7tcHENSeA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;

    check-cast p1, Lcom/google/android/exoplayer2/util/Clock;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;-><init>(Lcom/google/android/exoplayer2/util/Clock;)V

    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    return-object v0
.end method
