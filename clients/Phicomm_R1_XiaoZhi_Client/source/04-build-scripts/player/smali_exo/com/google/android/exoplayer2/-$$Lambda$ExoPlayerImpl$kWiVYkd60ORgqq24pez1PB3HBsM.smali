.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$kWiVYkd60ORgqq24pez1PB3HBsM;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$kWiVYkd60ORgqq24pez1PB3HBsM;->f$0:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$kWiVYkd60ORgqq24pez1PB3HBsM;->f$0:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$setTrackSelectionParameters$6(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method
