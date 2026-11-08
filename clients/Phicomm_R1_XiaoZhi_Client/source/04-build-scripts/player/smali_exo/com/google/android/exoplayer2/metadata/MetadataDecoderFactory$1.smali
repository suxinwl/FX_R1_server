.class final Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDecoder(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/metadata/MetadataDecoder;
    .registers 8

    .line 75
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz p1, :cond_6a

    const/4 v0, -0x1

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_82

    goto :goto_42

    :sswitch_11
    const-string v1, "application/x-scte35"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v0, 0x2

    goto :goto_42

    :sswitch_1b
    const-string v1, "application/x-emsg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v0, 0x1

    goto :goto_42

    :sswitch_25
    const-string v1, "application/id3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v0, 0x0

    goto :goto_42

    :sswitch_2f
    const-string v1, "application/x-icy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v0, 0x3

    goto :goto_42

    :sswitch_39
    const-string v1, "application/vnd.dvb.ait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v0, 0x4

    :cond_42
    :goto_42
    if-eqz v0, :cond_64

    if-eq v0, v5, :cond_5e

    if-eq v0, v4, :cond_58

    if-eq v0, v3, :cond_52

    if-ne v0, v2, :cond_6a

    .line 87
    new-instance p1, Lcom/google/android/exoplayer2/metadata/dvbsi/AppInfoTableDecoder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/metadata/dvbsi/AppInfoTableDecoder;-><init>()V

    return-object p1

    .line 85
    :cond_52
    new-instance p1, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;-><init>()V

    return-object p1

    .line 83
    :cond_58
    new-instance p1, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;-><init>()V

    return-object p1

    .line 81
    :cond_5e
    new-instance p1, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;-><init>()V

    return-object p1

    .line 79
    :cond_64
    new-instance p1, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;-><init>()V

    return-object p1

    .line 92
    :cond_6a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to create decoder for unsupported MIME type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_82
    .sparse-switch
        -0x50bb4913 -> :sswitch_39
        -0x505c61b5 -> :sswitch_2f
        -0x4a682ec7 -> :sswitch_25
        0x44ce7ed0 -> :sswitch_1b
        0x62816bb7 -> :sswitch_11
    .end sparse-switch
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)Z
    .registers 3

    .line 65
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "application/id3"

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "application/x-emsg"

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "application/x-scte35"

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "application/x-icy"

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "application/vnd.dvb.ait"

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p1, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 p1, 0x1

    :goto_2e
    return p1
.end method
