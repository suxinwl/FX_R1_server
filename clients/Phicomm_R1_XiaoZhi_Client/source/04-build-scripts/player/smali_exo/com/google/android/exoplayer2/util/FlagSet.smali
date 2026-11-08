.class public final Lcom/google/android/exoplayer2/util/FlagSet;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/FlagSet$Builder;
    }
.end annotation


# instance fields
.field private final flags:Landroid/util/SparseBooleanArray;


# direct methods
.method private constructor <init>(Landroid/util/SparseBooleanArray;)V
    .registers 2

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Landroid/util/SparseBooleanArray;Lcom/google/android/exoplayer2/util/FlagSet$1;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/FlagSet;-><init>(Landroid/util/SparseBooleanArray;)V

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public varargs containsAny([I)Z
    .registers 6

    .line 180
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_12

    aget v3, p1, v2

    .line 181
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/FlagSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 210
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/util/FlagSet;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 213
    :cond_a
    check-cast p1, Lcom/google/android/exoplayer2/util/FlagSet;

    .line 214
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v1, v3, :cond_33

    .line 216
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v3

    if-eq v1, v3, :cond_1d

    return v2

    :cond_1d
    const/4 v1, 0x0

    .line 219
    :goto_1e
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v3

    if-ge v1, v3, :cond_32

    .line 220
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/FlagSet;->get(I)I

    move-result v3

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/FlagSet;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_2f

    return v2

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    return v0

    .line 226
    :cond_33
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    iget-object p1, p1, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)I
    .registers 4

    .line 201
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 4

    .line 232
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1c

    .line 234
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 235
    :goto_b
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    mul-int/lit8 v0, v0, 0x1f

    .line 236
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/FlagSet;->get(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    return v0

    .line 240
    :cond_1c
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->hashCode()I

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0
.end method
