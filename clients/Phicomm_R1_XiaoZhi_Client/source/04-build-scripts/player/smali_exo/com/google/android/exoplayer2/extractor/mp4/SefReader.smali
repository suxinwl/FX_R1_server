.class final Lcom/google/android/exoplayer2/extractor/mp4/SefReader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;,
        Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataType;,
        Lcom/google/android/exoplayer2/extractor/mp4/SefReader$State;
    }
.end annotation


# static fields
.field private static final ASTERISK_SPLITTER:Lcom/google/common/base/Splitter;

.field private static final COLON_SPLITTER:Lcom/google/common/base/Splitter;

.field private static final LENGTH_OF_ONE_SDR:I = 0xc

.field private static final SAMSUNG_TAIL_SIGNATURE:I = 0x53454654

.field private static final STATE_CHECKING_FOR_SEF:I = 0x1

.field private static final STATE_READING_SDRS:I = 0x2

.field private static final STATE_READING_SEF_DATA:I = 0x3

.field private static final STATE_SHOULD_CHECK_FOR_SEF:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SefReader"

.field private static final TAIL_FOOTER_LENGTH:I = 0x8

.field private static final TAIL_HEADER_LENGTH:I = 0xc

.field private static final TYPE_SLOW_MOTION_DATA:I = 0x890

.field private static final TYPE_SUPER_SLOW_DEFLICKERING_ON:I = 0xb04

.field private static final TYPE_SUPER_SLOW_MOTION_BGM:I = 0xb01

.field private static final TYPE_SUPER_SLOW_MOTION_DATA:I = 0xb00

.field private static final TYPE_SUPER_SLOW_MOTION_EDIT_DATA:I = 0xb03


# instance fields
.field private final dataReferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;",
            ">;"
        }
    .end annotation
.end field

.field private readerState:I

.field private tailLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x3a

    .line 96
    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->COLON_SPLITTER:Lcom/google/common/base/Splitter;

    const/16 v0, 0x2a

    .line 97
    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->ASTERISK_SPLITTER:Lcom/google/common/base/Splitter;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readerState:I

    return-void
.end method

.method private checkForSefData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 146
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 147
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->tailLength:I

    .line 148
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    const v1, 0x53454654

    if-eq v0, v1, :cond_24

    const-wide/16 v0, 0x0

    .line 149
    iput-wide v0, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    return-void

    .line 155
    :cond_24
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->tailLength:I

    add-int/lit8 p1, p1, -0xc

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    const/4 p1, 0x2

    .line 156
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readerState:I

    return-void
.end method

