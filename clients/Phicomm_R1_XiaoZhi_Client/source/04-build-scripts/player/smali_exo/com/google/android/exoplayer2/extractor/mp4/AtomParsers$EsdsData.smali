.class final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EsdsData"
.end annotation


# instance fields
.field private final bitrate:I

.field private final initializationData:[B

.field private final mimeType:Ljava/lang/String;

.field private final peakBitrate:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[BII)V
    .registers 5

    .line 1953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1954
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/String;

    .line 1955
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->initializationData:[B

    .line 1956
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->bitrate:I

    .line 1957
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->peakBitrate:I

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)Ljava/lang/String;
    .registers 1

    .line 1943
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)[B
    .registers 1

    .line 1943
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->initializationData:[B

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)I
    .registers 1

    .line 1943
    iget p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->peakBitrate:I

    return p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)I
    .registers 1

    .line 1943
    iget p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->bitrate:I

    return p0
.end method
