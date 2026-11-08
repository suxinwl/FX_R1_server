.class Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener$4;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->onLoadError(Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

.field final synthetic val$error:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;Ljava/io/IOException;)V
    .registers 3
    .param p1, "this$1"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener$4;->this$1:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener$4;->val$error:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener$4;->this$1:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    # getter for: Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->released:Z
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$600(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 345
    :goto_a
    return-void

    .line 344
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener$4;->this$1:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener$4;->val$error:Ljava/io/IOException;

    # invokes: Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onLoadError(Ljava/io/IOException;)V
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$1100(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Ljava/io/IOException;)V

    goto :goto_a
.end method
