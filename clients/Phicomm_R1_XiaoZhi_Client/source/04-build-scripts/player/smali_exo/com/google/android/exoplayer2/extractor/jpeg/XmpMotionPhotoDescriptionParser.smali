.class final Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;
.super Ljava/lang/Object;


# static fields
.field private static final DESCRIPTION_MICRO_VIDEO_OFFSET_ATTRIBUTE_NAMES:[Ljava/lang/String;

.field private static final DESCRIPTION_MOTION_PHOTO_PRESENTATION_TIMESTAMP_ATTRIBUTE_NAMES:[Ljava/lang/String;

.field private static final MOTION_PHOTO_ATTRIBUTE_NAMES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MotionPhotoXmpParser"


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Camera:MotionPhoto"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "GCamera:MotionPhoto"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "Camera:MicroVideo"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "GCamera:MicroVideo"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 60
    sput-object v1, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->MOTION_PHOTO_ATTRIBUTE_NAMES:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Camera:MotionPhotoPresentationTimestampUs"

    aput-object v1, v0, v3

    const-string v1, "GCamera:MotionPhotoPresentationTimestampUs"

    aput-object v1, v0, v4

    const-string v1, "Camera:MicroVideoPresentationTimestampUs"

    aput-object v1, v0, v5

    const-string v1, "GCamera:MicroVideoPresentationTimestampUs"

    aput-object v1, v0, v6

    .line 67
    sput-object v0, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->DESCRIPTION_MOTION_PHOTO_PRESENTATION_TIMESTAMP_ATTRIBUTE_NAMES:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Camera:MicroVideoOffset"

    aput-object v1, v0, v3

    const-string v1, "GCamera:MicroVideoOffset"

    aput-object v1, v0, v4

    .line 74
    sput-object v0, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->DESCRIPTION_MICRO_VIDEO_OFFSET_ATTRIBUTE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    :try_start_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parseInternal(Ljava/lang/String;)Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;

    move-result-object p0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const-string p0, "MotionPhotoXmpParser"

    const-string v0, "Ignoring unexpected XMP metadata"

    .line 53
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseInternal(Ljava/lang/String;)Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 86
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string p0, "x:xmpmeta"

    .line 87
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_74

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 92
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 94
    :cond_25
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v5, "rdf:Description"

    .line 95
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 96
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parseMotionPhotoFlagFromDescription(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-nez v1, :cond_37

    return-object v2

    .line 101
    :cond_37
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parseMotionPhotoPresentationTimestampUsFromDescription(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v3

    .line 102
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parseMicroVideoOffsetFromDescription(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_61

    :cond_40
    const-string v5, "Container:Directory"

    .line 103
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_51

    const-string v1, "Container"

    const-string v5, "Item"

    .line 104
    invoke-static {v0, v1, v5}, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parseMotionPhotoV1Directory(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_61

    :cond_51
    const-string v5, "GContainer:Directory"

    .line 105
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_61

    const-string v1, "GContainer"

    const-string v5, "GContainerItem"

    .line 106
    invoke-static {v0, v1, v5}, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parseMotionPhotoV1Directory(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 108
    :cond_61
    :goto_61
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 109
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6e

    return-object v2

    .line 113
    :cond_6e
    new-instance p0, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;

    invoke-direct {p0, v3, v4, v1}, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;-><init>(JLjava/util/List;)V

    return-object p0

    :cond_74
    const-string p0, "Couldn\'t find xmp metadata"

    .line 88
    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    goto :goto_7c

    :goto_7b
    throw p0

    :goto_7c
    goto :goto_7b
.end method

.method private static parseMicroVideoOffsetFromDescription(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/common/collect/ImmutableList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;",
            ">;"
        }
    .end annotation

    .line 142
    sget-object v0, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->DESCRIPTION_MICRO_VIDEO_OFFSET_ATTRIBUTE_NAMES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_34

    aget-object v3, v0, v2

    .line 143
    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 145
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 146
    new-instance p0, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-string v1, "image/jpeg"

    const-string v2, "Primary"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    new-instance v0, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;

    const-wide/16 v9, 0x0

    const-string v5, "video/mp4"

    const-string v6, "MotionPhoto"

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-static {p0, v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 156
    :cond_34
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static parseMotionPhotoFlagFromDescription(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 6

    .line 117
    sget-object v0, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->MOTION_PHOTO_ATTRIBUTE_NAMES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_1b

    aget-object v4, v0, v3

    .line 118
    invoke-static {p0, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 120
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_17

    const/4 v2, 0x1

    :cond_17
    return v2

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_1b
    return v2
.end method

.method private static parseMotionPhotoPresentationTimestampUsFromDescription(Lorg/xmlpull/v1/XmlPullParser;)J
    .registers 8

    .line 128
    sget-object v0, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->DESCRIPTION_MOTION_PHOTO_PRESENTATION_TIMESTAMP_ATTRIBUTE_NAMES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v2, v1, :cond_23

    aget-object v5, v0, v2

    .line 129
    invoke-static {p0, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_20

    .line 131
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v5, -0x1

    cmp-long p0, v0, v5

    if-nez p0, :cond_1e

    goto :goto_1f

    :cond_1e
    move-wide v3, v0

    :goto_1f
    return-wide v3

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_23
    return-wide v3
.end method

.method private static parseMotionPhotoV1Directory(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Item"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":Directory"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 167
    :cond_26
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 168
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":Mime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":Semantic"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":Length"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":Padding"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 173
    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 174
    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 175
    invoke-static {p0, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-static {p0, v5}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v7, :cond_a5

    if-nez v8, :cond_88

    goto :goto_a5

    .line 181
    :cond_88
    new-instance v4, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_93

    .line 185
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    goto :goto_94

    :cond_93
    move-wide v9, v5

    :goto_94
    if-eqz v3, :cond_9c

    .line 186
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v11, v2

    goto :goto_9d

    :cond_9c
    move-wide v11, v5

    :goto_9d
    move-object v6, v4

    invoke-direct/range {v6 .. v12}, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 181
    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_aa

    .line 179
    :cond_a5
    :goto_a5
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 188
    :cond_aa
    :goto_aa
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 189
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method
