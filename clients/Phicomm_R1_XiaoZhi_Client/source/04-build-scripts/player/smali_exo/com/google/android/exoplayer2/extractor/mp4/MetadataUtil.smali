.class final Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;
.super Ljava/lang/Object;


# static fields
.field private static final PICTURE_TYPE_FRONT_COVER:I = 0x3

.field private static final SHORT_TYPE_ALBUM:I = 0x616c62

.field private static final SHORT_TYPE_ARTIST:I = 0x415254

.field private static final SHORT_TYPE_COMMENT:I = 0x636d74

.field private static final SHORT_TYPE_COMPOSER_1:I = 0x636f6d

.field private static final SHORT_TYPE_COMPOSER_2:I = 0x777274

.field private static final SHORT_TYPE_ENCODER:I = 0x746f6f

.field private static final SHORT_TYPE_GENRE:I = 0x67656e

.field private static final SHORT_TYPE_LYRICS:I = 0x6c7972

.field private static final SHORT_TYPE_NAME_1:I = 0x6e616d

.field private static final SHORT_TYPE_NAME_2:I = 0x74726b

.field private static final SHORT_TYPE_YEAR:I = 0x646179

.field static final STANDARD_GENRES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MetadataUtil"

.field private static final TYPE_ALBUM_ARTIST:I = 0x61415254

.field private static final TYPE_COMPILATION:I = 0x6370696c

.field private static final TYPE_COVER_ART:I = 0x636f7672

.field private static final TYPE_DISK_NUMBER:I = 0x6469736b

.field private static final TYPE_GAPLESS_ALBUM:I = 0x70676170

.field private static final TYPE_GENRE:I = 0x676e7265

.field private static final TYPE_GROUPING:I = 0x677270

.field private static final TYPE_INTERNAL:I = 0x2d2d2d2d

.field private static final TYPE_RATING:I = 0x72746e67

.field private static final TYPE_SORT_ALBUM:I = 0x736f616c

.field private static final TYPE_SORT_ALBUM_ARTIST:I = 0x736f6161

.field private static final TYPE_SORT_ARTIST:I = 0x736f6172

.field private static final TYPE_SORT_COMPOSER:I = 0x736f636f

.field private static final TYPE_SORT_TRACK_NAME:I = 0x736f6e6d

.field private static final TYPE_TEMPO:I = 0x746d706f

.field private static final TYPE_TOP_BYTE_COPYRIGHT:I = 0xa9

.field private static final TYPE_TOP_BYTE_REPLACEMENT:I = 0xfd

.field private static final TYPE_TRACK_NUMBER:I = 0x74726b6e

.field private static final TYPE_TV_SHOW:I = 0x74767368

