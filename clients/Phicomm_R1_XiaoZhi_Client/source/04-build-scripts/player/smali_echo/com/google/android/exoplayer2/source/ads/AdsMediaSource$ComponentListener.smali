.class final Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;
.implements Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)V
    .registers 2

    .prologue
    .line 286
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$1;

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    # getter for: Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->eventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$1000(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    # getter for: Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->eventListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdsListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$700(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdsListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 308
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    # getter for: Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->eventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$1000(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener$2;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener$2;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 317
    :cond_1e
    return-void
.end method

.method public onAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .registers 4
    .param p1, "adPlaybackState"    # Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    # getter for: Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->released:Z
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$600(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 303
    :goto_8
    return-void

    .line 294
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    # getter for: Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->playerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$900(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener$1;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method

.method public onAdTapped()V
    .registers 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    # getter for: Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->eventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$1000(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    # getter for: Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->eventListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdsListener;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$700(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdsListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 322
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    # getter for: Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->eventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$1000(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener$3;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener$3;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 331
    :cond_1e
    return-void
.end method

.method public onLoadError(Ljava/io/IOException;)V
    .registers 4
    .param p1, "error"    # Ljava/io/IOException;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    # getter for: Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->released:Z
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$600(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 347
    :goto_8
    return-void

    .line 338
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    # getter for: Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->playerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$900(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener$4;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method
