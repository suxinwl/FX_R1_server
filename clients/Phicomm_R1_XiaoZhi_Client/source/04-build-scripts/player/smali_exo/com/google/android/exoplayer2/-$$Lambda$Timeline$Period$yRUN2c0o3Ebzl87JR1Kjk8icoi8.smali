.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$Timeline$Period$yRUN2c0o3Ebzl87JR1Kjk8icoi8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$Timeline$Period$yRUN2c0o3Ebzl87JR1Kjk8icoi8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/-$$Lambda$Timeline$Period$yRUN2c0o3Ebzl87JR1Kjk8icoi8;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/-$$Lambda$Timeline$Period$yRUN2c0o3Ebzl87JR1Kjk8icoi8;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/-$$Lambda$Timeline$Period$yRUN2c0o3Ebzl87JR1Kjk8icoi8;->INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$Timeline$Period$yRUN2c0o3Ebzl87JR1Kjk8icoi8;

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

    invoke-static {p1}, Lcom/google/android/exoplayer2/Timeline$Period;->lambda$yRUN2c0o3Ebzl87JR1Kjk8icoi8(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p1

    return-object p1
.end method
