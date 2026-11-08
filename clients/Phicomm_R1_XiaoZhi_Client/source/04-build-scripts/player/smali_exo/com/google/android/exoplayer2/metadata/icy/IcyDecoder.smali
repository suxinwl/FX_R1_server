.class public final Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;
.super Lcom/google/android/exoplayer2/metadata/SimpleMetadataDecoder;


# static fields
.field private static final METADATA_ELEMENT:Ljava/util/regex/Pattern;

.field private static final STREAM_KEY_NAME:Ljava/lang/String; = "streamtitle"

.field private static final STREAM_KEY_URL:Ljava/lang/String; = "streamurl"


# instance fields
.field private final iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

.field private final utf8Decoder:Ljava/nio/charset/CharsetDecoder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "(.+?)=\'(.*?)\';"

    const/16 v1, 0x20

    .line 33
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->METADATA_ELEMENT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/SimpleMetadataDecoder;-><init>()V

    .line 41
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    .line 42
    sget-object v0, Lcom/google/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

    return-void
.end method

.method private decodeToString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 4

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_a} :catch_1d
    .catchall {:try_start_0 .. :try_end_a} :catchall_13

    .line 89
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0

    :catchall_13
    move-exception v0

    .line 89
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    throw v0

    .line 89
    :catch_1d
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 93
    :try_start_25
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2f
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_25 .. :try_end_2f} :catch_42
    .catchall {:try_start_25 .. :try_end_2f} :catchall_38

    .line 97
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 98
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0

    :catchall_38
    move-exception v0

    .line 97
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 98
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    throw v0

    :catch_42
    const/4 v0, 0x0

    .line 97
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 98
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method


# virtual methods
.method protected decode(Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 12

    .line 47
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->decodeToString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    .line 49
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_21

    .line 52
    new-instance p1, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v2, v2, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    new-instance v3, Lcom/google/android/exoplayer2/metadata/icy/IcyInfo;

    invoke-direct {v3, v0, v1, v1}, Lcom/google/android/exoplayer2/metadata/icy/IcyInfo;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, p2

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object p1

    .line 58
    :cond_21
    sget-object v3, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->METADATA_ELEMENT:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    move-object v3, v1

    const/4 v4, 0x0

    .line 59
    :goto_29
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 60
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 61
    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_69

    .line 63
    invoke-static {v4}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x12cfba11

    if-eq v7, v8, :cond_58

    const v8, 0x622482d8

    if-eq v7, v8, :cond_4e

    goto :goto_61

    :cond_4e
    const-string v7, "streamtitle"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    const/4 v6, 0x0

    goto :goto_61

    :cond_58
    const-string v7, "streamurl"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    const/4 v6, 0x1

    :cond_61
    :goto_61
    if-eqz v6, :cond_68

    if-eq v6, v2, :cond_66

    goto :goto_69

    :cond_66
    move-object v3, v5

    goto :goto_69

    :cond_68
    move-object v1, v5

    .line 74
    :cond_69
    :goto_69
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    goto :goto_29

    .line 76
    :cond_6e
    new-instance p1, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v2, v2, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    new-instance v4, Lcom/google/android/exoplayer2/metadata/icy/IcyInfo;

    invoke-direct {v4, v0, v1, v3}, Lcom/google/android/exoplayer2/metadata/icy/IcyInfo;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, p2

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object p1
.end method
