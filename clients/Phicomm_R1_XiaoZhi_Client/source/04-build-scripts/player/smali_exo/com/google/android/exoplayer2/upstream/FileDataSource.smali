.class public final Lcom/google/android/exoplayer2/upstream/FileDataSource;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/FileDataSource$Api21;,
        Lcom/google/android/exoplayer2/upstream/FileDataSource$Factory;,
        Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;
    }
.end annotation


# instance fields
.field private bytesRemaining:J

.field private file:Ljava/io/RandomAccessFile;

.field private opened:Z

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    return-void
.end method

.method private static openLocalFile(Landroid/net/Uri;)Ljava/io/RandomAccessFile;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    const/16 v0, 0x7d6

    .line 182
    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_13} :catch_24
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_13} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_13} :catch_14

    return-object v1

    :catch_14
    move-exception p0

    .line 205
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    const/16 v1, 0x7d0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :catch_1d
    move-exception p0

    .line 203
    new-instance v1, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v1

    :catch_24
    move-exception v1

    .line 184
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 197
    new-instance p0, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_4c

    .line 199
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    # invokes: Lcom/google/android/exoplayer2/upstream/FileDataSource$Api21;->isPermissionError(Ljava/lang/Throwable;)Z
    invoke-static {v2}, Lcom/google/android/exoplayer2/upstream/FileDataSource$Api21;->access$000(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_4c

    goto :goto_4e

    :cond_4c
    const/16 v0, 0x7d5

    :goto_4e
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw p0

    .line 185
    :cond_52
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 190
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    const-string p0, "uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing \'?\' or \'#\'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s"

    .line 186
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x3ec

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 166
    :try_start_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_d

    .line 167
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_1b
    .catchall {:try_start_4 .. :try_end_d} :catchall_19

    .line 172
    :cond_d
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 173
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->opened:Z

    if-eqz v0, :cond_18

    .line 174
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->opened:Z

    .line 175
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->transferEnded()V

    :cond_18
    return-void

    :catchall_19
    move-exception v2

    goto :goto_24

    :catch_1b
    move-exception v2

    .line 170
    :try_start_1c
    new-instance v3, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    const/16 v4, 0x7d0

    invoke-direct {v3, v2, v4}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v3
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_19

    .line 172
    :goto_24
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 173
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->opened:Z

    if-eqz v0, :cond_2f

    .line 174
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->opened:Z

    .line 175
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->transferEnded()V

    :cond_2f
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    .line 109
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 110
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->uri:Landroid/net/Uri;

    .line 111
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 112
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->openLocalFile(Landroid/net/Uri;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 114
    :try_start_d
    iget-wide v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 115
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_24

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 116
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    sub-long/2addr v0, v2

    goto :goto_26

    :cond_24
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    :goto_26
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->bytesRemaining:J
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_28} :catch_40

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_37

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->opened:Z

    .line 128
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 130
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    return-wide v0

    .line 121
    :cond_37
    new-instance p1, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    const/16 v0, 0x7d8

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :catch_40
    move-exception p1

    .line 118
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    const/16 v1, 0x7d0

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v0
.end method

.method public read([BII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 137
    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    const/4 p1, -0x1

    return p1

    .line 142
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    int-to-long v3, p3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p3, v1

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_22} :catch_2e

    if-lez p1, :cond_2d

    .line 148
    iget-wide p2, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    .line 149
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->bytesTransferred(I)V

    :cond_2d
    return p1

    :catch_2e
    move-exception p1

    .line 144
    new-instance p2, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    const/16 p3, 0x7d0

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw p2
.end method
