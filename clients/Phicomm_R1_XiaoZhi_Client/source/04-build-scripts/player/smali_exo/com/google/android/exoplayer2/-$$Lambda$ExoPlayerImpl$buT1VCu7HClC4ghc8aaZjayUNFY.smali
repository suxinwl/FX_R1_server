.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$buT1VCu7HClC4ghc8aaZjayUNFY;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$buT1VCu7HClC4ghc8aaZjayUNFY;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$buT1VCu7HClC4ghc8aaZjayUNFY;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$buT1VCu7HClC4ghc8aaZjayUNFY;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$buT1VCu7HClC4ghc8aaZjayUNFY;->INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$buT1VCu7HClC4ghc8aaZjayUNFY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$release$5(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method
