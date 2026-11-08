.class final Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ts/H265Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleReader"
.end annotation


# static fields
.field private static final FIRST_SLICE_FLAG_OFFSET:I = 0x2


# instance fields
.field private isFirstPrefixNalUnit:Z

.field private isFirstSlice:Z

.field private lookingForFirstSliceFlag:Z

.field private nalUnitBytesRead:I

.field private nalUnitHasKeyframeData:Z

.field private nalUnitPosition:J

.field private nalUnitTimeUs:J

.field private final output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private readingPrefix:Z

.field private readingSample:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .registers 2

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    return-void
.end method

.method private static isPrefixNalUnit(I)Z
    .registers 2

    const/16 v0, 0x20

    if-gt v0, p0, :cond_8

    const/16 v0, 0x23

    if-le p0, v0, :cond_c

    :cond_8
    const/16 v0, 0x27

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static isVclBodyNalUnit(I)Z
    .registers 2

    const/16 v0, 0x20

    if-lt p0, v0, :cond_b

    const/16 v0, 0x28

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method private outputSample(I)V
    .registers 10

    .line 559
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-nez v0, :cond_c

    return-void

    .line 562
    :cond_c
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    .line 563
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    .line 564
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    return-void
.end method


# virtual methods
.method public endNalUnit(JIZ)V
    .registers 7

    .line 540
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    if-eqz v0, :cond_10

    .line 542
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 p1, 0x0

    .line 543
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    goto :goto_35

    .line 544
    :cond_10
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    if-eqz v0, :cond_35

    :cond_18
    if-eqz p4, :cond_26

    .line 546
    iget-boolean p4, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    if-eqz p4, :cond_26

    .line 548
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    sub-long/2addr p1, v0

    long-to-int p2, p1

    add-int/2addr p3, p2

    .line 549
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->outputSample(I)V

    .line 551
    :cond_26
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    .line 552
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    .line 553
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 p1, 0x1

    .line 554
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    :cond_35
    :goto_35
    return-void
.end method

.method public readNalUnitData([BII)V
    .registers 6

    .line 528
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    if-eqz v0, :cond_1e

    add-int/lit8 v0, p2, 0x2

    .line 529
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_1a

    .line 531
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0x80

    const/4 p2, 0x0

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 532
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    goto :goto_1e

    :cond_1a
    sub-int/2addr p3, p2

    add-int/2addr v1, p3

    .line 534
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    :cond_1e
    :goto_1e
    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 494
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    .line 495
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 496
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    .line 497
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    .line 498
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    return-void
.end method

.method public startNalUnit(JIIJZ)V
    .registers 9

    const/4 v0, 0x0

    .line 503
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 504
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    .line 505
    iput-wide p5, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitTimeUs:J

    .line 506
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    .line 507
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    .line 509
    invoke-static {p4}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isVclBodyNalUnit(I)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_2e

    .line 510
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    if-eqz p1, :cond_21

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    if-nez p1, :cond_21

    if-eqz p7, :cond_1f

    .line 512
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->outputSample(I)V

    .line 514
    :cond_1f
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    .line 516
    :cond_21
    invoke-static {p4}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isPrefixNalUnit(I)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 517
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    .line 518
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    :cond_2e
    const/16 p1, 0x10

    if-lt p4, p1, :cond_38

    const/16 p1, 0x15

    if-gt p4, p1, :cond_38

    const/4 p1, 0x1

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    .line 523
    :goto_39
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    if-nez p1, :cond_41

    const/16 p1, 0x9

    if-gt p4, p1, :cond_42

    :cond_41
    const/4 v0, 0x1

    .line 524
    :cond_42
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    return-void
.end method
