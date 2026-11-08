.class public final synthetic Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$dWQyQkX4yyxglJ3gy3t-dSsnaEA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$dWQyQkX4yyxglJ3gy3t-dSsnaEA;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$dWQyQkX4yyxglJ3gy3t-dSsnaEA;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$dWQyQkX4yyxglJ3gy3t-dSsnaEA;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$dWQyQkX4yyxglJ3gy3t-dSsnaEA;->INSTANCE:Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$dWQyQkX4yyxglJ3gy3t-dSsnaEA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
