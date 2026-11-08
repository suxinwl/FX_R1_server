.class public final synthetic Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$4aMSO39zZ_2Ojc5az8RW_qLlkmQ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$4aMSO39zZ_2Ojc5az8RW_qLlkmQ;->f$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$4aMSO39zZ_2Ojc5az8RW_qLlkmQ;->f$1:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$4aMSO39zZ_2Ojc5az8RW_qLlkmQ;->f$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$4aMSO39zZ_2Ojc5az8RW_qLlkmQ;->f$1:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->lambda$releaseSourceInternal$1$AdsMediaSource(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V

    return-void
.end method
