.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$Player$Commands$17cOzc9uq_flOs3WWiuTTJTipb0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$Player$Commands$17cOzc9uq_flOs3WWiuTTJTipb0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/-$$Lambda$Player$Commands$17cOzc9uq_flOs3WWiuTTJTipb0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/-$$Lambda$Player$Commands$17cOzc9uq_flOs3WWiuTTJTipb0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/-$$Lambda$Player$Commands$17cOzc9uq_flOs3WWiuTTJTipb0;->INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$Player$Commands$17cOzc9uq_flOs3WWiuTTJTipb0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .registers 2

    invoke-static {p1}, Lcom/google/android/exoplayer2/Player$Commands;->lambda$17cOzc9uq_flOs3WWiuTTJTipb0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object p1

    return-object p1
.end method
