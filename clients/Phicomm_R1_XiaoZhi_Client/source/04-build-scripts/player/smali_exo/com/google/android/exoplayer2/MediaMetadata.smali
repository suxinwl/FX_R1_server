.class public final Lcom/google/android/exoplayer2/MediaMetadata;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MediaMetadata$FieldNumber;,
        Lcom/google/android/exoplayer2/MediaMetadata$PictureType;,
        Lcom/google/android/exoplayer2/MediaMetadata$FolderType;,
        Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/MediaMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

.field private static final FIELD_ALBUM_ARTIST:I = 0x3

.field private static final FIELD_ALBUM_TITLE:I = 0x2

.field private static final FIELD_ARTIST:I = 0x1

.field private static final FIELD_ARTWORK_DATA:I = 0xa

.field private static final FIELD_ARTWORK_DATA_TYPE:I = 0x1d

.field private static final FIELD_ARTWORK_URI:I = 0xb

.field private static final FIELD_COMPILATION:I = 0x1c

.field private static final FIELD_COMPOSER:I = 0x17

.field private static final FIELD_CONDUCTOR:I = 0x18

.field private static final FIELD_DESCRIPTION:I = 0x6

.field private static final FIELD_DISC_NUMBER:I = 0x19

.field private static final FIELD_DISPLAY_TITLE:I = 0x4

.field private static final FIELD_EXTRAS:I = 0x3e8

.field private static final FIELD_FOLDER_TYPE:I = 0xe

.field private static final FIELD_GENRE:I = 0x1b

.field private static final FIELD_IS_PLAYABLE:I = 0xf

.field private static final FIELD_MEDIA_URI:I = 0x7

.field private static final FIELD_OVERALL_RATING:I = 0x9

.field private static final FIELD_RECORDING_DAY:I = 0x12

.field private static final FIELD_RECORDING_MONTH:I = 0x11

.field private static final FIELD_RECORDING_YEAR:I = 0x10

.field private static final FIELD_RELEASE_DAY:I = 0x15

.field private static final FIELD_RELEASE_MONTH:I = 0x14

.field private static final FIELD_RELEASE_YEAR:I = 0x13

.field private static final FIELD_STATION:I = 0x1e

.field private static final FIELD_SUBTITLE:I = 0x5

.field private static final FIELD_TITLE:I = 0x0

.field private static final FIELD_TOTAL_DISC_COUNT:I = 0x1a

.field private static final FIELD_TOTAL_TRACK_COUNT:I = 0xd

.field private static final FIELD_TRACK_NUMBER:I = 0xc

.field private static final FIELD_USER_RATING:I = 0x8

.field private static final FIELD_WRITER:I = 0x16

.field public static final FOLDER_TYPE_ALBUMS:I = 0x2

.field public static final FOLDER_TYPE_ARTISTS:I = 0x3

.field public static final FOLDER_TYPE_GENRES:I = 0x4

.field public static final FOLDER_TYPE_MIXED:I = 0x0

.field public static final FOLDER_TYPE_NONE:I = -0x1

.field public static final FOLDER_TYPE_PLAYLISTS:I = 0x5

.field public static final FOLDER_TYPE_TITLES:I = 0x1

.field public static final FOLDER_TYPE_YEARS:I = 0x6

.field public static final PICTURE_TYPE_ARTIST_PERFORMER:I = 0x8

.field public static final PICTURE_TYPE_A_BRIGHT_COLORED_FISH:I = 0x11

.field public static final PICTURE_TYPE_BACK_COVER:I = 0x4

.field public static final PICTURE_TYPE_BAND_ARTIST_LOGO:I = 0x13

.field public static final PICTURE_TYPE_BAND_ORCHESTRA:I = 0xa

.field public static final PICTURE_TYPE_COMPOSER:I = 0xb

.field public static final PICTURE_TYPE_CONDUCTOR:I = 0x9

.field public static final PICTURE_TYPE_DURING_PERFORMANCE:I = 0xf

.field public static final PICTURE_TYPE_DURING_RECORDING:I = 0xe

.field public static final PICTURE_TYPE_FILE_ICON:I = 0x1

.field public static final PICTURE_TYPE_FILE_ICON_OTHER:I = 0x2

.field public static final PICTURE_TYPE_FRONT_COVER:I = 0x3

.field public static final PICTURE_TYPE_ILLUSTRATION:I = 0x12

.field public static final PICTURE_TYPE_LEAD_ARTIST_PERFORMER:I = 0x7

.field public static final PICTURE_TYPE_LEAFLET_PAGE:I = 0x5

.field public static final PICTURE_TYPE_LYRICIST:I = 0xc

.field public static final PICTURE_TYPE_MEDIA:I = 0x6

