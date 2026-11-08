.class public final Lcom/google/android/exoplayer2/source/TrackGroupArray;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/TrackGroupArray$FieldNumber;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private static final FIELD_TRACK_GROUPS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TrackGroupArray"


# instance fields
.field private hashCode:I

.field public final length:I

.field private final trackGroups:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 49
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    sput-object v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 137
    sget-object v0, Lcom/google/android/exoplayer2/source/-$$Lambda$TrackGroupArray$xAe9VrwTWBRsn7FVhxSkPO2SbOM;->INSTANCE:Lcom/google/android/exoplayer2/source/-$$Lambda$TrackGroupArray$xAe9VrwTWBRsn7FVhxSkPO2SbOM;

    sput-object v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    .line 66
    array-length p1, p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    .line 67
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->verifyCorrectness()V

    return-void
.end method

.method private static keyForField(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x24

    .line 165
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .registers 4

    const/4 v0, 0x0

    .line 141
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_13

    .line 143
    new-instance p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    return-object p0

    .line 145
    :cond_13
    new-instance v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    sget-object v2, Lcom/google/android/exoplayer2/source/TrackGroup;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    .line 146
    invoke-static {v2, p0}, Lcom/google/android/exoplayer2/util/BundleableUtil;->fromBundleList(Lcom/google/android/exoplayer2/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 147
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    return-object v1
.end method

.method private verifyCorrectness()V
    .registers 7

    const/4 v0, 0x0

    .line 151
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3b

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    .line 152
    :goto_c
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_39

    .line 153
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 154
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Multiple identical TrackGroups added to one TrackGroupArray."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v4, "TrackGroupArray"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_39
    move v0, v1

    goto :goto_1

    :cond_3b
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 112
    :cond_12
    check-cast p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 113
    iget v2, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public get(I)Lcom/google/android/exoplayer2/source/TrackGroup;
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/TrackGroup;

    return-object p1
.end method

.method public hashCode()I
    .registers 2

    .line 98
    iget v0, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->hashCode:I

    if-nez v0, :cond_c

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->hashCode:I

    .line 101
    :cond_c
    iget v0, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->hashCode:I

    return v0
.end method

.method public indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 p1, -0x1

    :goto_a
    return p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 93
    iget v0, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 132
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/BundleableUtil;->toBundleArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
