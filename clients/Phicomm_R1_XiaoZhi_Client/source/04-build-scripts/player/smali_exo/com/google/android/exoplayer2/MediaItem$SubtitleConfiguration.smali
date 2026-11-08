.class public Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubtitleConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;
    }
.end annotation


# instance fields
.field public final id:Ljava/lang/String;

.field public final label:Ljava/lang/String;

.field public final language:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field public final roleFlags:I

.field public final selectionFlags:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1378
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    .line 1379
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    .line 1380
    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    .line 1381
    iput p4, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->selectionFlags:I

    .line 1382
    iput p5, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->roleFlags:I

    .line 1383
    iput-object p6, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    .line 1384
    iput-object p7, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .registers 9

    .line 1269
    invoke-direct/range {p0 .. p7}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)V
    .registers 3

    .line 1387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1388
    # getter for: Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->uri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->access$2900(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    .line 1389
    # getter for: Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->mimeType:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->access$3000(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    .line 1390
    # getter for: Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->language:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->access$3100(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    .line 1391
    # getter for: Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->selectionFlags:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->access$3200(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->selectionFlags:I

    .line 1392
    # getter for: Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->roleFlags:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->access$3300(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->roleFlags:I

    .line 1393
    # getter for: Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->label:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->access$3400(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    .line 1394
    # getter for: Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->id:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->access$3500(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .registers 3

    .line 1269
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;-><init>(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)V

    return-void
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;
    .registers 3

    .line 1399
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1407
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1411
    :cond_a
    check-cast p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    .line 1413
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    .line 1414
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    .line 1415
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget v1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->selectionFlags:I

    iget v3, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->selectionFlags:I

    if-ne v1, v3, :cond_4b

    iget v1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->roleFlags:I

    iget v3, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->roleFlags:I

    if-ne v1, v3, :cond_4b

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    .line 1418
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    .line 1419
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v0, 0x0

    :goto_4c
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 1424
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1425
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    const/4 v1, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1426
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    if-nez v1, :cond_1c

    const/4 v1, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1427
    iget v1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->selectionFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1428
    iget v1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->roleFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1429
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    if-nez v1, :cond_33

    const/4 v1, 0x0

    goto :goto_37

    :cond_33
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_37
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1430
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    if-nez v1, :cond_3f

    goto :goto_43

    :cond_3f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_43
    add-int/2addr v0, v2

    return v0
.end method