.field private static final TYPE_TV_SORT_SHOW:I = 0x736f736e


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xc0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Blues"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Classic Rock"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Country"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Disco"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Funk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Grunge"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Hip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Metal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Oldies"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Other"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Ska"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Death Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Pranks"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Euro-Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Ambient"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Trip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz+Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Instrumental"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Acid"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Game"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Sound Clip"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Gospel"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Noise"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "AlternRock"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Space"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Meditative"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Instrumental Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Instrumental Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Ethnic"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Gothic"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Darkwave"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Techno-Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop-Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Eurodance"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Dream"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Southern Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Cult"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Top 40"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Christian Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop/Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Jungle"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Native American"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Cabaret"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "New Wave"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Psychadelic"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Rave"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Showtunes"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Trailer"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Lo-Fi"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Tribal"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Acid Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Acid Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Polka"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Retro"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Musical"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock & Roll"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Hard Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Folk-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "National Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Swing"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Fast Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Bebob"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Revival"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Celtic"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Bluegrass"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Avantgarde"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Gothic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Progressive Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Psychedelic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Symphonic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Slow Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Big Band"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Chorus"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Acoustic"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Humour"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Speech"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Chanson"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Opera"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Chamber Music"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Sonata"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Symphony"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Booty Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Primus"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Porn Groove"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Satire"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Slow Jam"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Club"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Tango"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Samba"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Folklore"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Power Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Rhythmic Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Freestyle"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Duet"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Punk Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Drum Solo"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "A capella"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Euro-House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance Hall"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Goa"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Drum & Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Club-House"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "Hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Terror"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "BritPop"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Afro-Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "Polsk Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Beat"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Christian Gangsta Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Heavy Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Black Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Crossover"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Contemporary Christian"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Christian Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Merengue"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Salsa"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Thrash Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Anime"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "Jpop"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Synthpop"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "Abstract"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "Art Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "Baroque"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "Bhangra"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "Big beat"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "Breakbeat"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "Chillout"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "Downtempo"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "Dub"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "EBM"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "Eclectic"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "Electro"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "Electroclash"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "Emo"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "Experimental"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "Garage"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "Global"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "IDM"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "Illbient"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "Industro-Goth"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "Jam Band"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "Krautrock"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "Leftfield"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "Lounge"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "Math Rock"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "New Romantic"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "Nu-Breakz"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "Post-Punk"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "Post-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "Psytrance"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "Shoegaze"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "Space Rock"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "Trop Rock"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "World Music"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "Neoclassical"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "Audiobook"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "Audio theatre"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "Neue Deutsche Welle"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "Podcast"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "Indie-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "G-Funk"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "Dubstep"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "Garage Rock"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "Psybient"

    aput-object v2, v0, v1

    .line 82
    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->STANDARD_GENRES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseCommentAttribute(ILcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;
    .registers 5

    .line 463
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 464
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x64617461

    if-ne v1, v2, :cond_20

    const/16 p0, 0x8

    .line 466
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, -0x10

    .line 467
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object p0

    .line 468
    new-instance p1, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    const-string v0, "und"

    invoke-direct {p1, v0, p0, p0}, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 470
    :cond_20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to parse comment attribute: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseCoverArt(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;
    .registers 6

    .line 532
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 533
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    const-string v2, "MetadataUtil"

    const/4 v3, 0x0

    const v4, 0x64617461

    if-ne v1, v4, :cond_51

    .line 535
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 536
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    const/16 v4, 0xd

    if-ne v1, v4, :cond_1f

    const-string v4, "image/jpeg"

    goto :goto_27

    :cond_1f
    const/16 v4, 0xe

    if-ne v1, v4, :cond_26

    const-string v4, "image/png"

    goto :goto_27

    :cond_26
    move-object v4, v3

    :goto_27
    if-nez v4, :cond_3e

    .line 539
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized cover art flags: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_3e
    const/4 v1, 0x4

    .line 542
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, -0x10

    .line 543
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 544
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 545
    new-instance p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    const/4 v0, 0x3

    invoke-direct {p0, v4, v3, v0, v1}, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object p0

    :cond_51
    const-string p0, "Failed to parse cover art attribute"

    .line 551
    invoke-static {v2, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static parseIlstElement(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    .registers 6

    .line 349
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 350
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    add-int/2addr v0, v1

    .line 351
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    shr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa9

    if-eq v2, v3, :cond_116

    const/16 v3, 0xfd

    if-ne v2, v3, :cond_1b

    goto/16 :goto_116

    :cond_1b
    const v2, 0x676e7265

    if-ne v1, v2, :cond_28

    .line 378
    :try_start_20
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseStandardGenreAttribute(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_28
    const v2, 0x6469736b

    if-ne v1, v2, :cond_37

    :try_start_2d
    const-string v2, "TPOS"

    .line 380
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_37
    const v2, 0x74726b6e

    if-ne v1, v2, :cond_46

    :try_start_3c
    const-string v2, "TRCK"

    .line 382
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_46
    const v2, 0x746d706f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_57

    :try_start_4d
    const-string v2, "TBPM"

    .line 384
    invoke-static {v1, v2, p0, v4, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_57
    const v2, 0x6370696c

    if-ne v1, v2, :cond_66

    :try_start_5c
    const-string v2, "TCMP"

    .line 386
    invoke-static {v1, v2, p0, v4, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_62
    .catchall {:try_start_5c .. :try_end_62} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_66
    const v2, 0x636f7672

    if-ne v1, v2, :cond_73

    .line 388
    :try_start_6b
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseCoverArt(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    move-result-object v1
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_73
    const v2, 0x61415254

    if-ne v1, v2, :cond_82

    :try_start_78
    const-string v2, "TPE2"

    .line 390
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_7e
    .catchall {:try_start_78 .. :try_end_7e} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_82
    const v2, 0x736f6e6d

    if-ne v1, v2, :cond_91

    :try_start_87
    const-string v2, "TSOT"

    .line 392
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_8d
    .catchall {:try_start_87 .. :try_end_8d} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_91
    const v2, 0x736f616c

    if-ne v1, v2, :cond_a0

    :try_start_96
    const-string v2, "TSO2"

    .line 394
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_9c
    .catchall {:try_start_96 .. :try_end_9c} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_a0
    const v2, 0x736f6172

    if-ne v1, v2, :cond_af

    :try_start_a5
    const-string v2, "TSOA"

    .line 396
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_ab
    .catchall {:try_start_a5 .. :try_end_ab} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_af
    const v2, 0x736f6161

    if-ne v1, v2, :cond_be

    :try_start_b4
    const-string v2, "TSOP"

    .line 398
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_ba
    .catchall {:try_start_b4 .. :try_end_ba} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_be
    const v2, 0x736f636f

    if-ne v1, v2, :cond_cd

    :try_start_c3
    const-string v2, "TSOC"

    .line 400
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_c9
    .catchall {:try_start_c3 .. :try_end_c9} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_cd
    const v2, 0x72746e67

    if-ne v1, v2, :cond_dc

    :try_start_d2
    const-string v2, "ITUNESADVISORY"

    .line 402
    invoke-static {v1, v2, p0, v3, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_d8
    .catchall {:try_start_d2 .. :try_end_d8} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_dc
    const v2, 0x70676170

    if-ne v1, v2, :cond_eb

    :try_start_e1
    const-string v2, "ITUNESGAPLESS"

    .line 404
    invoke-static {v1, v2, p0, v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_e7
    .catchall {:try_start_e1 .. :try_end_e7} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_eb
    const v2, 0x736f736e

    if-ne v1, v2, :cond_fa

    :try_start_f0
    const-string v2, "TVSHOWSORT"

    .line 406
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_f6
    .catchall {:try_start_f0 .. :try_end_f6} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_fa
    const v2, 0x74767368

    if-ne v1, v2, :cond_109

    :try_start_ff
    const-string v2, "TVSHOW"

    .line 408
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_105
    .catchall {:try_start_ff .. :try_end_105} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_109
    const v2, 0x2d2d2d2d

    if-ne v1, v2, :cond_1ab

    .line 410
    :try_start_10e
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseInternalAttribute(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_112
    .catchall {:try_start_10e .. :try_end_112} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_116
    :goto_116
    const v2, 0xffffff

    and-int/2addr v2, v1

    const v3, 0x636d74

    if-ne v2, v3, :cond_12a

    .line 357
    :try_start_11f
    invoke-static {v1, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseCommentAttribute(ILcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    move-result-object v1
    :try_end_123
    .catchall {:try_start_11f .. :try_end_123} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :catchall_127
    move-exception v1

    goto/16 :goto_1de

    :cond_12a
    const v3, 0x6e616d

    if-eq v2, v3, :cond_1d4

    const v3, 0x74726b

    if-ne v2, v3, :cond_136

    goto/16 :goto_1d4

    :cond_136
    const v3, 0x636f6d

    if-eq v2, v3, :cond_1ca

    const v3, 0x777274

    if-ne v2, v3, :cond_142

    goto/16 :goto_1ca

    :cond_142
    const v3, 0x646179

    if-ne v2, v3, :cond_151

    :try_start_147
    const-string v2, "TDRC"

    .line 363
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_14d
    .catchall {:try_start_147 .. :try_end_14d} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_151
    const v3, 0x415254

    if-ne v2, v3, :cond_160

    :try_start_156
    const-string v2, "TPE1"

    .line 365
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_15c
    .catchall {:try_start_156 .. :try_end_15c} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_160
    const v3, 0x746f6f

    if-ne v2, v3, :cond_16f

    :try_start_165
    const-string v2, "TSSE"

    .line 367
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_16b
    .catchall {:try_start_165 .. :try_end_16b} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_16f
    const v3, 0x616c62

    if-ne v2, v3, :cond_17e

    :try_start_174
    const-string v2, "TALB"

    .line 369
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_17a
    .catchall {:try_start_174 .. :try_end_17a} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_17e
    const v3, 0x6c7972

    if-ne v2, v3, :cond_18d

    :try_start_183
    const-string v2, "USLT"

    .line 371
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_189
    .catchall {:try_start_183 .. :try_end_189} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_18d
    const v3, 0x67656e

    if-ne v2, v3, :cond_19c

    :try_start_192
    const-string v2, "TCON"

    .line 373
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_198
    .catchall {:try_start_192 .. :try_end_198} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_19c
    const v3, 0x677270

    if-ne v2, v3, :cond_1ab

    :try_start_1a1
    const-string v2, "TIT1"

    .line 375
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_1a7
    .catchall {:try_start_1a1 .. :try_end_1a7} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_1ab
    :try_start_1ab
    const-string v2, "MetadataUtil"

    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipped unknown metadata entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c5
    .catchall {:try_start_1ab .. :try_end_1c5} :catchall_127

    const/4 v1, 0x0

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_1ca
    :goto_1ca
    :try_start_1ca
    const-string v2, "TCOM"

    .line 361
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_1d0
    .catchall {:try_start_1ca .. :try_end_1d0} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_1d4
    :goto_1d4
    :try_start_1d4
    const-string v2, "TIT2"

    .line 359
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_1da
    .catchall {:try_start_1d4 .. :try_end_1da} :catchall_127

    .line 415
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :goto_1de
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    throw v1
.end method

.method private static parseIndexAndCountAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .registers 7

    .line 497
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 498
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x64617461

    if-ne v1, v3, :cond_4e

    const/16 v1, 0x16

    if-lt v0, v1, :cond_4e

    const/16 v0, 0xa

    .line 500
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 501
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    if-lez v0, :cond_4e

    .line 503
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 504
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    if-lez p2, :cond_48

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 508
    :cond_48
    new-instance p2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {p2, p1, v2, p0}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 511
    :cond_4e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to parse index/count attribute: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static parseInternalAttribute(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .registers 12

    const/4 v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    const/4 v4, -0x1

    const/4 v5, -0x1

    .line 561
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    if-ge v6, p1, :cond_41

    .line 562
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    .line 563
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 564
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    const/4 v9, 0x4

    .line 565
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const v9, 0x6d65616e

    if-ne v8, v9, :cond_28

    add-int/lit8 v7, v7, -0xc

    .line 567
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_28
    const v9, 0x6e616d65

    if-ne v8, v9, :cond_34

    add-int/lit8 v7, v7, -0xc

    .line 569
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_34
    const v9, 0x64617461

    if-ne v8, v9, :cond_3b

    move v4, v6

    move v5, v7

    :cond_3b
    add-int/lit8 v7, v7, -0xc

    .line 575
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_6

    :cond_41
    if-eqz v2, :cond_5b

    if-eqz v3, :cond_5b

    if-ne v4, v0, :cond_48

    goto :goto_5b

    .line 581
    :cond_48
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/16 p1, 0x10

    .line 582
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    sub-int/2addr v5, p1

    .line 583
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object p0

    .line 584
    new-instance p1, Lcom/google/android/exoplayer2/metadata/id3/InternalFrame;

    invoke-direct {p1, v2, v3, p0}, Lcom/google/android/exoplayer2/metadata/id3/InternalFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_5b
    :goto_5b
    return-object v1
.end method

.method public static parseMdtaMetadataEntryFromIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;
    .registers 7

    .line 431
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-ge v0, p1, :cond_2e

    .line 432
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 433
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x64617461

    if-ne v2, v3, :cond_29

    .line 435
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p1

    .line 436
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    add-int/lit8 v1, v1, -0x10

    .line 438
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 439
    invoke-virtual {p0, v2, v3, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 440
    new-instance p0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;

    invoke-direct {p0, p2, v2, v0, p1}, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BII)V

    return-object p0

    :cond_29
    add-int/2addr v0, v1

    .line 442
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseStandardGenreAttribute(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .registers 4

    .line 517
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8AttributeValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result p0

    const/4 v0, 0x0

    if-lez p0, :cond_11

    .line 519
    sget-object v1, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->STANDARD_GENRES:[Ljava/lang/String;

    array-length v2, v1

    if-gt p0, v2, :cond_11

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v1, p0

    goto :goto_12

    :cond_11
    move-object p0, v0

    :goto_12
    if-eqz p0, :cond_1c

    .line 524
    new-instance v1, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    const-string v2, "TCON"

    invoke-direct {v1, v2, v0, p0}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1c
    const-string p0, "MetadataUtil"

    const-string v1, "Failed to parse standard genre code"

    .line 526
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .registers 7

    .line 450
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 451
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x64617461

    if-ne v1, v3, :cond_1f

    const/16 p0, 0x8

    .line 453
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, -0x10

    .line 454
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object p0

    .line 455
    new-instance p2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {p2, p1, v2, p0}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 457
    :cond_1f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to parse text attribute: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static parseUint8Attribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .registers 5

    .line 481
    invoke-static {p2}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8AttributeValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result p2

    if-eqz p4, :cond_b

    const/4 p4, 0x1

    .line 483
    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_b
    const/4 p4, 0x0

    if-ltz p2, :cond_26

    if-eqz p3, :cond_1a

    .line 486
    new-instance p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    .line 487
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p4, p2}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :cond_1a
    new-instance p0, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    .line 488
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "und"

    invoke-direct {p0, p3, p1, p2}, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_25
    return-object p0

    .line 490
    :cond_26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to parse uint8 attribute: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p4
.end method

.method private static parseUint8AttributeValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .registers 3

    const/4 v0, 0x4

    .line 588
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 589
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    const v1, 0x64617461

    if-ne v0, v1, :cond_17

    const/16 v0, 0x8

    .line 591
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 592
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    return p0

    :cond_17
    const-string p0, "MetadataUtil"

    const-string v0, "Failed to parse uint8 attribute value"

    .line 594
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static setFormatGaplessInfo(ILcom/google/android/exoplayer2/extractor/GaplessInfoHolder;Lcom/google/android/exoplayer2/Format$Builder;)V
    .registers 4

    const/4 v0, 0x1

    if-ne p0, v0, :cond_14

    .line 331
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 332
    iget p0, p1, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 333
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderDelay(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    iget p1, p1, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 334
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderPadding(I)Lcom/google/android/exoplayer2/Format$Builder;

    :cond_14
    return-void
.end method

.method public static varargs setFormatMetadata(ILcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/Format$Builder;[Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .registers 10

    .line 294
    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    const/4 v2, 0x1

    if-ne p0, v2, :cond_e

    if-eqz p1, :cond_3c

    goto :goto_3d

    :cond_e
    const/4 p1, 0x2

    if-ne p0, p1, :cond_3c

    if-eqz p2, :cond_3c

    const/4 p0, 0x0

    .line 304
    :goto_14
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result p1

    if-ge p0, p1, :cond_3c

    .line 305
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object p1

    .line 306
    instance-of v3, p1, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;

    if-eqz v3, :cond_39

    .line 307
    check-cast p1, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;

    .line 308
    iget-object v3, p1, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    const-string v4, "com.android.capture.fps"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 309
    new-instance p0, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array p2, v2, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object p1, p2, v1

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    move-object p1, p0

    goto :goto_3d

    :cond_39
    add-int/lit8 p0, p0, 0x1

    goto :goto_14

    :cond_3c
    move-object p1, v0

    .line 317
    :goto_3d
    array-length p0, p4

    :goto_3e
    if-ge v1, p0, :cond_49

    aget-object p2, p4, v1

    .line 318
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 321
    :cond_49
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result p0

    if-lez p0, :cond_52

    .line 322
    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    :cond_52
    return-void
.end method
