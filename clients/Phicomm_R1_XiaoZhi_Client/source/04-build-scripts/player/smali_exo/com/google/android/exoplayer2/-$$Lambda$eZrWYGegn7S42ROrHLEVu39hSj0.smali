.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$eZrWYGegn7S42ROrHLEVu39hSj0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$eZrWYGegn7S42ROrHLEVu39hSj0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/-$$Lambda$eZrWYGegn7S42ROrHLEVu39hSj0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/-$$Lambda$eZrWYGegn7S42ROrHLEVu39hSj0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/-$$Lambda$eZrWYGegn7S42ROrHLEVu39hSj0;->INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$eZrWYGegn7S42ROrHLEVu39hSj0;

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

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player$Listener;->onRenderedFirstFrame()V

    return-void
.end method
