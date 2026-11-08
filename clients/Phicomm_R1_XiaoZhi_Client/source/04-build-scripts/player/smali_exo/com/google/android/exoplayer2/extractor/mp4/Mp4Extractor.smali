.class public final Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;,
        Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$FileType;,
        Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$State;,
        Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Flags;
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private static final FILE_TYPE_HEIC:I = 0x2

.field private static final FILE_TYPE_MP4:I = 0x0

.field private static final FILE_TYPE_QUICKTIME:I = 0x1

.field public static final FLAG_READ_MOTION_PHOTO_METADATA:I = 0x2

.field public static final FLAG_READ_SEF_DATA:I = 0x4

.field public static final FLAG_WORKAROUND_IGNORE_EDIT_LISTS:I = 0x1

.field private static final MAXIMUM_READ_AHEAD_BYTES_STREAM:J = 0xa00000L

.field private static final RELOAD_MINIMUM_SEEK_DISTANCE:J = 0x40000L

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2

.field private static final STATE_READING_SEF:I = 0x3


# instance fields
.field private accumulatedSampleSizes:[[J

.field private atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private final containerAtoms:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private durationUs:J

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private fileType:I

.field private firstVideoTrackIndex:I

.field private final flags:I

.field private motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

.field private final nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private parserState:I

.field private sampleBytesRead:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleTrackIndex:I

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final sefReader:Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

.field private final slowMotionMetadataEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mp4/-$$Lambda$Mp4Extractor$quy71uYOGsneho91FZy1d2UGE1Q;->INSTANCE:Lcom/google/android/exoplayer2/extractor/mp4/-$$Lambda$Mp4Extractor$quy71uYOGsneho91FZy1d2UGE1Q;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    const/4 v0, 0x4

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    const/4 p1, 0x3

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    .line 187
    :goto_d
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    .line 189
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sefReader:Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

    .line 190
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    .line 191
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v2, 0x10

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 192
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 193
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v2, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 194
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 195
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 p1, -0x1

    .line 196
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 197
    sget-object p1, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->PLACEHOLDER:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-array p1, v1, [Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 198
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    return-void
.end method

.method private static brandToFileType(I)I
    .registers 2

    const v0, 0x68656963

    if-eq p0, v0, :cond_e

    const v0, 0x71742020

    if-eq p0, v0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x2

    return p0
.end method

.method private static calculateAccumulatedSampleSizes([Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;)[[J
    .registers 16

    .line 802
    array-length v0, p0

    new-array v0, v0, [[J

    .line 803
    array-length v1, p0

    new-array v1, v1, [I

    .line 804
    array-length v2, p0

    new-array v2, v2, [J

    .line 805
    array-length v3, p0

    new-array v3, v3, [Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 806
    :goto_e
    array-length v6, p0

    if-ge v5, v6, :cond_28

    .line 807
    aget-object v6, p0, v5

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    new-array v6, v6, [J

    aput-object v6, v0, v5

    .line 808
    aget-object v6, p0, v5

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v7, v6, v4

    aput-wide v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_28
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    .line 812
    :goto_2b
    array-length v8, p0

    if-ge v7, v8, :cond_71

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 815
    :goto_35
    array-length v12, p0

    if-ge v11, v12, :cond_48

    .line 816
    aget-boolean v12, v3, v11

    if-nez v12, :cond_45

    aget-wide v12, v2, v11

    cmp-long v14, v12, v8

    if-gtz v14, :cond_45

    .line 818
    aget-wide v8, v2, v11

    move v10, v11

    :cond_45
    add-int/lit8 v11, v11, 0x1

    goto :goto_35

    .line 821
    :cond_48
    aget v8, v1, v10

    .line 822
    aget-object v9, v0, v10

    aput-wide v5, v9, v8

    .line 823
    aget-object v9, p0, v10

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v9, v9, v8

    int-to-long v11, v9

    add-long/2addr v5, v11

    const/4 v9, 0x1

    add-int/2addr v8, v9

    .line 824
    aput v8, v1, v10

    .line 825
    aget-object v11, v0, v10

    array-length v11, v11

    if-ge v8, v11, :cond_6c

    .line 826
    aget-object v9, p0, v10

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v8, v9, v8

    aput-wide v8, v2, v10

    goto :goto_2b

    .line 829
    :cond_6c
    aput-boolean v9, v3, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    :cond_71
    return-object v0
.end method

.method private enterReadingAtomHeaderState()V
    .registers 2

    const/4 v0, 0x0

    .line 356
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    .line 357
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    return-void
.end method

.method private static getSynchronizationSampleIndex(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;J)I
    .registers 5

    .line 867
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 870
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v0

    :cond_b
    return v0
.end method

.method private getTrackIndexOfNextReadSample(J)I
    .registers 23

    move-object/from16 v0, p0

    const/4 v2, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, 0x1

    const-wide v11, 0x7fffffffffffffffL

    const/4 v13, 0x1

    const-wide v14, 0x7fffffffffffffffL

    .line 720
    :goto_16
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v3, v1

    if-ge v7, v3, :cond_65

    .line 721
    aget-object v1, v1, v7

    .line 722
    iget v3, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 723
    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v3, v4, :cond_26

    goto :goto_62

    .line 726
    :cond_26
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v4, v1, v3

    .line 727
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    aget-object v1, v1, v7

    aget-wide v16, v1, v3

    sub-long v4, v4, p1

    const-wide/16 v18, 0x0

    cmp-long v1, v4, v18

    if-ltz v1, :cond_4a

    const-wide/32 v18, 0x40000

    cmp-long v1, v4, v18

    if-ltz v1, :cond_48

    goto :goto_4a

    :cond_48
    const/4 v1, 0x0

    goto :goto_4b

    :cond_4a
    :goto_4a
    const/4 v1, 0x1

    :goto_4b
    if-nez v1, :cond_4f

    if-nez v13, :cond_55

    :cond_4f
    if-ne v1, v13, :cond_5a

    cmp-long v3, v4, v14

    if-gez v3, :cond_5a

    :cond_55
    move v13, v1

    move-wide v14, v4

    move v6, v7

    move-wide/from16 v11, v16

    :cond_5a
    cmp-long v3, v16, v8

    if-gez v3, :cond_62

    move v10, v1

    move v2, v7

    move-wide/from16 v8, v16

    :cond_62
    :goto_62
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    :cond_65
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v8, v3

    if-eqz v1, :cond_78

    if-eqz v10, :cond_78

    const-wide/32 v3, 0xa00000

    add-long/2addr v8, v3

    cmp-long v1, v11, v8

    if-gez v1, :cond_79

    :cond_78
    move v2, v6

    :cond_79
    return v2
.end method

.method static synthetic lambda$processMoovAtom$1(Lcom/google/android/exoplayer2/extractor/mp4/Track;)Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .registers 1

    return-object p0
.end method

.method static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 67
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static maybeAdjustSeekOffset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;JJ)J
    .registers 5

    .line 847
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->getSynchronizationSampleIndex(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_8

    return-wide p3

    .line 851
    :cond_8
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide p1, p0, p1

    .line 852
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private maybeSkipRemainingMetaAtomHeaderBytes(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 775
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 776
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 777
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->maybeSkipRemainingMetaAtomHeaderBytes(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 778
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 779
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    return-void
.end method

.method private processAtomEnded(J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 470
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_45

    .line 471
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 472
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    const v3, 0x6d6f6f76

    if-ne v2, v3, :cond_31

    .line 474
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processMoovAtom(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    .line 475
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 476
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_0

    .line 477
    :cond_31
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 481
    :cond_45
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    if-eq p1, v1, :cond_4c

    .line 482
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    :cond_4c
    return-void
.end method

.method private processEndOfStreamReadingAtomHeader()V
    .registers 6

    .line 763
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->fileType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_48

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_48

    .line 765
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    .line 767
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    if-nez v1, :cond_18

    const/4 v1, 0x0

    goto :goto_24

    :cond_18
    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    aput-object v4, v3, v2

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 768
    :goto_24
    new-instance v2, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 769
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 770
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    :cond_48
    return-void
.end method

.method private static processFtypAtom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .registers 2

    const/16 v0, 0x8

    .line 882
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 883
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 884
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->brandToFileType(I)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    :cond_10
    const/4 v0, 0x4

    .line 888
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 889
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_25

    .line 890
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->brandToFileType(I)I

    move-result v0

    if-eqz v0, :cond_14

    return v0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method private processMoovAtom(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 490
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 495
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->fileType:I

    const/4 v11, 0x1

    if-ne v2, v11, :cond_10

    const/4 v7, 0x1

    goto :goto_11

    :cond_10
    const/4 v7, 0x0

    .line 496
    :goto_11
    new-instance v12, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    invoke-direct {v12}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;-><init>()V

    const v2, 0x75647461

    .line 497
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 500
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseUdta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)Landroid/util/Pair;

    move-result-object v2

    .line 501
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 502
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v3, :cond_30

    .line 504
    invoke-virtual {v12, v3}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->setFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    :cond_30
    move-object v14, v2

    move-object v15, v3

    goto :goto_35

    :cond_33
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_35
    const v2, 0x6d657461

    .line 508
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 510
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMdtaFromMeta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v2

    move-object v8, v2

    goto :goto_45

    :cond_44
    const/4 v8, 0x0

    .line 513
    :goto_45
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    and-int/2addr v2, v11

    if-eqz v2, :cond_4c

    const/4 v6, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v6, 0x0

    :goto_4d
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    .line 514
    sget-object v16, Lcom/google/android/exoplayer2/extractor/mp4/-$$Lambda$Mp4Extractor$jNmPwqo4-EkxjMq3riO8isp5v1k;->INSTANCE:Lcom/google/android/exoplayer2/extractor/mp4/-$$Lambda$Mp4Extractor$jNmPwqo4-EkxjMq3riO8isp5v1k;

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v13, v8

    move-object/from16 v8, v16

    .line 515
    invoke-static/range {v1 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTraks(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v1

    .line 524
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move-wide v10, v3

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_66
    if-ge v6, v2, :cond_12a

    .line 526
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    check-cast v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 527
    iget v5, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-nez v5, :cond_7d

    move-object/from16 v18, v1

    move/from16 v19, v2

    const/4 v1, -0x1

    const/16 v16, 0x1

    goto/16 :goto_11d

    .line 530
    :cond_7d
    iget-object v5, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    move-object/from16 v18, v1

    move/from16 v19, v2

    .line 531
    iget-wide v1, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->durationUs:J

    cmp-long v20, v1, v3

    if-eqz v20, :cond_8c

    iget-wide v1, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->durationUs:J

    goto :goto_8e

    :cond_8c
    iget-wide v1, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->durationUs:J

    .line 533
    :goto_8e
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 534
    new-instance v3, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    move-wide/from16 v21, v10

    iget v10, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    .line 535
    invoke-interface {v4, v6, v10}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v4

    invoke-direct {v3, v5, v8, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    .line 538
    iget-object v4, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v10, "audio/true-hd"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b2

    .line 540
    iget v4, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->maximumSize:I

    mul-int/lit8 v4, v4, 0x10

    goto :goto_b6

    .line 544
    :cond_b2
    iget v4, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->maximumSize:I

    add-int/lit8 v4, v4, 0x1e

    .line 547
    :goto_b6
    iget-object v10, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v10

    .line 548
    invoke-virtual {v10, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 549
    iget v4, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v11, 0x2

    if-ne v4, v11, :cond_db

    const-wide/16 v23, 0x0

    cmp-long v4, v1, v23

    if-lez v4, :cond_db

    iget v4, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    const/4 v11, 0x1

    if-le v4, v11, :cond_db

    .line 552
    iget v4, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    int-to-float v4, v4

    long-to-float v1, v1

    const v2, 0x49742400    # 1000000.0f

    div-float/2addr v1, v2

    div-float/2addr v4, v1

    .line 553
    invoke-virtual {v10, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setFrameRate(F)Lcom/google/android/exoplayer2/Format$Builder;

    .line 556
    :cond_db
    iget v1, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    invoke-static {v1, v12, v10}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->setFormatGaplessInfo(ILcom/google/android/exoplayer2/extractor/GaplessInfoHolder;Lcom/google/android/exoplayer2/Format$Builder;)V

    .line 557
    iget v1, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v2, 0x2

    new-array v4, v2, [Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v2, 0x0

    aput-object v14, v4, v2

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    .line 563
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f2

    const/4 v2, 0x0

    goto :goto_f9

    :cond_f2
    new-instance v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-direct {v2, v11}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_f9
    const/16 v16, 0x1

    aput-object v2, v4, v16

    .line 557
    invoke-static {v1, v15, v13, v10, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->setFormatMetadata(ILcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/Format$Builder;[Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 564
    iget-object v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 566
    iget v1, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_117

    const/4 v1, -0x1

    if-ne v7, v1, :cond_118

    .line 567
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    move v7, v2

    goto :goto_118

    :cond_117
    const/4 v1, -0x1

    .line 569
    :cond_118
    :goto_118
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v10, v21

    :goto_11d
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v18

    move/from16 v2, v19

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_66

    .line 571
    :cond_12a
    iput v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    .line 572
    iput-wide v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->durationUs:J

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 573
    invoke-interface {v9, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 574
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->calculateAccumulatedSampleSizes([Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;)[[J

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    .line 576
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 577
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    return-void
.end method

.method private processUnparsedAtom(J)V
    .registers 16

    .line 784
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    const v1, 0x6d707664

    if-ne v0, v1, :cond_21

    .line 787
    new-instance v0, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    const-wide/16 v3, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v5, v1

    add-long v9, p1, v5

    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    int-to-long v1, v1

    sub-long v11, v5, v1

    move-object v2, v0

    move-wide v5, p1

    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    :cond_21
    return-void
.end method

.method private readAtomHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_2f

    .line 363
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v3, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_18

    .line 364
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processEndOfStreamReadingAtomHeader()V

    return v3

    .line 367
    :cond_18
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 368
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 369
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 370
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    .line 373
    :cond_2f
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4e

    .line 376
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 377
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 378
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    goto :goto_79

    :cond_4e
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_79

    .line 382
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_6a

    .line 384
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    if-eqz v0, :cond_6a

    .line 386
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    :cond_6a
    cmp-long v0, v4, v6

    if-eqz v0, :cond_79

    .line 390
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 394
    :cond_79
    :goto_79
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_10d

    .line 399
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 400
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    add-long/2addr v2, v4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    sub-long/2addr v2, v6

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_a4

    .line 401
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    const v4, 0x6d657461

    if-ne v0, v4, :cond_a4

    .line 402
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->maybeSkipRemainingMetaAtomHeaderBytes(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 404
    :cond_a4
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 405
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_bd

    .line 406
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    goto :goto_10c

    .line 409
    :cond_bd
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_10c

    .line 411
    :cond_c1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->shouldParseLeafAtom(I)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 414
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-ne p1, v2, :cond_cf

    const/4 p1, 0x1

    goto :goto_d0

    :cond_cf
    const/4 p1, 0x0

    :goto_d0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 415
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/32 v6, 0x7fffffff

    cmp-long p1, v4, v6

    if-gtz p1, :cond_de

    const/4 p1, 0x1

    goto :goto_df

    :cond_de
    const/4 p1, 0x0

    :goto_df
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 416
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    long-to-int v0, v4

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 417
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-static {v0, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 419
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_10c

    .line 421
    :cond_fc
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v4, p1

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processUnparsedAtom(J)V

    const/4 p1, 0x0

    .line 422
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 423
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    :goto_10c
    return v1

    :cond_10d
    const-string p1, "Atom size less than header length (unsupported)."

    .line 395
    invoke-static {p1}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1
.end method

.method private readAtomPayload(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 436
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 437
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 439
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_44

    .line 441
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p2

    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    long-to-int v1, v0

    invoke-interface {p1, p2, v7, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 442
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    const p2, 0x66747970

    if-ne p1, p2, :cond_29

    .line 443
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processFtypAtom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->fileType:I

    goto :goto_4f

    .line 444
    :cond_29
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4f

    .line 445
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {p2, v0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;-><init>(ILcom/google/android/exoplayer2/util/ParsableByteArray;)V

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_4f

    :cond_44
    const-wide/32 v7, 0x40000

    cmp-long v4, v0, v7

    if-gez v4, :cond_51

    long-to-int p2, v0

    .line 450
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    :cond_4f
    :goto_4f
    const/4 p1, 0x0

    goto :goto_59

    .line 452
    :cond_51
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    add-long/2addr v7, v0

    iput-wide v7, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    const/4 p1, 0x1

    .line 456
    :goto_59
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    if-eqz p1, :cond_64

    .line 457
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_64

    goto :goto_65

    :cond_64
    const/4 v5, 0x0

    :goto_65
    return v5
.end method

.method private readSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 596
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    .line 597
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_16

    .line 598
    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->getTrackIndexOfNextReadSample(J)I

    move-result v4

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    if-ne v4, v5, :cond_16

    return v5

    .line 603
    :cond_16
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    aget-object v4, v4, v6

    .line 604
    iget-object v14, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 605
    iget v15, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 606
    iget-object v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v7, v6, v15

    .line 607
    iget-object v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v6, v6, v15

    .line 608
    iget-object v13, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    sub-long v2, v7, v2

    .line 609
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    int-to-long v9, v9

    add-long/2addr v2, v9

    const-wide/16 v9, 0x0

    const/4 v12, 0x1

    cmp-long v11, v2, v9

    if-ltz v11, :cond_151

    const-wide/32 v9, 0x40000

    cmp-long v11, v2, v9

    if-ltz v11, :cond_48

    move-object/from16 v1, p2

    const/16 v18, 0x1

    goto/16 :goto_155

    .line 614
    :cond_48
    iget-object v7, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->sampleTransformation:I

    if-ne v7, v12, :cond_53

    const-wide/16 v7, 0x8

    add-long/2addr v2, v7

    add-int/lit8 v6, v6, -0x8

    :cond_53
    long-to-int v3, v2

    .line 620
    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 621
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v3, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_c3

    .line 624
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    .line 625
    aput-byte v11, v2, v11

    .line 626
    aput-byte v11, v2, v12

    const/4 v7, 0x2

    .line 627
    aput-byte v11, v2, v7

    .line 628
    iget-object v7, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 629
    iget-object v8, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v8, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v9, 0x4

    rsub-int/lit8 v8, v8, 0x4

    .line 633
    :goto_77
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v10, v6, :cond_107

    .line 634
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v10, :cond_ae

    .line 636
    invoke-interface {v1, v2, v8, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 637
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v10, v7

    iput v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 638
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 639
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    if-ltz v10, :cond_a7

    .line 644
    iput v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 646
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 647
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v14, v10, v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 648
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v6, v8

    goto :goto_77

    :cond_a7
    const-string v1, "Invalid NAL length"

    .line 641
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1

    .line 652
    :cond_ae
    invoke-interface {v14, v1, v10, v11}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v10

    .line 653
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 654
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 655
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v9, 0x4

    goto :goto_77

    .line 659
    :cond_c3
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v7, "audio/ac4"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 660
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-nez v2, :cond_e5

    .line 661
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/audio/Ac4Util;->getAc4SampleHeader(ILcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 662
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v7, 0x7

    invoke-interface {v14, v2, v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 663
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v2, v7

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    :cond_e5
    add-int/lit8 v6, v6, 0x7

    goto :goto_ed

    :cond_e8
    if-eqz v13, :cond_ed

    .line 667
    invoke-virtual {v13, v1}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->startSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 670
    :cond_ed
    :goto_ed
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v2, v6, :cond_107

    sub-int v2, v6, v2

    .line 671
    invoke-interface {v14, v1, v2, v11}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v2

    .line 672
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v7, v2

    iput v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 673
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v7, v2

    iput v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 674
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v7, v2

    iput v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_ed

    :cond_107
    move v1, v6

    .line 678
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v8, v2, v15

    .line 679
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->flags:[I

    aget v2, v2, v15

    if-eqz v13, :cond_136

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v6, v13

    move-object v7, v14

    move v10, v2

    const/4 v2, 0x0

    move v11, v1

    const/16 v18, 0x1

    move/from16 v12, v16

    move-object v1, v13

    move-object/from16 v13, v17

    .line 681
    invoke-virtual/range {v6 .. v13}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->sampleMetadata(Lcom/google/android/exoplayer2/extractor/TrackOutput;JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v15, v15, 0x1

    .line 683
    iget-object v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v15, v6, :cond_134

    .line 684
    invoke-virtual {v1, v14, v3}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->outputPendingSampleMetadata(Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    :cond_134
    const/4 v3, 0x0

    goto :goto_142

    :cond_136
    const/4 v3, 0x0

    const/16 v18, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v14

    move-wide v7, v8

    move v9, v2

    move v10, v1

    .line 687
    invoke-interface/range {v6 .. v12}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 691
    :goto_142
    iget v1, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 692
    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 693
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 694
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 695
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    return v3

    :cond_151
    const/16 v18, 0x1

    move-object/from16 v1, p2

    .line 611
    :goto_155
    iput-wide v7, v1, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    return v18
.end method

.method private readSefData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sefReader:Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;Ljava/util/List;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 463
    iget-wide v0, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_16

    .line 464
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    :cond_16
    return p1
.end method

.method private static shouldParseContainerAtom(I)Z
    .registers 2

    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_26

    const v0, 0x7472616b

    if-eq p0, v0, :cond_26

    const v0, 0x6d646961

    if-eq p0, v0, :cond_26

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_26

    const v0, 0x7374626c

    if-eq p0, v0, :cond_26

    const v0, 0x65647473

    if-eq p0, v0, :cond_26

    const v0, 0x6d657461

    if-ne p0, v0, :cond_24

    goto :goto_26

    :cond_24
    const/4 p0, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 p0, 0x1

    :goto_27
    return p0
.end method

.method private static shouldParseLeafAtom(I)Z
    .registers 2

    const v0, 0x6d646864

    if-eq p0, v0, :cond_5d

    const v0, 0x6d766864

    if-eq p0, v0, :cond_5d

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_5d

    const v0, 0x73747364

    if-eq p0, v0, :cond_5d

    const v0, 0x73747473

    if-eq p0, v0, :cond_5d

    const v0, 0x73747373

    if-eq p0, v0, :cond_5d

    const v0, 0x63747473

    if-eq p0, v0, :cond_5d

    const v0, 0x656c7374

    if-eq p0, v0, :cond_5d

    const v0, 0x73747363

    if-eq p0, v0, :cond_5d

    const v0, 0x7374737a

    if-eq p0, v0, :cond_5d

    const v0, 0x73747a32

    if-eq p0, v0, :cond_5d

    const v0, 0x7374636f

    if-eq p0, v0, :cond_5d

    const v0, 0x636f3634

    if-eq p0, v0, :cond_5d

    const v0, 0x746b6864

    if-eq p0, v0, :cond_5d

    const v0, 0x66747970

    if-eq p0, v0, :cond_5d

    const v0, 0x75647461

    if-eq p0, v0, :cond_5d

    const v0, 0x6b657973

    if-eq p0, v0, :cond_5d

    const v0, 0x696c7374

    if-ne p0, v0, :cond_5b

    goto :goto_5d

    :cond_5b
    const/4 p0, 0x0

    goto :goto_5e

    :cond_5d
    :goto_5d
    const/4 p0, 0x1

    :goto_5e
    return p0
.end method

.method private updateSampleIndex(Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;J)V
    .registers 7

    .line 752
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 753
    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    .line 756
    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v1

    .line 758
    :cond_d
    iput v1, p1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .registers 3

    .line 277
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .registers 4

    const/4 v0, -0x1

    .line 282
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->getSeekPoints(JI)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    move-result-object p1

    return-object p1
.end method

.method public getSeekPoints(JI)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .registers 16

    .line 298
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v0, v0

    if-nez v0, :cond_d

    .line 299
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    sget-object p2, Lcom/google/android/exoplayer2/extractor/SeekPoint;->START:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p1

    :cond_d
    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    if-eq p3, v2, :cond_14

    move v3, p3

    goto :goto_16

    .line 308
    :cond_14
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    :goto_16
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v3, v2, :cond_59

    .line 311
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 312
    invoke-static {v3, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->getSynchronizationSampleIndex(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;J)I

    move-result v6

    if-ne v6, v2, :cond_31

    .line 314
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    sget-object p2, Lcom/google/android/exoplayer2/extractor/SeekPoint;->START:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p1

    .line 316
    :cond_31
    iget-object v7, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v8, v7, v6

    .line 318
    iget-object v7, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v10, v7, v6

    cmp-long v7, v8, p1

    if-gez v7, :cond_54

    .line 319
    iget v7, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_54

    .line 320
    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result p1

    if-eq p1, v2, :cond_54

    if-eq p1, v6, :cond_54

    .line 322
    iget-object p2, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v0, p2, p1

    .line 323
    iget-object p2, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide p1, p2, p1

    goto :goto_56

    :cond_54
    move-wide p1, v0

    move-wide v0, v4

    :goto_56
    move-wide v6, p1

    move-wide p1, v8

    goto :goto_60

    :cond_59
    const-wide v10, 0x7fffffffffffffffL

    move-wide v6, v0

    move-wide v0, v4

    :goto_60
    if-ne p3, v2, :cond_7f

    const/4 p3, 0x0

    .line 333
    :goto_63
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v3, v2

    if-ge p3, v3, :cond_7f

    .line 334
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    if-eq p3, v3, :cond_7c

    .line 335
    aget-object v2, v2, p3

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 336
    invoke-static {v2, p1, p2, v10, v11}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->maybeAdjustSeekOffset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v10

    cmp-long v3, v0, v4

    if-eqz v3, :cond_7c

    .line 338
    invoke-static {v2, v0, v1, v6, v7}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->maybeAdjustSeekOffset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v6

    :cond_7c
    add-int/lit8 p3, p3, 0x1

    goto :goto_63

    .line 344
    :cond_7f
    new-instance p3, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {p3, p1, p2, v10, v11}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    cmp-long p1, v0, v4

    if-nez p1, :cond_8e

    .line 346
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p1

    .line 348
    :cond_8e
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {p1, v0, v1, v6, v7}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 349
    new-instance p2, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p2, p3, p1}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p2
.end method

.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method

.method public isSeekable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    if-eqz v0, :cond_24

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 261
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->readSefData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 263
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 259
    :cond_18
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->readSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 254
    :cond_1d
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->readAtomPayload(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 249
    :cond_24
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->readAtomHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public seek(JJ)V
    .registers 9

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    .line 215
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    const/4 v1, -0x1

    .line 216
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 217
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 218
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 219
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_2b

    .line 223
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_20

    .line 224
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_41

    .line 226
    :cond_20
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sefReader:Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->reset()V

    .line 227
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_41

    .line 230
    :cond_2b
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length p2, p1

    :goto_2e
    if-ge v0, p2, :cond_41

    aget-object v1, p1, v0

    .line 231
    invoke-direct {p0, v1, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->updateSampleIndex(Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;J)V

    .line 232
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    if-eqz v2, :cond_3e

    .line 233
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->reset()V

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_41
    :goto_41
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffUnfragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result p1

    return p1
.end method
