.class public final synthetic Lcom/google/android/exoplayer2/drm/-$$Lambda$HbN0kSVsD6YcIJxw09z6YQauRzY;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/drm/-$$Lambda$HbN0kSVsD6YcIJxw09z6YQauRzY;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/drm/-$$Lambda$HbN0kSVsD6YcIJxw09z6YQauRzY;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/-$$Lambda$HbN0kSVsD6YcIJxw09z6YQauRzY;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/drm/-$$Lambda$HbN0kSVsD6YcIJxw09z6YQauRzY;->INSTANCE:Lcom/google/android/exoplayer2/drm/-$$Lambda$HbN0kSVsD6YcIJxw09z6YQauRzY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRestored()V

    return-void
.end method
