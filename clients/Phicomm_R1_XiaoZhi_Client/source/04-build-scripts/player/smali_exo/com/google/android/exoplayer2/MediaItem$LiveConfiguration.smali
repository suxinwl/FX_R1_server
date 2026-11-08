.class public final Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LiveConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$FieldNumber;,
        Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_MAX_OFFSET_MS:I = 0x2

.field private static final FIELD_MAX_PLAYBACK_SPEED:I = 0x4

.field private static final FIELD_MIN_OFFSET_MS:I = 0x1

.field private static final FIELD_MIN_PLAYBACK_SPEED:I = 0x3

.field private static final FIELD_TARGET_OFFSET_MS:I

.field public static final UNSET:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;


# instance fields
.field public final maxOffsetMs:J

.field public final maxPlaybackSpeed:F

.field public final minOffsetMs:J

.field public final minPlaybackSpeed:F

.field public final targetOffsetMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1127
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->UNSET:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 1250
    sget-object v0, Lcom/google/android/exoplayer2/-$$Lambda$MediaItem$LiveConfiguration$klfvwlqq_YplYA-MGReoA-WVtSI;->INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$MediaItem$LiveConfiguration$klfvwlqq_YplYA-MGReoA-WVtSI;

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(JJJFF)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1179
    iput-wide p1, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    .line 1180
    iput-wide p3, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    .line 1181
    iput-wide p5, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    .line 1182
    iput p7, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    .line 1183
    iput p8, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)V
    .registers 11

    .line 1162
    # getter for: Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->targetOffsetMs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->access$2100(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)J

    move-result-wide v1

    .line 1163
    # getter for: Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->minOffsetMs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->access$2200(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)J

    move-result-wide v3

    .line 1164
    # getter for: Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->maxOffsetMs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->access$2300(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)J

    move-result-wide v5

    .line 1165
    # getter for: Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->minPlaybackSpeed:F
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->access$2400(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)F

    move-result v7

    .line 1166
    # getter for: Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->maxPlaybackSpeed:F
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->access$2500(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)F

    move-result v8

    move-object v0, p0

    .line 1161
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;-><init>(JJJFF)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .registers 3

    .line 1034
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;-><init>(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)V

    return-void
.end method

.method private static keyForField(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x24

    .line 1263
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;
    .registers 12

    .line 1252
    new-instance v9, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    const/4 v0, 0x0

    .line 1254
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1253
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const/4 v0, 0x1

    .line 1255
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v0, 0x2

    .line 1256
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const/4 v0, 0x3

    .line 1258
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x800001

    .line 1257
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v10

    const/4 v0, 0x4

    .line 1260
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    .line 1259
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    move-object v0, v9

    move-wide v1, v3

    move-wide v3, v5

    move-wide v5, v7

    move v7, v10

    move v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;-><init>(JJJFF)V

    return-object v9
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;
    .registers 3

    .line 1188
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1196
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1199
    :cond_a
    check-cast p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 1201
    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_35

    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_35

    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_35

    iget v1, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    iget v3, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_35

    iget v1, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    iget p1, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_35

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    return v0
.end method

.method public hashCode()I
    .registers 8

    .line 1210
    iget-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 1211
    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 1212
    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 1213
    iget v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_29

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 1214
    iget v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_37

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :cond_37
    add-int/2addr v1, v2

    return v1
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 5

    .line 1240
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 1241
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x1

    .line 1242
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x2

    .line 1243
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x3

    .line 1244
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/4 v1, 0x4

    .line 1245
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method
