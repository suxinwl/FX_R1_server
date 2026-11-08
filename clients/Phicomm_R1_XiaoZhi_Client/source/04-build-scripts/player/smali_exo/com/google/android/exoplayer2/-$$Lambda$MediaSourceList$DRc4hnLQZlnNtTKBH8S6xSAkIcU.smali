.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$MediaSourceList$DRc4hnLQZlnNtTKBH8S6xSAkIcU;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/MediaSourceList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaSourceList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/-$$Lambda$MediaSourceList$DRc4hnLQZlnNtTKBH8S6xSAkIcU;->f$0:Lcom/google/android/exoplayer2/MediaSourceList;

    return-void
.end method


# virtual methods
.method public final onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/-$$Lambda$MediaSourceList$DRc4hnLQZlnNtTKBH8S6xSAkIcU;->f$0:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList;->lambda$prepareChildSource$0$MediaSourceList(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method
