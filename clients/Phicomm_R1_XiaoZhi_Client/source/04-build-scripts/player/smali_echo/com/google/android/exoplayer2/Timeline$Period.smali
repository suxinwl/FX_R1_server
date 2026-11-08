.class public final Lcom/google/android/exoplayer2/Timeline$Period;
.super Ljava/lang/Object;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Period"
.end annotation


# instance fields
.field private adCounts:[I

.field private adDurationsUs:[[J

.field private adGroupTimesUs:[J

.field private adResumePositionUs:J

.field private adsLoadedCounts:[I

.field private adsPlayedCounts:[I

.field public durationUs:J

.field public id:Ljava/lang/Object;

.field private positionInWindowUs:J

.field public uid:Ljava/lang/Object;

.field public windowIndex:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdCountInAdGroup(I)I
    .registers 3
    .param p1, "adGroupIndex"    # I

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adCounts:[I

    aget v0, v0, p1

    return v0
.end method

.method public getAdDurationUs(II)J
    .registers 5
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adDurationsUs:[[J

    aget-object v0, v0, p1

    array-length v0, v0

    if-lt p2, v0, :cond_d

    .line 494
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 496
    :goto_c
    return-wide v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adDurationsUs:[[J

    aget-object v0, v0, p1

    aget-wide v0, v0, p2

    goto :goto_c
.end method

.method public getAdGroupCount()I
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adGroupTimesUs:[J

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adGroupTimesUs:[J

    array-length v0, v0

    goto :goto_5
.end method

.method public getAdGroupIndexAfterPositionUs(J)I
    .registers 10
    .param p1, "positionUs"    # J

    .prologue
    const/4 v1, -0x1

    .line 449
    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adGroupTimesUs:[J

    if-nez v2, :cond_6

    .line 459
    :goto_5
    return v1

    .line 454
    :cond_6
    const/4 v0, 0x0

    .line 455
    .local v0, "index":I
    :goto_7
    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adGroupTimesUs:[J

    array-length v2, v2

    if-ge v0, v2, :cond_27

    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adGroupTimesUs:[J

    aget-wide v2, v2, v0

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adGroupTimesUs:[J

    aget-wide v2, v2, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_24

    .line 456
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/Timeline$Period;->hasPlayedAdGroup(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 457
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 459
    :cond_27
    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adGroupTimesUs:[J

    array-length v2, v2

    if-ge v0, v2, :cond_2e

    .end local v0    # "index":I
    :goto_2c
    move v1, v0

    goto :goto_5

    .restart local v0    # "index":I
    :cond_2e
    move v0, v1

    goto :goto_2c
.end method

.method public getAdGroupIndexForPositionUs(J)I
    .registers 10
    .param p1, "positionUs"    # J

    .prologue
    const/4 v1, -0x1

    .line 428
    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adGroupTimesUs:[J

    if-nez v2, :cond_6

    .line 438
    :goto_5
    return v1

    .line 433
    :cond_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adGroupTimesUs:[J

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .line 434
    .local v0, "index":I
    :goto_b
    if-ltz v0, :cond_22

    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adGroupTimesUs:[J

    aget-wide v2, v2, v0

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adGroupTimesUs:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-lez v2, :cond_22

    .line 436
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 438
    :cond_22
    if-ltz v0, :cond_2c

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/Timeline$Period;->hasPlayedAdGroup(I)Z

    move-result v2

    if-nez v2, :cond_2c

    .end local v0    # "index":I
    :goto_2a
    move v1, v0

    goto :goto_5

    .restart local v0    # "index":I
    :cond_2c
    move v0, v1

    goto :goto_2a
.end method

.method public getAdGroupTimeUs(I)J
    .registers 4
    .param p1, "adGroupIndex"    # I

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adGroupTimesUs:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getAdResumePositionUs()J
    .registers 3

    .prologue
    .line 504
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adResumePositionUs:J

    return-wide v0
.end method

.method public getDurationMs()J
    .registers 3

    .prologue
    .line 352
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurationUs()J
    .registers 3

    .prologue
    .line 359
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    return-wide v0
.end method

.method public getPlayedAdCount(I)I
    .registers 3
    .param p1, "adGroupIndex"    # I

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adsPlayedCounts:[I

    aget v0, v0, p1

    return v0
.end method

.method public getPositionInWindowMs()J
    .registers 3

    .prologue
    .line 368
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPositionInWindowUs()J
    .registers 3

    .prologue
    .line 377
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    return-wide v0
.end method

.method public hasPlayedAdGroup(I)Z
    .registers 4
    .param p1, "adGroupIndex"    # I

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adCounts:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adsPlayedCounts:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adCounts:[I

    aget v1, v1, p1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isAdAvailable(II)Z
    .registers 4
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adsLoadedCounts:[I

    aget v0, v0, p1

    if-ge p2, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 24
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "uid"    # Ljava/lang/Object;
    .param p3, "windowIndex"    # I
    .param p4, "durationUs"    # J
    .param p6, "positionInWindowUs"    # J

    .prologue
    .line 303
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    check-cast v12, [[J

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v14}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ[J[I[I[I[[JJ)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;IJJ[J[I[I[I[[JJ)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 15
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "uid"    # Ljava/lang/Object;
    .param p3, "windowIndex"    # I
    .param p4, "durationUs"    # J
    .param p6, "positionInWindowUs"    # J
    .param p8, "adGroupTimesUs"    # [J
    .param p9, "adCounts"    # [I
    .param p10, "adsLoadedCounts"    # [I
    .param p11, "adsPlayedCounts"    # [I
    .param p12, "adDurationsUs"    # [[J
    .param p13, "adResumePositionUs"    # J

    .prologue
    .line 334
    iput-object p1, p0, Lcom/google/android/exoplayer2/Timeline$Period;->id:Ljava/lang/Object;

    .line 335
    iput-object p2, p0, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 336
    iput p3, p0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 337
    iput-wide p4, p0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    .line 338
    iput-wide p6, p0, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    .line 339
    iput-object p8, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adGroupTimesUs:[J

    .line 340
    iput-object p9, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adCounts:[I

    .line 341
    iput-object p10, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adsLoadedCounts:[I

    .line 342
    iput-object p11, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adsPlayedCounts:[I

    .line 343
    iput-object p12, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adDurationsUs:[[J

    .line 344
    iput-wide p13, p0, Lcom/google/android/exoplayer2/Timeline$Period;->adResumePositionUs:J

    .line 345
    return-object p0
.end method
