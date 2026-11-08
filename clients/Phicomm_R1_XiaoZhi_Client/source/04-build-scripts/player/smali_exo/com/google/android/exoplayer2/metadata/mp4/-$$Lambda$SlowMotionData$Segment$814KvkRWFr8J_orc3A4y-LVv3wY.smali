.class public final synthetic Lcom/google/android/exoplayer2/metadata/mp4/-$$Lambda$SlowMotionData$Segment$814KvkRWFr8J_orc3A4y-LVv3wY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/metadata/mp4/-$$Lambda$SlowMotionData$Segment$814KvkRWFr8J_orc3A4y-LVv3wY;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/metadata/mp4/-$$Lambda$SlowMotionData$Segment$814KvkRWFr8J_orc3A4y-LVv3wY;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/mp4/-$$Lambda$SlowMotionData$Segment$814KvkRWFr8J_orc3A4y-LVv3wY;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/mp4/-$$Lambda$SlowMotionData$Segment$814KvkRWFr8J_orc3A4y-LVv3wY;->INSTANCE:Lcom/google/android/exoplayer2/metadata/mp4/-$$Lambda$SlowMotionData$Segment$814KvkRWFr8J_orc3A4y-LVv3wY;

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

    check-cast p1, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;

    check-cast p2, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;->lambda$static$0(Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;)I

    move-result p1

    return p1
.end method
