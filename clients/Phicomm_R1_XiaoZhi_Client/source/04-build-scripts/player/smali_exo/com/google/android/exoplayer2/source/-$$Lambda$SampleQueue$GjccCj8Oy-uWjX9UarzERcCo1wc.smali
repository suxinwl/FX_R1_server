.class public final synthetic Lcom/google/android/exoplayer2/source/-$$Lambda$SampleQueue$GjccCj8Oy-uWjX9UarzERcCo1wc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/source/-$$Lambda$SampleQueue$GjccCj8Oy-uWjX9UarzERcCo1wc;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/source/-$$Lambda$SampleQueue$GjccCj8Oy-uWjX9UarzERcCo1wc;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/-$$Lambda$SampleQueue$GjccCj8Oy-uWjX9UarzERcCo1wc;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/-$$Lambda$SampleQueue$GjccCj8Oy-uWjX9UarzERcCo1wc;->INSTANCE:Lcom/google/android/exoplayer2/source/-$$Lambda$SampleQueue$GjccCj8Oy-uWjX9UarzERcCo1wc;

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

    check-cast p1, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->lambda$new$0(Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;)V

    return-void
.end method
