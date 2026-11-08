.class public final Lcom/google/android/exoplayer2/util/Util;
.super Ljava/lang/Object;


# static fields
.field private static final CRC32_BYTES_MSBF:[I

.field private static final CRC8_BYTES_MSBF:[I

.field public static final DEVICE:Ljava/lang/String;

.field public static final DEVICE_DEBUG_INFO:Ljava/lang/String;

.field public static final EMPTY_BYTE_ARRAY:[B

.field private static final ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

.field private static final ISM_DASH_FORMAT_EXTENSION:Ljava/lang/String; = "format=mpd-time-csf"

.field private static final ISM_HLS_FORMAT_EXTENSION:Ljava/lang/String; = "format=m3u8-aapl"

.field private static final ISM_PATH_PATTERN:Ljava/util/regex/Pattern;

.field public static final MANUFACTURER:Ljava/lang/String;

.field public static final MODEL:Ljava/lang/String;

.field public static final SDK_INT:I

.field private static final TAG:Ljava/lang/String; = "Util"

.field private static final XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final XS_DURATION_PATTERN:Ljava/util/regex/Pattern;

.field private static final additionalIsoLanguageReplacements:[Ljava/lang/String;

.field private static final isoLegacyTagReplacements:[Ljava/lang/String;

.field private static languageTagReplacementMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 22

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    .line 126
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 132
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 138
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 145
    sput-object v1, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    const-string v1, "(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?"

    .line 149
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/util/Util;->XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$"

    .line 154
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/util/Util;->XS_DURATION_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "%([A-Fa-f0-9]{2})"

    .line 157
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/util/Util;->ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "(?:.*\\.)?isml?(?:/(manifest(.*))?)?"

    const/4 v2, 0x2

    .line 161
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/util/Util;->ISM_PATH_PATTERN:Ljava/util/regex/Pattern;

    const/16 v1, 0x58

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "alb"

    aput-object v3, v1, v0

    const-string v3, "sq"

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "arm"

    aput-object v3, v1, v2

    const-string v3, "hy"

    const/4 v5, 0x3

    aput-object v3, v1, v5

    const-string v3, "baq"

    const/4 v6, 0x4

    aput-object v3, v1, v6

    const-string v3, "eu"

    const/4 v7, 0x5

    aput-object v3, v1, v7

    const-string v3, "bur"

    const/4 v8, 0x6

    aput-object v3, v1, v8

    const-string v3, "my"

    const/4 v9, 0x7

    aput-object v3, v1, v9

    const-string v3, "tib"

    const/16 v10, 0x8

    aput-object v3, v1, v10

    const-string v3, "bo"

    const/16 v11, 0x9

    aput-object v3, v1, v11

    const-string v3, "chi"

    const/16 v12, 0xa

    aput-object v3, v1, v12

    const-string v3, "zh"

    const/16 v13, 0xb

    aput-object v3, v1, v13

    const-string v3, "cze"

    const/16 v14, 0xc

    aput-object v3, v1, v14

    const-string v3, "cs"

    const/16 v15, 0xd

    aput-object v3, v1, v15

    const-string v3, "dut"

    const/16 v16, 0xe

    aput-object v3, v1, v16

    const-string v3, "nl"

    const/16 v17, 0xf

    aput-object v3, v1, v17

    const/16 v3, 0x10

    const-string v18, "ger"

    aput-object v18, v1, v3

    const/16 v3, 0x11

    const-string v18, "de"

    aput-object v18, v1, v3

    const/16 v3, 0x12

    const-string v18, "gre"

    aput-object v18, v1, v3

    const/16 v3, 0x13

    const-string v18, "el"

    aput-object v18, v1, v3

    const/16 v3, 0x14

    const-string v18, "fre"

    aput-object v18, v1, v3

    const/16 v3, 0x15

    const-string v18, "fr"

    aput-object v18, v1, v3

    const/16 v3, 0x16

    const-string v18, "geo"

    aput-object v18, v1, v3

    const/16 v3, 0x17

    const-string v18, "ka"

    aput-object v18, v1, v3

    const/16 v3, 0x18

    const-string v18, "ice"

    aput-object v18, v1, v3

    const/16 v3, 0x19

    const-string v18, "is"

    aput-object v18, v1, v3

    const/16 v3, 0x1a

    const-string v18, "mac"

    aput-object v18, v1, v3

    const/16 v3, 0x1b

    const-string v18, "mk"

    aput-object v18, v1, v3

    const/16 v3, 0x1c

    const-string v18, "mao"

    aput-object v18, v1, v3

    const/16 v3, 0x1d

    const-string v18, "mi"

    aput-object v18, v1, v3

    const/16 v3, 0x1e

    const-string v18, "may"

    aput-object v18, v1, v3

    const/16 v3, 0x1f

    const-string v18, "ms"

    aput-object v18, v1, v3

    const/16 v3, 0x20

    const-string v18, "per"

    aput-object v18, v1, v3

    const/16 v3, 0x21

    const-string v18, "fa"

    aput-object v18, v1, v3

    const/16 v3, 0x22

    const-string v18, "rum"

    aput-object v18, v1, v3

    const/16 v3, 0x23

    const-string v18, "ro"

    aput-object v18, v1, v3

    const/16 v3, 0x24

    const-string v18, "scc"

    aput-object v18, v1, v3

    const/16 v3, 0x25

    const-string v18, "hbs-srp"

    aput-object v18, v1, v3

    const/16 v3, 0x26

    const-string v19, "slo"

    aput-object v19, v1, v3

    const/16 v3, 0x27

    const-string v19, "sk"

    aput-object v19, v1, v3

    const/16 v3, 0x28

    const-string v19, "wel"

    aput-object v19, v1, v3

    const/16 v3, 0x29

    const-string v19, "cy"

    aput-object v19, v1, v3

    const/16 v3, 0x2a

    const-string v19, "id"

    aput-object v19, v1, v3

    const/16 v3, 0x2b

    const-string v19, "ms-ind"

    aput-object v19, v1, v3

    const/16 v3, 0x2c

    const-string v20, "iw"

    aput-object v20, v1, v3

    const/16 v3, 0x2d

    const-string v20, "he"

    aput-object v20, v1, v3

    const/16 v3, 0x2e

    const-string v20, "heb"

    aput-object v20, v1, v3

    const/16 v3, 0x2f

    const-string v20, "he"

    aput-object v20, v1, v3

    const/16 v3, 0x30

    const-string v20, "ji"

    aput-object v20, v1, v3

    const/16 v3, 0x31

    const-string v20, "yi"

    aput-object v20, v1, v3

    const/16 v3, 0x32

    const-string v20, "arb"

    aput-object v20, v1, v3

    const/16 v3, 0x33

    const-string v20, "ar-arb"

    aput-object v20, v1, v3

    const/16 v3, 0x34

    const-string v20, "in"

    aput-object v20, v1, v3

    const/16 v3, 0x35

    aput-object v19, v1, v3

    const/16 v3, 0x36

    const-string v20, "ind"

    aput-object v20, v1, v3

    const/16 v3, 0x37

    aput-object v19, v1, v3

    const/16 v3, 0x38

    const-string v19, "nb"

    aput-object v19, v1, v3

    const/16 v3, 0x39

    const-string v19, "no-nob"

    aput-object v19, v1, v3

    const/16 v3, 0x3a

    const-string v20, "nob"

    aput-object v20, v1, v3

    const/16 v3, 0x3b

    aput-object v19, v1, v3

    const/16 v3, 0x3c

    const-string v20, "nn"

    aput-object v20, v1, v3

    const/16 v3, 0x3d

    const-string v20, "no-nno"

    aput-object v20, v1, v3

    const/16 v3, 0x3e

    const-string v21, "nno"

    aput-object v21, v1, v3

    const/16 v3, 0x3f

    aput-object v20, v1, v3

    const/16 v3, 0x40

    const-string v21, "tw"

    aput-object v21, v1, v3

    const/16 v3, 0x41

    const-string v21, "ak-twi"

    aput-object v21, v1, v3

    const/16 v3, 0x42

    const-string v21, "twi"

    aput-object v21, v1, v3

    const/16 v3, 0x43

    const-string v21, "ak-twi"

    aput-object v21, v1, v3

    const/16 v3, 0x44

    const-string v21, "bs"

    aput-object v21, v1, v3

    const/16 v3, 0x45

    const-string v21, "hbs-bos"

    aput-object v21, v1, v3

    const/16 v3, 0x46

    const-string v21, "bos"

    aput-object v21, v1, v3

    const/16 v3, 0x47

    const-string v21, "hbs-bos"

    aput-object v21, v1, v3

    const/16 v3, 0x48

    const-string v21, "hr"

    aput-object v21, v1, v3

    const/16 v3, 0x49

    const-string v21, "hbs-hrv"

    aput-object v21, v1, v3

    const/16 v3, 0x4a

    const-string v21, "hrv"

    aput-object v21, v1, v3

    const/16 v3, 0x4b

    const-string v21, "hbs-hrv"

    aput-object v21, v1, v3

    const/16 v3, 0x4c

    const-string v21, "sr"

    aput-object v21, v1, v3

    const/16 v3, 0x4d

    aput-object v18, v1, v3

    const/16 v3, 0x4e

    const-string v21, "srp"

    aput-object v21, v1, v3

    const/16 v3, 0x4f

    aput-object v18, v1, v3

    const/16 v3, 0x50

    const-string v18, "cmn"

    aput-object v18, v1, v3

    const/16 v3, 0x51

    const-string v18, "zh-cmn"

    aput-object v18, v1, v3

    const/16 v3, 0x52

    const-string v18, "hak"

    aput-object v18, v1, v3

    const/16 v3, 0x53

    const-string v18, "zh-hak"

    aput-object v18, v1, v3

    const/16 v3, 0x54

    const-string v21, "nan"

    aput-object v21, v1, v3

    const/16 v3, 0x55

    const-string v21, "zh-nan"

    aput-object v21, v1, v3

    const/16 v3, 0x56

    const-string v21, "hsn"

    aput-object v21, v1, v3

    const/16 v3, 0x57

    const-string v21, "zh-hsn"

    aput-object v21, v1, v3

    .line 2693
    sput-object v1, Lcom/google/android/exoplayer2/util/Util;->additionalIsoLanguageReplacements:[Ljava/lang/String;

    const/16 v1, 0x12

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "i-lux"

    aput-object v3, v1, v0

    const-string v0, "lb"

    aput-object v0, v1, v4

    const-string v0, "i-hak"

    aput-object v0, v1, v2

    aput-object v18, v1, v5

    const-string v0, "i-navajo"

    aput-object v0, v1, v6

    const-string v0, "nv"

    aput-object v0, v1, v7

    const-string v0, "no-bok"

    aput-object v0, v1, v8

    aput-object v19, v1, v9

    const-string v0, "no-nyn"

    aput-object v0, v1, v10

    aput-object v20, v1, v11

    const-string v0, "zh-guoyu"

    aput-object v0, v1, v12

    const-string v0, "zh-cmn"

    aput-object v0, v1, v13

    const-string v0, "zh-hakka"

    aput-object v0, v1, v14

    aput-object v18, v1, v15

    const-string v0, "zh-min-nan"

    aput-object v0, v1, v16

    const-string v0, "zh-nan"

    aput-object v0, v1, v17

    const/16 v0, 0x10

    const-string v2, "zh-xiang"

    aput-object v2, v1, v0

    const/16 v0, 0x11

    const-string v2, "zh-hsn"

    aput-object v2, v1, v0

    .line 2749
    sput-object v1, Lcom/google/android/exoplayer2/util/Util;->isoLegacyTagReplacements:[Ljava/lang/String;

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 2766
    fill-array-data v0, :array_2be

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->CRC32_BYTES_MSBF:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 2810
    fill-array-data v0, :array_4c2

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->CRC8_BYTES_MSBF:[I

    return-void

    nop

    :array_2be
    .array-data 4
        0x0
        0x4c11db7
        0x9823b6e
        0xd4326d9
        0x130476dc
        0x17c56b6b
        0x1a864db2
        0x1e475005
        0x2608edb8
        0x22c9f00f
        0x2f8ad6d6
        0x2b4bcb61
        0x350c9b64
        0x31cd86d3
        0x3c8ea00a
        0x384fbdbd
        0x4c11db70    # 3.8235584E7f
        0x48d0c6c7
        0x4593e01e
        0x4152fda9
        0x5f15adac
        0x5bd4b01b
        0x569796c2
        0x52568b75
        0x6a1936c8
        0x6ed82b7f
        0x639b0da6
        0x675a1011
        0x791d4014
        0x7ddc5da3
        0x709f7b7a
        0x745e66cd
        -0x67dc4920
        -0x631d54a9    # -1.4999716E-21f
        -0x6e5e7272
        -0x6a9f6fc7
        -0x74d83fc4
        -0x70192275
        -0x7d5a04ae
        -0x799b191b
        -0x41d4a4a8
        -0x4515b911
        -0x48569fca
        -0x4c97827f
        -0x52d0d27c
        -0x5611cfcd
        -0x5b52e916
        -0x5f93f4a3    # -1.9993737E-19f
        -0x2bcd9270
        -0x2f0c8fd9
        -0x224fa902
        -0x268eb4b7
        -0x38c9e4b4
        -0x3c08f905
        -0x314bdfde
        -0x358ac26b
        -0xdc57fd8
        -0x9046261
        -0x44744ba
        -0x86590f
        -0x1ec1090c
        -0x1a0014bd
        -0x17433266
        -0x13822fd3
        0x34867077
        0x30476dc0
        0x3d044b19
        0x39c556ae
        0x278206ab
        0x23431b1c
        0x2e003dc5
        0x2ac12072
        0x128e9dcf    # 9.000363E-28f
        0x164f8078
        0x1b0ca6a1
        0x1fcdbb16
        0x18aeb13
        0x54bf6a4
        0x808d07d
        0xcc9cdca
        0x7897ab07
        0x7c56b6b0
        0x71159069
        0x75d48dde
        0x6b93dddb
        0x6f52c06c
        0x6211e6b5
        0x66d0fb02
        0x5e9f46bf
        0x5a5e5b08
        0x571d7dd1
        0x53dc6066
        0x4d9b3063    # 3.25454944E8f
        0x495a2dd4    # 893661.25f
        0x44190b0d
        0x40d816ba
        -0x535a3969
        -0x579b24e0
        -0x5ad80207
        -0x5e191fb2
        -0x405e4fb5
        -0x449f5204
        -0x49dc74db
        -0x4d1d696e
        -0x7552d4d1
        -0x7193c968
        -0x7cd0efbf
        -0x7811f20a
        -0x6656a20d
        -0x6297bfbc
        -0x6fd49963
        -0x6b1584d6
        -0x1f4be219
        -0x1b8affb0
        -0x16c9d977
        -0x1208c4c2
        -0xc4f94c5
        -0x88e8974
        -0x5cdafab
        -0x10cb21e
        -0x39430fa1
        -0x3d821218
        -0x30c134cf
        -0x3400297a
        -0x2a47797d
        -0x2e8664cc
        -0x23c54213
        -0x27045fa6
        0x690ce0ee
        0x6dcdfd59
        0x608edb80
        0x644fc637
        0x7a089632
        0x7ec98b85
        0x738aad5c
        0x774bb0eb
        0x4f040d56
        0x4bc510e1    # 2.5829826E7f
        0x46863638
        0x42472b8f
        0x5c007b8a
        0x58c1663d
        0x558240e4
        0x51435d53
        0x251d3b9e
        0x21dc2629
        0x2c9f00f0
        0x285e1d47
        0x36194d42
        0x32d850f5
        0x3f9b762c
        0x3b5a6b9b
        0x315d626
        0x7d4cb91
        0xa97ed48
        0xe56f0ff
        0x1011a0fa
        0x14d0bd4d
        0x19939b94
        0x1d528623
        -0xed0a9f2
        -0xa11b447
        -0x75292a0
        -0x3938f29
        -0x1dd4df2e
        -0x1915c29b
        -0x1456e444
        -0x1097f9f5
        -0x28d8444a
        -0x2c1959ff
        -0x215a7f28
        -0x259b6291
        -0x3bdc3296
        -0x3f1d2f23
        -0x325e09fc
        -0x369f144d
        -0x42c17282
        -0x46006f37
        -0x4b4349f0
        -0x4f825459
        -0x51c5045e
        -0x550419eb
        -0x58473f34
        -0x5c862285
        -0x64c99f3a
        -0x6008828f
        -0x6d4ba458
        -0x698ab9e1
        -0x77cde9e6
        -0x730cf453
        -0x7e4fd28c
        -0x7a8ecf3d
        0x5d8a9099
        0x594b8d2e
        0x5408abf7
        0x50c9b640
        0x4e8ee645
        0x4a4ffbf2    # 3407612.5f
        0x470cdd2b
        0x43cdc09c
        0x7b827d21
        0x7f436096
        0x7200464f
        0x76c15bf8
        0x68860bfd
        0x6c47164a
        0x61043093
        0x65c52d24
        0x119b4be9
        0x155a565e
        0x18197087
        0x1cd86d30
        0x29f3d35
        0x65e2082
        0xb1d065b
        0xfdc1bec
        0x3793a651
        0x3352bbe6
        0x3e119d3f
        0x3ad08088
        0x2497d08d
        0x2056cd3a
        0x2d15ebe3
        0x29d4f654
        -0x3a56d987
        -0x3e97c432
        -0x33d4e2e9    # -4.4856412E7f
        -0x3715ff60    # -479237.0f
        -0x2952af5b
        -0x2d93b2ee
        -0x20d09435
        -0x24118984
        -0x1c5e343f
        -0x189f298a
        -0x15dc0f51
        -0x111d12e8
        -0xf5a42e3
        -0xb9b5f56
        -0x6d8798d
        -0x219643c
        -0x764702f7
        -0x72861f42    # -7.6999573E-31f
        -0x7fc53999
        -0x7b042430
        -0x6543742b
        -0x6182699e
        -0x6cc14f45
        -0x680052f4
        -0x504fef4f
        -0x548ef2fa
        -0x59cdd421
        -0x5d0cc998
        -0x434b9993
        -0x478a8426
        -0x4ac9a2fd
        -0x4e08bf4c
    .end array-data

    :array_4c2
    .array-data 4
        0x0
        0x7
        0xe
        0x9
        0x1c
        0x1b
        0x12
        0x15
        0x38
        0x3f
        0x36
        0x31
        0x24
        0x23
        0x2a
        0x2d
        0x70
        0x77
        0x7e
        0x79
        0x6c
        0x6b
        0x62
        0x65
        0x48
        0x4f
        0x46
        0x41
        0x54
        0x53
        0x5a
        0x5d
        0xe0
        0xe7
        0xee
        0xe9
        0xfc
        0xfb
        0xf2
        0xf5
        0xd8
        0xdf
        0xd6
        0xd1
        0xc4
        0xc3
        0xca
        0xcd
        0x90
        0x97
        0x9e
        0x99
        0x8c
        0x8b
        0x82
        0x85
        0xa8
        0xaf
        0xa6
        0xa1
        0xb4
        0xb3
        0xba
        0xbd
        0xc7
        0xc0
        0xc9
        0xce
        0xdb
        0xdc
        0xd5
        0xd2
        0xff
        0xf8
        0xf1
        0xf6
        0xe3
        0xe4
        0xed
        0xea
        0xb7
        0xb0
        0xb9
        0xbe
        0xab
        0xac
        0xa5
        0xa2
        0x8f
        0x88
        0x81
        0x86
        0x93
        0x94
        0x9d
        0x9a
        0x27
        0x20
        0x29
        0x2e
        0x3b
        0x3c
        0x35
        0x32
        0x1f
        0x18
        0x11
        0x16
        0x3
        0x4
        0xd
        0xa
        0x57
        0x50
        0x59
        0x5e
        0x4b
        0x4c
        0x45
        0x42
        0x6f
        0x68
        0x61
        0x66
        0x73
        0x74
        0x7d
        0x7a
        0x89
        0x8e
        0x87
        0x80
        0x95
        0x92
        0x9b
        0x9c
        0xb1
        0xb6
        0xbf
        0xb8
        0xad
        0xaa
        0xa3
        0xa4
        0xf9
        0xfe
        0xf7
        0xf0
        0xe5
        0xe2
        0xeb
        0xec
        0xc1
        0xc6
        0xcf
        0xc8
        0xdd
        0xda
        0xd3
        0xd4
        0x69
        0x6e
        0x67
        0x60
        0x75
        0x72
        0x7b
        0x7c
        0x51
        0x56
        0x5f
        0x58
        0x4d
        0x4a
        0x43
        0x44
        0x19
        0x1e
        0x17
        0x10
        0x5
        0x2
        0xb
        0xc
        0x21
        0x26
        0x2f
        0x28
        0x3d
        0x3a
        0x33
        0x34
        0x4e
        0x49
        0x40
        0x47
        0x52
        0x55
        0x5c
        0x5b
        0x76
        0x71
        0x78
        0x7f
        0x6a
        0x6d
        0x64
        0x63
        0x3e
        0x39
        0x30
        0x37
        0x22
        0x25
        0x2c
        0x2b
        0x6
        0x1
        0x8
        0xf
        0x1a
        0x1d
        0x14
        0x13
        0xae
        0xa9
        0xa0
        0xa7
        0xb2
        0xb5
        0xbc
        0xbb
        0x96
        0x91
        0x98
        0x9f
        0x8a
        0x8d
        0x84
        0x83
        0xde
        0xd9
        0xd0
        0xd7
        0xc2
        0xc5
        0xcc
        0xcb
        0xe6
        0xe1
        0xe8
        0xef
        0xfa
        0xfd
        0xf4
        0xf3
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWithOverflowDefault(JJJ)J
    .registers 9

    add-long v0, p0, p2

    xor-long/2addr p0, v0

    xor-long/2addr p2, v0

    and-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long v2, p0, p2

    if-gez v2, :cond_c

    return-wide p4

    :cond_c
    return-wide v0
.end method

.method public static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 p0, 0x1

    goto :goto_c

    :cond_6
    const/4 p0, 0x0

    goto :goto_c

    .line 303
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_c
    return p0
.end method

.method public static binarySearchCeil(Ljava/util/List;Ljava/lang/Comparable;ZZ)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Comparable<",
            "-TT;>;>;TT;ZZ)I"
        }
    .end annotation

    .line 1079
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_9

    xor-int/lit8 p1, v0, -0x1

    goto :goto_24

    .line 1083
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_d
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_1e

    .line 1084
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_d

    :cond_1e
    if-eqz p2, :cond_23

    add-int/lit8 p1, v0, -0x1

    goto :goto_24

    :cond_23
    move p1, v0

    :goto_24
    if-eqz p3, :cond_30

    .line 1089
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_30
    return p1
.end method

.method public static binarySearchCeil([IIZZ)I
    .registers 6

    .line 1009
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_9

    xor-int/lit8 p1, v0, -0x1

    goto :goto_19

    :cond_9
    :goto_9
    add-int/lit8 v0, v0, 0x1

    .line 1013
    array-length v1, p0

    if-ge v0, v1, :cond_13

    aget v1, p0, v0

    if-ne v1, p1, :cond_13

    goto :goto_9

    :cond_13
    if-eqz p2, :cond_18

    add-int/lit8 p1, v0, -0x1

    goto :goto_19

    :cond_18
    move p1, v0

    :goto_19
    if-eqz p3, :cond_22

    .line 1018
    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_22
    return p1
.end method

.method public static binarySearchCeil([JJZZ)I
    .registers 9

    .line 1042
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-gez v0, :cond_9

    xor-int/lit8 p1, v0, -0x1

    goto :goto_1b

    :cond_9
    :goto_9
    add-int/lit8 v0, v0, 0x1

    .line 1046
    array-length v1, p0

    if-ge v0, v1, :cond_15

    aget-wide v1, p0, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_15

    goto :goto_9

    :cond_15
    if-eqz p3, :cond_1a

    add-int/lit8 p1, v0, -0x1

    goto :goto_1b

    :cond_1a
    move p1, v0

    :goto_1b
    if-eqz p4, :cond_24

    .line 1051
    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_24
    return p1
.end method

.method public static binarySearchFloor(Lcom/google/android/exoplayer2/util/LongArray;JZZ)I
    .registers 12

    .line 968
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/LongArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-gt v2, v0, :cond_1d

    add-int v3, v2, v0

    ushr-int/lit8 v3, v3, 0x1

    .line 972
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v4

    cmp-long v6, v4, p1

    if-gez v6, :cond_19

    add-int/lit8 v2, v3, 0x1

    goto :goto_8

    :cond_19
    add-int/lit8 v3, v3, -0x1

    move v0, v3

    goto :goto_8

    :cond_1d
    if-eqz p3, :cond_31

    add-int/lit8 p3, v0, 0x1

    .line 979
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/LongArray;->size()I

    move-result v2

    if-ge p3, v2, :cond_31

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v2

    cmp-long p0, v2, p1

    if-nez p0, :cond_31

    move v1, p3

    goto :goto_38

    :cond_31
    if-eqz p4, :cond_37

    const/4 p0, -0x1

    if-ne v0, p0, :cond_37

    goto :goto_38

    :cond_37
    move v1, v0

    :goto_38
    return v1
.end method

.method public static binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Comparable<",
            "-TT;>;>;TT;ZZ)I"
        }
    .end annotation

    .line 935
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_a

    add-int/lit8 v0, v0, 0x2

    neg-int p0, v0

    goto :goto_21

    :cond_a
    :goto_a
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1b

    .line 939
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v1, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_a

    :cond_1b
    if-eqz p2, :cond_20

    add-int/lit8 p0, v0, 0x1

    goto :goto_21

    :cond_20
    move p0, v0

    :goto_21
    if-eqz p3, :cond_28

    const/4 p1, 0x0

    .line 944
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_28
    return p0
.end method

.method public static binarySearchFloor([IIZZ)I
    .registers 6

    .line 867
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_a

    add-int/lit8 v0, v0, 0x2

    neg-int p0, v0

    goto :goto_19

    :cond_a
    :goto_a
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_13

    .line 871
    aget v1, p0, v0

    if-ne v1, p1, :cond_13

    goto :goto_a

    :cond_13
    if-eqz p2, :cond_18

    add-int/lit8 p0, v0, 0x1

    goto :goto_19

    :cond_18
    move p0, v0

    :goto_19
    if-eqz p3, :cond_20

    const/4 p1, 0x0

    .line 876
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_20
    return p0
.end method

.method public static binarySearchFloor([JJZZ)I
    .registers 9

    .line 899
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-gez v0, :cond_a

    add-int/lit8 v0, v0, 0x2

    neg-int p0, v0

    goto :goto_1b

    :cond_a
    :goto_a
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_15

    .line 903
    aget-wide v1, p0, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_15

    goto :goto_a

    :cond_15
    if-eqz p3, :cond_1a

    add-int/lit8 p0, v0, 0x1

    goto :goto_1b

    :cond_1a
    move p0, v0

    :goto_1b
    if-eqz p4, :cond_22

    const/4 p1, 0x0

    .line 908
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_22
    return p0
.end method

.method public static castNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    return-object p0
.end method

.method public static castNonNullTypeArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    return-object p0
.end method

.method public static ceilDivide(II)I
    .registers 2

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    .line 727
    div-int/2addr p0, p1

    return p0
.end method

.method public static ceilDivide(JJ)J
    .registers 6

    add-long/2addr p0, p2

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    .line 738
    div-long/2addr p0, p2

    return-wide p0
.end method

.method public static varargs checkCleartextTrafficPermitted([Lcom/google/android/exoplayer2/MediaItem;)Z
    .registers 8

    .line 264
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-ge v0, v2, :cond_8

    return v1

    .line 268
    :cond_8
    array-length v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_43

    aget-object v4, p0, v3

    .line 269
    iget-object v5, v4, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    if-nez v5, :cond_14

    goto :goto_40

    .line 272
    :cond_14
    iget-object v5, v4, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v5, v5, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Util;->isTrafficRestricted(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_1f

    return v2

    :cond_1f
    const/4 v5, 0x0

    .line 275
    :goto_20
    iget-object v6, v4, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v6, v6, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v6

    if-ge v5, v6, :cond_40

    .line 276
    iget-object v6, v4, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v6, v6, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v6, v5}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    iget-object v6, v6, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Util;->isTrafficRestricted(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_3d

    return v2

    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_43
    return v1
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 562
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static compareLong(JJ)I
    .registers 5

    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    const/4 p0, -0x1

    goto :goto_d

    :cond_6
    cmp-long v0, p0, p2

    if-nez v0, :cond_c

    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    const/4 p0, 0x1

    :goto_d
    return p0
.end method

.method public static constrainValue(FFF)F
    .registers 3

    .line 774
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static constrainValue(III)I
    .registers 3

    .line 750
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static constrainValue(JJJ)J
    .registers 6

    .line 762
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    .line 317
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p0, v2

    .line 318
    invoke-static {v3, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method

.method public static crc32([BIII)I
    .registers 7

    :goto_0
    if-ge p1, p2, :cond_15

    shl-int/lit8 v0, p3, 0x8

    .line 2157
    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->CRC32_BYTES_MSBF:[I

    ushr-int/lit8 p3, p3, 0x18

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr p3, v2

    and-int/lit16 p3, p3, 0xff

    aget p3, v1, p3

    xor-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_15
    return p3
.end method

.method public static crc8([BIII)I
    .registers 6

    :goto_0
    if-ge p1, p2, :cond_e

    .line 2176
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->CRC8_BYTES_MSBF:[I

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    xor-int/2addr p3, v1

    aget p3, v0, p3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_e
    return p3
.end method

.method public static createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .registers 3

    .line 509
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v0
.end method

.method public static createHandlerForCurrentLooper()Landroid/os/Handler;
    .registers 1

    const/4 v0, 0x0

    .line 445
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static createHandlerForCurrentLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .registers 2

    .line 462
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static createHandlerForCurrentOrMainLooper()Landroid/os/Handler;
    .registers 1

    const/4 v0, 0x0

    .line 472
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentOrMainLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static createHandlerForCurrentOrMainLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .registers 2

    .line 491
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method private static createIsoLanguageReplacementMap()Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2641
    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    .line 2642
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    sget-object v3, Lcom/google/android/exoplayer2/util/Util;->additionalIsoLanguageReplacements:[Ljava/lang/String;

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 2645
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v2, :cond_2a

    aget-object v5, v0, v4

    .line 2648
    :try_start_15
    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v6

    .line 2649
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_27

    .line 2650
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/util/MissingResourceException; {:try_start_15 .. :try_end_27} :catch_27

    :catch_27
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 2657
    :cond_2a
    :goto_2a
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->additionalIsoLanguageReplacements:[Ljava/lang/String;

    array-length v2, v0

    if-ge v3, v2, :cond_3b

    .line 2658
    aget-object v2, v0, v3

    add-int/lit8 v4, v3, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x2

    goto :goto_2a

    :cond_3b
    return-object v1
.end method

.method public static createTempDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2134
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->createTempFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 2135
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 2136
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    return-object p0
.end method

.method public static createTempFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2142
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static escapeFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 2015
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v2, v0, :cond_18

    .line 2018
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->shouldEscapeCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_15

    add-int/lit8 v3, v3, 0x1

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_18
    if-nez v3, :cond_1b

    return-object p0

    .line 2027
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v0

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_23
    if-lez v3, :cond_45

    add-int/lit8 v4, v1, 0x1

    .line 2029
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2030
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->shouldEscapeCharacter(C)Z

    move-result v5

    if-eqz v5, :cond_40

    const/16 v5, 0x25

    .line 2031
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x1

    goto :goto_43

    .line 2034
    :cond_40
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_43
    move v1, v4

    goto :goto_23

    :cond_45
    if-ge v1, v0, :cond_4a

    .line 2038
    invoke-virtual {v2, p0, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 2040
    :cond_4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fixSmoothStreamingIsmManifestUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3

    .line 1966
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-object p0

    .line 1970
    :cond_7
    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->ISM_PATH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1971
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    const-string v0, "Manifest"

    .line 1973
    invoke-static {p0, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :cond_20
    return-object p0
.end method

.method public static varargs formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 716
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromUtf8Bytes([B)Ljava/lang/String;
    .registers 3

    .line 648
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static fromUtf8Bytes([BII)Ljava/lang/String;
    .registers 5

    .line 660
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static generateAudioSessionIdV21(Landroid/content/Context;)I
    .registers 2

    const-string v0, "audio"

    .line 1761
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-nez p0, :cond_c

    const/4 p0, -0x1

    goto :goto_10

    .line 1762
    :cond_c
    invoke-virtual {p0}, Landroid/media/AudioManager;->generateAudioSessionId()I

    move-result p0

    :goto_10
    return p0
.end method

.method public static getAdaptiveMimeTypeForContentType(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    const-string p0, "application/x-mpegURL"

    return-object p0

    :cond_d
    const-string p0, "application/vnd.ms-sstr+xml"

    return-object p0

    :cond_10
    const-string p0, "application/dash+xml"

    return-object p0
.end method

.method public static getAudioContentTypeForStreamType(I)I
    .registers 4

    const/4 v0, 0x1

    if-eqz p0, :cond_14

    const/4 v1, 0x4

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_13

    if-eq p0, v1, :cond_13

    const/4 v2, 0x5

    if-eq p0, v2, :cond_13

    const/16 v2, 0x8

    if-eq p0, v2, :cond_13

    return v0

    :cond_13
    return v1

    :cond_14
    return v0
.end method

.method public static getAudioTrackChannelConfig(I)I
    .registers 4

    const/16 v0, 0xc

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2a

    packed-switch p0, :pswitch_data_34

    return v1

    .line 1636
    :pswitch_9
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x17

    const/16 v2, 0x18fc

    if-lt p0, v0, :cond_12

    return v2

    :cond_12
    const/16 v0, 0x15

    if-lt p0, v0, :cond_17

    return v2

    :cond_17
    return v1

    :pswitch_18
    const/16 p0, 0x4fc

    return p0

    :pswitch_1b
    const/16 p0, 0xfc

    return p0

    :pswitch_1e
    const/16 p0, 0xdc

    return p0

    :pswitch_21
    const/16 p0, 0xcc

    return p0

    :pswitch_24
    const/16 p0, 0x1c

    return p0

    :pswitch_27
    return v0

    :pswitch_28
    const/4 p0, 0x4

    return p0

    .line 1648
    :cond_2a
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x20

    if-lt p0, v0, :cond_33

    const v1, 0xb58fc

    :cond_33
    return v1

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_28
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_9
    .end packed-switch
.end method

.method public static getAudioUsageForStreamType(I)I
    .registers 3

    const/4 v0, 0x2

    if-eqz p0, :cond_1b

    const/4 v1, 0x1

    if-eq p0, v1, :cond_18

    if-eq p0, v0, :cond_16

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    const/4 v0, 0x5

    if-eq p0, v0, :cond_15

    const/16 v0, 0x8

    if-eq p0, v0, :cond_13

    return v1

    :cond_13
    const/4 p0, 0x3

    return p0

    :cond_15
    return v0

    :cond_16
    const/4 p0, 0x6

    return p0

    :cond_18
    const/16 p0, 0xd

    return p0

    :cond_1b
    return v0
.end method

.method public static getAvailableCommands(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Commands;)Lcom/google/android/exoplayer2/Player$Commands;
    .registers 12

    .line 2551
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v0

    .line 2552
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->isCurrentMediaItemSeekable()Z

    move-result v1

    .line 2553
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->hasPreviousMediaItem()Z

    move-result v2

    .line 2554
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->hasNextMediaItem()Z

    move-result v3

    .line 2555
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->isCurrentMediaItemLive()Z

    move-result v4

    .line 2556
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->isCurrentMediaItemDynamic()Z

    move-result v5

    .line 2557
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result p0

    .line 2558
    new-instance v6, Lcom/google/android/exoplayer2/Player$Commands$Builder;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/Player$Commands$Builder;-><init>()V

    .line 2559
    invoke-virtual {v6, p1}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addAll(Lcom/google/android/exoplayer2/Player$Commands;)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object p1

    xor-int/lit8 v6, v0, 0x1

    const/4 v7, 0x4

    .line 2560
    invoke-virtual {p1, v7, v6}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object p1

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_39

    if-nez v0, :cond_39

    const/4 v9, 0x1

    goto :goto_3a

    :cond_39
    const/4 v9, 0x0

    .line 2561
    :goto_3a
    invoke-virtual {p1, v6, v9}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object p1

    const/4 v6, 0x6

    if-eqz v2, :cond_45

    if-nez v0, :cond_45

    const/4 v9, 0x1

    goto :goto_46

    :cond_45
    const/4 v9, 0x0

    .line 2562
    :goto_46
    invoke-virtual {p1, v6, v9}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object p1

    const/4 v6, 0x7

    if-nez p0, :cond_57

    if-nez v2, :cond_53

    if-eqz v4, :cond_53

    if-eqz v1, :cond_57

    :cond_53
    if-nez v0, :cond_57

    const/4 v2, 0x1

    goto :goto_58

    :cond_57
    const/4 v2, 0x0

    .line 2563
    :goto_58
    invoke-virtual {p1, v6, v2}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object p1

    const/16 v2, 0x8

    if-eqz v3, :cond_64

    if-nez v0, :cond_64

    const/4 v6, 0x1

    goto :goto_65

    :cond_64
    const/4 v6, 0x0

    .line 2568
    :goto_65
    invoke-virtual {p1, v2, v6}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object p1

    const/16 v2, 0x9

    if-nez p0, :cond_77

    if-nez v3, :cond_73

    if-eqz v4, :cond_77

    if-eqz v5, :cond_77

    :cond_73
    if-nez v0, :cond_77

    const/4 p0, 0x1

    goto :goto_78

    :cond_77
    const/4 p0, 0x0

    .line 2569
    :goto_78
    invoke-virtual {p1, v2, p0}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object p0

    const/16 p1, 0xa

    xor-int/lit8 v2, v0, 0x1

    .line 2574
    invoke-virtual {p0, p1, v2}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object p0

    const/16 p1, 0xb

    if-eqz v1, :cond_8c

    if-nez v0, :cond_8c

    const/4 v2, 0x1

    goto :goto_8d

    :cond_8c
    const/4 v2, 0x0

    .line 2575
    :goto_8d
    invoke-virtual {p0, p1, v2}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object p0

    const/16 p1, 0xc

    if-eqz v1, :cond_98

    if-nez v0, :cond_98

    const/4 v7, 0x1

    .line 2576
    :cond_98
    invoke-virtual {p0, p1, v7}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object p0

    .line 2577
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->build()Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object p0

    return-object p0
.end method

.method public static getBigEndianInt(Ljava/nio/ByteBuffer;I)I
    .registers 3

    .line 2205
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    .line 2206
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_d

    goto :goto_11

    :cond_d
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    :goto_11
    return p1
.end method

.method public static getBytesFromHexString(Ljava/lang/String;)[B
    .registers 7

    .line 1423
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_2a

    mul-int/lit8 v3, v2, 0x2

    .line 1428
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    .line 1429
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/2addr v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_2a
    return-object v1
.end method

.method public static getCodecCountOfType(Ljava/lang/String;I)I
    .registers 6

    .line 1494
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->splitCodecs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1496
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v1, v0, :cond_16

    aget-object v3, p0, v1

    .line 1497
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackTypeOfCodec(Ljava/lang/String;)I

    move-result v3

    if-ne p1, v3, :cond_13

    add-int/lit8 v2, v2, 0x1

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_16
    return v2
.end method

.method public static getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    .line 1515
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->splitCodecs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1516
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    return-object v1

    .line 1519
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1520
    array-length v2, p0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_2b

    aget-object v4, p0, v3

    .line 1521
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackTypeOfCodec(Ljava/lang/String;)I

    move-result v5

    if-ne p1, v5, :cond_28

    .line 1522
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_25

    const-string v5, ","

    .line 1523
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    :cond_25
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1528
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_35

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_35
    return-object v1
.end method

.method public static getCommaDelimitedSimpleClassNames([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1458
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_23

    .line 1459
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_20

    const-string v2, ", "

    .line 1461
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1464
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCountryCode(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_1b

    const-string v0, "phone"

    .line 2220
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_1b

    .line 2222
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p0

    .line 2223
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2224
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2228
    :cond_1b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentDisplayModeSize(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 3

    .line 2335
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_16

    const-string v0, "display"

    .line 2338
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_16

    const/4 v1, 0x0

    .line 2342
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-nez v0, :cond_2b

    const-string v0, "window"

    .line 2347
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2348
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2350
    :cond_2b
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->getCurrentDisplayModeSize(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentDisplayModeSize(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;
    .registers 6

    .line 2367
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_8b

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->isTv(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 2382
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_19

    const-string v0, "sys.display-size"

    .line 2384
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_19
    const-string v0, "vendor.display-size"

    .line 2385
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2387
    :goto_1f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 2389
    :try_start_25
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2390
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4b

    const/4 v2, 0x0

    .line 2391
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    .line 2392
    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v2, :cond_4b

    if-lez v1, :cond_4b

    .line 2394
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v2, v1}, Landroid/graphics/Point;-><init>(II)V
    :try_end_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_4a} :catch_4b

    return-object v3

    .line 2400
    :catch_4b
    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid display size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2404
    :cond_61
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Sony"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "BRAVIA"

    .line 2405
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 2406
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.sony.dtv.hardware.panel.qfhd"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8b

    .line 2407
    new-instance p0, Landroid/graphics/Point;

    const/16 p1, 0xf00

    const/16 v0, 0x870

    invoke-direct {p0, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 2411
    :cond_8b
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    .line 2412
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9a

    .line 2413
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Util;->getDisplaySizeV23(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_a5

    :cond_9a
    const/16 v1, 0x11

    if-lt v0, v1, :cond_a2

    .line 2415
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Util;->getDisplaySizeV17(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_a5

    .line 2417
    :cond_a2
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Util;->getDisplaySizeV16(Landroid/view/Display;Landroid/graphics/Point;)V

    :goto_a5
    return-object p0
.end method

.method public static getCurrentOrMainLooper()Landroid/os/Looper;
    .registers 1

    .line 539
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_b

    .line 540
    :cond_7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public static getDataUriForString(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4

    .line 2104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";base64,"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2105
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2104
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultDisplayLocale()Ljava/util/Locale;
    .registers 2

    .line 2245
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_d

    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method private static getDisplaySizeV16(Landroid/view/Display;Landroid/graphics/Point;)V
    .registers 2

    .line 2620
    invoke-virtual {p0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private static getDisplaySizeV17(Landroid/view/Display;Landroid/graphics/Point;)V
    .registers 2

    .line 2616
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private static getDisplaySizeV23(Landroid/view/Display;Landroid/graphics/Point;)V
    .registers 3

    .line 2609
    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object p0

    .line 2610
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 2611
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p0

    iput p0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public static getDrmUuid(Ljava/lang/String;)Ljava/util/UUID;
    .registers 6

    .line 1774
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6ee3d111

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2e

    const v2, -0x537ab703

    if-eq v1, v2, :cond_24

    const v2, 0x2f1b28f2

    if-eq v1, v2, :cond_1a

    goto :goto_38

    :cond_1a
    const-string v1, "clearkey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x2

    goto :goto_39

    :cond_24
    const-string v1, "widevine"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x0

    goto :goto_39

    :cond_2e
    const-string v1, "playready"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    :goto_38
    const/4 v0, -0x1

    :goto_39
    if-eqz v0, :cond_4c

    if-eq v0, v4, :cond_49

    if-eq v0, v3, :cond_46

    .line 1783
    :try_start_3f
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_43} :catch_44

    return-object p0

    :catch_44
    const/4 p0, 0x0

    return-object p0

    .line 1780
    :cond_46
    sget-object p0, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    return-object p0

    .line 1778
    :cond_49
    sget-object p0, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    return-object p0

    .line 1776
    :cond_4c
    sget-object p0, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    return-object p0
.end method

.method public static getErrorCodeForMediaDrmErrorCode(I)I
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_23

    const/4 v0, 0x4

    if-eq p0, v0, :cond_23

    const/16 v0, 0xa

    if-eq p0, v0, :cond_20

    const/4 v0, 0x7

    if-eq p0, v0, :cond_23

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1d

    packed-switch p0, :pswitch_data_26

    packed-switch p0, :pswitch_data_3a

    const/16 p0, 0x1776

    return p0

    :pswitch_1a
    const/16 p0, 0x1772

    return p0

    :cond_1d
    :pswitch_1d
    const/16 p0, 0x1773

    return p0

    :cond_20
    :pswitch_20
    const/16 p0, 0x1774

    return p0

    :cond_23
    :pswitch_23
    const/16 p0, 0x1775

    return p0

    :pswitch_data_26
    .packed-switch 0xf
        :pswitch_1d
        :pswitch_23
        :pswitch_20
        :pswitch_23
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_3a
    .packed-switch 0x18
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method public static getErrorCodeFromPlatformDiagnosticsInfo(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string v1, "_"

    .line 2505
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2506
    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_f

    return v0

    :cond_f
    add-int/lit8 v3, v1, -0x1

    .line 2510
    aget-object v3, p0, v3

    const/4 v4, 0x3

    if-lt v1, v4, :cond_23

    sub-int/2addr v1, v2

    .line 2511
    aget-object p0, p0, v1

    const-string v1, "neg"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    .line 2513
    :goto_24
    :try_start_24
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_2e} :catch_31

    if-eqz p0, :cond_31

    neg-int v0, v0

    :catch_31
    :cond_31
    return v0
.end method

.method public static getFormatSupportString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_20

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_17

    const/4 v0, 0x4

    if-ne p0, v0, :cond_11

    const-string p0, "YES"

    return-object p0

    .line 2539
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_17
    const-string p0, "NO_EXCEEDS_CAPABILITIES"

    return-object p0

    :cond_1a
    const-string p0, "NO_UNSUPPORTED_DRM"

    return-object p0

    :cond_1d
    const-string p0, "NO_UNSUPPORTED_TYPE"

    return-object p0

    :cond_20
    const-string p0, "NO"

    return-object p0
.end method

.method public static getIntegerCodeForString(Ljava/lang/String;)I
    .registers 5

    .line 1365
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    .line 1366
    :goto_b
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    const/4 v2, 0x0

    :goto_f
    if-ge v1, v0, :cond_1b

    shl-int/lit8 v2, v2, 0x8

    .line 1370
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1b
    return v2
.end method

.method public static getLocaleLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    .line 602
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getLocaleLanguageTagV21(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_f
    return-object p0
.end method

.method private static getLocaleLanguageTagV21(Ljava/util/Locale;)Ljava/lang/String;
    .registers 1

    .line 2637
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMediaDurationForPlayoutDuration(JF)J
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_7

    return-wide p0

    :cond_7
    long-to-double p0, p0

    float-to-double v0, p2

    .line 1342
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getNowUnixTimeMs(J)J
    .registers 5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v0

    if-nez v2, :cond_e

    .line 2462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    goto :goto_13

    .line 2463
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr p0, v0

    :goto_13
    return-wide p0
.end method

.method public static getPcmEncoding(I)I
    .registers 2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x10

    if-eq p0, v0, :cond_18

    const/16 v0, 0x18

    if-eq p0, v0, :cond_15

    const/16 v0, 0x20

    if-eq p0, v0, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    const/high16 p0, 0x30000000

    return p0

    :cond_15
    const/high16 p0, 0x20000000

    return p0

    :cond_18
    const/4 p0, 0x2

    return p0

    :cond_1a
    const/4 p0, 0x3

    return p0
.end method

.method public static getPcmFormat(III)Lcom/google/android/exoplayer2/Format;
    .registers 5

    .line 1553
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string v1, "audio/raw"

    .line 1554
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1555
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 1556
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 1557
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 1558
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static getPcmFrameSize(II)I
    .registers 6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_22

    const/4 v1, 0x3

    if-eq p0, v1, :cond_21

    const/4 v2, 0x4

    if-eq p0, v2, :cond_1f

    const/high16 v3, 0x10000000

    if-eq p0, v3, :cond_22

    const/high16 v0, 0x20000000

    if-eq p0, v0, :cond_1c

    const/high16 v0, 0x30000000

    if-ne p0, v0, :cond_16

    goto :goto_1f

    .line 1678
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1c
    mul-int/lit8 p1, p1, 0x3

    return p1

    :cond_1f
    :goto_1f
    mul-int/lit8 p1, p1, 0x4

    :cond_21
    return p1

    :cond_22
    mul-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public static getPlayoutDurationForMediaDuration(JF)J
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_7

    return-wide p0

    :cond_7
    long-to-double p0, p0

    float-to-double v0, p2

    .line 1355
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getStreamTypeForAudioUsage(I)I
    .registers 2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_14

    packed-switch p0, :pswitch_data_16

    const/4 p0, 0x3

    return p0

    :pswitch_9
    const/4 p0, 0x2

    return p0

    :pswitch_b
    const/4 p0, 0x5

    return p0

    :pswitch_d
    const/4 p0, 0x4

    return p0

    :pswitch_f
    const/16 p0, 0x8

    return p0

    :pswitch_12
    const/4 p0, 0x0

    return p0

    :cond_14
    const/4 p0, 0x1

    return p0

    :pswitch_data_16
    .packed-switch 0x2
        :pswitch_12
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public static getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;
    .registers 15

    const-wide/16 v0, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p2, v2

    if-nez v4, :cond_c

    move-wide p2, v0

    :cond_c
    cmp-long v2, p2, v0

    if-gez v2, :cond_13

    const-string v2, "-"

    goto :goto_15

    :cond_13
    const-string v2, ""

    .line 1991
    :goto_15
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    const-wide/16 v3, 0x1f4

    add-long/2addr p2, v3

    const-wide/16 v3, 0x3e8

    .line 1992
    div-long/2addr p2, v3

    const-wide/16 v3, 0x3c

    .line 1993
    rem-long v5, p2, v3

    .line 1994
    div-long v7, p2, v3

    rem-long/2addr v7, v3

    const-wide/16 v3, 0xe10

    .line 1995
    div-long/2addr p2, v3

    const/4 v3, 0x0

    .line 1996
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 p0, 0x2

    const/4 v4, 0x1

    const/4 v9, 0x3

    cmp-long v10, p2, v0

    if-lez v10, :cond_56

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v3

    .line 1998
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, p0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v0, v9

    const-string p0, "%s%d:%02d:%02d"

    invoke-virtual {p1, p0, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_70

    :cond_56
    new-array p2, v9, [Ljava/lang/Object;

    aput-object v2, p2, v3

    .line 1999
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, p0

    const-string p0, "%s%02d:%02d"

    invoke-virtual {p1, p0, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_70
    return-object p0
.end method

.method public static getSystemLanguageCodes()[Ljava/lang/String;
    .registers 3

    .line 2236
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->getSystemLocales()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2237
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_13

    .line 2238
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    return-object v0
.end method

.method private static getSystemLocales()[Ljava/lang/String;
    .registers 3

    .line 2624
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2625
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_13

    .line 2626
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getSystemLocalesV24(Landroid/content/res/Configuration;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_13
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2627
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getLocaleLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    move-object v0, v1

    :goto_20
    return-object v0
.end method

.method private static getSystemLocalesV24(Landroid/content/res/Configuration;)[Ljava/lang/String;
    .registers 2

    .line 2632
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 2598
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 2599
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 2600
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    move-exception v0

    .line 2602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read system property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Util"

    invoke-static {v1, p0, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTrackTypeString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_3c

    const/16 v0, 0x2710

    if-lt p0, v0, :cond_39

    .line 2449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "custom ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3b

    :pswitch_1e
    const-string p0, "camera motion"

    return-object p0

    :pswitch_21
    const-string p0, "metadata"

    return-object p0

    :pswitch_24
    const-string p0, "image"

    return-object p0

    :pswitch_27
    const-string p0, "text"

    return-object p0

    :pswitch_2a
    const-string p0, "video"

    return-object p0

    :pswitch_2d
    const-string p0, "audio"

    return-object p0

    :pswitch_30
    const-string p0, "default"

    return-object p0

    :pswitch_33
    const-string p0, "unknown"

    return-object p0

    :pswitch_36
    const-string p0, "none"

    return-object p0

    :cond_39
    const-string p0, "?"

    :goto_3b
    return-object p0

    :pswitch_data_3c
    .packed-switch -0x2
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
    .end packed-switch
.end method

.method public static getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1477
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1478
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 1479
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_12

    :catch_10
    const-string p0, "?"

    .line 1483
    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (Linux;Android "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "ExoPlayerLib/2.18.0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUtf8Bytes(Ljava/lang/String;)[B
    .registers 2

    .line 670
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static gzip([B)[B
    .registers 3

    .line 2183
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2184
    :try_start_5
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_1c

    .line 2185
    :try_start_a
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_15

    .line 2186
    :try_start_d
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_1c

    .line 2191
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_15
    move-exception p0

    .line 2184
    :try_start_16
    throw p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception p0

    .line 2186
    :try_start_18
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1b

    :catchall_1b
    :try_start_1b
    throw p0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1c} :catch_1c

    :catch_1c
    move-exception p0

    .line 2189
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static inferContentType(Landroid/net/Uri;)I
    .registers 5

    .line 1843
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v1, "rtsp"

    .line 1844
    invoke-static {v1, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x3

    return p0

    .line 1848
    :cond_10
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_18

    return v1

    :cond_18
    const/16 v2, 0x2e

    .line 1852
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x1

    if-ltz v2, :cond_2d

    add-int/2addr v2, v3

    .line 1855
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->inferContentTypeForExtension(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_2d

    return v0

    .line 1865
    :cond_2d
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->ISM_PATH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1866
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_5e

    const/4 v0, 0x2

    .line 1867
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5d

    const-string v1, "format=mpd-time-csf"

    .line 1869
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_54

    const/4 p0, 0x0

    return p0

    :cond_54
    const-string v1, "format=m3u8-aapl"

    .line 1871
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5d

    return v0

    :cond_5d
    return v3

    :cond_5e
    return v1
.end method

.method public static inferContentType(Landroid/net/Uri;Ljava/lang/String;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1831
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1832
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result p0

    goto :goto_f

    .line 1833
    :cond_b
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->inferContentTypeForExtension(Ljava/lang/String;)I

    move-result p0

    :goto_f
    return p0
.end method

.method public static inferContentType(Ljava/lang/String;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result p0

    return p0
.end method

.method public static inferContentTypeForExtension(Ljava/lang/String;)I
    .registers 6

    .line 1897
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1898
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_46

    goto :goto_38

    :sswitch_10
    const-string v0, "m3u8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    const/4 p0, 0x1

    goto :goto_39

    :sswitch_1a
    const-string v0, "isml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    const/4 p0, 0x3

    goto :goto_39

    :sswitch_24
    const-string v0, "mpd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    const/4 p0, 0x0

    goto :goto_39

    :sswitch_2e
    const-string v0, "ism"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    const/4 p0, 0x2

    goto :goto_39

    :cond_38
    :goto_38
    const/4 p0, -0x1

    :goto_39
    if-eqz p0, :cond_45

    if-eq p0, v4, :cond_44

    if-eq p0, v3, :cond_43

    if-eq p0, v2, :cond_43

    const/4 p0, 0x4

    return p0

    :cond_43
    return v4

    :cond_44
    return v3

    :cond_45
    return v1

    :sswitch_data_46
    .sparse-switch
        0x19883 -> :sswitch_2e
        0x1a721 -> :sswitch_24
        0x317849 -> :sswitch_1a
        0x325a49 -> :sswitch_10
    .end sparse-switch
.end method

.method public static inferContentTypeForUriAndMimeType(Landroid/net/Uri;Ljava/lang/String;)I
    .registers 7

    if-nez p1, :cond_7

    .line 1921
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result p0

    return p0

    :cond_7
    const/4 p0, -0x1

    .line 1923
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_4a

    goto :goto_3b

    :sswitch_14
    const-string v0, "application/x-rtsp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    const/4 p0, 0x3

    goto :goto_3b

    :sswitch_1e
    const-string v0, "application/dash+xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    const/4 p0, 0x0

    goto :goto_3b

    :sswitch_28
    const-string v0, "application/vnd.ms-sstr+xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    const/4 p0, 0x2

    goto :goto_3b

    :sswitch_32
    const-string v0, "application/x-mpegURL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    const/4 p0, 0x1

    :cond_3b
    :goto_3b
    if-eqz p0, :cond_48

    if-eq p0, v4, :cond_47

    if-eq p0, v3, :cond_46

    if-eq p0, v2, :cond_45

    const/4 p0, 0x4

    return p0

    :cond_45
    return v2

    :cond_46
    return v4

    :cond_47
    return v3

    :cond_48
    return v1

    nop

    :sswitch_data_4a
    .sparse-switch
        -0x3a5c4caa -> :sswitch_32
        -0x957ced0 -> :sswitch_28
        0x3d3887d -> :sswitch_1e
        0x44d481f3 -> :sswitch_14
    .end sparse-switch
.end method

.method public static inflate(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z
    .registers 6

    .line 2262
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_8

    return v1

    .line 2265
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 2266
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->ensureCapacity(I)V

    :cond_1b
    if-nez p2, :cond_22

    .line 2269
    new-instance p2, Ljava/util/zip/Inflater;

    invoke-direct {p2}, Ljava/util/zip/Inflater;-><init>()V

    .line 2271
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p0

    invoke-virtual {p2, v0, v2, p0}, Ljava/util/zip/Inflater;->setInput([BII)V

    const/4 p0, 0x0

    .line 2276
    :cond_32
    :goto_32
    :try_start_32
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v2

    sub-int/2addr v2, p0

    invoke-virtual {p2, v0, p0, v2}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    add-int/2addr p0, v0

    .line 2277
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2278
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V
    :try_end_49
    .catch Ljava/util/zip/DataFormatException; {:try_start_32 .. :try_end_49} :catch_74
    .catchall {:try_start_32 .. :try_end_49} :catchall_6f

    const/4 p0, 0x1

    .line 2291
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    return p0

    .line 2281
    :cond_4e
    :try_start_4e
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-nez v0, :cond_6b

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_5b

    goto :goto_6b

    .line 2284
    :cond_5b
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v0

    if-ne p0, v0, :cond_32

    .line 2285
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->ensureCapacity(I)V
    :try_end_6a
    .catch Ljava/util/zip/DataFormatException; {:try_start_4e .. :try_end_6a} :catch_74
    .catchall {:try_start_4e .. :try_end_6a} :catchall_6f

    goto :goto_32

    .line 2291
    :cond_6b
    :goto_6b
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    return v1

    :catchall_6f
    move-exception p0

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    throw p0

    :catch_74
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    return v1
.end method

.method public static isAutomotive(Landroid/content/Context;)Z
    .registers 3

    .line 2317
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_14

    .line 2318
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static isEncodingHighResolutionPcm(I)Z
    .registers 2

    const/high16 v0, 0x20000000

    if-eq p0, v0, :cond_e

    const/high16 v0, 0x30000000

    if-eq p0, v0, :cond_e

    const/4 v0, 0x4

    if-ne p0, v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p0, 0x1

    :goto_f
    return p0
.end method

.method public static isEncodingLinearPcm(I)Z
    .registers 2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_18

    const/high16 v0, 0x10000000

    if-eq p0, v0, :cond_18

    const/high16 v0, 0x20000000

    if-eq p0, v0, :cond_18

    const/high16 v0, 0x30000000

    if-eq p0, v0, :cond_18

    const/4 v0, 0x4

    if-ne p0, v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 p0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p0, 0x1

    :goto_19
    return p0
.end method

.method public static isLinebreak(I)Z
    .registers 2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_b

    const/16 v0, 0xd

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static isLocalFileUri(Landroid/net/Uri;)Z
    .registers 2

    .line 290
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    .line 291
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "file"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method private static isTrafficRestricted(Landroid/net/Uri;)Z
    .registers 3

    .line 2677
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2678
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    .line 2679
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method public static isTv(Landroid/content/Context;)Z
    .registers 2

    .line 2305
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    if-eqz p0, :cond_17

    .line 2307
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method static synthetic lambda$newSingleThreadExecutor$0(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 550
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static linearSearch([II)I
    .registers 4

    const/4 v0, 0x0

    .line 821
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_c

    .line 822
    aget v1, p0, v0

    if-ne v1, p1, :cond_9

    return v0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    const/4 p0, -0x1

    return p0
.end method

.method public static linearSearch([JJ)I
    .registers 7

    const/4 v0, 0x0

    .line 839
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_e

    .line 840
    aget-wide v1, p0, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_b

    return v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    const/4 p0, -0x1

    return p0
.end method

.method public static maxValue(Landroid/util/SparseLongArray;)J
    .registers 6

    .line 1132
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-eqz v0, :cond_1b

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    .line 1136
    :goto_9
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1a

    .line 1137
    invoke-virtual {p0, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1a
    return-wide v0

    .line 1133
    :cond_1b
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    goto :goto_22

    :goto_21
    throw p0

    :goto_22
    goto :goto_21
.end method

.method private static maybeReplaceLegacyLanguageTags(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 2683
    :goto_1
    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->isoLegacyTagReplacements:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_33

    .line 2684
    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->isoLegacyTagReplacements:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->isoLegacyTagReplacements:[Ljava/lang/String;

    aget-object v0, v2, v0

    .line 2686
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_30
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_33
    return-object p0
.end method

.method public static varargs maybeRequestReadExternalStoragePermission(Landroid/app/Activity;[Landroid/net/Uri;)Z
    .registers 6

    .line 214
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_8

    return v1

    .line 217
    :cond_8
    array-length v0, p1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1c

    aget-object v3, p1, v2

    .line 218
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 219
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->requestExternalStoragePermission(Landroid/app/Activity;)Z

    move-result p0

    return p0

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1c
    return v1
.end method

.method public static varargs maybeRequestReadExternalStoragePermission(Landroid/app/Activity;[Lcom/google/android/exoplayer2/MediaItem;)Z
    .registers 8

    .line 237
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_8

    return v1

    .line 240
    :cond_8
    array-length v0, p1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_4a

    aget-object v3, p1, v2

    .line 241
    iget-object v4, v3, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    if-nez v4, :cond_13

    goto :goto_47

    .line 244
    :cond_13
    iget-object v4, v3, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v4, v4, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 245
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->requestExternalStoragePermission(Landroid/app/Activity;)Z

    move-result p0

    return p0

    :cond_22
    const/4 v4, 0x0

    .line 247
    :goto_23
    iget-object v5, v3, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v5, v5, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v5

    if-ge v4, v5, :cond_47

    .line 248
    iget-object v5, v3, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v5, v5, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    iget-object v5, v5, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Util;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 249
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->requestExternalStoragePermission(Landroid/app/Activity;)Z

    move-result p0

    return p0

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_47
    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_4a
    return v1
.end method

.method public static minValue(Landroid/util/SparseLongArray;)J
    .registers 6

    .line 1113
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-eqz v0, :cond_1e

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    .line 1117
    :goto_c
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 1118
    invoke-virtual {p0, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1d
    return-wide v0

    .line 1114
    :cond_1e
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    goto :goto_25

    :goto_24
    throw p0

    :goto_25
    goto :goto_24
.end method

.method public static moveItems(Ljava/util/List;III)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;III)V"
        }
    .end annotation

    .line 2476
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    :goto_8
    if-ltz p2, :cond_16

    add-int v1, p1, p2

    .line 2479
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_8

    .line 2481
    :cond_16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-interface {p0, p1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-void
.end method

.method public static msToUs(J)J
    .registers 5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v0

    if-eqz v2, :cond_14

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p0, v0

    if-nez v2, :cond_10

    goto :goto_14

    :cond_10
    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    :cond_14
    :goto_14
    return-wide p0
.end method

.method public static newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 550
    new-instance v0, Lcom/google/android/exoplayer2/util/-$$Lambda$Util$MRC4FgxCpRGDforKj-F0m_7VaCA;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/-$$Lambda$Util$MRC4FgxCpRGDforKj-F0m_7VaCA;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/16 v0, 0x5f

    const/16 v1, 0x2d

    .line 619
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 620
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "und"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_1c

    :cond_1b
    move-object p0, v0

    .line 624
    :cond_1c
    :goto_1c
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    .line 625
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 626
    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->languageTagReplacementMap:Ljava/util/HashMap;

    if-nez v1, :cond_33

    .line 627
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createIsoLanguageReplacementMap()Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/util/Util;->languageTagReplacementMap:Ljava/util/HashMap;

    .line 629
    :cond_33
    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->languageTagReplacementMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_55

    .line 631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v0, v1

    :cond_55
    const-string v1, "no"

    .line 635
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "i"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 636
    :cond_6d
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->maybeReplaceLegacyLanguageTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_71
    return-object p0
.end method

.method public static nullSafeArrayAppend([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .line 400
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 401
    array-length p0, p0

    aput-object p1, v0, p0

    .line 402
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNullTypeArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static nullSafeArrayConcatenation([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .line 414
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 415
    array-length p0, p0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 373
    array-length v0, p0

    if-gt p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 374
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static nullSafeArrayCopyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    .line 387
    :goto_7
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 388
    array-length v2, p0

    if-gt p2, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 389
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static nullSafeListToArray(Ljava/util/List;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;[TT;)V"
        }
    .end annotation

    .line 435
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, p1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 436
    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method public static parseXsDateTime(Ljava/lang/String;)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1207
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1208
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_d6

    const/16 p0, 0x9

    .line 1214
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    goto :goto_4b

    .line 1217
    :cond_16
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Z"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_23

    goto :goto_4b

    :cond_23
    const/16 p0, 0xc

    .line 1221
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x3c

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int v2, p0, v1

    const/16 p0, 0xb

    .line 1222
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "-"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4b

    mul-int/lit8 v2, v2, -0x1

    .line 1227
    :cond_4b
    :goto_4b
    new-instance p0, Ljava/util/GregorianCalendar;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1229
    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    const/4 v1, 0x1

    .line 1232
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v3, 0x2

    .line 1233
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    const/4 v1, 0x3

    .line 1234
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v3, 0x4

    .line 1235
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v3, 0x5

    .line 1236
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v3, 0x6

    .line 1237
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move-object v3, p0

    .line 1231
    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v3, 0x8

    .line 1238
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c8

    .line 1239
    new-instance v4, Ljava/math/BigDecimal;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xe

    .line 1241
    invoke-virtual {v4, v1}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1244
    :cond_c8
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    if-eqz v2, :cond_d5

    int-to-long v2, v2

    const-wide/32 v4, 0xea60

    mul-long v2, v2, v4

    sub-long/2addr v0, v2

    :cond_d5
    return-wide v0

    .line 1209
    :cond_d6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid date/time format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static parseXsDuration(Ljava/lang/String;)J
    .registers 15

    .line 1171
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->XS_DURATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1172
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-wide v2, 0x408f400000000000L    # 1000.0

    const-wide v4, 0x40ac200000000000L    # 3600.0

    if-eqz v1, :cond_98

    const/4 p0, 0x1

    .line 1173
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr p0, v1

    const/4 v1, 0x3

    .line 1176
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v6, 0x0

    if-eqz v1, :cond_35

    .line 1177
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-wide v10, 0x417e1852c0000000L    # 3.1556908E7

    mul-double v8, v8, v10

    goto :goto_36

    :cond_35
    move-wide v8, v6

    :goto_36
    const/4 v1, 0x5

    .line 1178
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 1179
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-wide v12, 0x4144103580000000L    # 2629739.0

    mul-double v10, v10, v12

    goto :goto_4a

    :cond_49
    move-wide v10, v6

    :goto_4a
    add-double/2addr v8, v10

    const/4 v1, 0x7

    .line 1180
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 1181
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-wide v12, 0x40f5180000000000L    # 86400.0

    mul-double v10, v10, v12

    goto :goto_5f

    :cond_5e
    move-wide v10, v6

    :goto_5f
    add-double/2addr v8, v10

    const/16 v1, 0xa

    .line 1182
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6f

    .line 1183
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    mul-double v10, v10, v4

    goto :goto_70

    :cond_6f
    move-wide v10, v6

    :goto_70
    add-double/2addr v8, v10

    const/16 v1, 0xc

    .line 1184
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_82

    .line 1185
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    mul-double v4, v4, v10

    goto :goto_83

    :cond_82
    move-wide v4, v6

    :goto_83
    add-double/2addr v8, v4

    const/16 v1, 0xe

    .line 1186
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_90

    .line 1187
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    :cond_90
    add-double/2addr v8, v6

    mul-double v8, v8, v2

    double-to-long v0, v8

    if-eqz p0, :cond_97

    neg-long v0, v0

    :cond_97
    return-wide v0

    .line 1191
    :cond_98
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    mul-double v0, v0, v4

    mul-double v0, v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public static postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .registers 4

    .line 522
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 523
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 p0, 0x0

    return p0

    .line 526
    :cond_10
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1f

    .line 527
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0

    .line 530
    :cond_1f
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public static readBoolean(Landroid/os/Parcel;)Z
    .registers 1

    .line 577
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static recursiveDelete(Ljava/io/File;)V
    .registers 5

    .line 2123
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2125
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 2126
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->recursiveDelete(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2129
    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static removeRange(Ljava/util/List;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;II)V"
        }
    .end annotation

    if-ltz p1, :cond_14

    .line 337
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p2, v0, :cond_14

    if-gt p1, p2, :cond_14

    if-eq p1, p2, :cond_13

    .line 341
    invoke-interface {p0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_13
    return-void

    .line 338
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static requestExternalStoragePermission(Landroid/app/Activity;)Z
    .registers 5

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 2666
    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    aput-object v0, v3, v2

    .line 2668
    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return v1

    :cond_12
    return v2
.end method

.method public static scaleLargeTimestamp(JJJ)J
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v2, p4, p2

    if-ltz v2, :cond_f

    .line 1264
    rem-long v2, p4, p2

    cmp-long v4, v2, v0

    if-nez v4, :cond_f

    .line 1265
    div-long/2addr p4, p2

    .line 1266
    div-long/2addr p0, p4

    return-wide p0

    :cond_f
    cmp-long v2, p4, p2

    if-gez v2, :cond_1d

    .line 1267
    rem-long v2, p2, p4

    cmp-long v4, v2, v0

    if-nez v4, :cond_1d

    .line 1268
    div-long/2addr p2, p4

    mul-long p0, p0, p2

    return-wide p0

    :cond_1d
    long-to-double p2, p2

    long-to-double p4, p4

    .line 1271
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, p4

    long-to-double p0, p0

    .line 1272
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, p2

    double-to-long p0, p0

    return-wide p0
.end method

.method public static scaleLargeTimestamps(Ljava/util/List;JJ)[J
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;JJ)[J"
        }
    .end annotation

    .line 1285
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, p3, p1

    if-ltz v5, :cond_26

    .line 1286
    rem-long v5, p3, p1

    cmp-long v7, v5, v2

    if-nez v7, :cond_26

    .line 1287
    div-long/2addr p3, p1

    :goto_14
    if-ge v4, v0, :cond_65

    .line 1289
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    div-long/2addr p1, p3

    aput-wide p1, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_26
    cmp-long v5, p3, p1

    if-gez v5, :cond_44

    .line 1291
    rem-long v5, p1, p3

    cmp-long v7, v5, v2

    if-nez v7, :cond_44

    .line 1292
    div-long/2addr p1, p3

    :goto_31
    if-ge v4, v0, :cond_65

    .line 1294
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    mul-long p3, p3, p1

    aput-wide p3, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_44
    long-to-double p1, p1

    long-to-double p3, p3

    .line 1297
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, p3

    :goto_4d
    if-ge v4, v0, :cond_65

    .line 1299
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    long-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, p1

    double-to-long p3, p3

    aput-wide p3, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    :cond_65
    return-object v1
.end method

.method public static scaleLargeTimestampsInPlace([JJJ)V
    .registers 11

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p3, p1

    if-ltz v3, :cond_19

    .line 1313
    rem-long v3, p3, p1

    cmp-long v5, v3, v0

    if-nez v5, :cond_19

    .line 1314
    div-long/2addr p3, p1

    .line 1315
    :goto_e
    array-length p1, p0

    if-ge v2, p1, :cond_4a

    .line 1316
    aget-wide p1, p0, v2

    div-long/2addr p1, p3

    aput-wide p1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_19
    cmp-long v3, p3, p1

    if-gez v3, :cond_30

    .line 1318
    rem-long v3, p1, p3

    cmp-long v5, v3, v0

    if-nez v5, :cond_30

    .line 1319
    div-long/2addr p1, p3

    .line 1320
    :goto_24
    array-length p3, p0

    if-ge v2, p3, :cond_4a

    .line 1321
    aget-wide p3, p0, v2

    mul-long p3, p3, p1

    aput-wide p3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_30
    long-to-double p1, p1

    long-to-double p3, p3

    .line 1324
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, p3

    .line 1325
    :goto_39
    array-length p3, p0

    if-ge v2, p3, :cond_4a

    .line 1326
    aget-wide p3, p0, v2

    long-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, p1

    double-to-long p3, p3

    aput-wide p3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_4a
    return-void
.end method

.method private static shouldEscapeCharacter(C)Z
    .registers 2

    const/16 v0, 0x22

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x25

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7c

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_2a

    const/4 p0, 0x0

    return p0

    :cond_2a
    const/4 p0, 0x1

    return p0
.end method

.method public static sneakyThrow(Ljava/lang/Throwable;)V
    .registers 1

    .line 2113
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->sneakyThrowInternal(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static sneakyThrowInternal(Ljava/lang/Throwable;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2118
    throw p0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    .line 683
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    const/4 v0, 0x2

    .line 697
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitCodecs(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 1538
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0

    .line 1541
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "(\\s*,\\s*)"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static startForegroundService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 4

    .line 198
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 199
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    .line 201
    :cond_b
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static subtractWithOverflowDefault(JJJ)J
    .registers 9

    sub-long v0, p0, p2

    xor-long/2addr p2, p0

    xor-long/2addr p0, v0

    and-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long v2, p0, p2

    if-gez v2, :cond_c

    return-wide p4

    :cond_c
    return-wide v0
.end method

.method public static varargs sum([J)J
    .registers 7

    .line 2588
    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_c

    aget-wide v4, p0, v3

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_c
    return-wide v1
.end method

.method public static tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "sqlite_master"

    const-string v3, "tbl_name = ?"

    .line 2487
    invoke-static {p0, p1, v3, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v3, 0x0

    cmp-long v1, p0, v3

    if-lez v1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 180
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 182
    :goto_9
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    const/4 v3, 0x0

    .line 183
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 185
    :cond_15
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .registers 5

    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 1442
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_29

    .line 1443
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    const/16 v3, 0x10

    .line 1444
    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    .line 1445
    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1447
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toLong(II)J
    .registers 4

    .line 1395
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->toUnsignedLong(I)J

    move-result-wide v0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->toUnsignedLong(I)J

    move-result-wide p0

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static toUnsignedLong(I)J
    .registers 5

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static truncateAscii(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .registers 3

    .line 1413
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt v0, p1, :cond_7

    goto :goto_c

    :cond_7
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_c
    return-object p0
.end method

.method public static unescapeFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 2072
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v2, v0, :cond_16

    .line 2075
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x25

    if-ne v4, v5, :cond_13

    add-int/lit8 v3, v3, 0x1

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    if-nez v3, :cond_19

    return-object p0

    :cond_19
    mul-int/lit8 v2, v3, 0x2

    sub-int v2, v0, v2

    .line 2084
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2085
    sget-object v5, Lcom/google/android/exoplayer2/util/Util;->ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    :goto_28
    if-lez v3, :cond_53

    .line 2087
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_53

    const/4 v6, 0x1

    .line 2088
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-char v6, v6

    .line 2089
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v4, p0, v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2090
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    add-int/lit8 v3, v3, -0x1

    goto :goto_28

    :cond_53
    if-ge v1, v0, :cond_58

    .line 2094
    invoke-virtual {v4, p0, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 2096
    :cond_58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eq p0, v2, :cond_60

    const/4 p0, 0x0

    return-object p0

    .line 2099
    :cond_60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static usToMs(J)J
    .registers 5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v0

    if-eqz v2, :cond_13

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p0, v0

    if-nez v2, :cond_10

    goto :goto_13

    :cond_10
    const-wide/16 v0, 0x3e8

    .line 1150
    div-long/2addr p0, v0

    :cond_13
    :goto_13
    return-wide p0
.end method

.method public static writeBoolean(Landroid/os/Parcel;Z)V
    .registers 2

    .line 588
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
