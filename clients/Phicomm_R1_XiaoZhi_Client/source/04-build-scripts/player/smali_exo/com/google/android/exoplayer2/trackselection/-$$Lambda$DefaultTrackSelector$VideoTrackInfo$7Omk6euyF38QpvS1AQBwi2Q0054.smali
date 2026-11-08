.class public final synthetic Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$VideoTrackInfo$7Omk6euyF38QpvS1AQBwi2Q0054;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$VideoTrackInfo$7Omk6euyF38QpvS1AQBwi2Q0054;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$VideoTrackInfo$7Omk6euyF38QpvS1AQBwi2Q0054;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$VideoTrackInfo$7Omk6euyF38QpvS1AQBwi2Q0054;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$VideoTrackInfo$7Omk6euyF38QpvS1AQBwi2Q0054;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$VideoTrackInfo$7Omk6euyF38QpvS1AQBwi2Q0054;

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

    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;

    check-cast p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->lambda$7Omk6euyF38QpvS1AQBwi2Q0054(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;)I

    move-result p1

    return p1
.end method
