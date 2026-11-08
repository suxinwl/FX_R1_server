.class public final synthetic Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$buSea3Z1Bo3hrg0reZEjnAD-5NM;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$buSea3Z1Bo3hrg0reZEjnAD-5NM;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$buSea3Z1Bo3hrg0reZEjnAD-5NM;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$buSea3Z1Bo3hrg0reZEjnAD-5NM;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$buSea3Z1Bo3hrg0reZEjnAD-5NM;->INSTANCE:Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultAnalyticsCollector$buSea3Z1Bo3hrg0reZEjnAD-5NM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/FlagSet;)V
    .registers 3

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->lambda$new$0(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/util/FlagSet;)V

    return-void
.end method
