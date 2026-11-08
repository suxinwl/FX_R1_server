.class final Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$SingleEventSubtitle;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/text/Subtitle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleEventSubtitle"
.end annotation


# instance fields
.field private final cues:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final timeUs:J


# direct methods
.method public constructor <init>(JLcom/google/common/collect/ImmutableList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$SingleEventSubtitle;->timeUs:J

    .line 151
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$SingleEventSubtitle;->cues:Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 172
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$SingleEventSubtitle;->timeUs:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_9

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$SingleEventSubtitle;->cues:Lcom/google/common/collect/ImmutableList;

    goto :goto_d

    :cond_9
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    :goto_d
    return-object p1
.end method

.method public getEventTime(I)J
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 166
    :goto_5
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 167
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$SingleEventSubtitle;->timeUs:J

    return-wide v0
.end method

.method public getEventTimeCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .registers 6

    .line 156
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$SingleEventSubtitle;->timeUs:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_8

    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    const/4 p1, -0x1

    :goto_9
    return p1
.end method
