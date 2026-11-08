.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$g47HGSrePzQZ7qJmVsIL9T1OSwI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/MediaItem;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$g47HGSrePzQZ7qJmVsIL9T1OSwI;->f$0:Lcom/google/android/exoplayer2/MediaItem;

    iput p2, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$g47HGSrePzQZ7qJmVsIL9T1OSwI;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$g47HGSrePzQZ7qJmVsIL9T1OSwI;->f$0:Lcom/google/android/exoplayer2/MediaItem;

    iget v1, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$g47HGSrePzQZ7qJmVsIL9T1OSwI;->f$1:I

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$updatePlaybackInfo$14(Lcom/google/android/exoplayer2/MediaItem;ILcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method
