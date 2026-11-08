.class final Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioTrackScore"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitrate:I

.field private final channelCount:I

.field private final defaultSelectionFlagScore:I

.field private final matchLanguageScore:I

.field private final parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

.field private final sampleRate:I

.field private final withinRendererCapabilitiesScore:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;I)V
    .registers 7
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "parameters"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .param p3, "formatSupport"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1083
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 1084
    invoke-static {p3, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v0

    if-eqz v0, :cond_30

    move v0, v1

    :goto_e
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->withinRendererCapabilitiesScore:I

    .line 1085
    iget-object v0, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->formatHasLanguage(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    move v0, v1

    :goto_19
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->matchLanguageScore:I

    .line 1086
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_34

    :goto_21
    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->defaultSelectionFlagScore:I

    .line 1087
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->channelCount:I

    .line 1088
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->sampleRate:I

    .line 1089
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->bitrate:I

    .line 1090
    return-void

    :cond_30
    move v0, v2

    .line 1084
    goto :goto_e

    :cond_32
    move v0, v2

    .line 1085
    goto :goto_19

    :cond_34
    move v1, v2

    .line 1086
    goto :goto_21
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;)I
    .registers 5
    .param p1, "other"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;

    .prologue
    const/4 v0, 0x1

    .line 1101
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->withinRendererCapabilitiesScore:I

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->withinRendererCapabilitiesScore:I

    if-eq v1, v2, :cond_10

    .line 1102
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->withinRendererCapabilitiesScore:I

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->withinRendererCapabilitiesScore:I

    # invokes: Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->compareInts(II)I
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$000(II)I

    move-result v1

    .line 1119
    :goto_f
    return v1

    .line 1104
    :cond_10
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->matchLanguageScore:I

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->matchLanguageScore:I

    if-eq v1, v2, :cond_1f

    .line 1105
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->matchLanguageScore:I

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->matchLanguageScore:I

    # invokes: Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->compareInts(II)I
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$000(II)I

    move-result v1

    goto :goto_f

    .line 1106
    :cond_1f
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->defaultSelectionFlagScore:I

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->defaultSelectionFlagScore:I

    if-eq v1, v2, :cond_2e

    .line 1107
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->defaultSelectionFlagScore:I

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->defaultSelectionFlagScore:I

    # invokes: Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->compareInts(II)I
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$000(II)I

    move-result v1

    goto :goto_f

    .line 1108
    :cond_2e
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-eqz v1, :cond_3d

    .line 1109
    iget v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->bitrate:I

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->bitrate:I

    # invokes: Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->compareInts(II)I
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$000(II)I

    move-result v1

    goto :goto_f

    .line 1113
    :cond_3d
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->withinRendererCapabilitiesScore:I

    if-ne v1, v0, :cond_51

    .line 1114
    .local v0, "resultSign":I
    :goto_41
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->channelCount:I

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->channelCount:I

    if-eq v1, v2, :cond_53

    .line 1115
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->channelCount:I

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->channelCount:I

    # invokes: Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->compareInts(II)I
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$000(II)I

    move-result v1

    mul-int/2addr v1, v0

    goto :goto_f

    .line 1113
    .end local v0    # "resultSign":I
    :cond_51
    const/4 v0, -0x1

    goto :goto_41

    .line 1116
    .restart local v0    # "resultSign":I
    :cond_53
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->sampleRate:I

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->sampleRate:I

    if-eq v1, v2, :cond_63

    .line 1117
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->sampleRate:I

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->sampleRate:I

    # invokes: Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->compareInts(II)I
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$000(II)I

    move-result v1

    mul-int/2addr v1, v0

    goto :goto_f

    .line 1119
    :cond_63
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->bitrate:I

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->bitrate:I

    # invokes: Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->compareInts(II)I
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$000(II)I

    move-result v1

    mul-int/2addr v1, v0

    goto :goto_f
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1073
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1125
    if-ne p0, p1, :cond_5

    .line 1134
    :cond_4
    :goto_4
    return v1

    .line 1128
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 1129
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 1132
    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;

    .line 1134
    .local v0, "that":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;
    iget v3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->withinRendererCapabilitiesScore:I

    iget v4, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->withinRendererCapabilitiesScore:I

    if-ne v3, v4, :cond_3a

    iget v3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->matchLanguageScore:I

    iget v4, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->matchLanguageScore:I

    if-ne v3, v4, :cond_3a

    iget v3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->defaultSelectionFlagScore:I

    iget v4, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->defaultSelectionFlagScore:I

    if-ne v3, v4, :cond_3a

    iget v3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->channelCount:I

    iget v4, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->channelCount:I

    if-ne v3, v4, :cond_3a

    iget v3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->sampleRate:I

    iget v4, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->sampleRate:I

    if-ne v3, v4, :cond_3a

    iget v3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->bitrate:I

    iget v4, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->bitrate:I

    if-eq v3, v4, :cond_4

    :cond_3a
    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 1143
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->withinRendererCapabilitiesScore:I

    .line 1144
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->matchLanguageScore:I

    add-int v0, v1, v2

    .line 1145
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->defaultSelectionFlagScore:I

    add-int v0, v1, v2

    .line 1146
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->channelCount:I

    add-int v0, v1, v2

    .line 1147
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->sampleRate:I

    add-int v0, v1, v2

    .line 1148
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->bitrate:I

    add-int v0, v1, v2

    .line 1149
    return v0
.end method
