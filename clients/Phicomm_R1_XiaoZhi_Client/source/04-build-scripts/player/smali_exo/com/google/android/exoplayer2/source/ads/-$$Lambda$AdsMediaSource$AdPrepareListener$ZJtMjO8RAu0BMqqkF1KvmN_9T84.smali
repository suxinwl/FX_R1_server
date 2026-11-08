.class public final synthetic Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$AdPrepareListener$ZJtMjO8RAu0BMqqkF1KvmN_9T84;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field public final synthetic f$2:Ljava/io/IOException;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$AdPrepareListener$ZJtMjO8RAu0BMqqkF1KvmN_9T84;->f$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$AdPrepareListener$ZJtMjO8RAu0BMqqkF1KvmN_9T84;->f$1:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$AdPrepareListener$ZJtMjO8RAu0BMqqkF1KvmN_9T84;->f$2:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$AdPrepareListener$ZJtMjO8RAu0BMqqkF1KvmN_9T84;->f$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$AdPrepareListener$ZJtMjO8RAu0BMqqkF1KvmN_9T84;->f$1:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$AdPrepareListener$ZJtMjO8RAu0BMqqkF1KvmN_9T84;->f$2:Ljava/io/IOException;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;->lambda$onPrepareError$1$AdsMediaSource$AdPrepareListener(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V

    return-void
.end method
