.class public final synthetic Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$VideoTrackInfo$L79yjwwU3eqrF-BZEJv5TZ1m8Kk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$VideoTrackInfo$L79yjwwU3eqrF-BZEJv5TZ1m8Kk;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$VideoTrackInfo$L79yjwwU3eqrF-BZEJv5TZ1m8Kk;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$VideoTrackInfo$L79yjwwU3eqrF-BZEJv5TZ1m8Kk;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$VideoTrackInfo$L79yjwwU3eqrF-BZEJv5TZ1m8Kk;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$VideoTrackInfo$L79yjwwU3eqrF-BZEJv5TZ1m8Kk;

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

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->lambda$L79yjwwU3eqrF-BZEJv5TZ1m8Kk(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;)I

    move-result p1

    return p1
.end method
