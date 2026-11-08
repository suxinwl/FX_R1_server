.class public final Lcom/google/android/exoplayer2/upstream/ContentDataSource;
.super Ljava/lang/Object;
.source "ContentDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


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

.field private final listener:Lcom/google/android/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/TransferListener",
            "<-",
            "Lcom/google/android/exoplayer2/upstream/ContentDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private opened:Z

.field private final resolver:Landroid/content/ContentResolver;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener",
            "<-",
            "Lcom/google/android/exoplayer2/upstream/ContentDataSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, "listener":Lcom/google/android/exoplayer2/upstream/TransferListener;, "Lcom/google/android/exoplayer2/upstream/TransferListener<-Lcom/google/android/exoplayer2/upstream/ContentDataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    .line 67
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 68
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

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 152
    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    .line 154
    :try_start_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    if-eqz v1, :cond_d

    .line 155
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_44
    .catchall {:try_start_4 .. :try_end_d} :catchall_4b

    .line 160
    :cond_d
    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 162
    :try_start_f
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_18

    .line 163
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_2a
    .catchall {:try_start_f .. :try_end_18} :catchall_31

    .line 168
    :cond_18
    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 169
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v1, :cond_29

    .line 170
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 171
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_29

    .line 172
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    .line 177
    :cond_29
    return-void

    .line 165
    :catch_2a
    move-exception v0

    .line 166
    .local v0, "e":Ljava/io/IOException;
    :try_start_2b
    new-instance v1, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_31

    .line 168
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_31
    move-exception v1

    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 169
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v2, :cond_43

    .line 170
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 171
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v2, :cond_43

    .line 172
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-interface {v2, p0}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_43
    throw v1

    .line 157
    :catch_44
    move-exception v0

    .line 158
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_45
    new-instance v1, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_4b

    .line 160
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_4b
    move-exception v1

    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 162
    :try_start_4e
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_57

    .line 163
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_57} :catch_69
    .catchall {:try_start_4e .. :try_end_57} :catchall_70

    .line 168
    :cond_57
    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 169
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v2, :cond_68

    .line 170
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 171
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v2, :cond_68

    .line 172
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-interface {v2, p0}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_68
    throw v1

    .line 165
    :catch_69
    move-exception v0

    .line 166
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_6a
    new-instance v1, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_70

    .line 168
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_70
    move-exception v1

    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 169
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v2, :cond_82

    .line 170
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 171
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v2, :cond_82

    .line 172
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-interface {v2, p0}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_82
    throw v1
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 16
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .prologue
    .line 73
    :try_start_0
    iget-object v10, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v10, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    .line 74
    iget-object v10, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    iget-object v11, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    const-string v12, "r"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 75
    iget-object v10, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-nez v10, :cond_36

    .line 76
    new-instance v10, Ljava/io/FileNotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not open file descriptor for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2f} :catch_2f

    .line 100
    :catch_2f
    move-exception v5

    .line 101
    .local v5, "e":Ljava/io/IOException;
    new-instance v10, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v10, v5}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v10

    .line 78
    .end local v5    # "e":Ljava/io/IOException;
    :cond_36
    :try_start_36
    new-instance v10, Ljava/io/FileInputStream;

    iget-object v11, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v11}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v10, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 79
    iget-object v10, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 80
    .local v2, "assetStartOffset":J
    iget-object v10, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    iget-wide v12, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    add-long/2addr v12, v2

    invoke-virtual {v10, v12, v13}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v10

    sub-long v8, v10, v2

    .line 81
    .local v8, "skipped":J
    iget-wide v10, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v10, v8, v10

    if-eqz v10, :cond_60

    .line 84
    new-instance v10, Ljava/io/EOFException;

    invoke-direct {v10}, Ljava/io/EOFException;-><init>()V

    throw v10

    .line 86
    :cond_60
    iget-wide v10, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_7b

    .line 87
    iget-wide v10, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v10, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_6c} :catch_2f

    .line 104
    :goto_6c
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 105
    iget-object v10, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v10, :cond_78

    .line 106
    iget-object v10, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-interface {v10, p0, p1}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onTransferStart(Ljava/lang/Object;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 109
    :cond_78
    iget-wide v10, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    return-wide v10

    .line 89
    :cond_7b
    :try_start_7b
    iget-object v10, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    .line 90
    .local v0, "assetFileDescriptorLength":J
    const-wide/16 v10, -0x1

    cmp-long v10, v0, v10

    if-nez v10, :cond_a3

    .line 93
    iget-object v10, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 94
    .local v4, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 95
    .local v6, "channelSize":J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-nez v10, :cond_9c

    const-wide/16 v10, -0x1

    :goto_99
    iput-wide v10, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    goto :goto_6c

    :cond_9c
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v10

    sub-long v10, v6, v10

    goto :goto_99

    .line 97
    .end local v4    # "channel":Ljava/nio/channels/FileChannel;
    .end local v6    # "channelSize":J
    :cond_a3
    sub-long v10, v0, v8

    iput-wide v10, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_a7} :catch_2f

    goto :goto_6c
.end method

.method public read([BII)I
    .registers 14
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    const/4 v3, -0x1

    .line 114
    if-nez p3, :cond_7

    .line 115
    const/4 v0, 0x0

    .line 142
    :cond_6
    :goto_6
    return v0

    .line 116
    :cond_7
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_11

    move v0, v3

    .line 117
    goto :goto_6

    .line 122
    :cond_11
    :try_start_11
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_31

    move v1, p3

    .line 124
    .local v1, "bytesToRead":I
    :goto_18
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    invoke-virtual {v4, p1, p2, v1}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1d} :catch_3a

    move-result v0

    .line 129
    .local v0, "bytesRead":I
    if-ne v0, v3, :cond_43

    .line 130
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_41

    .line 132
    new-instance v3, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3

    .line 122
    .end local v0    # "bytesRead":I
    .end local v1    # "bytesToRead":I
    :cond_31
    :try_start_31
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    int-to-long v6, p3

    .line 123
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_37} :catch_3a

    move-result-wide v4

    long-to-int v1, v4

    goto :goto_18

    .line 125
    :catch_3a
    move-exception v2

    .line 126
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "bytesRead":I
    .restart local v1    # "bytesToRead":I
    :cond_41
    move v0, v3

    .line 134
    goto :goto_6

    .line 136
    :cond_43
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_4f

    .line 137
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    .line 139
    :cond_4f
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v3, :cond_6

    .line 140
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-interface {v3, p0, v0}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    goto :goto_6
.end method
