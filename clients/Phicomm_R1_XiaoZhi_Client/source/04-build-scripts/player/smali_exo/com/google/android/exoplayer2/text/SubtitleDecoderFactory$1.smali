.class final Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDecoder(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/text/SubtitleDecoder;
    .registers 6

    .line 94
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v0, :cond_df

    const/4 v1, -0x1

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_f6

    goto/16 :goto_8b

    :sswitch_e
    const-string v2, "application/ttml+xml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const/4 v1, 0x3

    goto/16 :goto_8b

    :sswitch_19
    const-string v2, "application/x-subrip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const/4 v1, 0x4

    goto/16 :goto_8b

    :sswitch_24
    const-string v2, "application/cea-708"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const/16 v1, 0x8

    goto :goto_8b

    :sswitch_2f
    const-string v2, "application/cea-608"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const/4 v1, 0x6

    goto :goto_8b

    :sswitch_39
    const-string v2, "text/x-exoplayer-cues"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const/16 v1, 0xb

    goto :goto_8b

    :sswitch_44
    const-string v2, "application/x-mp4-cea-608"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const/4 v1, 0x7

    goto :goto_8b

    :sswitch_4e
    const-string v2, "text/x-ssa"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const/4 v1, 0x1

    goto :goto_8b

    :sswitch_58
    const-string v2, "application/x-quicktime-tx3g"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const/4 v1, 0x5

    goto :goto_8b

    :sswitch_62
    const-string v2, "text/vtt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const/4 v1, 0x0

    goto :goto_8b

    :sswitch_6c
    const-string v2, "application/x-mp4-vtt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const/4 v1, 0x2

    goto :goto_8b

    :sswitch_76
    const-string v2, "application/pgs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const/16 v1, 0xa

    goto :goto_8b

    :sswitch_81
    const-string v2, "application/dvbsubs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const/16 v1, 0x9

    :cond_8b
    :goto_8b
    packed-switch v1, :pswitch_data_128

    goto :goto_df

    .line 122
    :pswitch_8f
    new-instance p1, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;-><init>()V

    return-object p1

    .line 120
    :pswitch_95
    new-instance p1, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;-><init>()V

    return-object p1

    .line 118
    :pswitch_9b
    new-instance v0, Lcom/google/android/exoplayer2/text/dvb/DvbDecoder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/text/dvb/DvbDecoder;-><init>(Ljava/util/List;)V

    return-object v0

    .line 116
    :pswitch_a3
    new-instance v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;-><init>(ILjava/util/List;)V

    return-object v0

    .line 111
    :pswitch_ad
    new-instance v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    const-wide/16 v2, 0x3e80

    invoke-direct {v1, v0, p1, v2, v3}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;-><init>(Ljava/lang/String;IJ)V

    return-object v1

    .line 108
    :pswitch_b7
    new-instance v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;-><init>(Ljava/util/List;)V

    return-object v0

    .line 106
    :pswitch_bf
    new-instance p1, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;-><init>()V

    return-object p1

    .line 104
    :pswitch_c5
    new-instance p1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;-><init>()V

    return-object p1

    .line 102
    :pswitch_cb
    new-instance p1, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;-><init>()V

    return-object p1

    .line 100
    :pswitch_d1
    new-instance v0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;-><init>(Ljava/util/List;)V

    return-object v0

    .line 98
    :pswitch_d9
    new-instance p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;-><init>()V

    return-object p1

    .line 127
    :cond_df
    :goto_df
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to create decoder for unsupported MIME type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_f6
    .sparse-switch
        -0x5091057c -> :sswitch_81
        -0x4a6813e3 -> :sswitch_76
        -0x3d28a9ba -> :sswitch_6c
        -0x3be2f26c -> :sswitch_62
        0x2935f49f -> :sswitch_58
        0x310bebca -> :sswitch_4e
        0x37713300 -> :sswitch_44
        0x47a1c707 -> :sswitch_39
        0x5d578071 -> :sswitch_2f
        0x5d578432 -> :sswitch_24
        0x63771bad -> :sswitch_19
        0x64f8068a -> :sswitch_e
    .end sparse-switch

    :pswitch_data_128
    .packed-switch 0x0
        :pswitch_d9
        :pswitch_d1
        :pswitch_cb
        :pswitch_c5
        :pswitch_bf
        :pswitch_b7
        :pswitch_ad
        :pswitch_ad
        :pswitch_a3
        :pswitch_9b
        :pswitch_95
        :pswitch_8f
    .end packed-switch
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)Z
    .registers 3

    .line 77
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "text/vtt"

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "text/x-ssa"

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "application/ttml+xml"

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "application/x-mp4-vtt"

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "application/x-subrip"

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "application/x-quicktime-tx3g"

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "application/cea-608"

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "application/x-mp4-cea-608"

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "application/cea-708"

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "application/dvbsubs"

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "application/pgs"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "text/x-exoplayer-cues"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_63

    goto :goto_65

    :cond_63
    const/4 p1, 0x0

    goto :goto_66

    :cond_65
    :goto_65
    const/4 p1, 0x1

    :goto_66
    return p1
.end method
