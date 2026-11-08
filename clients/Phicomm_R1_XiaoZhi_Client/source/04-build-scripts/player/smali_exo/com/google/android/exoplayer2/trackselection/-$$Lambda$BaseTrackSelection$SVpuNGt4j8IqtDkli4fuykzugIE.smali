.class public final synthetic Lcom/google/android/exoplayer2/trackselection/-$$Lambda$BaseTrackSelection$SVpuNGt4j8IqtDkli4fuykzugIE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$BaseTrackSelection$SVpuNGt4j8IqtDkli4fuykzugIE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$BaseTrackSelection$SVpuNGt4j8IqtDkli4fuykzugIE;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$BaseTrackSelection$SVpuNGt4j8IqtDkli4fuykzugIE;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$BaseTrackSelection$SVpuNGt4j8IqtDkli4fuykzugIE;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$BaseTrackSelection$SVpuNGt4j8IqtDkli4fuykzugIE;

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

    check-cast p1, Lcom/google/android/exoplayer2/Format;

    check-cast p2, Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->lambda$new$0(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    return p1
.end method
