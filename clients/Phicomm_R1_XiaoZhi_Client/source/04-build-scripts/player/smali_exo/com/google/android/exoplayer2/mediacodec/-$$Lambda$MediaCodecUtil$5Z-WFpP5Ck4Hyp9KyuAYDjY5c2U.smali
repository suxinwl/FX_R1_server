.class public final synthetic Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$5Z-WFpP5Ck4Hyp9KyuAYDjY5c2U;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$5Z-WFpP5Ck4Hyp9KyuAYDjY5c2U;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$5Z-WFpP5Ck4Hyp9KyuAYDjY5c2U;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$5Z-WFpP5Ck4Hyp9KyuAYDjY5c2U;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$5Z-WFpP5Ck4Hyp9KyuAYDjY5c2U;->INSTANCE:Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$5Z-WFpP5Ck4Hyp9KyuAYDjY5c2U;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getScore(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->lambda$applyWorkarounds$2(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)I

    move-result p1

    return p1
.end method
