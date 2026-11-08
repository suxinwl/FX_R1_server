.class public Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.super Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackInfo;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionEligibility;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    }
.end annotation


# static fields
.field private static final AUDIO_CHANNEL_COUNT_CONSTRAINTS_WARN_MESSAGE:Ljava/lang/String; = "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

.field private static final FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final FRACTION_TO_CONSIDER_FULLSCREEN:F = 0.98f

.field private static final NO_ORDER:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final SELECTION_ELIGIBILITY_ADAPTIVE:I = 0x2

.field protected static final SELECTION_ELIGIBILITY_FIXED:I = 0x1

.field protected static final SELECTION_ELIGIBILITY_NO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DefaultTrackSelector"


# instance fields
.field private audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

.field public final context:Landroid/content/Context;

.field private final deviceIsTV:Z

.field private final lock:Ljava/lang/Object;

.field private parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

.field private spatializer:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

.field private final trackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2070
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$gh9ENrJWQNcjWuI1Z_gGyXt-1Q0;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$gh9ENrJWQNcjWuI1Z_gGyXt-1Q0;

    .line 2071
    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;

    .line 2077
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$lrZL-zTAASesn9-0AYwE4dMwJKI;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$lrZL-zTAASesn9-0AYwE4dMwJKI;

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_ORDER:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method public constructor <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2099
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 2106
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V
    .registers 4

    .line 2114
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getDefaults(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .registers 4

    .line 2122
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V
    .registers 4

    .line 2144
    invoke-direct {p0, p2, p3, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 2132
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;Landroid/content/Context;)V
    .registers 5

    .line 2160
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;-><init>()V

    .line 2161
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    if-eqz p3, :cond_11

    .line 2162
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->context:Landroid/content/Context;

    .line 2163
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->trackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;

    .line 2164
    instance-of p2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    if-eqz p2, :cond_1f

    .line 2165
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    goto :goto_36

    :cond_1f
    if-nez p3, :cond_24

    .line 2167
    sget-object p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    goto :goto_28

    .line 2168
    :cond_24
    invoke-static {p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getDefaults(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p2

    .line 2169
    :goto_28
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->set(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 2171
    :goto_36
    sget-object p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    if-eqz p3, :cond_44

    .line 2172
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Util;->isTv(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_44

    const/4 p1, 0x1

    goto :goto_45

    :cond_44
    const/4 p1, 0x0

    :goto_45
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->deviceIsTV:Z

    if-nez p1, :cond_57

    if-eqz p3, :cond_57

    .line 2173
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p2, 0x20

    if-lt p1, p2, :cond_57

    .line 2174
    invoke-static {p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->tryCreateInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    .line 2176
    :cond_57
    iget-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz p1, :cond_66

    if-nez p3, :cond_66

    const-string p1, "DefaultTrackSelector"

    const-string p2, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    .line 2177
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)I
    .registers 4

    .line 109
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getMaxVideoPixelsToRetainForViewport(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)I

    move-result p0

    return p0
.end method

.method static synthetic access$2100(II)I
    .registers 2

    .line 109
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getRoleFlagMatchScore(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Ljava/lang/String;)I
    .registers 1

    .line 109
    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getVideoCodecPreferenceScore(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2300()Lcom/google/common/collect/Ordering;
    .registers 1

    .line 109
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;

    return-object v0
.end method

.method static synthetic access$2400()Lcom/google/common/collect/Ordering;
    .registers 1

    .line 109
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_ORDER:Lcom/google/common/collect/Ordering;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;)V
    .registers 1

    .line 109
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->maybeInvalidateForAudioChannelCountConstraints()V

    return-void
.end method

.method private static applyLegacyRendererOverrides(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)V
    .registers 9

    .line 2750
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_33

    .line 2752
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v2

    .line 2753
    invoke-virtual {p1, v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->hasSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_30

    .line 2757
    :cond_12
    invoke-virtual {p1, v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 2759
    iget-object v4, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    array-length v4, v4

    if-eqz v4, :cond_2d

    .line 2760
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    iget v5, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    .line 2762
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v2

    iget-object v5, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    iget v3, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->type:I

    invoke-direct {v4, v2, v5, v3}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[II)V

    goto :goto_2e

    :cond_2d
    const/4 v4, 0x0

    .line 2766
    :goto_2e
    aput-object v4, p2, v1

    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_33
    return-void
.end method

.method private static applyTrackSelectionOverrides(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)V
    .registers 8

    .line 2686
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v0

    .line 2689
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_17

    .line 2692
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v4

    .line 2691
    invoke-static {v4, p1, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->collectTrackSelectionOverrides(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Ljava/util/Map;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 2695
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getUnmappedTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    .line 2694
    invoke-static {v3, p1, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->collectTrackSelectionOverrides(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Ljava/util/Map;)V

    :goto_1e
    if-ge v2, v0, :cond_5a

    .line 2699
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result p1

    .line 2700
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;

    if-nez p1, :cond_31

    goto :goto_57

    .line 2707
    :cond_31
    iget-object v3, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_54

    .line 2708
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_54

    .line 2710
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    iget-object v4, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    .line 2712
    invoke-static {p1}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    goto :goto_55

    :cond_54
    const/4 v3, 0x0

    .line 2716
    :goto_55
    aput-object v3, p2, v2

    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_5a
    return-void
.end method

.method private static collectTrackSelectionOverrides(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2730
    :goto_1
    iget v1, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v0, v1, :cond_42

    .line 2731
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    .line 2732
    iget-object v2, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;

    if-nez v1, :cond_14

    goto :goto_3f

    .line 2736
    :cond_14
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;

    if-eqz v2, :cond_34

    .line 2738
    iget-object v2, v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    .line 2739
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 2740
    :cond_34
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    :goto_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_42
    return-void
.end method

.method protected static getFormatLanguageScore(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Z)I
    .registers 4

    .line 2900
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x4

    return p0

    .line 2904
    :cond_10
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2905
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_46

    if-nez p1, :cond_20

    goto :goto_46

    .line 2910
    :cond_20
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_44

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2d

    goto :goto_44

    :cond_2d
    const-string p2, "-"

    .line 2914
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    .line 2915
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    .line 2916
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    const/4 p0, 0x2

    return p0

    :cond_43
    return v0

    :cond_44
    :goto_44
    const/4 p0, 0x3

    return p0

    :cond_46
    :goto_46
    if-eqz p2, :cond_4b

    if-nez p0, :cond_4b

    const/4 v0, 0x1

    :cond_4b
    return v0
.end method

.method private static getMaxVideoPixelsToRetainForViewport(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)I
    .registers 12

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_44

    if-ne p2, v0, :cond_8

    goto :goto_44

    :cond_8
    const/4 v1, 0x0

    .line 2929
    :goto_9
    iget v2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v2, :cond_44

    .line 2930
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 2933
    iget v3, v2, Lcom/google/android/exoplayer2/Format;->width:I

    if-lez v3, :cond_41

    iget v3, v2, Lcom/google/android/exoplayer2/Format;->height:I

    if-lez v3, :cond_41

    .line 2934
    iget v3, v2, Lcom/google/android/exoplayer2/Format;->width:I

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->height:I

    .line 2935
    invoke-static {p3, p1, p2, v3, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;

    move-result-object v3

    .line 2937
    iget v4, v2, Lcom/google/android/exoplayer2/Format;->width:I

    iget v5, v2, Lcom/google/android/exoplayer2/Format;->height:I

    mul-int v4, v4, v5

    .line 2938
    iget v5, v2, Lcom/google/android/exoplayer2/Format;->width:I

    iget v6, v3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    const v7, 0x3f7ae148    # 0.98f

    mul-float v6, v6, v7

    float-to-int v6, v6

    if-lt v5, v6, :cond_41

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->height:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float v3, v3, v7

    float-to-int v3, v3

    if-lt v2, v3, :cond_41

    if-ge v4, v0, :cond_41

    move v0, v4

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_44
    :goto_44
    return v0
.end method

.method private static getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;
    .registers 8

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-le p3, p4, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    if-le p1, p2, :cond_c

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    if-eq v1, p0, :cond_10

    goto :goto_13

    :cond_10
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_13
    mul-int p0, p3, p1

    mul-int v0, p4, p2

    if-lt p0, v0, :cond_23

    .line 2967
    new-instance p0, Landroid/graphics/Point;

    invoke-static {v0, p3}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 2970
    :cond_23
    new-instance p2, Landroid/graphics/Point;

    invoke-static {p0, p4}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method

.method private static getRoleFlagMatchScore(II)I
    .registers 2

    if-eqz p0, :cond_8

    if-ne p0, p1, :cond_8

    const p0, 0x7fffffff

    return p0

    :cond_8
    and-int/2addr p0, p1

    .line 2979
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method private static getVideoCodecPreferenceScore(Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, -0x1

    .line 2990
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_46

    goto :goto_37

    :sswitch_10
    const-string v2, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    const/4 v1, 0x2

    goto :goto_37

    :sswitch_1a
    const-string v2, "video/avc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    const/4 v1, 0x3

    goto :goto_37

    :sswitch_24
    const-string v2, "video/hevc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    const/4 v1, 0x1

    goto :goto_37

    :sswitch_2e
    const-string v2, "video/av01"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    const/4 v1, 0x0

    :cond_37
    :goto_37
    if-eqz v1, :cond_43

    if-eq v1, v5, :cond_42

    if-eq v1, v4, :cond_41

    if-eq v1, v3, :cond_40

    return v0

    :cond_40
    return v5

    :cond_41
    return v4

    :cond_42
    return v3

    :cond_43
    const/4 p0, 0x4

    return p0

    nop

    :sswitch_data_46
    .sparse-switch
        -0x631b55f6 -> :sswitch_2e
        -0x63185e82 -> :sswitch_24
        0x4f62373a -> :sswitch_1a
        0x5f50bed9 -> :sswitch_10
    .end sparse-switch
.end method

.method private isAudioFormatWithinAudioChannelCountConstraints(Lcom/google/android/exoplayer2/Format;)Z
    .registers 5

    .line 2515
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2516
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz v1, :cond_57

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->deviceIsTV:Z

    if-nez v1, :cond_57

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_57

    .line 2519
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isDolbyAudio(Lcom/google/android/exoplayer2/Format;)Z

    move-result v1

    const/16 v2, 0x20

    if-eqz v1, :cond_2a

    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v1, v2, :cond_57

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    .line 2522
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->isSpatializationSupported()Z

    move-result v1

    if-eqz v1, :cond_57

    :cond_2a
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v1, v2, :cond_55

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    .line 2525
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->isSpatializationSupported()Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    .line 2526
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    .line 2527
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 2528
    invoke-virtual {v1, v2, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->canBeSpatialized(Lcom/google/android/exoplayer2/audio/AudioAttributes;Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    if-eqz p1, :cond_55

    goto :goto_57

    :cond_55
    const/4 p1, 0x0

    goto :goto_58

    :cond_57
    :goto_57
    const/4 p1, 0x1

    :goto_58
    monitor-exit v0

    return p1

    :catchall_5a
    move-exception p1

    .line 2529
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method private static isDolbyAudio(Lcom/google/android/exoplayer2/Format;)Z
    .registers 7

    .line 3005
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 3008
    :cond_6
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_46

    goto :goto_3b

    :sswitch_14
    const-string v2, "audio/eac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    const/4 v0, 0x1

    goto :goto_3b

    :sswitch_1e
    const-string v2, "audio/ac4"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    const/4 v0, 0x3

    goto :goto_3b

    :sswitch_28
    const-string v2, "audio/ac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    const/4 v0, 0x0

    goto :goto_3b

    :sswitch_32
    const-string v2, "audio/eac3-joc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    const/4 v0, 0x2

    :cond_3b
    :goto_3b
    if-eqz v0, :cond_44

    if-eq v0, v5, :cond_44

    if-eq v0, v4, :cond_44

    if-eq v0, v3, :cond_44

    return v1

    :cond_44
    return v5

    nop

    :sswitch_data_46
    .sparse-switch
        -0x7e929daa -> :sswitch_32
        0xb269698 -> :sswitch_28
        0xb269699 -> :sswitch_1e
        0x59ae0c65 -> :sswitch_14
    .end sparse-switch
.end method

.method protected static isSupported(IZ)Z
    .registers 3

    .line 2868
    invoke-static {p0}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->getFormatSupport(I)I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    if-eqz p1, :cond_d

    const/4 p1, 0x3

    if-ne p0, p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static synthetic lambda$2oqWHXRsjb3tWZPKeM7ZGAojLkw(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;Lcom/google/android/exoplayer2/Format;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isAudioFormatWithinAudioChannelCountConstraints(Lcom/google/android/exoplayer2/Format;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$selectTextTrack$4(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;ILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;
    .registers 5

    .line 2560
    invoke-static {p2, p3, p0, p4, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;->createForTrackGroup(ILcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[ILjava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$selectVideoTrack$2(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[IILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;
    .registers 5

    .line 2445
    aget p1, p1, p2

    invoke-static {p2, p3, p0, p4, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->createForTrackGroup(ILcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[II)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 4

    .line 2073
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 2074
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_21

    const/4 v1, 0x0

    goto :goto_21

    .line 2075
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_17

    const/4 v1, 0x1

    goto :goto_21

    :cond_17
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int v1, p0, p1

    :cond_21
    :goto_21
    return v1
.end method

.method static synthetic lambda$static$1(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method private static maybeConfigureRenderersForTunneling(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 2792
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v5

    const/4 v6, 0x1

    if-ge v2, v5, :cond_34

    .line 2793
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v5

    .line 2794
    aget-object v7, p3, v2

    if-eq v5, v6, :cond_17

    const/4 v8, 0x2

    if-ne v5, v8, :cond_31

    :cond_17
    if-eqz v7, :cond_31

    .line 2797
    aget-object v8, p1, v2

    .line 2798
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v9

    .line 2797
    invoke-static {v8, v9, v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->rendererSupportsTunneling([[ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Z

    move-result v7

    if-eqz v7, :cond_31

    if-ne v5, v6, :cond_2c

    if-eq v4, v1, :cond_2a

    goto :goto_2e

    :cond_2a
    move v4, v2

    goto :goto_31

    :cond_2c
    if-eq v3, v1, :cond_30

    :goto_2e
    const/4 p0, 0x0

    goto :goto_35

    :cond_30
    move v3, v2

    :cond_31
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_34
    const/4 p0, 0x1

    :goto_35
    if-eq v4, v1, :cond_3a

    if-eq v3, v1, :cond_3a

    const/4 v0, 0x1

    :cond_3a
    and-int/2addr p0, v0

    if-eqz p0, :cond_46

    .line 2819
    new-instance p0, Lcom/google/android/exoplayer2/RendererConfiguration;

    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/RendererConfiguration;-><init>(Z)V

    .line 2821
    aput-object p0, p2, v4

    .line 2822
    aput-object p0, p2, v3

    :cond_46
    return-void
.end method

.method private maybeInvalidateForAudioChannelCountConstraints()V
    .registers 4

    .line 2667
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2668
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz v1, :cond_21

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->deviceIsTV:Z

    if-nez v1, :cond_21

    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_21

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    .line 2673
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->isSpatializationSupported()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    .line 2674
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_29

    if-eqz v1, :cond_28

    .line 2676
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->invalidate()V

    :cond_28
    return-void

    :catchall_29
    move-exception v1

    .line 2674
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method protected static normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2881
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    const/4 p0, 0x0

    :cond_f
    return-object p0
.end method

.method private static rendererSupportsTunneling([[ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 2842
    :cond_4
    invoke-interface {p2}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result p1

    const/4 v1, 0x0

    .line 2843
    :goto_d
    invoke-interface {p2}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->length()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 2845
    aget-object v2, p0, p1

    invoke-interface {p2, v1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v3

    aget v2, v2, v3

    .line 2846
    invoke-static {v2}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->getTunnelingSupport(I)I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_24

    return v0

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_27
    const/4 p0, 0x1

    return p0
.end method

.method private selectTracksForType(ILcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo<",
            "TT;>;>(I",
            "Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 2614
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2615
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v2, :cond_a9

    .line 2617
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v5

    move/from16 v6, p1

    if-ne v6, v5, :cond_9d

    .line 2618
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v5

    const/4 v7, 0x0

    .line 2619
    :goto_1b
    iget v8, v5, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v7, v8, :cond_9d

    .line 2620
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    .line 2621
    aget-object v9, p3, v4

    aget-object v9, v9, v7

    move-object/from16 v10, p4

    .line 2622
    invoke-interface {v10, v4, v8, v9}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory;->create(ILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;

    move-result-object v9

    .line 2623
    iget v11, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v11, v11, [Z

    const/4 v12, 0x0

    .line 2624
    :goto_32
    iget v13, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v12, v13, :cond_95

    .line 2625
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;

    .line 2626
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;->getSelectionEligibility()I

    move-result v14

    .line 2627
    aget-boolean v15, v11, v12

    if-nez v15, :cond_8c

    if-nez v14, :cond_47

    goto :goto_8c

    :cond_47
    const/4 v15, 0x1

    if-ne v14, v15, :cond_51

    .line 2632
    invoke-static {v13}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    move/from16 v17, v2

    goto :goto_88

    .line 2634
    :cond_51
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2635
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v12, 0x1

    move/from16 v3, v16

    .line 2636
    :goto_5d
    iget v15, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v3, v15, :cond_85

    .line 2637
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;

    .line 2638
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;->getSelectionEligibility()I

    move-result v0

    move/from16 v17, v2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7d

    .line 2639
    invoke-virtual {v13, v15}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;->isCompatibleForAdaptationWith(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 2640
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 2641
    aput-boolean v0, v11, v3

    goto :goto_7e

    :cond_7d
    const/4 v0, 0x1

    :goto_7e
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p2

    move/from16 v2, v17

    goto :goto_5d

    :cond_85
    move/from16 v17, v2

    move-object v13, v14

    .line 2646
    :goto_88
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8e

    :cond_8c
    :goto_8c
    move/from16 v17, v2

    :goto_8e
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p2

    move/from16 v2, v17

    goto :goto_32

    :cond_95
    move/from16 v17, v2

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p2

    goto/16 :goto_1b

    :cond_9d
    move-object/from16 v10, p4

    move/from16 v17, v2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p2

    move/from16 v2, v17

    goto/16 :goto_c

    .line 2651
    :cond_a9
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b1

    const/4 v0, 0x0

    return-object v0

    :cond_b1
    move-object/from16 v0, p5

    .line 2654
    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2655
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 2656
    :goto_c0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_d3

    .line 2657
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;->trackIndex:I

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c0

    :cond_d3
    const/4 v2, 0x0

    .line 2659
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;

    .line 2660
    new-instance v2, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    iget-object v3, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v2, v3, v1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    iget v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;->rendererIndex:I

    .line 2662
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2660
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private setParametersInternal(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V
    .registers 4

    .line 2254
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2256
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2257
    :try_start_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 2258
    :goto_11
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 2259
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_29

    if-eqz v1, :cond_28

    .line 2262
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->context:Landroid/content/Context;

    if-nez p1, :cond_25

    const-string p1, "DefaultTrackSelector"

    const-string v0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    .line 2263
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->invalidate()V

    :cond_28
    return-void

    :catchall_29
    move-exception p1

    .line 2259
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method


# virtual methods
.method public buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .registers 2

    .line 2245
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .registers 3

    .line 2193
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2194
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 2195
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public bridge synthetic getParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .registers 2

    .line 109
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public isSetParametersSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$selectAudioTrack$3$DefaultTrackSelector(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ZILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;
    .registers 12

    .line 2487
    new-instance v5, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$2oqWHXRsjb3tWZPKeM7ZGAojLkw;

    invoke-direct {v5, p0}, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$2oqWHXRsjb3tWZPKeM7ZGAojLkw;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;)V

    move v0, p3

    move-object v1, p4

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackInfo;->createForTrackGroup(ILcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[IZLcom/google/common/base/Predicate;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public release()V
    .registers 4

    .line 2183
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2184
    :try_start_3
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_12

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    if-eqz v1, :cond_12

    .line 2185
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->release()V

    .line 2187
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    .line 2188
    invoke-super {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->release()V

    return-void

    :catchall_17
    move-exception v1

    .line 2187
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method protected selectAllTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2365
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v0

    .line 2366
    new-array v1, v0, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    .line 2371
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectVideoTrack(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 2377
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    aput-object v2, v1, v3

    .line 2382
    :cond_1a
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectAudioTrack(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;

    move-result-object p3

    if-eqz p3, :cond_2e

    .line 2388
    iget-object v2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    aput-object v3, v1, v2

    :cond_2e
    const/4 v2, 0x0

    if-nez p3, :cond_33

    const/4 p3, 0x0

    goto :goto_47

    .line 2392
    :cond_33
    iget-object v3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    iget-object v3, v3, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    iget-object p3, p3, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    aget p3, p3, v2

    .line 2395
    invoke-virtual {v3, p3}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p3

    iget-object p3, p3, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 2398
    :goto_47
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectTextTrack(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p3

    if-eqz p3, :cond_5b

    .line 2400
    iget-object v3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    aput-object p3, v1, v3

    :cond_5b
    :goto_5b
    if-ge v2, v0, :cond_79

    .line 2404
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result p3

    const/4 v3, 0x2

    if-eq p3, v3, :cond_76

    const/4 v3, 0x1

    if-eq p3, v3, :cond_76

    const/4 v3, 0x3

    if-eq p3, v3, :cond_76

    .line 2410
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    aget-object v4, p2, v2

    .line 2409
    invoke-virtual {p0, p3, v3, v4, p4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectOtherTrack(ILcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    move-result-object p3

    aput-object p3, v1, v2

    :cond_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    :cond_79
    return-object v1
.end method

.method protected selectAudioTrack(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 2474
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v1

    if-ge v0, v1, :cond_1c

    const/4 v1, 0x2

    .line 2475
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v2

    if-ne v1, v2, :cond_19

    .line 2476
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-lez v1, :cond_19

    const/4 p3, 0x1

    goto :goto_1c

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1c
    :goto_1c
    const/4 v1, 0x1

    .line 2482
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$FMkwf9V0e6tVTePCQSGXimjklTI;

    invoke-direct {v4, p0, p4, p3}, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$FMkwf9V0e6tVTePCQSGXimjklTI;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Z)V

    sget-object v5, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$m1YpLE8c31b0fv-4XiGx5cPHQGU;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$m1YpLE8c31b0fv-4XiGx5cPHQGU;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectTracksForType(ILcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected selectOtherTrack(ILcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x0

    move-object v2, p1

    move-object v4, v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2586
    :goto_6
    iget v5, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v1, v5, :cond_3b

    .line 2587
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    .line 2588
    aget-object v6, p3, v1

    const/4 v7, 0x0

    .line 2589
    :goto_11
    iget v8, v5, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v7, v8, :cond_38

    .line 2590
    aget v8, v6, v7

    iget-boolean v9, p4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 2592
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    .line 2593
    new-instance v9, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;

    aget v10, v6, v7

    invoke-direct {v9, v8, v10}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;-><init>(Lcom/google/android/exoplayer2/Format;I)V

    if-eqz v4, :cond_32

    .line 2594
    invoke-virtual {v9, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;)I

    move-result v8

    if-lez v8, :cond_35

    :cond_32
    move-object v2, v5

    move v3, v7

    move-object v4, v9

    :cond_35
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_3b
    if-nez v2, :cond_3e

    goto :goto_48

    .line 2602
    :cond_3e
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    const/4 p2, 0x1

    new-array p2, p2, [I

    aput v3, p2, v0

    invoke-direct {p1, v2, p2}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    :goto_48
    return-object p1
.end method

.method protected selectTextTrack(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2555
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$B118eKD6Dc6qX_QLwmygLDfKZoQ;

    invoke-direct {v4, p3, p4}, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$B118eKD6Dc6qX_QLwmygLDfKZoQ;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)V

    sget-object v5, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$QTZwDkKYtDkGLCUFu1PkmuQYFIE;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$QTZwDkKYtDkGLCUFu1PkmuQYFIE;

    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectTracksForType(ILcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected final selectTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)Landroid/util/Pair;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "Lcom/google/android/exoplayer2/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Lcom/google/android/exoplayer2/RendererConfiguration;",
            "[",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2281
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2282
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 2283
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz v2, :cond_22

    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x20

    if-lt v2, v3, :cond_22

    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    if-eqz v2, :cond_22

    .line 2288
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Looper;

    invoke-virtual {v2, p0, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->ensureInitialized(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;Landroid/os/Looper;)V

    .line 2290
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_a1

    .line 2291
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v0

    .line 2293
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectAllTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    move-result-object p3

    .line 2299
    invoke-static {p1, v1, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->applyTrackSelectionOverrides(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)V

    .line 2300
    invoke-static {p1, v1, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->applyLegacyRendererOverrides(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_33
    const/4 v4, 0x0

    if-ge v3, v0, :cond_51

    .line 2304
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v5

    .line 2305
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v6

    if-nez v6, :cond_4c

    iget-object v6, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 2306
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 2307
    :cond_4c
    aput-object v4, p3, v3

    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 2312
    :cond_51
    iget-object v3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->trackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;

    .line 2314
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getBandwidthMeter()Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    move-result-object v5

    .line 2313
    invoke-interface {v3, p3, v5, p4, p5}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;->createTrackSelections([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    move-result-object p3

    .line 2319
    new-array p4, v0, [Lcom/google/android/exoplayer2/RendererConfiguration;

    const/4 p5, 0x0

    :goto_5e
    if-ge p5, v0, :cond_95

    .line 2321
    invoke-virtual {p1, p5}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v3

    .line 2323
    invoke-virtual {v1, p5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_7a

    iget-object v5, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    goto :goto_7a

    :cond_78
    const/4 v3, 0x0

    goto :goto_7b

    :cond_7a
    :goto_7a
    const/4 v3, 0x1

    :goto_7b
    if-nez v3, :cond_89

    .line 2326
    invoke-virtual {p1, p5}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v3

    const/4 v5, -0x2

    if-eq v3, v5, :cond_8a

    aget-object v3, p3, p5

    if-eqz v3, :cond_89

    goto :goto_8a

    :cond_89
    const/4 v6, 0x0

    :cond_8a
    :goto_8a
    if-eqz v6, :cond_8f

    .line 2328
    sget-object v3, Lcom/google/android/exoplayer2/RendererConfiguration;->DEFAULT:Lcom/google/android/exoplayer2/RendererConfiguration;

    goto :goto_90

    :cond_8f
    move-object v3, v4

    :goto_90
    aput-object v3, p4, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_5e

    .line 2332
    :cond_95
    iget-boolean p5, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    if-eqz p5, :cond_9c

    .line 2333
    invoke-static {p1, p2, p4, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->maybeConfigureRenderersForTunneling(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V

    .line 2337
    :cond_9c
    invoke-static {p4, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :catchall_a1
    move-exception p1

    .line 2290
    :try_start_a2
    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    goto :goto_a5

    :goto_a4
    throw p1

    :goto_a5
    goto :goto_a4
.end method

.method protected selectVideoTrack(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2440
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$G_69d6yDX3gWLIzq0RGzZUFgyDY;

    invoke-direct {v4, p4, p3}, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$G_69d6yDX3gWLIzq0RGzZUFgyDY;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[I)V

    sget-object v5, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$qXp2AJS77Zt8I4-P39f5Tpz-t8A;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$qXp2AJS77Zt8I4-P39f5Tpz-t8A;

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectTracksForType(ILcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .registers 4

    .line 2216
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2217
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 2218
    :goto_e
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 2219
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_17

    if-eqz v1, :cond_16

    .line 2221
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->maybeInvalidateForAudioChannelCountConstraints()V

    :cond_16
    return-void

    :catchall_17
    move-exception p1

    .line 2219
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)V
    .registers 2

    .line 2240
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParametersInternal(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method

.method public setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2231
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParametersInternal(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method

.method public setParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .registers 5

    .line 2205
    instance-of v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    if-eqz v0, :cond_a

    .line 2206
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParametersInternal(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    .line 2209
    :cond_a
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$1;)V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->set(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    .line 2210
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParametersInternal(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method
