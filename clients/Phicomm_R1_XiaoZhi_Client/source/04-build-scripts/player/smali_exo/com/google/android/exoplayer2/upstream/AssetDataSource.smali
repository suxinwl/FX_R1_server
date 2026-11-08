.class public final Lcom/google/android/exoplayer2/upstream/AssetDataSource;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;
    }
.end annotation


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;

.field private opened:Z

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->assetManager:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 155
    :try_start_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_d

    .line 156
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_1b
    .catchall {:try_start_4 .. :try_end_d} :catchall_19

    .line 161
    :cond_d
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 162
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->opened:Z

    if-eqz v0, :cond_18

    .line 163
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->opened:Z

    .line 164
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->transferEnded()V

    :cond_18
    return-void

    :catchall_19
    move-exception v2

    goto :goto_24

    :catch_1b
    move-exception v2

    .line 159
    :try_start_1c
    new-instance v3, Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;

    const/16 v4, 0x7d0

    invoke-direct {v3, v2, v4}, Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v3
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_19

    .line 161
    :goto_24
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 162
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->opened:Z

    if-eqz v0, :cond_2f

    .line 163
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->opened:Z

    .line 164
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->transferEnded()V

    :cond_2f
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .line 76
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->uri:Landroid/net/Uri;

    .line 77
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "/android_asset/"

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1e

    const/16 v1, 0xf

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_1e
    const-string v1, "/"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_2a
    :goto_2a
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 84
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 85
    iget-wide v3, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    invoke-virtual {v0, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 86
    iget-wide v3, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_68

    .line 92
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_4e

    .line 93
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    goto :goto_60

    .line 95
    :cond_4e
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v0, v5

    if-nez v7, :cond_60

    .line 100
    iput-wide v3, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J
    :try_end_60
    .catch Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException; {:try_start_0 .. :try_end_60} :catch_81
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_60} :catch_71

    .line 113
    :cond_60
    :goto_60
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->opened:Z

    .line 114
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 115
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    return-wide v0

    .line 89
    :cond_68
    :try_start_68
    new-instance p1, Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;

    const/4 v0, 0x0

    const/16 v1, 0x7d8

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw p1
    :try_end_71
    .catch Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException; {:try_start_68 .. :try_end_71} :catch_81
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_71} :catch_71

    :catch_71
    move-exception p1

    .line 106
    new-instance v0, Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;

    instance-of v1, p1, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_7b

    const/16 v1, 0x7d5

    goto :goto_7d

    :cond_7b
    const/16 v1, 0x7d0

    :goto_7d
    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :catch_81
    move-exception p1

    .line 104
    throw p1
.end method

.method public read([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 122
    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_e

    return v4

    :cond_e
    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_15

    goto :goto_1b

    :cond_15
    int-to-long v5, p3

    .line 129
    :try_start_16
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 130
    :goto_1b
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_27} :catch_38

    if-ne p1, v4, :cond_2a

    return v4

    .line 138
    :cond_2a
    iget-wide p2, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    cmp-long v0, p2, v2

    if-eqz v0, :cond_34

    int-to-long v0, p1

    sub-long/2addr p2, v0

    .line 139
    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    .line 141
    :cond_34
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/AssetDataSource;->bytesTransferred(I)V

    return p1

    :catch_38
    move-exception p1

    .line 132
    new-instance p2, Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;

    const/16 p3, 0x7d0

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw p2
.end method
