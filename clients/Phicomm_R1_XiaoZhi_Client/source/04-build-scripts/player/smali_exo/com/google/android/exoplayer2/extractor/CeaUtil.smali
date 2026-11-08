.class public final Lcom/google/android/exoplayer2/extractor/CeaUtil;
.super Ljava/lang/Object;


# static fields
.field private static final COUNTRY_CODE:I = 0xb5

.field private static final PAYLOAD_TYPE_CC:I = 0x4

.field private static final PROVIDER_CODE_ATSC:I = 0x31

.field private static final PROVIDER_CODE_DIRECTV:I = 0x2f

.field private static final TAG:Ljava/lang/String; = "CeaUtil"

.field public static final USER_DATA_IDENTIFIER_GA94:I = 0x47413934

.field public static final USER_DATA_TYPE_CODE_MPEG_CC:I = 0x3


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consume(JLcom/google/android/exoplayer2/util/ParsableByteArray;[Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .registers 14

    .line 45
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_70

    .line 46
    invoke-static {p2}, Lcom/google/android/exoplayer2/extractor/CeaUtil;->readNon255TerminatedValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v0

    .line 47
    invoke-static {p2}, Lcom/google/android/exoplayer2/extractor/CeaUtil;->readNon255TerminatedValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v2

    .line 48
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/2addr v3, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_61

    .line 50
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-le v2, v4, :cond_1e

    goto :goto_61

    :cond_1e
    const/4 v4, 0x4

    if-ne v0, v4, :cond_6c

    const/16 v0, 0x8

    if-lt v2, v0, :cond_6c

    .line 55
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 56
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    const/16 v4, 0x31

    const/4 v5, 0x0

    if-ne v2, v4, :cond_37

    .line 59
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    goto :goto_38

    :cond_37
    const/4 v6, 0x0

    .line 61
    :goto_38
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    const/16 v8, 0x2f

    if-ne v2, v8, :cond_43

    .line 63
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_43
    const/16 v9, 0xb5

    if-ne v0, v9, :cond_50

    if-eq v2, v4, :cond_4b

    if-ne v2, v8, :cond_50

    :cond_4b
    const/4 v0, 0x3

    if-ne v7, v0, :cond_50

    const/4 v0, 0x1

    goto :goto_51

    :cond_50
    const/4 v0, 0x0

    :goto_51
    if-ne v2, v4, :cond_5b

    const v2, 0x47413934

    if-ne v6, v2, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v1, 0x0

    :goto_5a
    and-int/2addr v0, v1

    :cond_5b
    if-eqz v0, :cond_6c

    .line 73
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/CeaUtil;->consumeCcData(JLcom/google/android/exoplayer2/util/ParsableByteArray;[Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    goto :goto_6c

    :cond_61
    :goto_61
    const-string v0, "CeaUtil"

    const-string v1, "Skipping remainder of malformed SEI NAL unit."

    .line 52
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v3

    .line 76
    :cond_6c
    :goto_6c
    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_70
    return-void
.end method

.method public static consumeCcData(JLcom/google/android/exoplayer2/util/ParsableByteArray;[Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .registers 15

    .line 90
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    if-nez v1, :cond_10

    return-void

    :cond_10
    and-int/lit8 v0, v0, 0x1f

    .line 97
    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    mul-int/lit8 v0, v0, 0x3

    .line 101
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 102
    array-length v3, p3

    :goto_1c
    if-ge v2, v3, :cond_3a

    aget-object v4, p3, v2

    .line 103
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 104
    invoke-interface {v4, p2, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, p0, v5

    if-eqz v7, :cond_37

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v5, p0

    move v8, v0

    .line 106
    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_3a
    return-void
.end method

.method private static readNon255TerminatedValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .registers 4

    const/4 v0, 0x0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-nez v1, :cond_9

    const/4 p0, -0x1

    return p0

    .line 131
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_1

    return v0
.end method
