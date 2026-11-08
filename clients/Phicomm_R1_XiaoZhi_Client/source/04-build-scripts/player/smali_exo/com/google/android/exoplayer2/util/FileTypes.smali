.class public final Lcom/google/android/exoplayer2/util/FileTypes;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/FileTypes$Type;
    }
.end annotation


# static fields
.field public static final AC3:I = 0x0

.field public static final AC4:I = 0x1

.field public static final ADTS:I = 0x2

.field public static final AMR:I = 0x3

.field public static final AVI:I = 0x10

.field private static final EXTENSION_AAC:Ljava/lang/String; = ".aac"

.field private static final EXTENSION_AC3:Ljava/lang/String; = ".ac3"

.field private static final EXTENSION_AC4:Ljava/lang/String; = ".ac4"

.field private static final EXTENSION_ADTS:Ljava/lang/String; = ".adts"

.field private static final EXTENSION_AMR:Ljava/lang/String; = ".amr"

.field private static final EXTENSION_AVI:Ljava/lang/String; = ".avi"

.field private static final EXTENSION_EC3:Ljava/lang/String; = ".ec3"

.field private static final EXTENSION_FLAC:Ljava/lang/String; = ".flac"

.field private static final EXTENSION_FLV:Ljava/lang/String; = ".flv"

.field private static final EXTENSION_JPEG:Ljava/lang/String; = ".jpeg"

.field private static final EXTENSION_JPG:Ljava/lang/String; = ".jpg"

.field private static final EXTENSION_M2P:Ljava/lang/String; = ".m2p"

.field private static final EXTENSION_MID:Ljava/lang/String; = ".mid"

.field private static final EXTENSION_MIDI:Ljava/lang/String; = ".midi"

.field private static final EXTENSION_MP3:Ljava/lang/String; = ".mp3"

.field private static final EXTENSION_MP4:Ljava/lang/String; = ".mp4"

.field private static final EXTENSION_MPEG:Ljava/lang/String; = ".mpeg"

.field private static final EXTENSION_MPG:Ljava/lang/String; = ".mpg"

.field private static final EXTENSION_OPUS:Ljava/lang/String; = ".opus"

.field private static final EXTENSION_PREFIX_CMF:Ljava/lang/String; = ".cmf"

.field private static final EXTENSION_PREFIX_M4:Ljava/lang/String; = ".m4"

.field private static final EXTENSION_PREFIX_MK:Ljava/lang/String; = ".mk"

.field private static final EXTENSION_PREFIX_MP4:Ljava/lang/String; = ".mp4"

.field private static final EXTENSION_PREFIX_OG:Ljava/lang/String; = ".og"

.field private static final EXTENSION_PREFIX_TS:Ljava/lang/String; = ".ts"

.field private static final EXTENSION_PS:Ljava/lang/String; = ".ps"

.field private static final EXTENSION_SMF:Ljava/lang/String; = ".smf"

.field private static final EXTENSION_TS:Ljava/lang/String; = ".ts"

.field private static final EXTENSION_VTT:Ljava/lang/String; = ".vtt"

.field private static final EXTENSION_WAV:Ljava/lang/String; = ".wav"

.field private static final EXTENSION_WAVE:Ljava/lang/String; = ".wave"

.field private static final EXTENSION_WEBM:Ljava/lang/String; = ".webm"

.field private static final EXTENSION_WEBVTT:Ljava/lang/String; = ".webvtt"

.field public static final FLAC:I = 0x4

.field public static final FLV:I = 0x5

.field static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final JPEG:I = 0xe

.field public static final MATROSKA:I = 0x6

.field public static final MIDI:I = 0xf

.field public static final MP3:I = 0x7

.field public static final MP4:I = 0x8

.field public static final OGG:I = 0x9

.field public static final PS:I = 0xa

.field public static final TS:I = 0xb

.field public static final UNKNOWN:I = -0x1

.field public static final WAV:I = 0xc

