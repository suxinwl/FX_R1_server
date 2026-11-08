.class public Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;
.super Ljava/lang/Object;
.source "SegmentDownloader.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/SegmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
        ">;"
    }
.end annotation


# instance fields
.field public final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field public final startTimeUs:J


# direct methods
.method public constructor <init>(JLcom/google/android/exoplayer2/upstream/DataSpec;)V
    .registers 5
    .param p1, "startTimeUs"    # J
    .param p3, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->startTimeUs:J

    .line 55
    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 56
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;)I
    .registers 10
    .param p1, "other"    # Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v6, 0x0

    .line 60
    iget-wide v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->startTimeUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->startTimeUs:J

    sub-long v0, v2, v4

    .line 61
    .local v0, "startOffsetDiff":J
    cmp-long v2, v0, v6

    if-nez v2, :cond_e

    const/4 v2, 0x0

    :goto_d
    return v2

    :cond_e
    cmp-long v2, v0, v6

    if-gez v2, :cond_14

    const/4 v2, -0x1

    goto :goto_d

    :cond_14
    const/4 v2, 0x1

    goto :goto_d
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    check-cast p1, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->compareTo(Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;)I

    move-result v0

    return v0
.end method
