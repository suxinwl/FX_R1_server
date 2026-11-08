.class final Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ts/H263Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleReader"
.end annotation


# static fields
.field private static final OFFSET_VOP_CODING_TYPE:I = 0x1

.field private static final VOP_CODING_TYPE_INTRA:I


# instance fields
.field private lookingForVopCodingType:Z

.field private final output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private readingSample:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private startCodeValue:I

.field private vopBytesRead:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .registers 2

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    return-void
.end method


# virtual methods
.method public onData([BII)V
    .registers 6

    .line 462
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    if-eqz v0, :cond_20

    add-int/lit8 v0, p2, 0x1

    .line 463
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->vopBytesRead:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_1c

    .line 465
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xc0

    shr-int/lit8 p1, p1, 0x6

    const/4 p2, 0x0

    if-nez p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    .line 466
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    goto :goto_20

    :cond_1c
    sub-int/2addr p3, p2

    add-int/2addr v1, p3

    .line 468
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->vopBytesRead:I

    :cond_20
    :goto_20
    return-void
.end method

.method public onDataEnd(JIZ)V
    .registers 12

    .line 474
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    const/16 v1, 0xb6

    if-ne v0, v1, :cond_25

    if-eqz p4, :cond_25

    iget-boolean p4, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->readingSample:Z

    if-eqz p4, :cond_25

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->sampleTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p4, v1, v3

    if-eqz p4, :cond_25

    .line 478
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->samplePosition:J

    sub-long v3, p1, v3

    long-to-int v4, v3

    .line 479
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    .line 480
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v6, 0x0

    move v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 485
    :cond_25
    iget p3, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    const/16 p4, 0xb3

    if-eq p3, p4, :cond_2d

    .line 486
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->samplePosition:J

    :cond_2d
    return-void
.end method

.method public onStartCode(IJ)V
    .registers 8

    .line 452
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    const/4 v0, 0x0

    .line 453
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 v1, 0x1

    const/16 v2, 0xb6

    if-eq p1, v2, :cond_11

    const/16 v3, 0xb3

    if-ne p1, v3, :cond_f

    goto :goto_11

    :cond_f
    const/4 v3, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v3, 0x1

    .line 454
    :goto_12
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->readingSample:Z

    if-ne p1, v2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 456
    :goto_18
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    .line 457
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->vopBytesRead:I

    .line 458
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->sampleTimeUs:J

    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 445
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->readingSample:Z

    .line 446
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    .line 447
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 v0, -0x1

    .line 448
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    return-void
.end method
