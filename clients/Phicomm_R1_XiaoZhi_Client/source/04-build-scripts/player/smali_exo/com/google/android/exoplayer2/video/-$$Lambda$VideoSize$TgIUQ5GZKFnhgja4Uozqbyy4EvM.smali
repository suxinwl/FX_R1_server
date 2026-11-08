.class public final synthetic Lcom/google/android/exoplayer2/video/-$$Lambda$VideoSize$TgIUQ5GZKFnhgja4Uozqbyy4EvM;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/video/-$$Lambda$VideoSize$TgIUQ5GZKFnhgja4Uozqbyy4EvM;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoSize$TgIUQ5GZKFnhgja4Uozqbyy4EvM;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoSize$TgIUQ5GZKFnhgja4Uozqbyy4EvM;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoSize$TgIUQ5GZKFnhgja4Uozqbyy4EvM;->INSTANCE:Lcom/google/android/exoplayer2/video/-$$Lambda$VideoSize$TgIUQ5GZKFnhgja4Uozqbyy4EvM;

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

    invoke-static {p1}, Lcom/google/android/exoplayer2/video/VideoSize;->lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/video/VideoSize;

    move-result-object p1

    return-object p1
.end method
