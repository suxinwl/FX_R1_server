.class final Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;
.super Lcom/google/android/exoplayer2/source/ForwardingTimeline;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ClippingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClippingTimeline"
.end annotation


# instance fields
.field private final endUs:J

.field private final startUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;JJ)V
    .registers 14
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "startUs"    # J
    .param p4, "endUs"    # J

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;)V

    .line 145
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7a

    const/4 v4, 0x1

    :goto_b
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 146
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7c

    const/4 v4, 0x1

    :goto_16
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 147
    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;Z)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    .line 148
    .local v1, "window":Lcom/google/android/exoplayer2/Timeline$Window;
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez v4, :cond_7e

    const/4 v4, 0x1

    :goto_29
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 149
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, p4, v4

    if-nez v4, :cond_80

    iget-wide v2, v1, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    .line 150
    .local v2, "resolvedEndUs":J
    :goto_34
    iget-wide v4, v1, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5d

    .line 151
    iget-wide v4, v1, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_47

    .line 152
    iget-wide v2, v1, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    .line 154
    :cond_47
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_51

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-eqz v4, :cond_82

    :cond_51
    const/4 v4, 0x1

    :goto_52
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 155
    cmp-long v4, p2, v2

    if-gtz v4, :cond_84

    const/4 v4, 0x1

    :goto_5a
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 157
    :cond_5d
    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    invoke-virtual {p1, v4, v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    .line 158
    .local v0, "period":Lcom/google/android/exoplayer2/Timeline$Period;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_86

    const/4 v4, 0x1

    :goto_72
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 159
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    .line 160
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    .line 161
    return-void

    .line 145
    .end local v0    # "period":Lcom/google/android/exoplayer2/Timeline$Period;
    .end local v1    # "window":Lcom/google/android/exoplayer2/Timeline$Window;
    .end local v2    # "resolvedEndUs":J
    :cond_7a
    const/4 v4, 0x0

    goto :goto_b

    .line 146
    :cond_7c
    const/4 v4, 0x0

    goto :goto_16

    .line 148
    .restart local v1    # "window":Lcom/google/android/exoplayer2/Timeline$Window;
    :cond_7e
    const/4 v4, 0x0

    goto :goto_29

    :cond_80
    move-wide v2, p4

    .line 149
    goto :goto_34

    .line 154
    .restart local v2    # "resolvedEndUs":J
    :cond_82
    const/4 v4, 0x0

    goto :goto_52

    .line 155
    :cond_84
    const/4 v4, 0x0

    goto :goto_5a

    .line 158
    .restart local v0    # "period":Lcom/google/android/exoplayer2/Timeline$Period;
    :cond_86
    const/4 v4, 0x0

    goto :goto_72
.end method


# virtual methods
.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 8
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .param p3, "setIds"    # Z

    .prologue
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 186
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p2

    .line 187
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_17

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    sub-long/2addr v0, v2

    :cond_17
    iput-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    .line 188
    return-object p2
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;
    .registers 16
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p3, "setIds"    # Z
    .param p4, "defaultPositionProjectionUs"    # J

    .prologue
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    const/4 v1, 0x0

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p2

    .line 167
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_5a

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    sub-long/2addr v0, v2

    :goto_1a
    iput-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    .line 168
    iget-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_3d

    .line 169
    iget-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    .line 170
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_5c

    iget-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    .line 171
    :goto_34
    iput-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    .line 172
    iget-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    .line 174
    :cond_3d
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v6

    .line 175
    .local v6, "startMs":J
    iget-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_4e

    .line 176
    iget-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    add-long/2addr v0, v6

    iput-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    .line 178
    :cond_4e
    iget-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_59

    .line 179
    iget-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    add-long/2addr v0, v6

    iput-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    .line 181
    :cond_59
    return-object p2

    .end local v6    # "startMs":J
    :cond_5a
    move-wide v0, v8

    .line 167
    goto :goto_1a

    .line 170
    :cond_5c
    iget-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    .line 171
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_34
.end method
