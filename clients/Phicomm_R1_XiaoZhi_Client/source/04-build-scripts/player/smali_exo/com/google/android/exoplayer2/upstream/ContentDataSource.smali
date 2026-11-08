.class public final Lcom/google/android/exoplayer2/upstream/ContentDataSource;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
    }
.end annotation


# instance fields
.field private assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/FileInputStream;

.field private opened:Z

.field private final resolver:Landroid/content/ContentResolver;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 203
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    .line 205
    :try_start_6
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    if-eqz v3, :cond_f

    .line 206
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_f} :catch_3d
    .catchall {:try_start_6 .. :try_end_f} :catchall_3b

    .line 211
    :cond_f
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 213
    :try_start_11
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_1a

    .line 214
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_28
    .catchall {:try_start_11 .. :try_end_1a} :catchall_26

    .line 219
    :cond_1a
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 220
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v0, :cond_25

    .line 221
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 222
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->transferEnded()V

    :cond_25
    return-void

    :catchall_26
    move-exception v1

    goto :goto_2f

    :catch_28
    move-exception v3

    .line 217
    :try_start_29
    new-instance v4, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v4, v3, v1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_26

    .line 219
    :goto_2f
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 220
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v0, :cond_3a

    .line 221
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 222
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->transferEnded()V

    :cond_3a
    throw v1

    :catchall_3b
    move-exception v3

    goto :goto_44

    :catch_3d
    move-exception v3

    .line 209
    :try_start_3e
    new-instance v4, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v4, v3, v1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_3b

    .line 211
    :goto_44
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 213
    :try_start_46
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_4f

    .line 214
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4f} :catch_5d
    .catchall {:try_start_46 .. :try_end_4f} :catchall_5b

    .line 219
    :cond_4f
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 220
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v0, :cond_5a

    .line 221
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 222
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->transferEnded()V

    :cond_5a
    throw v3

    :catchall_5b
    move-exception v1

    goto :goto_64

    :catch_5d
    move-exception v3

    .line 217
    :try_start_5e
    new-instance v4, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v4, v3, v1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_5b

    .line 219
    :goto_64
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 220
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v0, :cond_6f

    .line 221
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 222
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->transferEnded()V

    :cond_6f
    throw v1
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    const/16 v0, 0x7d0

    .line 76
    :try_start_2
    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 77
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    const-string v2, "content"

    .line 82
    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2b

    .line 83
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT"

    .line 85
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    const-string v5, "*/*"

    .line 87
    invoke-virtual {v4, v1, v5, v2}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    goto :goto_33

    .line 91
    :cond_2b
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    const-string v4, "r"

    invoke-virtual {v2, v1, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 93
    :goto_33
    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_d0

    .line 101
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 102
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 103
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    const/16 v6, 0x7d8

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    cmp-long v10, v4, v8

    if-eqz v10, :cond_5c

    .line 111
    iget-wide v10, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v12, v10, v4

    if-gtz v12, :cond_56

    goto :goto_5c

    .line 113
    :cond_56
    new-instance p1, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {p1, v7, v6}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw p1

    .line 116
    :cond_5c
    :goto_5c
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v10

    .line 117
    iget-wide v12, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    add-long/2addr v12, v10

    .line 118
    invoke-virtual {v1, v12, v13}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v12

    sub-long/2addr v12, v10

    .line 120
    iget-wide v10, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v2, v12, v10

    if-nez v2, :cond_ca

    const-wide/16 v10, 0x0

    cmp-long v2, v4, v8

    if-nez v2, :cond_95

    .line 129
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    cmp-long v2, v4, v10

    if-nez v2, :cond_83

    .line 132
    iput-wide v8, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    goto :goto_9c

    .line 134
    :cond_83
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    sub-long/2addr v4, v1

    iput-wide v4, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v1, v4, v10

    if-ltz v1, :cond_8f

    goto :goto_9c

    .line 137
    :cond_8f
    new-instance p1, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {p1, v7, v6}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw p1

    :cond_95
    sub-long/2addr v4, v12

    .line 142
    iput-wide v4, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J
    :try_end_98
    .catch Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException; {:try_start_2 .. :try_end_98} :catch_f9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_98} :catch_ec

    cmp-long v1, v4, v10

    if-ltz v1, :cond_c4

    .line 158
    :goto_9c
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v2, v0, v8

    if-eqz v2, :cond_b3

    .line 159
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v2, v0, v8

    if-nez v2, :cond_ab

    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    goto :goto_b1

    :cond_ab
    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    .line 160
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_b1
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    .line 162
    :cond_b3
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 163
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 164
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v2, v0, v8

    if-eqz v2, :cond_c1

    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    goto :goto_c3

    :cond_c1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    :goto_c3
    return-wide v0

    .line 144
    :cond_c4
    :try_start_c4
    new-instance p1, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {p1, v7, v6}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw p1

    .line 123
    :cond_ca
    new-instance p1, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {p1, v7, v6}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw p1

    .line 96
    :cond_d0
    new-instance p1, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not open file descriptor for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v2, v0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw p1
    :try_end_ec
    .catch Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException; {:try_start_c4 .. :try_end_ec} :catch_f9
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_ec} :catch_ec

    :catch_ec
    move-exception p1

    .line 151
    new-instance v1, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    instance-of v2, p1, Ljava/io/FileNotFoundException;

    if-eqz v2, :cond_f5

    const/16 v0, 0x7d5

    :cond_f5
    invoke-direct {v1, p1, v0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v1

    :catch_f9
    move-exception p1

    .line 149
    throw p1
.end method

.method public read([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 171
    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

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

    .line 178
    :try_start_16
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 179
    :goto_1b
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_27} :catch_38

    if-ne p1, v4, :cond_2a

    return v4

    .line 187
    :cond_2a
    iget-wide p2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v0, p2, v2

    if-eqz v0, :cond_34

    int-to-long v0, p1

    sub-long/2addr p2, v0

    .line 188
    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    .line 190
    :cond_34
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesTransferred(I)V

    return p1

    :catch_38
    move-exception p1

    .line 181
    new-instance p2, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    const/16 p3, 0x7d0

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw p2
.end method