.method private static nameToDataType(Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 253
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_60

    goto :goto_3e

    :sswitch_c
    const-string v0, "Super_SlowMotion_BGM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3e

    const/4 p0, 0x2

    goto :goto_3f

    :sswitch_16
    const-string v0, "Super_SlowMotion_Deflickering_On"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3e

    const/4 p0, 0x4

    goto :goto_3f

    :sswitch_20
    const-string v0, "Super_SlowMotion_Data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3e

    const/4 p0, 0x1

    goto :goto_3f

    :sswitch_2a
    const-string v0, "Super_SlowMotion_Edit_Data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3e

    const/4 p0, 0x3

    goto :goto_3f

    :sswitch_34
    const-string v0, "SlowMotion_Data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3e

    const/4 p0, 0x0

    goto :goto_3f

    :cond_3e
    :goto_3e
    const/4 p0, -0x1

    :goto_3f
    if-eqz p0, :cond_5d

    if-eq p0, v4, :cond_5a

    if-eq p0, v3, :cond_57

    if-eq p0, v2, :cond_54

    if-ne p0, v1, :cond_4c

    const/16 p0, 0xb04

    return p0

    :cond_4c
    const/4 p0, 0x0

    const-string v0, "Invalid SEF name"

    .line 265
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_54
    const/16 p0, 0xb03

    return p0

    :cond_57
    const/16 p0, 0xb01

    return p0

    :cond_5a
    const/16 p0, 0xb00

    return p0

    :cond_5d
    const/16 p0, 0x890

    return p0

    :sswitch_data_60
    .sparse-switch
        -0x6604662e -> :sswitch_34
        -0x4f6659e5 -> :sswitch_2a
        -0x4a96a712 -> :sswitch_20
        -0x3182f331 -> :sswitch_16
        0x68f2d704 -> :sswitch_c
    .end sparse-switch
.end method

.method private readSdrs(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    .line 161
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->tailLength:I

    add-int/lit8 v2, v2, -0xc

    const/16 v3, 0x8

    sub-int/2addr v2, v3

    .line 162
    new-instance v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v4, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 163
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {p1, v5, v6, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    const/4 p1, 0x0

    .line 165
    :goto_19
    div-int/lit8 v5, v2, 0xc

    if-ge p1, v5, :cond_59

    const/4 v5, 0x2

    .line 166
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 167
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v5

    const/16 v7, 0x890

    if-eq v5, v7, :cond_3d

    const/16 v7, 0xb00

    if-eq v5, v7, :cond_3d

    const/16 v7, 0xb01

    if-eq v5, v7, :cond_3d

    const/16 v7, 0xb03

    if-eq v5, v7, :cond_3d

    const/16 v7, 0xb04

    if-eq v5, v7, :cond_3d

    .line 181
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_56

    .line 176
    :cond_3d
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->tailLength:I

    int-to-long v7, v7

    sub-long v7, v0, v7

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v9

    int-to-long v9, v9

    sub-long/2addr v7, v9

    .line 177
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v9

    .line 178
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    new-instance v11, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;

    invoke-direct {v11, v5, v7, v8, v9}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;-><init>(IJI)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_56
    add-int/lit8 p1, p1, 0x1

    goto :goto_19

    .line 185
    :cond_59
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_66

    const-wide/16 v0, 0x0

    .line 186
    iput-wide v0, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    return-void

    :cond_66
    const/4 p1, 0x3

    .line 190
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readerState:I

    .line 191
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;->startOffset:J

    iput-wide v0, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    return-void
.end method

.method private readSefData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/ExtractorInput;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    .line 197
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->tailLength:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    .line 198
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 199
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 201
    :goto_1f
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v5, p1, :cond_70

    .line 202
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;

    .line 203
    iget-wide v3, p1, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;->startOffset:J

    sub-long/2addr v3, v0

    long-to-int v4, v3

    .line 204
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v3, 0x4

    .line 208
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 209
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v3

    .line 210
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v4

    .line 211
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->nameToDataType(Ljava/lang/String;)I

    move-result v4

    .line 213
    iget p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;->size:I

    add-int/lit8 v3, v3, 0x8

    sub-int/2addr p1, v3

    const/16 v3, 0x890

    if-eq v4, v3, :cond_66

    const/16 p1, 0xb00

    if-eq v4, p1, :cond_6d

    const/16 p1, 0xb01

    if-eq v4, p1, :cond_6d

    const/16 p1, 0xb03

    if-eq v4, p1, :cond_6d

    const/16 p1, 0xb04

    if-ne v4, p1, :cond_60

    goto :goto_6d

    .line 224
    :cond_60
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 216
    :cond_66
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readSlowMotionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6d
    :goto_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_70
    return-void
.end method

.method private static readSlowMotionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object p0

    .line 233
    sget-object p1, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->ASTERISK_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {p1, p0}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 234
    :goto_11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_65

    .line 235
    sget-object v2, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->COLON_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v2

    .line 236
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v3, v4, :cond_60

    .line 240
    :try_start_2b
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v3, 0x1

    .line 241
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const/4 v4, 0x2

    .line 242
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v2, v3

    shl-int v11, v3, v2

    .line 244
    new-instance v2, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;-><init>(JJI)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_57
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_57} :catch_5a

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :catch_5a
    move-exception p0

    .line 246
    invoke-static {v5, p0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 237
    :cond_60
    invoke-static {v5, v5}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 249
    :cond_65
    new-instance p0, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;-><init>(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;Ljava/util/List;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/ExtractorInput;",
            "Lcom/google/android/exoplayer2/extractor/PositionHolder;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata$Entry;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readerState:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_23

    if-eq v0, v3, :cond_1f

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1b

    const/4 v4, 0x3

    if-ne v0, v4, :cond_15

    .line 134
    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readSefData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Ljava/util/List;)V

    .line 135
    iput-wide v1, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    goto :goto_3a

    .line 138
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 131
    :cond_1b
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readSdrs(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)V

    goto :goto_3a

    .line 128
    :cond_1f
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->checkForSefData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)V

    goto :goto_3a

    .line 120
    :cond_23
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long p1, v4, v6

    if-eqz p1, :cond_36

    const-wide/16 v6, 0x8

    cmp-long p1, v4, v6

    if-gez p1, :cond_34

    goto :goto_36

    :cond_34
    sub-long v1, v4, v6

    .line 121
    :cond_36
    :goto_36
    iput-wide v1, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 125
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readerState:I

    :goto_3a
    return v3
.end method

.method public reset()V
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readerState:I

    return-void
.end method
