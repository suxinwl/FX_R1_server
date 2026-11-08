.class public final synthetic Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultPlaybackSessionManager$B6qxTIgw94bl9P0yXoxrMQCmp6U;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultPlaybackSessionManager$B6qxTIgw94bl9P0yXoxrMQCmp6U;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultPlaybackSessionManager$B6qxTIgw94bl9P0yXoxrMQCmp6U;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultPlaybackSessionManager$B6qxTIgw94bl9P0yXoxrMQCmp6U;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultPlaybackSessionManager$B6qxTIgw94bl9P0yXoxrMQCmp6U;->INSTANCE:Lcom/google/android/exoplayer2/analytics/-$$Lambda$DefaultPlaybackSessionManager$B6qxTIgw94bl9P0yXoxrMQCmp6U;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->lambda$B6qxTIgw94bl9P0yXoxrMQCmp6U()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
