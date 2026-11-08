.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$ajDbQDOA9ZnEWRnHkZBTTu3h3nw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$ajDbQDOA9ZnEWRnHkZBTTu3h3nw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/-$$Lambda$ajDbQDOA9ZnEWRnHkZBTTu3h3nw;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/-$$Lambda$ajDbQDOA9ZnEWRnHkZBTTu3h3nw;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/-$$Lambda$ajDbQDOA9ZnEWRnHkZBTTu3h3nw;->INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$ajDbQDOA9ZnEWRnHkZBTTu3h3nw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    check-cast v0, Lcom/google/android/exoplayer2/LoadControl;

    return-object v0
.end method
