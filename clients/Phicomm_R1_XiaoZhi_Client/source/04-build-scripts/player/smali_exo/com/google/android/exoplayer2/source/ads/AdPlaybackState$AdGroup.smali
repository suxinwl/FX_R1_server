.class public final Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup$FieldNumber;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_CONTENT_RESUME_OFFSET_US:I = 0x5

.field private static final FIELD_COUNT:I = 0x1

.field private static final FIELD_DURATIONS_US:I = 0x4

.field private static final FIELD_IS_SERVER_SIDE_INSERTED:I = 0x6

.field private static final FIELD_STATES:I = 0x3

.field private static final FIELD_TIME_US:I = 0x0

.field private static final FIELD_URIS:I = 0x2


# instance fields
.field public final contentResumeOffsetUs:J

.field public final count:I

.field public final durationsUs:[J

.field public final isServerSideInserted:Z

.field public final states:[I

.field public final timeUs:J

.field public final uris:[Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 390
    sget-object v0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdPlaybackState$AdGroup$Mpd4x8qhBsQtt84vdyt5u_bnEhU;->INSTANCE:Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdPlaybackState$AdGroup$Mpd4x8qhBsQtt84vdyt5u_bnEhU;

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 14

    const/4 v0, 0x0

    new-array v5, v0, [I

    new-array v6, v0, [Landroid/net/Uri;

    new-array v7, v0, [J

    const/4 v4, -0x1

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-wide v2, p1

    .line 89
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-void
.end method

.method private constructor <init>(JI[I[Landroid/net/Uri;[JJZ)V
    .registers 12

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    array-length v0, p4

    array-length v1, p5

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 108
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    .line 109
    iput p3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    .line 110
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    .line 111
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    .line 112
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 113
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 114
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    return-void
.end method

.method synthetic constructor <init>(JI[I[Landroid/net/Uri;[JJZLcom/google/android/exoplayer2/source/ads/AdPlaybackState$1;)V
    .registers 11

    .line 59
    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-void
.end method

.method private static copyDurationsUsWithSpaceForAdCount([JI)[J
    .registers 5

    .line 342
    array-length v0, p0

    .line 343
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 344
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 345
    invoke-static {p0, v0, p1, v1, v2}, Ljava/util/Arrays;->fill([JIIJ)V

    return-object p0
.end method

.method private static copyStatesWithSpaceForAdCount([II)[I
    .registers 4

    .line 333
    array-length v0, p0

    .line 334
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 335
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const/4 v1, 0x0

    .line 336
    invoke-static {p0, v0, p1, v1}, Ljava/util/Arrays;->fill([IIII)V

    return-object p0
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .registers 13

    const/4 v0, 0x0

    .line 395
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v1, 0x1

    .line 396
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v1, 0x2

    .line 398
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x3

    .line 401
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    const/4 v6, 0x4

    .line 402
    invoke-static {v6}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v6

    const/4 v7, 0x5

    .line 403
    invoke-static {v7}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    const/4 v7, 0x6

    .line 404
    invoke-static {v7}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 405
    new-instance p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    if-nez v2, :cond_46

    new-array v2, v0, [I

    :cond_46
    move-object v7, v2

    if-nez v1, :cond_4c

    new-array v1, v0, [Landroid/net/Uri;

    goto :goto_54

    :cond_4c
    new-array v2, v0, [Landroid/net/Uri;

    .line 409
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Uri;

    :goto_54
    if-nez v6, :cond_5a

    new-array v0, v0, [J

    move-object v8, v0

    goto :goto_5b

    :cond_5a
    move-object v8, v6

    :goto_5b
    move-object v2, p0

    move-object v6, v7

    move-object v7, v1

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-object p0
.end method

.method private static keyForField(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x24

    .line 416
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$Mpd4x8qhBsQtt84vdyt5u_bnEhU(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_51

    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_51

    .line 171
    :cond_12
    check-cast p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 172
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4f

    iget v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    if-ne v2, v3, :cond_4f

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    .line 174
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    .line 175
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 176
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_4f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    if-ne v2, p1, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v0, 0x0

    :goto_50
    return v0

    :cond_51
    :goto_51
    return v1
.end method

.method public getFirstAdIndexToPlay()I
    .registers 2

    const/4 v0, -0x1

    .line 122
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->getNextAdIndexToPlay(I)I

    move-result v0

    return v0
.end method

.method public getNextAdIndexToPlay(I)I
    .registers 5

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 132
    :goto_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    array-length v2, v1

    if-ge p1, v2, :cond_17

    .line 133
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    if-nez v2, :cond_17

    aget v2, v1, p1

    if-eqz v2, :cond_17

    aget v1, v1, p1

    if-ne v1, v0, :cond_14

    goto :goto_17

    :cond_14
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_17
    :goto_17
    return p1
.end method

.method public hasUnplayedAds()Z
    .registers 6

    .line 152
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 155
    :goto_9
    iget v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    if-ge v2, v3, :cond_1c

    .line 156
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    aget v4, v3, v2

    if-eqz v4, :cond_1b

    aget v3, v3, v2

    if-ne v3, v1, :cond_18

    goto :goto_1b

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1b
    :goto_1b
    return v1

    :cond_1c
    return v0
.end method

.method public hashCode()I
    .registers 7

    .line 183
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    mul-int/lit8 v0, v0, 0x1f

    .line 184
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 185
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 186
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 187
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 188
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 189
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public shouldPlayAdGroup()Z
    .registers 3

    .line 145
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->getFirstAdIndexToPlay()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    if-ge v0, v1, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 5

    .line 377
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 378
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x1

    .line 379
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x2

    .line 381
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 380
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v1, 0x3

    .line 382
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const/4 v1, 0x4

    .line 383
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const/4 v1, 0x5

    .line 384
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x6

    .line 385
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public withAdCount(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .registers 13

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->copyStatesWithSpaceForAdCount([II)[I

    move-result-object v5

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    move-result-object v7

    .line 205
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Landroid/net/Uri;

    .line 206
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v10, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    move-object v1, v0

    move v4, p1

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-object v0
.end method

.method public withAdDurationsUs([J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .registers 12

    .line 259
    array-length v0, p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    array-length v2, v1

    if-ge v0, v2, :cond_c

    .line 260
    array-length v0, v1

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    move-result-object p1

    goto :goto_1a

    .line 261
    :cond_c
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1a

    array-length v0, p1

    array-length v2, v1

    if-le v0, v2, :cond_1a

    .line 262
    array-length v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    :cond_1a
    :goto_1a
    move-object v6, p1

    .line 264
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    iget v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-object p1
.end method

.method public withAdState(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 238
    iget v3, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eq v3, v6, :cond_12

    if-ge v2, v3, :cond_10

    goto :goto_12

    :cond_10
    const/4 v3, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v3, 0x1

    :goto_13
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 239
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    add-int/lit8 v6, v2, 0x1

    invoke-static {v3, v6}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->copyStatesWithSpaceForAdCount([II)[I

    move-result-object v11

    .line 240
    aget v3, v11, v2

    if-eqz v3, :cond_2a

    aget v3, v11, v2

    if-eq v3, v5, :cond_2a

    aget v3, v11, v2

    if-ne v3, v1, :cond_2b

    :cond_2a
    const/4 v4, 0x1

    :cond_2b
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 244
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    array-length v4, v3

    array-length v5, v11

    if-ne v4, v5, :cond_35

    goto :goto_3a

    :cond_35
    array-length v4, v11

    .line 247
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    move-result-object v3

    :goto_3a
    move-object v13, v3

    .line 249
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    array-length v4, v3

    array-length v5, v11

    if-ne v4, v5, :cond_42

    goto :goto_49

    :cond_42
    array-length v4, v11

    .line 250
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/Uri;

    :goto_49
    move-object v12, v3

    .line 251
    aput v1, v11, v2

    .line 252
    new-instance v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    iget v10, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    move-object v7, v1

    move/from16 v16, v2

    invoke-direct/range {v7 .. v16}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-object v1
.end method

.method public withAdUri(Landroid/net/Uri;I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .registers 15

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->copyStatesWithSpaceForAdCount([II)[I

    move-result-object v6

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    array-length v1, v0

    array-length v2, v6

    if-ne v1, v2, :cond_f

    goto :goto_14

    :cond_f
    array-length v1, v6

    .line 220
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    move-result-object v0

    :goto_14
    move-object v8, v0

    .line 221
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    array-length v1, v6

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Landroid/net/Uri;

    .line 222
    aput-object p1, v7, p2

    const/4 p1, 0x1

    .line 223
    aput p1, v6, p2

    .line 224
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    iget v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    iget-wide v9, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v11, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    move-object v2, p1

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-object p1
.end method

.method public withAllAdsReset()Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .registers 12

    .line 315
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-object p0

    .line 318
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    array-length v4, v0

    .line 319
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v4, :cond_2e

    .line 321
    aget v2, v5, v1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_20

    aget v2, v5, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_20

    aget v2, v5, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2b

    .line 324
    :cond_20
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    aget-object v2, v2, v1

    if-nez v2, :cond_28

    const/4 v2, 0x0

    goto :goto_29

    :cond_28
    const/4 v2, 0x1

    :goto_29
    aput v2, v5, v1

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 327
    :cond_2e
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v10, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-object v0
.end method

.method public withAllAdsSkipped()Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .registers 14

    .line 288
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1a

    .line 289
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    const/4 v6, 0x0

    new-array v7, v1, [I

    new-array v8, v1, [Landroid/net/Uri;

    new-array v9, v1, [J

    iget-wide v10, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v12, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-object v0

    .line 298
    :cond_1a
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    array-length v5, v0

    .line 299
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    :goto_21
    if-ge v1, v5, :cond_32

    .line 301
    aget v0, v6, v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2c

    aget v0, v6, v1

    if-nez v0, :cond_2f

    :cond_2c
    const/4 v0, 0x2

    .line 302
    aput v0, v6, v1

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 305
    :cond_32
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-wide v9, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v11, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-object v0
.end method

.method public withContentResumeOffsetUs(J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .registers 14

    .line 271
    new-instance v10, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    iget v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    move-object v0, v10

    move-wide v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-object v10
.end method

.method public withIsServerSideInserted(Z)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .registers 13

    .line 278
    new-instance v10, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    iget v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    move-object v0, v10

    move v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-object v10
.end method

.method public withTimeUs(J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .registers 14

    .line 196
    new-instance v10, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    move-object v0, v10

    move-wide v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-object v10
.end method