.field public static final PICTURE_TYPE_MOVIE_VIDEO_SCREEN_CAPTURE:I = 0x10

.field public static final PICTURE_TYPE_OTHER:I = 0x0

.field public static final PICTURE_TYPE_PUBLISHER_STUDIO_LOGO:I = 0x14

.field public static final PICTURE_TYPE_RECORDING_LOCATION:I = 0xd


# instance fields
.field public final albumArtist:Ljava/lang/CharSequence;

.field public final albumTitle:Ljava/lang/CharSequence;

.field public final artist:Ljava/lang/CharSequence;

.field public final artworkData:[B

.field public final artworkDataType:Ljava/lang/Integer;

.field public final artworkUri:Landroid/net/Uri;

.field public final compilation:Ljava/lang/CharSequence;

.field public final composer:Ljava/lang/CharSequence;

.field public final conductor:Ljava/lang/CharSequence;

.field public final description:Ljava/lang/CharSequence;

.field public final discNumber:Ljava/lang/Integer;

.field public final displayTitle:Ljava/lang/CharSequence;

.field public final extras:Landroid/os/Bundle;

.field public final folderType:Ljava/lang/Integer;

.field public final genre:Ljava/lang/CharSequence;

.field public final isPlayable:Ljava/lang/Boolean;

.field public final overallRating:Lcom/google/android/exoplayer2/Rating;

.field public final recordingDay:Ljava/lang/Integer;

.field public final recordingMonth:Ljava/lang/Integer;

.field public final recordingYear:Ljava/lang/Integer;

.field public final releaseDay:Ljava/lang/Integer;

.field public final releaseMonth:Ljava/lang/Integer;

.field public final releaseYear:Ljava/lang/Integer;

.field public final station:Ljava/lang/CharSequence;

.field public final subtitle:Ljava/lang/CharSequence;

.field public final title:Ljava/lang/CharSequence;

.field public final totalDiscCount:Ljava/lang/Integer;

.field public final totalTrackCount:Ljava/lang/Integer;

.field public final trackNumber:Ljava/lang/Integer;

.field public final userRating:Lcom/google/android/exoplayer2/Rating;

.field public final writer:Ljava/lang/CharSequence;

.field public final year:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 603
    new-instance v0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 960
    sget-object v0, Lcom/google/android/exoplayer2/-$$Lambda$MediaMetadata$Dq7db011SDbliqSv7Vj5upXooFY;->INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$MediaMetadata$Dq7db011SDbliqSv7Vj5upXooFY;

    sput-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)V
    .registers 3

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$100(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->title:Ljava/lang/CharSequence;

    .line 701
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artist:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$200(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artist:Ljava/lang/CharSequence;

    .line 702
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->albumTitle:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$300(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    .line 703
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->albumArtist:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$400(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    .line 704
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->displayTitle:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$500(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    .line 705
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->subtitle:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$600(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    .line 706
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->description:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$700(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->description:Ljava/lang/CharSequence;

    .line 707
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->userRating:Lcom/google/android/exoplayer2/Rating;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$800(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Lcom/google/android/exoplayer2/Rating;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->userRating:Lcom/google/android/exoplayer2/Rating;

    .line 708
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->overallRating:Lcom/google/android/exoplayer2/Rating;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$900(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Lcom/google/android/exoplayer2/Rating;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->overallRating:Lcom/google/android/exoplayer2/Rating;

    .line 709
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkData:[B
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1000(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    .line 710
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1100(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    .line 711
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1200(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkUri:Landroid/net/Uri;

    .line 712
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->trackNumber:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1300(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    .line 713
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->totalTrackCount:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1400(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    .line 714
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->folderType:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1500(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->folderType:Ljava/lang/Integer;

    .line 715
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->isPlayable:Ljava/lang/Boolean;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1600(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    .line 716
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->recordingYear:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1700(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->year:Ljava/lang/Integer;

    .line 717
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->recordingYear:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1700(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    .line 718
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->recordingMonth:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1800(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    .line 719
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->recordingDay:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$1900(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    .line 720
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->releaseYear:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2000(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    .line 721
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->releaseMonth:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2100(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    .line 722
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->releaseDay:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2200(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    .line 723
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->writer:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2300(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->writer:Ljava/lang/CharSequence;

    .line 724
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->composer:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2400(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->composer:Ljava/lang/CharSequence;

    .line 725
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->conductor:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2500(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    .line 726
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->discNumber:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2600(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->discNumber:Ljava/lang/Integer;

    .line 727
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->totalDiscCount:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2700(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    .line 728
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->genre:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2800(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->genre:Ljava/lang/CharSequence;

    .line 729
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->compilation:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$2900(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    .line 730
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->station:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$3000(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata;->station:Ljava/lang/CharSequence;

    .line 731
    # getter for: Lcom/google/android/exoplayer2/MediaMetadata$Builder;->extras:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->access$3100(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->extras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaMetadata$Builder;Lcom/google/android/exoplayer2/MediaMetadata$1;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaMetadata;-><init>(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)V

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaMetadata;
    .registers 6

    .line 963
    new-instance v0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;-><init>()V

    const/4 v1, 0x0

    .line 965
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 966
    invoke-static {v2}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setArtist(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    const/4 v2, 0x2

    .line 967
    invoke-static {v2}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setAlbumTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    const/4 v2, 0x3

    .line 968
    invoke-static {v2}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setAlbumArtist(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    const/4 v2, 0x4

    .line 969
    invoke-static {v2}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setDisplayTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    const/4 v2, 0x5

    .line 970
    invoke-static {v2}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setSubtitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    const/4 v2, 0x6

    .line 971
    invoke-static {v2}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setDescription(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    const/16 v2, 0xa

    .line 973
    invoke-static {v2}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x1d

    .line 974
    invoke-static {v3}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 975
    invoke-static {v3}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_84

    :cond_83
    const/4 v3, 0x0

    .line 972
    :goto_84
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setArtworkData([BLjava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    const/16 v2, 0xb

    .line 977
    invoke-static {v2}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setArtworkUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    const/16 v2, 0x16

    .line 978
    invoke-static {v2}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setWriter(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    const/16 v2, 0x17

    .line 979
    invoke-static {v2}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setComposer(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    const/16 v2, 0x18

    .line 980
    invoke-static {v2}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setConductor(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    const/16 v2, 0x1b

    .line 981
    invoke-static {v2}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setGenre(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    const/16 v2, 0x1c

    .line 982
    invoke-static {v2}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setCompilation(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    const/16 v2, 0x1e

    .line 983
    invoke-static {v2}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setStation(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    const/16 v2, 0x3e8

    .line 984
    invoke-static {v2}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setExtras(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    const/16 v1, 0x8

    .line 986
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11a

    .line 987
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_11a

    .line 989
    sget-object v2, Lcom/google/android/exoplayer2/Rating;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Rating;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setUserRating(Lcom/google/android/exoplayer2/Rating;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_11a
    const/16 v1, 0x9

    .line 992
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13b

    .line 993
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_13b

    .line 995
    sget-object v2, Lcom/google/android/exoplayer2/Rating;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Rating;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setOverallRating(Lcom/google/android/exoplayer2/Rating;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_13b
    const/16 v1, 0xc

    .line 998
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_156

    .line 999
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setTrackNumber(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_156
    const/16 v1, 0xd

    .line 1001
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_171

    .line 1002
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setTotalTrackCount(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_171
    const/16 v1, 0xe

    .line 1004
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18c

    .line 1005
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setFolderType(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_18c
    const/16 v1, 0xf

    .line 1007
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a7

    .line 1008
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setIsPlayable(Ljava/lang/Boolean;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_1a7
    const/16 v1, 0x10

    .line 1010
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c2

    .line 1011
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setRecordingYear(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_1c2
    const/16 v1, 0x11

    .line 1013
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1dd

    .line 1014
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setRecordingMonth(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_1dd
    const/16 v1, 0x12

    .line 1016
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f8

    .line 1017
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setRecordingDay(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_1f8
    const/16 v1, 0x13

    .line 1019
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_213

    .line 1020
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setReleaseYear(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_213
    const/16 v1, 0x14

    .line 1022
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22e

    .line 1023
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setReleaseMonth(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_22e
    const/16 v1, 0x15

    .line 1025
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_249

    .line 1026
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setReleaseDay(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_249
    const/16 v1, 0x19

    .line 1028
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_264

    .line 1029
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setDiscNumber(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_264
    const/16 v1, 0x1a

    .line 1031
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27f

    .line 1032
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setTotalDiscCount(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 1035
    :cond_27f
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method private static keyForField(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x24

    .line 1039
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$Dq7db011SDbliqSv7Vj5upXooFY(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaMetadata;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/MediaMetadata;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 3

    .line 736
    new-instance v0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;-><init>(Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/MediaMetadata$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_144

    .line 744
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_144

    .line 747
    :cond_13
    check-cast p1, Lcom/google/android/exoplayer2/MediaMetadata;

    .line 748
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->title:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->title:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artist:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artist:Ljava/lang/CharSequence;

    .line 749
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    .line 750
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    .line 751
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    .line 752
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    .line 753
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->description:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->description:Ljava/lang/CharSequence;

    .line 754
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->userRating:Lcom/google/android/exoplayer2/Rating;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->userRating:Lcom/google/android/exoplayer2/Rating;

    .line 755
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->overallRating:Lcom/google/android/exoplayer2/Rating;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->overallRating:Lcom/google/android/exoplayer2/Rating;

    .line 756
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    .line 757
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    .line 758
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkUri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkUri:Landroid/net/Uri;

    .line 759
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    .line 760
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    .line 761
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->folderType:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->folderType:Ljava/lang/Integer;

    .line 762
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    .line 763
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    .line 764
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    .line 765
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    .line 766
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    .line 767
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    .line 768
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    .line 769
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->writer:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->writer:Ljava/lang/CharSequence;

    .line 770
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->composer:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->composer:Ljava/lang/CharSequence;

    .line 771
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    .line 772
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->discNumber:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->discNumber:Ljava/lang/Integer;

    .line 773
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    .line 774
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->genre:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->genre:Ljava/lang/CharSequence;

    .line 775
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    .line 776
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->station:Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaMetadata;->station:Ljava/lang/CharSequence;

    .line 777
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_142

    goto :goto_143

    :cond_142
    const/4 v0, 0x0

    :goto_143
    return v0

    :cond_144
    :goto_144
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/Object;

    .line 782
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->title:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artist:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->description:Ljava/lang/CharSequence;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->userRating:Lcom/google/android/exoplayer2/Rating;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->overallRating:Lcom/google/android/exoplayer2/Rating;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    .line 792
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkUri:Landroid/net/Uri;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->folderType:Ljava/lang/Integer;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->writer:Ljava/lang/CharSequence;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->composer:Ljava/lang/CharSequence;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->discNumber:Ljava/lang/Integer;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->genre:Ljava/lang/CharSequence;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->station:Ljava/lang/CharSequence;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 782
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 891
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 892
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 893
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artist:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    .line 894
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    .line 895
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    .line 896
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x5

    .line 897
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x6

    .line 898
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->description:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v1, 0xa

    .line 899
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 v1, 0xb

    .line 900
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v1, 0x16

    .line 901
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->writer:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v1, 0x17

    .line 902
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->composer:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v1, 0x18

    .line 903
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v1, 0x1b

    .line 904
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->genre:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v1, 0x1c

    .line 905
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v1, 0x1e

    .line 906
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->station:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 908
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->userRating:Lcom/google/android/exoplayer2/Rating;

    if-eqz v1, :cond_b6

    const/16 v1, 0x8

    .line 909
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->userRating:Lcom/google/android/exoplayer2/Rating;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Rating;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 911
    :cond_b6
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->overallRating:Lcom/google/android/exoplayer2/Rating;

    if-eqz v1, :cond_c9

    const/16 v1, 0x9

    .line 912
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->overallRating:Lcom/google/android/exoplayer2/Rating;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Rating;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 914
    :cond_c9
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    if-eqz v1, :cond_dc

    const/16 v1, 0xc

    .line 915
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 917
    :cond_dc
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    if-eqz v1, :cond_ef

    const/16 v1, 0xd

    .line 918
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 920
    :cond_ef
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->folderType:Ljava/lang/Integer;

    if-eqz v1, :cond_102

    const/16 v1, 0xe

    .line 921
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->folderType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 923
    :cond_102
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    if-eqz v1, :cond_115

    const/16 v1, 0xf

    .line 924
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 926
    :cond_115
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    if-eqz v1, :cond_128

    const/16 v1, 0x10

    .line 927
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 929
    :cond_128
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    if-eqz v1, :cond_13b

    const/16 v1, 0x11

    .line 930
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 932
    :cond_13b
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    if-eqz v1, :cond_14e

    const/16 v1, 0x12

    .line 933
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 935
    :cond_14e
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    if-eqz v1, :cond_161

    const/16 v1, 0x13

    .line 936
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 938
    :cond_161
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    if-eqz v1, :cond_174

    const/16 v1, 0x14

    .line 939
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 941
    :cond_174
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    if-eqz v1, :cond_187

    const/16 v1, 0x15

    .line 942
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 944
    :cond_187
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->discNumber:Ljava/lang/Integer;

    if-eqz v1, :cond_19a

    const/16 v1, 0x19

    .line 945
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->discNumber:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 947
    :cond_19a
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    if-eqz v1, :cond_1ad

    const/16 v1, 0x1a

    .line 948
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 950
    :cond_1ad
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    if-eqz v1, :cond_1c0

    const/16 v1, 0x1d

    .line 951
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 953
    :cond_1c0
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaMetadata;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_1cf

    const/16 v1, 0x3e8

    .line 954
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaMetadata;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1cf
    return-object v0
.end method
