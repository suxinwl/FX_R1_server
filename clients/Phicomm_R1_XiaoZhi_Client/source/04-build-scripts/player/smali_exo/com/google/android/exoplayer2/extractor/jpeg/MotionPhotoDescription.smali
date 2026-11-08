.class final Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;
    }
.end annotation


# instance fields
.field public final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;",
            ">;"
        }
    .end annotation
.end field

.field public final photoPresentationTimestampUs:J


# direct methods
.method public constructor <init>(JLjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;->photoPresentationTimestampUs:J

    .line 65
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMotionPhotoMetadata(J)Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;
    .registers 26

    move-object/from16 v0, p0

    .line 77
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_d

    return-object v2

    .line 91
    :cond_d
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-wide/16 v4, -0x1

    move-wide/from16 v6, p1

    move-wide v9, v4

    move-wide v11, v9

    move-wide v15, v11

    move-wide/from16 v17, v15

    const/4 v8, 0x0

    :goto_1f
    if-ltz v1, :cond_59

    .line 92
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;->items:Ljava/util/List;

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;

    .line 93
    iget-object v14, v13, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;->mime:Ljava/lang/String;

    const-string v3, "video/mp4"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v3, v8

    if-nez v1, :cond_3d

    const-wide/16 v19, 0x0

    .line 98
    iget-wide v13, v13, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;->padding:J

    sub-long/2addr v6, v13

    move-wide v13, v6

    move-wide/from16 v6, v19

    goto :goto_46

    .line 100
    :cond_3d
    iget-wide v13, v13, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;->length:J

    sub-long v13, v6, v13

    move-wide/from16 v21, v6

    move-wide v6, v13

    move-wide/from16 v13, v21

    :goto_46
    if-eqz v3, :cond_51

    cmp-long v8, v6, v13

    if-eqz v8, :cond_51

    sub-long v17, v13, v6

    move-wide v15, v6

    const/4 v8, 0x0

    goto :goto_52

    :cond_51
    move v8, v3

    :goto_52
    if-nez v1, :cond_56

    move-wide v9, v6

    move-wide v11, v13

    :cond_56
    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    :cond_59
    cmp-long v1, v15, v4

    if-eqz v1, :cond_73

    cmp-long v1, v17, v4

    if-eqz v1, :cond_73

    cmp-long v1, v9, v4

    if-eqz v1, :cond_73

    cmp-long v1, v11, v4

    if-nez v1, :cond_6a

    goto :goto_73

    .line 119
    :cond_6a
    new-instance v1, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    iget-wide v13, v0, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;->photoPresentationTimestampUs:J

    move-object v8, v1

    invoke-direct/range {v8 .. v18}, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    return-object v1

    :cond_73
    :goto_73
    return-object v2
.end method
