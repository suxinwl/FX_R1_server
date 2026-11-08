.class public final Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrmConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    }
.end annotation


# instance fields
.field public final forceDefaultLicenseUri:Z

.field public final forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final keySetId:[B

.field public final licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final licenseUri:Landroid/net/Uri;

.field public final multiSession:Z

.field public final playClearContentWithoutKey:Z

.field public final requestHeaders:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final scheme:Ljava/util/UUID;

.field public final sessionForClearTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final uuid:Ljava/util/UUID;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)V
    .registers 3

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forceDefaultLicenseUri:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$800(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Z

    move-result v0

    if-eqz v0, :cond_12

    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$200(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 760
    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$300(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->scheme:Ljava/util/UUID;

    .line 761
    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->uuid:Ljava/util/UUID;

    .line 762
    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$200(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    .line 763
    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$900(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->requestHeaders:Lcom/google/common/collect/ImmutableMap;

    .line 764
    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$900(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    .line 765
    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->multiSession:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$1000(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    .line 766
    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forceDefaultLicenseUri:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$800(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    .line 767
    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->playClearContentWithoutKey:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$1100(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    .line 768
    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$1200(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->sessionForClearTypes:Lcom/google/common/collect/ImmutableList;

    .line 769
    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$1200(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    .line 771
    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->keySetId:[B
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$1300(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)[B

    move-result-object v0

    if-eqz v0, :cond_68

    .line 772
    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->keySetId:[B
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$1300(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)[B

    move-result-object v0

    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->keySetId:[B
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$1300(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)[B

    move-result-object p1

    array-length p1, p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_69

    :cond_68
    const/4 p1, 0x0

    :goto_69
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->keySetId:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .registers 3

    .line 542
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;-><init>(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;)[B
    .registers 1

    .line 542
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->keySetId:[B

    return-object p0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .registers 3

    .line 784
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 792
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 796
    :cond_a
    check-cast p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    .line 797
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->scheme:Ljava/util/UUID;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->scheme:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    .line 798
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    .line 799
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    if-ne v1, v3, :cond_51

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    if-ne v1, v3, :cond_51

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    if-ne v1, v3, :cond_51

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    .line 803
    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->keySetId:[B

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->keySetId:[B

    .line 804
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_51

    goto :goto_52

    :cond_51
    const/4 v0, 0x0

    :goto_52
    return v0
.end method

.method public getKeySetId()[B
    .registers 3

    .line 779
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->keySetId:[B

    if-eqz v0, :cond_a

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 809
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->scheme:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 810
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 811
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 812
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 813
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 814
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 815
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 816
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->keySetId:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
