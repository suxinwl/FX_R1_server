.class public final synthetic Lcom/google/android/exoplayer2/trackselection/-$$Lambda$qXp2AJS77Zt8I4-P39f5Tpz-t8A;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$qXp2AJS77Zt8I4-P39f5Tpz-t8A;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$qXp2AJS77Zt8I4-P39f5Tpz-t8A;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$qXp2AJS77Zt8I4-P39f5Tpz-t8A;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$qXp2AJS77Zt8I4-P39f5Tpz-t8A;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$qXp2AJS77Zt8I4-P39f5Tpz-t8A;

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

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->compareSelections(Ljava/util/List;Ljava/util/List;)I

    move-result p1

    return p1
.end method
