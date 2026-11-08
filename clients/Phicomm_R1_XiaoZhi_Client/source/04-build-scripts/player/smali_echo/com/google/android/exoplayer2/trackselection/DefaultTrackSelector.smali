.class public Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.super Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    }
.end annotation


# static fields
.field private static final FRACTION_TO_CONSIDER_FULLSCREEN:F = 0.98f

.field private static final NO_TRACKS:[I

.field private static final WITHIN_RENDERER_CAPABILITIES_BONUS:I = 0x3e8


# instance fields
.field private final adaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

.field private final paramsReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 430
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 440
    const/4 v0, 0x0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    .line 441
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V
    .registers 4
    .param p1, "adaptiveTrackSelectionFactory"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;-><init>()V

    .line 461
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->adaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    .line 462
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->paramsReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 463
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V
    .registers 3
    .param p1, "bandwidthMeter"    # Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .prologue
    .line 451
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    .line 452
    return-void
.end method

.method static synthetic access$000(II)I
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->compareInts(II)I

    move-result v0

    return v0
.end method

.method private static compareFormatValues(II)I
    .registers 3
    .param p0, "first"    # I
    .param p1, "second"    # I

    .prologue
    const/4 v0, -0x1

    .line 743
    if-ne p0, v0, :cond_7

    if-ne p1, v0, :cond_6

    const/4 v0, 0x0

    :cond_6
    :goto_6
    return v0

    :cond_7
    if-ne p1, v0, :cond_b

    const/4 v0, 0x1

    goto :goto_6

    :cond_b
    sub-int v0, p0, p1

    goto :goto_6
.end method

.method private static compareInts(II)I
    .registers 3
    .param p0, "first"    # I
    .param p1, "second"    # I

    .prologue
    .line 1162
    if-le p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    if-le p1, p0, :cond_8

    const/4 v0, -0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static filterAdaptiveVideoTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)V
    .registers 18
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "requiredAdaptiveSupport"    # I
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "maxVideoWidth"    # I
    .param p5, "maxVideoHeight"    # I
    .param p6, "maxVideoBitrate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 652
    .local p7, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v8, v1, -0x1

    .local v8, "i":I
    :goto_6
    if-ltz v8, :cond_2e

    .line 653
    move-object/from16 v0, p7

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 654
    .local v9, "trackIndex":I
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    aget v3, p1, v9

    move-object v2, p3

    move v4, p2

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveVideoTrack(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIII)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 657
    move-object/from16 v0, p7

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 652
    :cond_2b
    add-int/lit8 v8, v8, -0x1

    goto :goto_6

    .line 660
    .end local v9    # "trackIndex":I
    :cond_2e
    return-void
.end method

