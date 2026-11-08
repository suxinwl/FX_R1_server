.class final Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
.super Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
.source "HlsMediaChunk.java"


# static fields
.field private static final PRIV_TIMESTAMP_FRAME_OWNER:Ljava/lang/String; = "com.apple.streaming.transportStreamTimestamp"

.field private static final uidSource:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private bytesLoaded:I

.field public final discontinuitySequenceNumber:I

.field private final extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

.field public final hlsUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

.field private final id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final id3Decoder:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

.field private id3TimestampPeeked:Z

.field private final initDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final initDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private initLoadCompleted:Z

.field private initSegmentBytesLoaded:I

.field private final isEncrypted:Z

.field private final isMasterTimestampSource:Z

.field private final isPackedAudioExtractor:Z

.field private volatile loadCanceled:Z

.field private volatile loadCompleted:Z

.field private output:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

.field private final reusingExtractor:Z

.field private final shouldSpliceIn:Z

.field private final timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

.field public final uid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->uidSource:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/util/List;ILjava/lang/Object;JJIIZLcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;Lcom/google/android/exoplayer2/drm/DrmInitData;[B[B)V
    .registers 38
    .param p1, "extractorFactory"    # Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;
    .param p2, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p3, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p4, "initDataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p5, "hlsUrl"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p7, "trackSelectionReason"    # I
    .param p8, "trackSelectionData"    # Ljava/lang/Object;
    .param p9, "startTimeUs"    # J
    .param p11, "endTimeUs"    # J
    .param p13, "chunkIndex"    # I
    .param p14, "discontinuitySequenceNumber"    # I
    .param p15, "isMasterTimestampSource"    # Z
    .param p16, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .param p17, "previousChunk"    # Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    .param p18, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .param p19, "fullSegmentEncryptionKey"    # [B
    .param p20, "encryptionIv"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;I",
            "Ljava/lang/Object;",
            "JJIIZ",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            "Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "[B[B)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p6, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->buildDataSource(Lcom/google/android/exoplayer2/upstream/DataSource;[B[B)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v5

    move-object/from16 v0, p5

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v4, p0

    move-object/from16 v6, p3

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move/from16 v14, p13

    invoke-direct/range {v4 .. v14}, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJI)V

    .line 118
    move/from16 v0, p14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->discontinuitySequenceNumber:I

    .line 119
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 120
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->hlsUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 121
    move/from16 v0, p15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isMasterTimestampSource:Z

    .line 122
    move-object/from16 v0, p16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 124
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    instance-of v4, v4, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isEncrypted:Z

    .line 125
    const/4 v5, 0x0

    .line 126
    .local v5, "previousExtractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    if-eqz p17, :cond_d8

    .line 127
    move-object/from16 v0, p17

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->hlsUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move-object/from16 v0, p5

    if-eq v4, v0, :cond_d1

    const/4 v4, 0x1

    :goto_53
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->shouldSpliceIn:Z

    .line 128
    move-object/from16 v0, p17

    iget v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->discontinuitySequenceNumber:I

    move/from16 v0, p14

    if-ne v4, v0, :cond_65

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->shouldSpliceIn:Z

    if-eqz v4, :cond_d3

    :cond_65
    const/4 v5, 0x0

    .line 133
    :goto_66
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v4, p1

    move-object/from16 v8, p6

    move-object/from16 v9, p18

    move-object/from16 v10, p16

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;->createExtractor(Lcom/google/android/exoplayer2/extractor/Extractor;Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Landroid/util/Pair;

    move-result-object v15

    .line 135
    .local v15, "extractorData":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/extractor/Extractor;Ljava/lang/Boolean;>;"
    iget-object v4, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/extractor/Extractor;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 136
    iget-object v4, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isPackedAudioExtractor:Z

    .line 137
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-ne v4, v5, :cond_de

    const/4 v4, 0x1

    :goto_95
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->reusingExtractor:Z

    .line 138
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->reusingExtractor:Z

    if-eqz v4, :cond_e0

    if-eqz p4, :cond_e0

    const/4 v4, 0x1

    :goto_a2
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initLoadCompleted:Z

    .line 139
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isPackedAudioExtractor:Z

    if-eqz v4, :cond_f0

    .line 140
    if-eqz p17, :cond_e2

    move-object/from16 v0, p17

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Decoder:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

    :goto_b2
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Decoder:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

    .line 141
    if-eqz p17, :cond_e8

    move-object/from16 v0, p17

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    :goto_bc
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 147
    :goto_c0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 148
    sget-object v4, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->uidSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->uid:I

    .line 149
    return-void

    .line 127
    .end local v15    # "extractorData":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/extractor/Extractor;Ljava/lang/Boolean;>;"
    :cond_d1
    const/4 v4, 0x0

    goto :goto_53

    .line 128
    :cond_d3
    move-object/from16 v0, p17

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    goto :goto_66

    .line 131
    :cond_d8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->shouldSpliceIn:Z

    goto :goto_66

    .line 137
    .restart local v15    # "extractorData":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/extractor/Extractor;Ljava/lang/Boolean;>;"
    :cond_de
    const/4 v4, 0x0

    goto :goto_95

    .line 138
    :cond_e0
    const/4 v4, 0x0

    goto :goto_a2

    .line 140
    :cond_e2
    new-instance v4, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;-><init>()V

    goto :goto_b2

    .line 141
    :cond_e8
    new-instance v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v6, 0xa

    invoke-direct {v4, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    goto :goto_bc

    .line 144
    :cond_f0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Decoder:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

    .line 145
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto :goto_c0
.end method

.method private static buildDataSource(Lcom/google/android/exoplayer2/upstream/DataSource;[B[B)Lcom/google/android/exoplayer2/upstream/DataSource;
    .registers 4
    .param p0, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p1, "fullSegmentEncryptionKey"    # [B
    .param p2, "encryptionIv"    # [B

    .prologue
    .line 324
    if-eqz p1, :cond_8

    .line 325
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/Aes128DataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;[B[B)V

    move-object p0, v0

    .line 327
    .end local p0    # "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    :cond_8
    return-object p0
.end method

.method private loadMedia()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 227
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isEncrypted:Z

    if-eqz v1, :cond_5f

    .line 228
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 229
    .local v8, "loadDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->bytesLoaded:I

    if-eqz v1, :cond_5d

    move v10, v11

    .line 234
    .local v10, "skipLoadedBytes":Z
    :goto_c
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isMasterTimestampSource:Z

    if-nez v1, :cond_6a

    .line 235
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->waitUntilInitialized()V

    .line 241
    :cond_15
    :goto_15
    :try_start_15
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-wide v2, v8, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 242
    invoke-interface {v4, v8}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;JJ)V

    .line 243
    .local v0, "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isPackedAudioExtractor:Z

    if-eqz v1, :cond_47

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3TimestampPeeked:Z

    if-nez v1, :cond_47

    .line 244
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->peekId3PrivTimestamp(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v6

    .line 245
    .local v6, "id3Timestamp":J
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3TimestampPeeked:Z

    .line 246
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->output:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v6, v2

    if-eqz v2, :cond_81

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 247
    invoke-virtual {v2, v6, v7}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v2

    .line 246
    :goto_44
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->setSampleOffsetUs(J)V

    .line 249
    .end local v6    # "id3Timestamp":J
    :cond_47
    if-eqz v10, :cond_4e

    .line 250
    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->bytesLoaded:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V
    :try_end_4e
    .catchall {:try_start_15 .. :try_end_4e} :catchall_a6

    .line 253
    :cond_4e
    const/4 v9, 0x0

    .line 254
    .local v9, "result":I
    :goto_4f
    if-nez v9, :cond_84

    :try_start_51
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCanceled:Z

    if-nez v1, :cond_84

    .line 255
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer2/extractor/Extractor;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    :try_end_5b
    .catchall {:try_start_51 .. :try_end_5b} :catchall_98

    move-result v9

    goto :goto_4f

    .line 229
    .end local v0    # "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .end local v9    # "result":I
    .end local v10    # "skipLoadedBytes":Z
    :cond_5d
    const/4 v10, 0x0

    goto :goto_c

    .line 231
    .end local v8    # "loadDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :cond_5f
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->bytesLoaded:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/DataSpec;->subrange(J)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v8

    .line 232
    .restart local v8    # "loadDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    const/4 v10, 0x0

    .restart local v10    # "skipLoadedBytes":Z
    goto :goto_c

    .line 236
    :cond_6a
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v1, v2, v4

    if-nez v1, :cond_15

    .line 238
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->setFirstSampleTimestampUs(J)V

    goto :goto_15

    .line 247
    .restart local v0    # "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .restart local v6    # "id3Timestamp":J
    :cond_81
    :try_start_81
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    goto :goto_44

    .line 258
    .end local v6    # "id3Timestamp":J
    .restart local v9    # "result":I
    :cond_84
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->bytesLoaded:I
    :try_end_90
    .catchall {:try_start_81 .. :try_end_90} :catchall_a6

    .line 261
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 263
    iput-boolean v11, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCompleted:Z

    .line 264
    return-void

    .line 258
    :catchall_98
    move-exception v1

    :try_start_99
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->bytesLoaded:I

    throw v1
    :try_end_a6
    .catchall {:try_start_99 .. :try_end_a6} :catchall_a6

    .line 261
    .end local v0    # "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .end local v9    # "result":I
    :catchall_a6
    move-exception v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    throw v1
.end method

.method private maybeLoadInitData()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 198
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initLoadCompleted:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    if-nez v1, :cond_9

    .line 218
    :cond_8
    :goto_8
    return-void

    .line 202
    :cond_9
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initSegmentBytesLoaded:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/DataSpec;->subrange(J)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v6

    .line 204
    .local v6, "initSegmentDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :try_start_12
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-wide v2, v6, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 205
    invoke-interface {v4, v6}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;JJ)V
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_53

    .line 207
    .local v0, "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    const/4 v7, 0x0

    .line 208
    .local v7, "result":I
    :goto_22
    if-nez v7, :cond_30

    :try_start_24
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCanceled:Z

    if-nez v1, :cond_30

    .line 209
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer2/extractor/Extractor;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_45

    move-result v7

    goto :goto_22

    .line 212
    :cond_30
    :try_start_30
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initSegmentBytesLoaded:I
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_53

    .line 215
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 217
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initLoadCompleted:Z

    goto :goto_8

    .line 212
    :catchall_45
    move-exception v1

    :try_start_46
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->initSegmentBytesLoaded:I

    throw v1
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_53

    .line 215
    .end local v0    # "input":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .end local v7    # "result":I
    :catchall_53
    move-exception v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    throw v1
.end method

.method private peekId3PrivTimestamp(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .registers 16
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 278
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v9, v9, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v10, 0x0

    const/16 v11, 0xa

    const/4 v12, 0x1

    invoke-interface {p1, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v9

    if-nez v9, :cond_17

    .line 279
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 313
    :goto_16
    return-wide v10

    .line 281
    :cond_17
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 282
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v3

    .line 283
    .local v3, "id":I
    sget v9, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->ID3_TAG:I

    if-eq v3, v9, :cond_2e

    .line 284
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_16

    .line 286
    :cond_2e
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 287
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v4

    .line 288
    .local v4, "id3Size":I
    add-int/lit8 v8, v4, 0xa

    .line 289
    .local v8, "requiredCapacity":I
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v9

    if-le v8, v9, :cond_58

    .line 290
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v9, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 291
    .local v0, "data":[B
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 292
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v10, v10, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v11, 0x0

    const/16 v12, 0xa

    invoke-static {v0, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    .end local v0    # "data":[B
    :cond_58
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v9, v9, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v10, 0xa

    const/4 v11, 0x1

    invoke-interface {p1, v9, v10, v4, v11}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v9

    if-nez v9, :cond_6b

    .line 295
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_16

    .line 297
    :cond_6b
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Decoder:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

    iget-object v10, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v10, v10, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {v9, v10, v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decode([BI)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v5

    .line 298
    .local v5, "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    if-nez v5, :cond_7d

    .line 299
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_16

    .line 301
    :cond_7d
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v6

    .line 302
    .local v6, "metadataLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_82
    if-ge v2, v6, :cond_b8

    .line 303
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    .line 304
    .local v1, "frame":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    instance-of v9, v1, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    if-eqz v9, :cond_b5

    move-object v7, v1

    .line 305
    check-cast v7, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    .line 306
    .local v7, "privFrame":Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;
    const-string v9, "com.apple.streaming.transportStreamTimestamp"

    iget-object v10, v7, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b5

    .line 307
    iget-object v9, v7, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->privateData:[B

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v11, v11, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v12, 0x0

    const/16 v13, 0x8

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 309
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->id3Data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v10

    goto/16 :goto_16

    .line 302
    .end local v7    # "privFrame":Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;
    :cond_b5
    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    .line 313
    .end local v1    # "frame":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    :cond_b8
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_16
.end method


# virtual methods
.method public bytesLoaded()J
    .registers 3

    .prologue
    .line 172
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->bytesLoaded:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public cancelLoad()V
    .registers 2

    .prologue
    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCanceled:Z

    .line 180
    return-void
.end method

.method public init(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .registers 4
    .param p1, "output"    # Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->output:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 159
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->uid:I

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->shouldSpliceIn:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->init(IZ)V

    .line 160
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->reusingExtractor:Z

    if-nez v0, :cond_12

    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/Extractor;->init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    .line 163
    :cond_12
    return-void
.end method

.method public isLoadCanceled()Z
    .registers 2

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCanceled:Z

    return v0
.end method

.method public isLoadCompleted()Z
    .registers 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public load()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->maybeLoadInitData()V

    .line 190
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadCanceled:Z

    if-nez v0, :cond_a

    .line 191
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->loadMedia()V

    .line 193
    :cond_a
    return-void
.end method
