.class public final Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
    }
.end annotation


# static fields
.field public static final RAW_RESOURCE_SCHEME:Ljava/lang/String; = "rawresource"


# instance fields
.field private assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;

.field private opened:Z

.field private final packageName:Ljava/lang/String;

.field private final resources:Landroid/content/res/Resources;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->resources:Landroid/content/res/Resources;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->packageName:Ljava/lang/String;

    return-void
.end method

.method public static buildRawResourceUri(I)Landroid/net/Uri;
    .registers 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rawresource:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    .line 291
    :try_start_6
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v3, :cond_f

    .line 292
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_f} :catch_3d
    .catchall {:try_start_6 .. :try_end_f} :catchall_3b

    .line 298
    :cond_f
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    .line 300
    :try_start_11
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_1a

    .line 301
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_28
    .catchall {:try_start_11 .. :try_end_1a} :catchall_26

    .line 307
    :cond_1a
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 308
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_25

    .line 309
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    .line 310
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->transferEnded()V

    :cond_25
    return-void

    :catchall_26
    move-exception v1

    goto :goto_2f

    :catch_28
    move-exception v3

    .line 304
    :try_start_29
    new-instance v4, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v4, v0, v3, v1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_26

    .line 307
    :goto_2f
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 308
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_3a

    .line 309
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    .line 310
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->transferEnded()V

    :cond_3a
    throw v1

    :catchall_3b
    move-exception v3

    goto :goto_44

    :catch_3d
    move-exception v3

    .line 295
    :try_start_3e
    new-instance v4, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v4, v0, v3, v1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_3b

    .line 298
    :goto_44
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    .line 300
    :try_start_46
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_4f

    .line 301
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4f} :catch_5d
    .catchall {:try_start_46 .. :try_end_4f} :catchall_5b

    .line 307
    :cond_4f
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 308
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_5a

    .line 309
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    .line 310
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->transferEnded()V

    :cond_5a
    throw v3

    :catchall_5b
    move-exception v1

    goto :goto_64

    :catch_5d
    move-exception v3

    .line 304
    :try_start_5e
    new-instance v4, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v4, v0, v3, v1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_5b

    .line 307
    :goto_64
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 308
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_6f

    .line 309
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    .line 310
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->transferEnded()V

    :cond_6f
    throw v1
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 283
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    .line 117
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 118
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    .line 121
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rawresource"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x7d5

    const/16 v3, 0x3ec

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_a9

    .line 122
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v6, "android.resource"

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 123
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_3f

    .line 124
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, "\\d+"

    invoke-virtual {v1, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    goto :goto_a9

    .line 133
    :cond_3f
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 134
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "/"

    .line 135
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 136
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    :cond_5f
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 139
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_71

    const-string v3, ""

    goto :goto_82

    :cond_71
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_82
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->resources:Landroid/content/res/Resources;

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->packageName:Ljava/lang/String;

    const-string v7, "raw"

    .line 141
    invoke-virtual {v3, v1, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_99

    goto :goto_b7

    .line 144
    :cond_99
    new-instance p1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const-string v0, "Resource not found."

    invoke-direct {p1, v0, v5, v2}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    .line 150
    :cond_a1
    new-instance p1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const-string v0, "URI must either use scheme rawresource or android.resource"

    invoke-direct {p1, v0, v5, v3}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    .line 126
    :cond_a9
    :goto_a9
    :try_start_a9
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_b7
    .catch Ljava/lang/NumberFormatException; {:try_start_a9 .. :try_end_b7} :catch_189

    .line 159
    :goto_b7
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 163
    :try_start_ba
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->resources:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_c0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_ba .. :try_end_c0} :catch_182

    .line 169
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    const/16 v2, 0x7d0

    if-eqz v1, :cond_16b

    .line 177
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    .line 178
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 179
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    const/16 v3, 0x7d8

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_ea

    .line 188
    :try_start_dd
    iget-wide v10, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v12, v10, v6

    if-gtz v12, :cond_e4

    goto :goto_ea

    .line 190
    :cond_e4
    new-instance p1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {p1, v5, v5, v3}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    .line 195
    :cond_ea
    :goto_ea
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v10

    .line 196
    iget-wide v12, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    add-long/2addr v12, v10

    .line 197
    invoke-virtual {v0, v12, v13}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v12

    sub-long/2addr v12, v10

    .line 199
    iget-wide v10, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v1, v12, v10

    if-nez v1, :cond_15c

    const-wide/16 v10, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_127

    .line 210
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    cmp-long v1, v6, v10

    if-nez v1, :cond_111

    .line 212
    iput-wide v8, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    goto :goto_12e

    .line 214
    :cond_111
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    sub-long/2addr v6, v0

    iput-wide v6, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    cmp-long v0, v6, v10

    if-ltz v0, :cond_121

    goto :goto_12e

    .line 217
    :cond_121
    new-instance p1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {p1, v5, v5, v3}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :cond_127
    sub-long/2addr v6, v12

    .line 224
    iput-wide v6, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J
    :try_end_12a
    .catch Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException; {:try_start_dd .. :try_end_12a} :catch_169
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_12a} :catch_162

    cmp-long v0, v6, v10

    if-ltz v0, :cond_156

    .line 236
    :goto_12e
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v2, v0, v8

    if-eqz v2, :cond_145

    .line 237
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    cmp-long v2, v0, v8

    if-nez v2, :cond_13d

    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    goto :goto_143

    :cond_13d
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    .line 238
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_143
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    .line 240
    :cond_145
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    .line 241
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 242
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v2, v0, v8

    if-eqz v2, :cond_153

    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    goto :goto_155

    :cond_153
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    :goto_155
    return-wide v0

    .line 226
    :cond_156
    :try_start_156
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    invoke-direct {p1, v3}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    throw p1

    .line 202
    :cond_15c
    new-instance p1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {p1, v5, v5, v3}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1
    :try_end_162
    .catch Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException; {:try_start_156 .. :try_end_162} :catch_169
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_162} :catch_162

    :catch_162
    move-exception p1

    .line 232
    new-instance v0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v0, v5, p1, v2}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    :catch_169
    move-exception p1

    .line 230
    throw p1

    .line 171
    :cond_16b
    new-instance p1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource is compressed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v5, v2}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :catch_182
    move-exception p1

    .line 165
    new-instance v0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v0, v5, p1, v2}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 128
    :catch_189
    new-instance p1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const-string v0, "Resource identifier must be an integer."

    invoke-direct {p1, v0, v5, v3}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1
.end method

.method public read([BII)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 249
    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_e

    return v4

    :cond_e
    const/16 v2, 0x7d0

    const-wide/16 v5, -0x1

    cmp-long v3, v0, v5

    if-nez v3, :cond_17

    goto :goto_1d

    :cond_17
    int-to-long v7, p3

    .line 256
    :try_start_18
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 257
    :goto_1d
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_29} :catch_4d

    if-ne p1, v4, :cond_3f

    .line 264
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    cmp-long p3, p1, v5

    if-nez p3, :cond_32

    return v4

    .line 266
    :cond_32
    new-instance p1, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    const-string p3, "End of stream reached having not read sufficient data."

    invoke-direct {p1, p3, p2, v2}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    .line 273
    :cond_3f
    iget-wide p2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    cmp-long v0, p2, v5

    if-eqz v0, :cond_49

    int-to-long v0, p1

    sub-long/2addr p2, v0

    .line 274
    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    .line 276
    :cond_49
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->bytesTransferred(I)V

    return p1

    :catch_4d
    move-exception p1

    .line 259
    new-instance p2, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, v2}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p2
.end method
