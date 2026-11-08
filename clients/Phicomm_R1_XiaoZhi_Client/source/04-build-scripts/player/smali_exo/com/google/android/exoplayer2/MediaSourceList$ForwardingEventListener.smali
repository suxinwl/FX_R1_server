.class final Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
.implements Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaSourceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ForwardingEventListener"
.end annotation


# instance fields
.field private drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field private final id:Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

.field private mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field final synthetic this$0:Lcom/google/android/exoplayer2/MediaSourceList;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/MediaSourceList;Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V
    .registers 4

    .line 531
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 533
    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaSourceList;->access$100(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 534
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->id:Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    return-void
.end method

.method private maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z
    .registers 6

    if-eqz p2, :cond_c

    .line 662
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->id:Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    # invokes: Lcom/google/android/exoplayer2/MediaSourceList;->getMediaPeriodIdForChildMediaPeriodId(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/MediaSourceList;->access$200(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p2

    if-nez p2, :cond_d

    const/4 p1, 0x0

    return p1

    :cond_c
    const/4 p2, 0x0

    .line 668
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->id:Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    # invokes: Lcom/google/android/exoplayer2/MediaSourceList;->getWindowIndexForChildWindowIndex(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;I)I
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/MediaSourceList;->access$300(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;I)I

    move-result p1

    .line 669
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v0, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    if-ne v0, p1, :cond_23

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 670
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 671
    :cond_23
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 672
    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->withParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 675
    :cond_31
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget v0, v0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    if-ne v0, p1, :cond_41

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 676
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 677
    :cond_41
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 678
    # getter for: Lcom/google/android/exoplayer2/MediaSourceList;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$100(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->withParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    :cond_4d
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onDownstreamFormatChanged(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 4

    .line 600
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 601
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    :cond_b
    return-void
.end method

.method public onDrmKeysLoaded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 3

    .line 620
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 621
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysLoaded()V

    :cond_b
    return-void
.end method

.method public onDrmKeysRemoved(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 3

    .line 644
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 645
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRemoved()V

    :cond_b
    return-void
.end method

.method public onDrmKeysRestored(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 3

    .line 636
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 637
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRestored()V

    :cond_b
    return-void
.end method

.method public synthetic onDrmSessionAcquired(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public onDrmSessionAcquired(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;I)V
    .registers 4

    .line 612
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 613
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    :cond_b
    return-void
.end method

.method public onDrmSessionManagerError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .registers 4

    .line 628
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 629
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    :cond_b
    return-void
.end method

.method public onDrmSessionReleased(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 3

    .line 652
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 653
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionReleased()V

    :cond_b
    return-void
.end method

.method public onLoadCanceled(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 5

    .line 567
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 568
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    :cond_b
    return-void
.end method

.method public onLoadCompleted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 5

    .line 556
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 557
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    :cond_b
    return-void
.end method

.method public onLoadError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .registers 7

    .line 580
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 581
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V

    :cond_b
    return-void
.end method

.method public onLoadStarted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 5

    .line 545
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 546
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    :cond_b
    return-void
.end method

.method public onUpstreamDiscarded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 4

    .line 590
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 591
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    :cond_b
    return-void
.end method
