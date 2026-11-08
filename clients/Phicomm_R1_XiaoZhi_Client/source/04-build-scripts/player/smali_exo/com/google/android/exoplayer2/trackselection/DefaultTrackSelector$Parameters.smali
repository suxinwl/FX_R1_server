.class public final Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
.super Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

.field private static final FIELD_ALLOW_AUDIO_MIXED_CHANNEL_COUNT_ADAPTIVENESS:I = 0x3ee

.field private static final FIELD_ALLOW_AUDIO_MIXED_DECODER_SUPPORT_ADAPTIVENESS:I = 0x3f7

.field private static final FIELD_ALLOW_AUDIO_MIXED_MIME_TYPE_ADAPTIVENESS:I = 0x3ec

.field private static final FIELD_ALLOW_AUDIO_MIXED_SAMPLE_RATE_ADAPTIVENESS:I = 0x3ed

.field private static final FIELD_ALLOW_MULTIPLE_ADAPTIVE_SELECTIONS:I = 0x3f1

.field private static final FIELD_ALLOW_VIDEO_MIXED_DECODER_SUPPORT_ADAPTIVENESS:I = 0x3f6

.field private static final FIELD_ALLOW_VIDEO_MIXED_MIME_TYPE_ADAPTIVENESS:I = 0x3e9

.field private static final FIELD_ALLOW_VIDEO_NON_SEAMLESS_ADAPTIVENESS:I = 0x3ea

.field private static final FIELD_CONSTRAIN_AUDIO_CHANNEL_COUNT_TO_DEVICE_CAPABILITIES:I = 0x3f8

.field private static final FIELD_EXCEED_AUDIO_CONSTRAINTS_IF_NCESSARY:I = 0x3eb

.field private static final FIELD_EXCEED_RENDERER_CAPABILITIES_IF_NECESSARY:I = 0x3ef

.field private static final FIELD_EXCEED_VIDEO_CONSTRAINTS_IF_NECESSARY:I = 0x3e8

.field private static final FIELD_RENDERER_DISABLED_INDICES:I = 0x3f5

.field private static final FIELD_SELECTION_OVERRIDES:I = 0x3f4

.field private static final FIELD_SELECTION_OVERRIDES_RENDERER_INDICES:I = 0x3f2

.field private static final FIELD_SELECTION_OVERRIDES_TRACK_GROUP_ARRAYS:I = 0x3f3

.field private static final FIELD_TUNNELING_ENABLED:I = 0x3f0


# instance fields
.field public final allowAudioMixedChannelCountAdaptiveness:Z

.field public final allowAudioMixedDecoderSupportAdaptiveness:Z

.field public final allowAudioMixedMimeTypeAdaptiveness:Z

.field public final allowAudioMixedSampleRateAdaptiveness:Z

.field public final allowMultipleAdaptiveSelections:Z

.field public final allowVideoMixedDecoderSupportAdaptiveness:Z

.field public final allowVideoMixedMimeTypeAdaptiveness:Z

.field public final allowVideoNonSeamlessAdaptiveness:Z

.field public final constrainAudioChannelCountToDeviceCapabilities:Z

.field public final exceedAudioConstraintsIfNecessary:Z

.field public final exceedRendererCapabilitiesIfNecessary:Z

.field public final exceedVideoConstraintsIfNecessary:Z

.field private final rendererDisabledFlags:Landroid/util/SparseBooleanArray;

.field private final selectionOverrides:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation
.end field

.field public final tunnelingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1518
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 1523
    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->DEFAULT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 1842
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$Parameters$Uw0a4zUksAL4fkQgFe--4Y0QrkY;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$Parameters$Uw0a4zUksAL4fkQgFe--4Y0QrkY;

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)V
    .registers 3

    .line 1622
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)V

    .line 1624
    # getter for: Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedVideoConstraintsIfNecessary:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->access$300(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    .line 1625
    # getter for: Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoMixedMimeTypeAdaptiveness:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->access$400(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    .line 1626
    # getter for: Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoNonSeamlessAdaptiveness:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->access$500(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    .line 1627
    # getter for: Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoMixedDecoderSupportAdaptiveness:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->access$600(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedDecoderSupportAdaptiveness:Z

    .line 1629
    # getter for: Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedAudioConstraintsIfNecessary:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->access$700(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    .line 1630
    # getter for: Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedMimeTypeAdaptiveness:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->access$800(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    .line 1631
    # getter for: Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedSampleRateAdaptiveness:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->access$900(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 1632
    # getter for: Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedChannelCountAdaptiveness:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->access$1000(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 1633
    # getter for: Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedDecoderSupportAdaptiveness:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->access$1100(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedDecoderSupportAdaptiveness:Z

    .line 1635
    # getter for: Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->constrainAudioChannelCountToDeviceCapabilities:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->access$1200(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    .line 1637
    # getter for: Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedRendererCapabilitiesIfNecessary:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->access$1300(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    .line 1638
    # getter for: Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->tunnelingEnabled:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->access$1400(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    .line 1639
    # getter for: Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowMultipleAdaptiveSelections:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->access$1500(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    .line 1641
    # getter for: Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->selectionOverrides:Landroid/util/SparseArray;
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->access$1600(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    .line 1642
    # getter for: Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->access$1700(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$1;)V
    .registers 3

    .line 677
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/SparseArray;
    .registers 1

    .line 677
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 677
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method private static areRendererDisabledFlagsEqual(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)Z
    .registers 6

    .line 1888
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 1889
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_c

    return v2

    :cond_c
    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_1d

    .line 1894
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_1a

    return v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method private static areSelectionOverridesEqual(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;)Z"
        }
    .end annotation

    .line 1904
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1905
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_c

    return v2

    :cond_c
    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_30

    .line 1909
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_2f

    .line 1912
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1911
    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->areSelectionOverridesEqual(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_2f

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_2f
    :goto_2f
    return v2

    :cond_30
    const/4 p0, 0x1

    return p0
.end method

.method private static areSelectionOverridesEqual(Ljava/util/Map;Ljava/util/Map;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;)Z"
        }
    .end annotation

    .line 1922
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 1923
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_c

    return v2

    .line 1927
    :cond_c
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1928
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 1929
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_3a
    return v2

    :cond_3b
    const/4 p0, 0x1

    return p0
