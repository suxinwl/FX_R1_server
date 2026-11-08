.class public final synthetic Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$lrZL-zTAASesn9-0AYwE4dMwJKI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$lrZL-zTAASesn9-0AYwE4dMwJKI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$lrZL-zTAASesn9-0AYwE4dMwJKI;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$lrZL-zTAASesn9-0AYwE4dMwJKI;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$lrZL-zTAASesn9-0AYwE4dMwJKI;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$lrZL-zTAASesn9-0AYwE4dMwJKI;

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

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->lambda$static$1(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