.method protected static formatHasLanguage(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z
    .registers 3
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 993
    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 994
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static getAdaptiveAudioTrackCount(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;)I
    .registers 7
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "configuration"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;

    .prologue
    .line 838
    const/4 v0, 0x0

    .line 839
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v2, :cond_17

    .line 840
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    aget v3, p1, v1

    invoke-static {v2, v3, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveAudioTrack(Lcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 841
    add-int/lit8 v0, v0, 0x1

    .line 839
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 844
    :cond_17
    return v0
.end method

.method private static getAdaptiveAudioTracks(Lcom/google/android/exoplayer2/source/TrackGroup;[IZ)[I
    .registers 16
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "allowMixedMimeTypes"    # Z

    .prologue
    .line 805
    const/4 v9, 0x0

    .line 806
    .local v9, "selectedConfigurationTrackCount":I
    const/4 v8, 0x0

    .line 807
    .local v8, "selectedConfiguration":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 808
    .local v7, "seenConfigurationTuples":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    iget v10, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v4, v10, :cond_30

    .line 809
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 810
    .local v3, "format":Lcom/google/android/exoplayer2/Format;
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;

    iget v11, v3, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v12, v3, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-eqz p2, :cond_2d

    const/4 v10, 0x0

    :goto_19
    invoke-direct {v1, v11, v12, v10}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;-><init>(IILjava/lang/String;)V

    .line 813
    .local v1, "configuration":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;
    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 814
    invoke-static {p0, p1, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveAudioTrackCount(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;)I

    move-result v2

    .line 815
    .local v2, "configurationCount":I
    if-le v2, v9, :cond_2a

    .line 816
    move-object v8, v1

    .line 817
    move v9, v2

    .line 808
    .end local v2    # "configurationCount":I
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 810
    .end local v1    # "configuration":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;
    :cond_2d
    iget-object v10, v3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    goto :goto_19

    .line 822
    .end local v3    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_30
    const/4 v10, 0x1

    if-le v9, v10, :cond_4f

    .line 823
    new-array v0, v9, [I

    .line 824
    .local v0, "adaptiveIndices":[I
    const/4 v5, 0x0

    .line 825
    .local v5, "index":I
    const/4 v4, 0x0

    :goto_37
    iget v10, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v4, v10, :cond_51

    .line 826
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    aget v11, p1, v4

    invoke-static {v10, v11, v8}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveAudioTrack(Lcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;)Z

    move-result v10

    if-eqz v10, :cond_4c

    .line 828
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    aput v4, v0, v5

    move v5, v6

    .line 825
    .end local v6    # "index":I
    .restart local v5    # "index":I
    :cond_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 833
    .end local v0    # "adaptiveIndices":[I
    .end local v5    # "index":I
    :cond_4f
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    :cond_51
    return-object v0
.end method

.method private static getAdaptiveVideoTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)I
    .registers 19
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "requiredAdaptiveSupport"    # I
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "maxVideoWidth"    # I
    .param p5, "maxVideoHeight"    # I
    .param p6, "maxVideoBitrate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 637
    .local p7, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 638
    .local v8, "adaptiveTrackCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_2c

    .line 639
    move-object/from16 v0, p7

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 640
    .local v10, "trackIndex":I
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    aget v3, p1, v10

    move-object v2, p3

    move v4, p2

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveVideoTrack(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIII)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 643
    add-int/lit8 v8, v8, 0x1

    .line 638
    :cond_29
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 646
    .end local v10    # "trackIndex":I
    :cond_2c
    return v8
.end method

.method private static getAdaptiveVideoTracksForGroup(Lcom/google/android/exoplayer2/source/TrackGroup;[IZIIIIIIZ)[I
    .registers 35
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "allowMixedMimeTypes"    # Z
    .param p3, "requiredAdaptiveSupport"    # I
    .param p4, "maxVideoWidth"    # I
    .param p5, "maxVideoHeight"    # I
    .param p6, "maxVideoBitrate"    # I
    .param p7, "viewportWidth"    # I
    .param p8, "viewportHeight"    # I
    .param p9, "viewportOrientationMayChange"    # Z

    .prologue
    .line 597
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_a

    .line 598
    sget-object v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    .line 631
    :goto_9
    return-object v4

    .line 601
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getViewportFilteredTrackIndices(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v11

    .line 603
    .local v11, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_20

    .line 604
    sget-object v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    goto :goto_9

    .line 607
    :cond_20
    const/4 v15, 0x0

    .line 608
    .local v15, "selectedMimeType":Ljava/lang/String;
    if-nez p2, :cond_6e

    .line 610
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 611
    .local v22, "seenMimeTypes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .line 612
    .local v23, "selectedMimeTypeTrackCount":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_2c
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_6e

    .line 613
    move/from16 v0, v21

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 614
    .local v24, "trackIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iget-object v7, v4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 615
    .local v7, "sampleMimeType":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    .line 616
    invoke-static/range {v4 .. v11}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveVideoTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)I

    move-result v20

    .line 619
    .local v20, "countForMimeType":I
    move/from16 v0, v20

    move/from16 v1, v23

    if-le v0, v1, :cond_6b

    .line 620
    move-object v15, v7

    .line 621
    move/from16 v23, v20

    .line 612
    .end local v20    # "countForMimeType":I
    :cond_6b
    add-int/lit8 v21, v21, 0x1

    goto :goto_2c

    .end local v7    # "sampleMimeType":Ljava/lang/String;
    .end local v21    # "i":I
    .end local v22    # "seenMimeTypes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v23    # "selectedMimeTypeTrackCount":I
    .end local v24    # "trackIndex":I
    :cond_6e
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p3

    move/from16 v16, p4

    move/from16 v17, p5

    move/from16 v18, p6

    move-object/from16 v19, v11

    .line 628
    invoke-static/range {v12 .. v19}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->filterAdaptiveVideoTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)V

    .line 631
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_89

    sget-object v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    goto :goto_9

    :cond_89
    invoke-static {v11}, Lcom/google/android/exoplayer2/util/Util;->toArray(Ljava/util/List;)[I

    move-result-object v4

    goto/16 :goto_9
.end method

.method private static getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;
    .registers 9
    .param p0, "orientationMayChange"    # Z
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "videoWidth"    # I
    .param p4, "videoHeight"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1052
    if-eqz p0, :cond_e

    if-le p3, p4, :cond_20

    move v3, v1

    :goto_7
    if-le p1, p2, :cond_22

    :goto_9
    if-eq v3, v1, :cond_e

    .line 1054
    move v0, p1

    .line 1055
    .local v0, "tempViewportWidth":I
    move p1, p2

    .line 1056
    move p2, v0

    .line 1059
    .end local v0    # "tempViewportWidth":I
    :cond_e
    mul-int v1, p3, p2

    mul-int v2, p4, p1

    if-lt v1, v2, :cond_24

    .line 1061
    new-instance v1, Landroid/graphics/Point;

    mul-int v2, p1, p4

    invoke-static {v2, p3}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 1064
    :goto_1f
    return-object v1

    :cond_20
    move v3, v2

    .line 1052
    goto :goto_7

    :cond_22
    move v1, v2

    goto :goto_9

    .line 1064
    :cond_24
    new-instance v1, Landroid/graphics/Point;

    mul-int v2, p2, p3

    invoke-static {v2, p4}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v2

    invoke-direct {v1, v2, p2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1f
.end method

.method private static getViewportFilteredTrackIndices(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;
    .registers 15
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "orientationMayChange"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "IIZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const v10, 0x3f7ae148    # 0.98f

    const v9, 0x7fffffff

    .line 1002
    new-instance v5, Ljava/util/ArrayList;

    iget v7, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1003
    .local v5, "selectedTrackIndices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    iget v7, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v7, :cond_1c

    .line 1004
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1007
    :cond_1c
    if-eq p1, v9, :cond_20

    if-ne p2, v9, :cond_21

    .line 1043
    :cond_20
    return-object v5

    .line 1012
    :cond_21
    const v2, 0x7fffffff

    .line 1013
    .local v2, "maxVideoPixelsToRetain":I
    const/4 v1, 0x0

    :goto_25
    iget v7, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v7, :cond_5b

    .line 1014
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 1018
    .local v0, "format":Lcom/google/android/exoplayer2/Format;
    iget v7, v0, Lcom/google/android/exoplayer2/Format;->width:I

    if-lez v7, :cond_58

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->height:I

    if-lez v7, :cond_58

    .line 1019
    iget v7, v0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {p3, p1, p2, v7, v8}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;

    move-result-object v3

    .line 1021
    .local v3, "maxVideoSizeInViewport":Landroid/graphics/Point;
    iget v7, v0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->height:I

    mul-int v6, v7, v8

    .line 1022
    .local v6, "videoPixels":I
    iget v7, v0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v8, v3, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    float-to-int v8, v8

    if-lt v7, v8, :cond_58

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->height:I

    iget v8, v3, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    float-to-int v8, v8

    if-lt v7, v8, :cond_58

    if-ge v6, v2, :cond_58

    .line 1025
    move v2, v6

    .line 1013
    .end local v3    # "maxVideoSizeInViewport":Landroid/graphics/Point;
    .end local v6    # "videoPixels":I
    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 1033
    .end local v0    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_5b
    if-eq v2, v9, :cond_20

    .line 1034
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_63
    if-ltz v1, :cond_20

    .line 1035
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 1036
    .restart local v0    # "format":Lcom/google/android/exoplayer2/Format;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format;->getPixelCount()I

    move-result v4

    .line 1037
    .local v4, "pixelCount":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_7c

    if-le v4, v2, :cond_7f

    .line 1038
    :cond_7c
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1034
    :cond_7f
    add-int/lit8 v1, v1, -0x1

    goto :goto_63
.end method

.method protected static isSupported(IZ)Z
    .registers 4
    .param p0, "formatSupport"    # I
    .param p1, "allowExceedsCapabilities"    # Z

    .prologue
    .line 978
    and-int/lit8 v0, p0, 0x7

    .line 979
    .local v0, "maskedSupport":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    if-eqz p1, :cond_c

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v1, 0x1

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private static isSupportedAdaptiveAudioTrack(Lcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;)Z
    .registers 6
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p1, "formatSupport"    # I
    .param p2, "configuration"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;

    .prologue
    const/4 v0, 0x0

    .line 849
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v1

    if-eqz v1, :cond_22

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v2, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->channelCount:I

    if-ne v1, v2, :cond_22

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iget v2, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->sampleRate:I

    if-ne v1, v2, :cond_22

    iget-object v1, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v1, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->mimeType:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 852
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    :cond_21
    const/4 v0, 0x1

    :cond_22
    return v0
.end method

.method private static isSupportedAdaptiveVideoTrack(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIII)Z
    .registers 10
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "formatSupport"    # I
    .param p3, "requiredAdaptiveSupport"    # I
    .param p4, "maxVideoWidth"    # I
    .param p5, "maxVideoHeight"    # I
    .param p6, "maxVideoBitrate"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 665
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v1

    if-eqz v1, :cond_2f

    and-int v1, p2, p3

    if-eqz v1, :cond_2f

    if-eqz p1, :cond_16

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 666
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    :cond_16
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v1, v2, :cond_1e

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    if-gt v1, p4, :cond_2f

    :cond_1e
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq v1, v2, :cond_26

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-gt v1, p5, :cond_2f

    :cond_26
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-eq v1, v2, :cond_2e

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-gt v1, p6, :cond_2f

    :cond_2e
    const/4 v0, 0x1

    :cond_2f
    return v0
.end method

.method private static selectAdaptiveVideoTrack(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .registers 18
    .param p0, "rendererCapabilities"    # Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p1, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "formatSupport"    # [[I
    .param p3, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .param p4, "adaptiveTrackSelectionFactory"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 575
    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    if-eqz v2, :cond_47

    const/16 v4, 0x18

    .line 578
    .local v4, "requiredAdaptiveSupport":I
    :goto_8
    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    if-eqz v2, :cond_4a

    .line 579
    invoke-interface {p0}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsMixedMimeTypeAdaptation()I

    move-result v2

    and-int/2addr v2, v4

    if-eqz v2, :cond_4a

    const/4 v3, 0x1

    .line 580
    .local v3, "allowMixedMimeTypes":Z
    :goto_16
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_17
    iget v2, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v12, v2, :cond_4f

    .line 581
    invoke-virtual {p1, v12}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    .line 582
    .local v1, "group":Lcom/google/android/exoplayer2/source/TrackGroup;
    aget-object v2, p2, v12

    move-object/from16 v0, p3

    iget v5, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    move-object/from16 v0, p3

    iget v6, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    move-object/from16 v0, p3

    iget v7, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    move-object/from16 v0, p3

    iget v8, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    move-object/from16 v0, p3

    iget v9, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    move-object/from16 v0, p3

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    invoke-static/range {v1 .. v10}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveVideoTracksForGroup(Lcom/google/android/exoplayer2/source/TrackGroup;[IZIIIIIIZ)[I

    move-result-object v11

    .line 586
    .local v11, "adaptiveTracks":[I
    array-length v2, v11

    if-lez v2, :cond_4c

    .line 587
    move-object/from16 v0, p4

    invoke-interface {v0, v1, v11}, Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;->createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;[I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    .line 590
    .end local v1    # "group":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v11    # "adaptiveTracks":[I
    :goto_46
    return-object v2

    .line 575
    .end local v3    # "allowMixedMimeTypes":Z
    .end local v4    # "requiredAdaptiveSupport":I
    .end local v12    # "i":I
    :cond_47
    const/16 v4, 0x10

    goto :goto_8

    .line 579
    .restart local v4    # "requiredAdaptiveSupport":I
    :cond_4a
    const/4 v3, 0x0

    goto :goto_16

    .line 580
    .restart local v1    # "group":Lcom/google/android/exoplayer2/source/TrackGroup;
    .restart local v3    # "allowMixedMimeTypes":Z
    .restart local v11    # "adaptiveTracks":[I
    .restart local v12    # "i":I
    :cond_4c
    add-int/lit8 v12, v12, 0x1

    goto :goto_17

    .line 590
    .end local v1    # "group":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v11    # "adaptiveTracks":[I
    :cond_4f
    const/4 v2, 0x0

    goto :goto_46
.end method

.method private static selectFixedVideoTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .registers 27
    .param p0, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p1, "formatSupport"    # [[I
    .param p2, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .prologue
    .line 674
    const/4 v12, 0x0

    .line 675
    .local v12, "selectedGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v14, 0x0

    .line 676
    .local v14, "selectedTrackIndex":I
    const/16 v16, 0x0

    .line 677
    .local v16, "selectedTrackScore":I
    const/4 v11, -0x1

    .line 678
    .local v11, "selectedBitrate":I
    const/4 v13, -0x1

    .line 679
    .local v13, "selectedPixelCount":I
    const/4 v7, 0x0

    .local v7, "groupIndex":I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_13d

    .line 680
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v18

    .line 681
    .local v18, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getViewportFilteredTrackIndices(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v15

    .line 683
    .local v15, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    aget-object v17, p1, v7

    .line 684
    .local v17, "trackFormatSupport":[I
    const/16 v19, 0x0

    .local v19, "trackIndex":I
    :goto_39
    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_139

    .line 685
    aget v21, v17, v19

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v21

    if-eqz v21, :cond_c2

    .line 687
    invoke-virtual/range {v18 .. v19}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 688
    .local v5, "format":Lcom/google/android/exoplayer2/Format;
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c6

    iget v0, v5, Lcom/google/android/exoplayer2/Format;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_7f

    iget v0, v5, Lcom/google/android/exoplayer2/Format;->width:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_c6

    :cond_7f
    iget v0, v5, Lcom/google/android/exoplayer2/Format;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_9b

    iget v0, v5, Lcom/google/android/exoplayer2/Format;->height:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_c6

    :cond_9b
    iget v0, v5, Lcom/google/android/exoplayer2/Format;->bitrate:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_b7

    iget v0, v5, Lcom/google/android/exoplayer2/Format;->bitrate:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_c6

    :cond_b7
    const/4 v9, 0x1

    .line 692
    .local v9, "isWithinConstraints":Z
    :goto_b8
    if-nez v9, :cond_c8

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    move/from16 v21, v0

    if-nez v21, :cond_c8

    .line 684
    .end local v5    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v9    # "isWithinConstraints":Z
    :cond_c2
    :goto_c2
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_39

    .line 688
    .restart local v5    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_c6
    const/4 v9, 0x0

    goto :goto_b8

    .line 696
    .restart local v9    # "isWithinConstraints":Z
    :cond_c8
    if-eqz v9, :cond_10d

    const/16 v20, 0x2

    .line 697
    .local v20, "trackScore":I
    :goto_cc
    aget v21, v17, v19

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v8

    .line 698
    .local v8, "isWithinCapabilities":Z
    if-eqz v8, :cond_dc

    .line 699
    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    .line 701
    :cond_dc
    move/from16 v0, v20

    move/from16 v1, v16

    if-le v0, v1, :cond_110

    const/4 v10, 0x1

    .line 702
    .local v10, "selectTrack":Z
    :goto_e3
    move/from16 v0, v20

    move/from16 v1, v16

    if-ne v0, v1, :cond_fe

    .line 703
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    move/from16 v21, v0

    if-eqz v21, :cond_114

    .line 705
    iget v0, v5, Lcom/google/android/exoplayer2/Format;->bitrate:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v0, v11}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->compareFormatValues(II)I

    move-result v21

    if-gez v21, :cond_112

    const/4 v10, 0x1

    .line 719
    :cond_fe
    :goto_fe
    if-eqz v10, :cond_c2

    .line 720
    move-object/from16 v12, v18

    .line 721
    move/from16 v14, v19

    .line 722
    move/from16 v16, v20

    .line 723
    iget v11, v5, Lcom/google/android/exoplayer2/Format;->bitrate:I

    .line 724
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Format;->getPixelCount()I

    move-result v13

    goto :goto_c2

    .line 696
    .end local v8    # "isWithinCapabilities":Z
    .end local v10    # "selectTrack":Z
    .end local v20    # "trackScore":I
    :cond_10d
    const/16 v20, 0x1

    goto :goto_cc

    .line 701
    .restart local v8    # "isWithinCapabilities":Z
    .restart local v20    # "trackScore":I
    :cond_110
    const/4 v10, 0x0

    goto :goto_e3

    .line 705
    .restart local v10    # "selectTrack":Z
    :cond_112
    const/4 v10, 0x0

    goto :goto_fe

    .line 711
    :cond_114
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Format;->getPixelCount()I

    move-result v6

    .line 712
    .local v6, "formatPixelCount":I
    if-eq v6, v13, :cond_126

    .line 713
    invoke-static {v6, v13}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->compareFormatValues(II)I

    move-result v4

    .line 715
    .local v4, "comparisonResult":I
    :goto_11e
    if-eqz v8, :cond_133

    if-eqz v9, :cond_133

    if-lez v4, :cond_131

    const/4 v10, 0x1

    :goto_125
    goto :goto_fe

    .line 713
    .end local v4    # "comparisonResult":I
    :cond_126
    iget v0, v5, Lcom/google/android/exoplayer2/Format;->bitrate:I

    move/from16 v21, v0

    .line 714
    move/from16 v0, v21

    invoke-static {v0, v11}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->compareFormatValues(II)I

    move-result v4

    goto :goto_11e

    .line 715
    .restart local v4    # "comparisonResult":I
    :cond_131
    const/4 v10, 0x0

    goto :goto_125

    :cond_133
    if-gez v4, :cond_137

    const/4 v10, 0x1

    goto :goto_125

    :cond_137
    const/4 v10, 0x0

    goto :goto_125

    .line 679
    .end local v4    # "comparisonResult":I
    .end local v5    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v6    # "formatPixelCount":I
    .end local v8    # "isWithinCapabilities":Z
    .end local v9    # "isWithinConstraints":Z
    .end local v10    # "selectTrack":Z
    .end local v20    # "trackScore":I
    :cond_139
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    .line 729
    .end local v15    # "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17    # "trackFormatSupport":[I
    .end local v18    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v19    # "trackIndex":I
    :cond_13d
    if-nez v12, :cond_142

    const/16 v21, 0x0

    :goto_141
    return-object v21

    :cond_142
    new-instance v21, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    move-object/from16 v0, v21

    invoke-direct {v0, v12, v14}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    goto :goto_141
.end method


# virtual methods
.method public getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .registers 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->paramsReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    return-object v0
.end method

.method protected selectAudioTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .registers 19
    .param p1, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "formatSupport"    # [[I
    .param p3, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .param p4, "adaptiveTrackSelectionFactory"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 765
    const/4 v6, -0x1

    .line 766
    .local v6, "selectedTrackIndex":I
    const/4 v5, -0x1

    .line 767
    .local v5, "selectedGroupIndex":I
    const/4 v7, 0x0

    .line 768
    .local v7, "selectedTrackScore":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;
    const/4 v3, 0x0

    .local v3, "groupIndex":I
    :goto_4
    iget v12, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v3, v12, :cond_3d

    .line 769
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v9

    .line 770
    .local v9, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    aget-object v8, p2, v3

    .line 771
    .local v8, "trackFormatSupport":[I
    const/4 v10, 0x0

    .local v10, "trackIndex":I
    :goto_f
    iget v12, v9, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v10, v12, :cond_3a

    .line 772
    aget v12, v8, v10

    move-object/from16 v0, p3

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v12, v13}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v12

    if-eqz v12, :cond_37

    .line 774
    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 775
    .local v2, "format":Lcom/google/android/exoplayer2/Format;
    new-instance v11, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;

    aget v12, v8, v10

    move-object/from16 v0, p3

    invoke-direct {v11, v2, v0, v12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;-><init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;I)V

    .line 777
    .local v11, "trackScore":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;
    if-eqz v7, :cond_34

    invoke-virtual {v11, v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;)I

    move-result v12

    if-lez v12, :cond_37

    .line 778
    :cond_34
    move v5, v3

    .line 779
    move v6, v10

    .line 780
    move-object v7, v11

    .line 771
    .end local v2    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v11    # "trackScore":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;
    :cond_37
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    .line 768
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 786
    .end local v8    # "trackFormatSupport":[I
    .end local v9    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v10    # "trackIndex":I
    :cond_3d
    const/4 v12, -0x1

    if-ne v5, v12, :cond_42

    .line 787
    const/4 v12, 0x0

    .line 800
    :goto_41
    return-object v12

    .line 790
    :cond_42
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    .line 791
    .local v4, "selectedGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    move-object/from16 v0, p3

    iget-boolean v12, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-nez v12, :cond_62

    if-eqz p4, :cond_62

    .line 793
    aget-object v12, p2, v5

    move-object/from16 v0, p3

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    invoke-static {v4, v12, v13}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveAudioTracks(Lcom/google/android/exoplayer2/source/TrackGroup;[IZ)[I

    move-result-object v1

    .line 795
    .local v1, "adaptiveTracks":[I
    array-length v12, v1

    if-lez v12, :cond_62

    .line 796
    move-object/from16 v0, p4

    invoke-interface {v0, v4, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;->createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;[I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v12

    goto :goto_41

    .line 800
    .end local v1    # "adaptiveTracks":[I
    :cond_62
    new-instance v12, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    invoke-direct {v12, v4, v6}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    goto :goto_41
.end method

.method protected selectOtherTrack(ILcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .registers 18
    .param p1, "trackType"    # I
    .param p2, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p3, "formatSupport"    # [[I
    .param p4, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 937
    const/4 v4, 0x0

    .line 938
    .local v4, "selectedGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v5, 0x0

    .line 939
    .local v5, "selectedTrackIndex":I
    const/4 v6, 0x0

    .line 940
    .local v6, "selectedTrackScore":I
    const/4 v2, 0x0

    .local v2, "groupIndex":I
    :goto_4
    iget v11, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v2, v11, :cond_47

    .line 941
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    .line 942
    .local v8, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    aget-object v7, p3, v2

    .line 943
    .local v7, "trackFormatSupport":[I
    const/4 v9, 0x0

    .local v9, "trackIndex":I
    :goto_f
    iget v11, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v9, v11, :cond_44

    .line 944
    aget v11, v7, v9

    move-object/from16 v0, p4

    iget-boolean v12, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v11

    if-eqz v11, :cond_3d

    .line 946
    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 947
    .local v1, "format":Lcom/google/android/exoplayer2/Format;
    iget v11, v1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_40

    const/4 v3, 0x1

    .line 948
    .local v3, "isDefault":Z
    :goto_2a
    if-eqz v3, :cond_42

    const/4 v10, 0x2

    .line 949
    .local v10, "trackScore":I
    :goto_2d
    aget v11, v7, v9

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v11

    if-eqz v11, :cond_38

    .line 950
    add-int/lit16 v10, v10, 0x3e8

    .line 952
    :cond_38
    if-le v10, v6, :cond_3d

    .line 953
    move-object v4, v8

    .line 954
    move v5, v9

    .line 955
    move v6, v10

    .line 943
    .end local v1    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v3    # "isDefault":Z
    .end local v10    # "trackScore":I
    :cond_3d
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 947
    .restart local v1    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_40
    const/4 v3, 0x0

    goto :goto_2a

    .line 948
    .restart local v3    # "isDefault":Z
    :cond_42
    const/4 v10, 0x1

    goto :goto_2d

    .line 940
    .end local v1    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v3    # "isDefault":Z
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 960
    .end local v7    # "trackFormatSupport":[I
    .end local v8    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v9    # "trackIndex":I
    :cond_47
    if-nez v4, :cond_4b

    const/4 v11, 0x0

    :goto_4a
    return-object v11

    :cond_4b
    new-instance v11, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    invoke-direct {v11, v4, v5}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    goto :goto_4a
.end method

.method protected selectTextTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .registers 19
    .param p1, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "formatSupport"    # [[I
    .param p3, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 870
    const/4 v5, 0x0

    .line 871
    .local v5, "selectedGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v6, 0x0

    .line 872
    .local v6, "selectedTrackIndex":I
    const/4 v7, 0x0

    .line 873
    .local v7, "selectedTrackScore":I
    const/4 v2, 0x0

    .local v2, "groupIndex":I
    :goto_4
    move-object/from16 v0, p1

    iget v13, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v2, v13, :cond_76

    .line 874
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v10

    .line 875
    .local v10, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    aget-object v9, p2, v2

    .line 876
    .local v9, "trackFormatSupport":[I
    const/4 v11, 0x0

    .local v11, "trackIndex":I
    :goto_13
    iget v13, v10, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v11, v13, :cond_73

    .line 877
    aget v13, v9, v11

    move-object/from16 v0, p3

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v13, v14}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v13

    if-eqz v13, :cond_52

    .line 879
    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 880
    .local v1, "format":Lcom/google/android/exoplayer2/Format;
    iget v13, v1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_55

    const/4 v3, 0x1

    .line 881
    .local v3, "isDefault":Z
    :goto_2e
    iget v13, v1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_57

    const/4 v4, 0x1

    .line 883
    .local v4, "isForced":Z
    :goto_35
    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    invoke-static {v1, v13}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->formatHasLanguage(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5f

    .line 884
    if-eqz v3, :cond_59

    .line 885
    const/4 v12, 0x6

    .line 906
    :goto_42
    aget v13, v9, v11

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v13

    if-eqz v13, :cond_80

    .line 907
    add-int/lit16 v8, v12, 0x3e8

    .line 909
    :goto_4d
    if-le v8, v7, :cond_52

    .line 910
    move-object v5, v10

    .line 911
    move v6, v11

    .end local v7    # "selectedTrackScore":I
    .local v8, "selectedTrackScore":I
    move v7, v8

    .line 876
    .end local v1    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v3    # "isDefault":Z
    .end local v4    # "isForced":Z
    .end local v8    # "selectedTrackScore":I
    .restart local v7    # "selectedTrackScore":I
    :cond_52
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    .line 880
    .restart local v1    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_55
    const/4 v3, 0x0

    goto :goto_2e

    .line 881
    .restart local v3    # "isDefault":Z
    :cond_57
    const/4 v4, 0x0

    goto :goto_35

    .line 886
    .restart local v4    # "isForced":Z
    :cond_59
    if-nez v4, :cond_5d

    .line 890
    const/4 v12, 0x5

    .local v12, "trackScore":I
    goto :goto_42

    .line 892
    .end local v12    # "trackScore":I
    :cond_5d
    const/4 v12, 0x4

    .restart local v12    # "trackScore":I
    goto :goto_42

    .line 894
    .end local v12    # "trackScore":I
    :cond_5f
    if-eqz v3, :cond_63

    .line 895
    const/4 v12, 0x3

    .restart local v12    # "trackScore":I
    goto :goto_42

    .line 896
    .end local v12    # "trackScore":I
    :cond_63
    if-eqz v4, :cond_52

    .line 897
    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    invoke-static {v1, v13}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->formatHasLanguage(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_71

    .line 898
    const/4 v12, 0x2

    .restart local v12    # "trackScore":I
    goto :goto_42

    .line 900
    .end local v12    # "trackScore":I
    :cond_71
    const/4 v12, 0x1

    goto :goto_42

    .line 873
    .end local v1    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v3    # "isDefault":Z
    .end local v4    # "isForced":Z
    :cond_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 917
    .end local v9    # "trackFormatSupport":[I
    .end local v10    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v11    # "trackIndex":I
    :cond_76
    if-nez v5, :cond_7a

    const/4 v13, 0x0

    :goto_79
    return-object v13

    :cond_7a
    new-instance v13, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    invoke-direct {v13, v5, v6}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    goto :goto_79

    .restart local v1    # "format":Lcom/google/android/exoplayer2/Format;
    .restart local v3    # "isDefault":Z
    .restart local v4    # "isForced":Z
    .restart local v9    # "trackFormatSupport":[I
    .restart local v10    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .restart local v11    # "trackIndex":I
    :cond_80
    move v8, v12

    goto :goto_4d
.end method

.method protected selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/source/TrackGroupArray;[[[I)[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .registers 17
    .param p1, "rendererCapabilities"    # [Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p2, "rendererTrackGroupArrays"    # [Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p3, "rendererFormatSupports"    # [[[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 493
    array-length v7, p1

    .line 494
    .local v7, "rendererCount":I
    new-array v8, v7, [Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 495
    .local v8, "rendererTrackSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->paramsReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 497
    .local v4, "params":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    const/4 v9, 0x0

    .line 498
    .local v9, "seenVideoRendererWithMappedTracks":Z
    const/4 v12, 0x0

    .line 499
    .local v12, "selectedVideoTracks":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_e
    if-ge v6, v7, :cond_3e

    .line 500
    const/4 v0, 0x2

    aget-object v1, p1, v6

    invoke-interface {v1}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v1

    if-ne v0, v1, :cond_37

    .line 501
    if-nez v12, :cond_2f

    .line 502
    aget-object v1, p1, v6

    aget-object v2, p2, v6

    aget-object v3, p3, v6

    iget-object v5, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->adaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectVideoTrack(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    aput-object v0, v8, v6

    .line 505
    aget-object v0, v8, v6

    if-eqz v0, :cond_3a

    const/4 v12, 0x1

    .line 507
    :cond_2f
    :goto_2f
    aget-object v0, p2, v6

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-lez v0, :cond_3c

    const/4 v0, 0x1

    :goto_36
    or-int/2addr v9, v0

    .line 499
    :cond_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 505
    :cond_3a
    const/4 v12, 0x0

    goto :goto_2f

    .line 507
    :cond_3c
    const/4 v0, 0x0

    goto :goto_36

    .line 511
    :cond_3e
    const/4 v10, 0x0

    .line 512
    .local v10, "selectedAudioTracks":Z
    const/4 v11, 0x0

    .line 513
    .local v11, "selectedTextTracks":Z
    const/4 v6, 0x0

    :goto_41
    if-ge v6, v7, :cond_8d

    .line 514
    aget-object v0, p1, v6

    invoke-interface {v0}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v0

    packed-switch v0, :pswitch_data_8e

    .line 534
    aget-object v0, p1, v6

    invoke-interface {v0}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v0

    aget-object v1, p2, v6

    aget-object v2, p3, v6

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectOtherTrack(ILcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    aput-object v0, v8, v6

    .line 513
    :cond_5c
    :goto_5c
    :pswitch_5c
    add-int/lit8 v6, v6, 0x1

    goto :goto_41

    .line 519
    :pswitch_5f
    if-nez v10, :cond_5c

    .line 520
    aget-object v1, p2, v6

    aget-object v2, p3, v6

    if-eqz v9, :cond_74

    const/4 v0, 0x0

    :goto_68
    invoke-virtual {p0, v1, v2, v4, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectAudioTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    aput-object v0, v8, v6

    .line 523
    aget-object v0, v8, v6

    if-eqz v0, :cond_77

    const/4 v10, 0x1

    :goto_73
    goto :goto_5c

    .line 520
    :cond_74
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->adaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    goto :goto_68

    .line 523
    :cond_77
    const/4 v10, 0x0

    goto :goto_73

    .line 527
    :pswitch_79
    if-nez v11, :cond_5c

    .line 528
    aget-object v0, p2, v6

    aget-object v1, p3, v6

    invoke-virtual {p0, v0, v1, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectTextTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    aput-object v0, v8, v6

    .line 530
    aget-object v0, v8, v6

    if-eqz v0, :cond_8b

    const/4 v11, 0x1

    :goto_8a
    goto :goto_5c

    :cond_8b
    const/4 v11, 0x0

    goto :goto_8a

    .line 539
    :cond_8d
    return-object v8

    .line 514
    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_5c
        :pswitch_79
    .end packed-switch
.end method

.method protected selectVideoTrack(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .registers 8
    .param p1, "rendererCapabilities"    # Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p2, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p3, "formatSupport"    # [[I
    .param p4, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .param p5, "adaptiveTrackSelectionFactory"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 561
    const/4 v0, 0x0

    .line 562
    .local v0, "selection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    iget-boolean v1, p4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-nez v1, :cond_b

    if-eqz p5, :cond_b

    .line 563
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectAdaptiveVideoTrack(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    .line 566
    :cond_b
    if-nez v0, :cond_11

    .line 567
    invoke-static {p2, p3, p4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectFixedVideoTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    .line 569
    :cond_11
    return-object v0
.end method

.method public setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V
    .registers 3
    .param p1, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .prologue
    .line 471
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->paramsReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 473
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->invalidate()V

    .line 475
    :cond_14
    return-void
.end method
