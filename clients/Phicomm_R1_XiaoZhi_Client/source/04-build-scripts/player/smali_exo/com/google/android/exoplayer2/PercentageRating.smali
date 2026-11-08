.class public final Lcom/google/android/exoplayer2/PercentageRating;
.super Lcom/google/android/exoplayer2/Rating;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/PercentageRating$FieldNumber;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/PercentageRating;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_PERCENT:I = 0x1

.field private static final TYPE:I = 0x1


# instance fields
.field private final percent:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 98
    sget-object v0, Lcom/google/android/exoplayer2/-$$Lambda$PercentageRating$pltrwg5zrC_JOx6WUtaJgAMeZVE;->INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$PercentageRating$pltrwg5zrC_JOx6WUtaJgAMeZVE;

    sput-object v0, Lcom/google/android/exoplayer2/PercentageRating;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Rating;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 38
    iput v0, p0, Lcom/google/android/exoplayer2/PercentageRating;->percent:F

    return-void
.end method

.method public constructor <init>(F)V
    .registers 4

    .line 46
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Rating;-><init>()V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_10

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const-string v1, "percent must be in the range of [0, 100]"

    .line 47
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 48
    iput p1, p0, Lcom/google/android/exoplayer2/PercentageRating;->percent:F

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/PercentageRating;
    .registers 4

    const/4 v0, 0x0

    .line 102
    invoke-static {v0}, Lcom/google/android/exoplayer2/PercentageRating;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    .line 101
    :cond_e
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 104
    invoke-static {v2}, Lcom/google/android/exoplayer2/PercentageRating;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    cmpl-float v0, p0, v1

    if-nez v0, :cond_25

    .line 105
    new-instance p0, Lcom/google/android/exoplayer2/PercentageRating;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/PercentageRating;-><init>()V

    goto :goto_2b

    :cond_25
    new-instance v0, Lcom/google/android/exoplayer2/PercentageRating;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/PercentageRating;-><init>(F)V

    move-object p0, v0

    :goto_2b
    return-object p0
.end method

.method private static keyForField(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x24

    .line 109
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$pltrwg5zrC_JOx6WUtaJgAMeZVE(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/PercentageRating;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/PercentageRating;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/PercentageRating;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 71
    instance-of v0, p1, Lcom/google/android/exoplayer2/PercentageRating;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 74
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/PercentageRating;->percent:F

    check-cast p1, Lcom/google/android/exoplayer2/PercentageRating;

    iget p1, p1, Lcom/google/android/exoplayer2/PercentageRating;->percent:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method public getPercent()F
    .registers 2

    .line 61
    iget v0, p0, Lcom/google/android/exoplayer2/PercentageRating;->percent:F

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 66
    iget v1, p0, Lcom/google/android/exoplayer2/PercentageRating;->percent:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isRated()Z
    .registers 3

    .line 53
    iget v0, p0, Lcom/google/android/exoplayer2/PercentageRating;->percent:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 92
    invoke-static {v1}, Lcom/google/android/exoplayer2/PercentageRating;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    invoke-static {v2}, Lcom/google/android/exoplayer2/PercentageRating;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/PercentageRating;->percent:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method