.end method

.method public static getDefaults(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .registers 2

    .line 1527
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    return-object p0
.end method

.method private static getKeysFromSparseBooleanArray(Landroid/util/SparseBooleanArray;)[I
    .registers 4

    .line 1879
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1880
    :goto_7
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 1881
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_16
    return-object v0
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .registers 3

    .line 1843
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Landroid/os/Bundle;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$1;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    return-object p0
.end method

.method private static putSelectionOverridesToBundle(Landroid/os/Bundle;Landroid/util/SparseArray;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;)V"
        }
    .end annotation

    .line 1853
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1854
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const/4 v3, 0x0

    .line 1857
    :goto_10
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_7c

    .line 1858
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1860
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1861
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    if-eqz v7, :cond_43

    .line 1863
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1865
    :cond_43
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1866
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_52
    const/16 v4, 0x3f2

    .line 1869
    invoke-static {v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v5

    .line 1868
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const/16 v4, 0x3f3

    .line 1871
    invoke-static {v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    .line 1872
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/BundleableUtil;->toBundleArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1870
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/16 v4, 0x3f4

    .line 1874
    invoke-static {v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/BundleableUtil;->toBundleSparseArray(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v5

    .line 1873
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_7c
    return-void
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .registers 3

    .line 1695
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$1;)V

    return-object v0
.end method

.method public bridge synthetic buildUpon()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .registers 2

    .line 677
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_80

    .line 1705
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_80

    .line 1708
    :cond_13
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 1709
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    if-ne v2, v3, :cond_7e

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    if-ne v2, v3, :cond_7e

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    if-ne v2, v3, :cond_7e

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedDecoderSupportAdaptiveness:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedDecoderSupportAdaptiveness:Z

    if-ne v2, v3, :cond_7e

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    if-ne v2, v3, :cond_7e

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    if-ne v2, v3, :cond_7e

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    if-ne v2, v3, :cond_7e

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    if-ne v2, v3, :cond_7e

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedDecoderSupportAdaptiveness:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedDecoderSupportAdaptiveness:Z

    if-ne v2, v3, :cond_7e

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-ne v2, v3, :cond_7e

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    if-ne v2, v3, :cond_7e

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    if-ne v2, v3, :cond_7e

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    if-ne v2, v3, :cond_7e

    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    iget-object v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 1731
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->areRendererDisabledFlagsEqual(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)Z

    move-result v2

    if-eqz v2, :cond_7e

    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    .line 1732
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->areSelectionOverridesEqual(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result p1

    if-eqz p1, :cond_7e

    goto :goto_7f

    :cond_7e
    const/4 v0, 0x0

    :goto_7f
    return v0

    :cond_80
    :goto_80
    return v1
.end method

.method public getRendererDisabled(I)Z
    .registers 3

    .line 1652
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public getSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1687
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    .line 1688
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_11

    .line 1689
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return-object p1
.end method

.method public hasSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1668
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    .line 1669
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_12

    .line 1670
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public hashCode()I
    .registers 4

    .line 1738
    invoke-super {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1740
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1741
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1742
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1743
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedDecoderSupportAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1745
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1746
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1747
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1748
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1749
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedDecoderSupportAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1750
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1752
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1753
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1754
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 1790
    invoke-super {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0x3e8

    .line 1794
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    .line 1793
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3e9

    .line 1797
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    .line 1796
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3ea

    .line 1800
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    .line 1799
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3f6

    .line 1803
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedDecoderSupportAdaptiveness:Z

    .line 1802
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3eb

    .line 1807
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    .line 1806
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3ec

    .line 1810
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    .line 1809
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3ed

    .line 1813
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 1812
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3ee

    .line 1816
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 1815
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3f7

    .line 1819
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedDecoderSupportAdaptiveness:Z

    .line 1818
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3f8

    .line 1822
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    .line 1821
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3ef

    .line 1826
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    .line 1825
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3f0

    .line 1828
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3f1

    .line 1830
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    .line 1829
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1832
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->putSelectionOverridesToBundle(Landroid/os/Bundle;Landroid/util/SparseArray;)V

    const/16 v1, 0x3f5

    .line 1835
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 1836
    invoke-static {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getKeysFromSparseBooleanArray(Landroid/util/SparseBooleanArray;)[I

    move-result-object v2

    .line 1834
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object v0
.end method
