.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$0B51itwGHRYC1WZLGqxNSmktIAw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$0B51itwGHRYC1WZLGqxNSmktIAw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/-$$Lambda$0B51itwGHRYC1WZLGqxNSmktIAw;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/-$$Lambda$0B51itwGHRYC1WZLGqxNSmktIAw;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/-$$Lambda$0B51itwGHRYC1WZLGqxNSmktIAw;->INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$0B51itwGHRYC1WZLGqxNSmktIAw;

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

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player$Listener;->onSeekProcessed()V

    return-void
.end method
