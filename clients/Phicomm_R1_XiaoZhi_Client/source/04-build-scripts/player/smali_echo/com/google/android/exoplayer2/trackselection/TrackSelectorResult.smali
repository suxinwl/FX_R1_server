.class public final Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
.super Ljava/lang/Object;
.source "TrackSelectorResult.java"


# instance fields
.field public final groups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public final info:Ljava/lang/Object;

.field public final rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

.field public final renderersEnabled:[Z

.field public final selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroupArray;[ZLcom/google/android/exoplayer2/trackselection/TrackSelectionArray;Ljava/lang/Object;[Lcom/google/android/exoplayer2/RendererConfiguration;)V
    .registers 6
    .param p1, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "renderersEnabled"    # [Z
    .param p3, "selections"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;
    .param p4, "info"    # Ljava/lang/Object;
    .param p5, "rendererConfigurations"    # [Lcom/google/android/exoplayer2/RendererConfiguration;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->groups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 63
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->renderersEnabled:[Z

    .line 64
    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .line 65
    iput-object p4, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    .line 66
    iput-object p5, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    .line 67
    return-void
.end method


# virtual methods
.method public isEquivalent(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Z
    .registers 5
    .param p1, "other"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .prologue
    const/4 v1, 0x0

    .line 77
    if-nez p1, :cond_4

    .line 85
    :cond_3
    :goto_3
    return v1

    .line 80
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    iget v2, v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->length:I

    if-ge v0, v2, :cond_14

    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isEquivalent(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 85
    :cond_14
    const/4 v1, 0x1

    goto :goto_3
.end method

.method public isEquivalent(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;I)Z
    .registers 6
    .param p1, "other"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .param p2, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 100
    if-nez p1, :cond_4

    .line 105
    :cond_3
    :goto_3
    return v0

    .line 103
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->renderersEnabled:[Z

    aget-boolean v1, v1, p2

    iget-object v2, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->renderersEnabled:[Z

    aget-boolean v2, v2, p2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .line 104
    invoke-virtual {v1, p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v1, v1, p2

    iget-object v2, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v2, v2, p2

    .line 105
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method