.field public static final WEBVTT:I = 0xd


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inferFileTypeFromMimeType(Ljava/lang/String;)I
    .registers 20

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 141
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x10

    const/16 v4, 0xe

    const/16 v5, 0xd

    const/16 v6, 0xc

    const/16 v7, 0xb

    const/16 v8, 0xa

    const/16 v9, 0x9

    const/16 v10, 0x8

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/16 v13, 0xf

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x1

    const/16 v18, 0x0

    sparse-switch v2, :sswitch_data_16a

    goto/16 :goto_154

    :sswitch_2d
    const-string v2, "video/x-matroska"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/16 v1, 0xa

    goto/16 :goto_155

    :sswitch_39
    const-string v2, "audio/webm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/16 v1, 0xd

    goto/16 :goto_155

    :sswitch_45
    const-string v2, "audio/mpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/16 v1, 0xf

    goto/16 :goto_155

    :sswitch_51
    const-string v2, "audio/midi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/16 v1, 0x9

    goto/16 :goto_155

    :sswitch_5d
    const-string v2, "audio/flac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/4 v1, 0x7

    goto/16 :goto_155

    :sswitch_68
    const-string v2, "audio/eac3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/4 v1, 0x1

    goto/16 :goto_155

    :sswitch_73
    const-string v2, "audio/3gpp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/4 v1, 0x5

    goto/16 :goto_155

    :sswitch_7e
    const-string v2, "video/mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/16 v1, 0x10

    goto/16 :goto_155

    :sswitch_8a
    const-string v2, "audio/wav"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/16 v1, 0x16

    goto/16 :goto_155

    :sswitch_96
    const-string v2, "audio/ogg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/16 v1, 0x13

    goto/16 :goto_155

    :sswitch_a2
    const-string v2, "audio/mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/16 v1, 0x11

    goto/16 :goto_155

    :sswitch_ae
    const-string v2, "audio/amr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/4 v1, 0x4

    goto/16 :goto_155

    :sswitch_b9
    const-string v2, "audio/ac4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/4 v1, 0x3

    goto/16 :goto_155

    :sswitch_c4
    const-string v2, "audio/ac3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/4 v1, 0x0

    goto/16 :goto_155

    :sswitch_cf
    const-string v2, "video/x-flv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/16 v1, 0x8

    goto/16 :goto_155

    :sswitch_db
    const-string v2, "application/webm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/16 v1, 0xe

    goto/16 :goto_155

    :sswitch_e7
    const-string v2, "audio/x-matroska"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/16 v1, 0xb

    goto/16 :goto_155

    :sswitch_f3
    const-string v2, "text/vtt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/16 v1, 0x17

    goto :goto_155

    :sswitch_fe
    const-string v2, "video/x-msvideo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/16 v1, 0x19

    goto :goto_155

    :sswitch_109
    const-string v2, "application/mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/16 v1, 0x12

    goto :goto_155

    :sswitch_114
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/16 v1, 0x18

    goto :goto_155

    :sswitch_11f
    const-string v2, "audio/amr-wb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/4 v1, 0x6

    goto :goto_155

    :sswitch_129
    const-string v2, "video/webm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/16 v1, 0xc

    goto :goto_155

    :sswitch_134
    const-string v2, "video/mp2t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/16 v1, 0x15

    goto :goto_155

    :sswitch_13f
    const-string v2, "video/mp2p"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/16 v1, 0x14

    goto :goto_155

    :sswitch_14a
    const-string v2, "audio/eac3-joc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/4 v1, 0x2

    goto :goto_155

    :cond_154
    :goto_154
    const/4 v1, -0x1

    :goto_155
    packed-switch v1, :pswitch_data_1d4

    return v0

    :pswitch_159
    return v3

    :pswitch_15a
    return v4

    :pswitch_15b
    return v5

    :pswitch_15c
    return v6

    :pswitch_15d
    return v7

    :pswitch_15e
    return v8

    :pswitch_15f
    return v9

    :pswitch_160
    return v10

    :pswitch_161
    return v11

    :pswitch_162
    return v12

    :pswitch_163
    return v13

    :pswitch_164
    return v14

    :pswitch_165
    return v15

    :pswitch_166
    return v16

    :pswitch_167
    return v17

    :pswitch_168
    return v18

    nop

    :sswitch_data_16a
    .sparse-switch
        -0x7e929daa -> :sswitch_14a
        -0x6315f78b -> :sswitch_13f
        -0x6315f787 -> :sswitch_134
        -0x63118f53 -> :sswitch_129
        -0x5fc6f775 -> :sswitch_11f
        -0x58a7d764 -> :sswitch_114
        -0x4a681e4e -> :sswitch_109
        -0x405dba54 -> :sswitch_fe
        -0x3be2f26c -> :sswitch_f3
        -0x17118226 -> :sswitch_e7
        -0x2974308 -> :sswitch_db
        0xd45707 -> :sswitch_cf
        0xb269698 -> :sswitch_c4
        0xb269699 -> :sswitch_b9
        0xb26980d -> :sswitch_ae
        0xb26c538 -> :sswitch_a2
        0xb26cbd6 -> :sswitch_96
        0xb26e933 -> :sswitch_8a
        0x4f62635d -> :sswitch_7e
        0x59976a2d -> :sswitch_73
        0x59ae0c65 -> :sswitch_68
        0x59aeaa01 -> :sswitch_5d
        0x59b1cdba -> :sswitch_51
        0x59b1e81e -> :sswitch_45
        0x59b64a32 -> :sswitch_39
        0x79909c15 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_1d4
    .packed-switch 0x0
        :pswitch_168
        :pswitch_168
        :pswitch_168
        :pswitch_167
        :pswitch_166
        :pswitch_166
        :pswitch_166
        :pswitch_165
        :pswitch_164
        :pswitch_163
        :pswitch_162
        :pswitch_162
        :pswitch_162
        :pswitch_162
        :pswitch_162
        :pswitch_161
        :pswitch_160
        :pswitch_160
        :pswitch_160
        :pswitch_15f
        :pswitch_15e
        :pswitch_15d
        :pswitch_15c
        :pswitch_15b
        :pswitch_15a
        :pswitch_159
    .end packed-switch
