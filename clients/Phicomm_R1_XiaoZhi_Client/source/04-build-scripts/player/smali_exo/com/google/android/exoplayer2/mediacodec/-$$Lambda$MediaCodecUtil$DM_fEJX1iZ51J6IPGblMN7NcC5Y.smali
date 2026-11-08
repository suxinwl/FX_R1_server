.class public final synthetic Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$DM_fEJX1iZ51J6IPGblMN7NcC5Y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/Format;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$DM_fEJX1iZ51J6IPGblMN7NcC5Y;->f$0:Lcom/google/android/exoplayer2/Format;

    return-void
.end method


# virtual methods
.method public final getScore(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$DM_fEJX1iZ51J6IPGblMN7NcC5Y;->f$0:Lcom/google/android/exoplayer2/Format;

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->lambda$getDecoderInfosSortedByFormatSupport$0(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)I

    move-result p1

    return p1
.end method
