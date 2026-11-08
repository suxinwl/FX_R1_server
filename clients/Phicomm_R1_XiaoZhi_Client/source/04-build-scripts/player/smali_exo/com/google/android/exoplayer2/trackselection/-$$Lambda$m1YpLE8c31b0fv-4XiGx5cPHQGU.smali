.class public final synthetic Lcom/google/android/exoplayer2/trackselection/-$$Lambda$m1YpLE8c31b0fv-4XiGx5cPHQGU;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$m1YpLE8c31b0fv-4XiGx5cPHQGU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$m1YpLE8c31b0fv-4XiGx5cPHQGU;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$m1YpLE8c31b0fv-4XiGx5cPHQGU;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$m1YpLE8c31b0fv-4XiGx5cPHQGU;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$m1YpLE8c31b0fv-4XiGx5cPHQGU;

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

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackInfo;->compareSelections(Ljava/util/List;Ljava/util/List;)I

    move-result p1

    return p1
.end method