.end method

.method public static inferFileTypeFromResponseHeaders(Ljava/util/Map;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    const-string v0, "Content-Type"

    .line 126
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_19

    .line 128
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    :cond_11
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x0

    .line 129
    :goto_1a
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/FileTypes;->inferFileTypeFromMimeType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static inferFileTypeFromUri(Landroid/net/Uri;)I
    .registers 7

    .line 192
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_8

    return v0

    :cond_8
    const-string v1, ".ac3"

    .line 195
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_165

    const-string v1, ".ec3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto/16 :goto_165

    :cond_1a
    const-string v1, ".ac4"

    .line 197
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    const-string v1, ".adts"

    .line 199
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_163

    const-string v1, ".aac"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    goto/16 :goto_163

    :cond_36
    const-string v1, ".amr"

    .line 201
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    const/4 p0, 0x3

    return p0

    :cond_40
    const-string v1, ".flac"

    .line 203
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_4a

    return v2

    :cond_4a
    const-string v1, ".flv"

    .line 205
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x5

    if-eqz v1, :cond_54

    return v3

    :cond_54
    const-string v1, ".mid"

    .line 207
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_160

    const-string v1, ".midi"

    .line 208
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_160

    const-string v1, ".smf"

    .line 209
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    goto/16 :goto_160

    .line 213
    :cond_6e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    const-string v4, ".mk"

    .line 211
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_15e

    const-string v1, ".webm"

    .line 214
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_85

    goto/16 :goto_15e

    :cond_85
    const-string v1, ".mp3"

    .line 216
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8f

    const/4 p0, 0x7

    return p0

    :cond_8f
    const-string v1, ".mp4"

    .line 218
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15b

    .line 221
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    const-string v5, ".m4"

    .line 219
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_15b

    .line 224
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    .line 222
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_15b

    .line 227
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    const-string v3, ".cmf"

    .line 225
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_be

    goto/16 :goto_15b

    .line 231
    :cond_be
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    const-string v3, ".og"

    .line 229
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_158

    const-string v1, ".opus"

    .line 232
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d5

    goto/16 :goto_158

    :cond_d5
    const-string v1, ".ps"

    .line 234
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_155

    const-string v1, ".mpeg"

    .line 235
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_155

    const-string v1, ".mpg"

    .line 236
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_155

    const-string v1, ".m2p"

    .line 237
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f6

    goto :goto_155

    :cond_f6
    const-string v1, ".ts"

    .line 239
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_152

    .line 242
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    .line 240
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10a

    goto :goto_152

    :cond_10a
    const-string v1, ".wav"

    .line 244
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14f

    const-string v1, ".wave"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11b

    goto :goto_14f

    :cond_11b
    const-string v1, ".vtt"

    .line 246
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14c

    const-string v1, ".webvtt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12c

    goto :goto_14c

    :cond_12c
    const-string v1, ".jpg"

    .line 248
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_149

    const-string v1, ".jpeg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13d

    goto :goto_149

    :cond_13d
    const-string v1, ".avi"

    .line 250
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_148

    const/16 p0, 0x10

    return p0

    :cond_148
    return v0

    :cond_149
    :goto_149
    const/16 p0, 0xe

    return p0

    :cond_14c
    :goto_14c
    const/16 p0, 0xd

    return p0

    :cond_14f
    :goto_14f
    const/16 p0, 0xc

    return p0

    :cond_152
    :goto_152
    const/16 p0, 0xb

    return p0

    :cond_155
    :goto_155
    const/16 p0, 0xa

    return p0

    :cond_158
    :goto_158
    const/16 p0, 0x9

    return p0

    :cond_15b
    :goto_15b
    const/16 p0, 0x8

    return p0

    :cond_15e
    :goto_15e
    const/4 p0, 0x6

    return p0

    :cond_160
    :goto_160
    const/16 p0, 0xf

    return p0

    :cond_163
    :goto_163
    const/4 p0, 0x2

    return p0

    :cond_165
    :goto_165
    const/4 p0, 0x0

    return p0
.end method
