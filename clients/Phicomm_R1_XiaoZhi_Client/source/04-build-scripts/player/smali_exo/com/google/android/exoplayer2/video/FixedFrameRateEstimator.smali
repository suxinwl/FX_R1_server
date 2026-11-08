.class final Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;
    }
.end annotation


# static fields
.field public static final CONSECUTIVE_MATCHING_FRAME_DURATIONS_FOR_SYNC:I = 0xf

.field static final MAX_MATCHING_FRAME_DIFFERENCE_NS:J = 0xf4240L


# instance fields
.field private candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

.field private candidateMatcherActive:Z

.field private currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

.field private framesWithoutSyncCount:I

.field private lastFramePresentationTimeNs:J

.field private switchToCandidateMatcherWhenSynced:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    .line 50
    new-instance v0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 51
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    return-void
.end method


# virtual methods
.method public getFrameDurationNs()J
    .registers 3

    .line 119
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->getFrameDurationNs()J

    move-result-wide v0

    goto :goto_12

    :cond_d
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_12
    return-wide v0
.end method

.method public getFrameRate()F
    .registers 5

    .line 128
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_18

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    .line 129
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->getFrameDurationNs()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_1a

    :cond_18
    const/high16 v0, -0x40800000    # -1.0f

    :goto_1a
    return v0
.end method

.method public getFramesWithoutSyncCount()I
    .registers 2

    .line 102
    iget v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->framesWithoutSyncCount:I

    return v0
.end method

.method public getMatchingFrameDurationSumNs()J
    .registers 3

    .line 110
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->getMatchingFrameDurationSumNs()J

    move-result-wide v0

    goto :goto_12

    :cond_d
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_12
    return-wide v0
.end method

.method public isSynced()Z
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v0

    return v0
.end method

.method public onNextFrame(J)V
    .registers 10

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->onNextFrame(J)V

    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->switchToCandidateMatcherWhenSynced:Z

    if-nez v0, :cond_16

    .line 71
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    goto :goto_40

    .line 72
    :cond_16
    iget-wide v3, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_40

    .line 73
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->isLastFrameOutlier()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 76
    :cond_2d
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->reset()V

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->onNextFrame(J)V

    .line 79
    :cond_39
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->onNextFrame(J)V

    .line 82
    :cond_40
    :goto_40
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    .line 86
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    iput-object v3, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    .line 87
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    .line 88
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    .line 89
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->switchToCandidateMatcherWhenSynced:Z

    .line 91
    :cond_58
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    .line 92
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result p1

    if-eqz p1, :cond_63

    goto :goto_67

    :cond_63
    iget p1, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->framesWithoutSyncCount:I

    add-int/lit8 v2, p1, 0x1

    :goto_67
    iput v2, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->framesWithoutSyncCount:I

    return-void
.end method

.method public reset()V
    .registers 4

    .line 56
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->reset()V

    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->reset()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 59
    iput-wide v1, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    .line 60
    iput v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->framesWithoutSyncCount:I

    return-void
.end method
