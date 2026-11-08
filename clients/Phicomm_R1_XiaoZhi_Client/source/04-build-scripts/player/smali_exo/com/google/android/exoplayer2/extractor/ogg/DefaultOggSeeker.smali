.class final Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;
    }
.end annotation


# static fields
.field private static final DEFAULT_OFFSET:I = 0x7530

.field private static final MATCH_BYTE_RANGE:I = 0x186a0

.field private static final MATCH_RANGE:I = 0x11940

.field private static final STATE_IDLE:I = 0x4

.field private static final STATE_READ_LAST_PAGE:I = 0x1

.field private static final STATE_SEEK:I = 0x2

.field private static final STATE_SEEK_TO_END:I = 0x0

.field private static final STATE_SKIP:I = 0x3


# instance fields
.field private end:J

.field private endGranule:J

.field private final pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

.field private final payloadEndPosition:J

.field private final payloadStartPosition:J

.field private positionBeforeSeekToEnd:J

.field private start:J

.field private startGranule:J

.field private state:I

.field private final streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

.field private targetGranule:J

.field private totalGranules:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;JJJJZ)V
    .registers 15

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_10

    cmp-long v1, p4, p2

    if-lez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 77
    :goto_11
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 79
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    .line 80
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J

    .line 81
    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    sub-long/2addr p4, p2

    cmp-long p1, p6, p4

    if-eqz p1, :cond_25

    if-eqz p10, :cond_22

    goto :goto_25

    .line 87
    :cond_22
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    goto :goto_2a

    .line 84
    :cond_25
    :goto_25
    iput-wide p8, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    const/4 p1, 0x4

    .line 85
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    .line 89
    :goto_2a
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;)Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;)J
    .registers 3

    .line 33
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;)J
    .registers 3

    .line 33
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;)J
    .registers 3

    .line 33
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    return-wide v0
.end method

.method private getNextSeekPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v2

    if-nez v6, :cond_b

    return-wide v4

    .line 159
    :cond_b
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    .line 160
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    invoke-virtual {v2, p1, v6, v7}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->skipToNextPage(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z

    move-result v2

    if-nez v2, :cond_28

    .line 161
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_20

    return-wide v2

    .line 162
    :cond_20
    new-instance p1, Ljava/io/IOException;

    const-string v0, "No ogg page can be found."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_28
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    .line 168
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 170
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    sub-long/2addr v2, v6

    .line 171
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v6, v6, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v7, v7, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v6, v7

    const-wide/16 v7, 0x0

    cmp-long v9, v7, v2

    if-gtz v9, :cond_4f

    const-wide/32 v9, 0x11940

    cmp-long v11, v2, v9

    if-gez v11, :cond_4f

    return-wide v4

    :cond_4f
    cmp-long v4, v2, v7

    if-gez v4, :cond_5c

    .line 177
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->endGranule:J

    goto :goto_6a

    .line 180
    :cond_5c
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    int-to-long v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->startGranule:J

    .line 184
    :goto_6a
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    sub-long/2addr v0, v4

    const-wide/32 v9, 0x186a0

    cmp-long v11, v0, v9

    if-gez v11, :cond_79

    .line 185
    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    return-wide v4

    :cond_79
    int-to-long v0, v6

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v7

    if-gtz v6, :cond_83

    const-wide/16 v6, 0x2

    goto :goto_84

    :cond_83
    move-wide v6, v4

    :goto_84
    mul-long v0, v0, v6

    .line 191
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long/2addr v6, v0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    iget-wide v10, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    sub-long v8, v0, v10

    mul-long v2, v2, v8

    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->endGranule:J

    iget-wide v12, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->startGranule:J

    sub-long/2addr v8, v12

    div-long/2addr v2, v8

    add-long v8, v6, v2

    sub-long v12, v0, v4

    .line 194
    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private skipToPageOfTargetGranule(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->skipToNextPage(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    .line 209
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_19

    .line 217
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    return-void

    .line 213
    :cond_19
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 214
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->startGranule:J

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic createSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->createSeekMap()Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;

    move-result-object v0

    return-object v0
.end method

.method public createSeekMap()Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;
    .registers 7

    .line 130
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_f

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;

    invoke-direct {v0, p0, v2}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;-><init>(Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker$1;)V

    move-object v2, v0

    :cond_f
    return-object v2
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eqz v0, :cond_30

    if-eq v0, v1, :cond_43

    const/4 v1, 0x2

    const-wide/16 v3, -0x1

    const/4 v5, 0x3

    if-eq v0, v1, :cond_19

    if-eq v0, v5, :cond_24

    if-ne v0, v2, :cond_13

    return-wide v3

    .line 123
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 111
    :cond_19
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->getNextSeekPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v0

    cmp-long v6, v0, v3

    if-eqz v6, :cond_22

    return-wide v0

    .line 115
    :cond_22
    iput v5, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    .line 118
    :cond_24
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->skipToPageOfTargetGranule(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 119
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    .line 120
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->startGranule:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    neg-long v0, v0

    return-wide v0

    .line 98
    :cond_30
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->positionBeforeSeekToEnd:J

    .line 99
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    .line 101
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    const-wide/32 v5, 0xff1b

    sub-long/2addr v0, v5

    cmp-long v5, v0, v3

    if-lez v5, :cond_43

    return-wide v0

    .line 107
    :cond_43
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->readGranuleOfLastPage(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    .line 108
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    .line 109
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->positionBeforeSeekToEnd:J

    return-wide v0
.end method

.method readGranuleOfLastPage(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->reset()V

    .line 231
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->skipToNextPage(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    .line 235
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    .line 237
    :goto_23
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_5b

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    .line 238
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->skipToNextPage(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 239
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_5b

    .line 240
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 241
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v3, v3, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->skipFullyQuietly(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)Z

    move-result v2

    if-nez v2, :cond_56

    goto :goto_5b

    .line 246
    :cond_56
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    goto :goto_23

    :cond_5b
    :goto_5b
    return-wide v0

    .line 232
    :cond_5c
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    goto :goto_63

    :goto_62
    throw p1

    :goto_63
    goto :goto_62
.end method

.method public startSeek(J)V
    .registers 13

    .line 135
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    const-wide/16 v6, 0x0

    move-wide v4, p1

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    const/4 p1, 0x2

    .line 136
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    .line 137
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    .line 138
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    const-wide/16 p1, 0x0

    .line 139
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->startGranule:J

    .line 140
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->endGranule:J

    return-void
.end method
