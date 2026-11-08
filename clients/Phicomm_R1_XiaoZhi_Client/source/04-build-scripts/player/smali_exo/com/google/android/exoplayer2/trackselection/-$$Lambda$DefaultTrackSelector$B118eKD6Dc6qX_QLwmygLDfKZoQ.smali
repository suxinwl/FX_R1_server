.class public final synthetic Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$B118eKD6Dc6qX_QLwmygLDfKZoQ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$B118eKD6Dc6qX_QLwmygLDfKZoQ;->f$0:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$B118eKD6Dc6qX_QLwmygLDfKZoQ;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final create(ILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;
    .registers 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$B118eKD6Dc6qX_QLwmygLDfKZoQ;->f$0:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$B118eKD6Dc6qX_QLwmygLDfKZoQ;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->lambda$selectTextTrack$4(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;ILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
