.class public final synthetic Lcom/google/android/exoplayer2/drm/-$$Lambda$pre3sEqF1vViKhCFp1NAV3_mgZk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/drm/-$$Lambda$pre3sEqF1vViKhCFp1NAV3_mgZk;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/drm/-$$Lambda$pre3sEqF1vViKhCFp1NAV3_mgZk;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/-$$Lambda$pre3sEqF1vViKhCFp1NAV3_mgZk;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/drm/-$$Lambda$pre3sEqF1vViKhCFp1NAV3_mgZk;->INSTANCE:Lcom/google/android/exoplayer2/drm/-$$Lambda$pre3sEqF1vViKhCFp1NAV3_mgZk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRemoved()V

    return-void
.end method
