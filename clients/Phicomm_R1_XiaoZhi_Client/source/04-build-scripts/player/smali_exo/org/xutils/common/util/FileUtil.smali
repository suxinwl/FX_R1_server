.class public Lorg/xutils/common/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p0, "fromPath"    # Ljava/lang/String;
    .param p1, "toPath"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v6, 0x0

    .line 91
    .local v6, "result":Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, "from":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_e

    move v7, v6

    .line 115
    .end local v6    # "result":Z
    .local v7, "result":I
    :goto_d
    return v7

    .line 96
    .end local v7    # "result":I
    .restart local v6    # "result":Z
    :cond_e
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v9, "toFile":Ljava/io/File;
    invoke-static {v9}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 98
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 99
    .local v8, "toDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_26

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 100
    :cond_26
    const/4 v2, 0x0

    .line 101
    .local v2, "in":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 103
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_28
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2d} :catch_3e
    .catchall {:try_start_28 .. :try_end_2d} :catchall_4e

    .line 104
    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v3, "in":Ljava/io/FileInputStream;
    :try_start_2d
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_32} :catch_5d
    .catchall {:try_start_2d .. :try_end_32} :catchall_56

    .line 105
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_32
    invoke-static {v3, v5}, Lorg/xutils/common/util/IOUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_35} :catch_60
    .catchall {:try_start_32 .. :try_end_35} :catchall_59

    .line 106
    const/4 v6, 0x1

    .line 111
    invoke-static {v3}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 112
    invoke-static {v5}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :cond_3c
    :goto_3c
    move v7, v6

    .line 115
    .restart local v7    # "result":I
    goto :goto_d

    .line 107
    .end local v7    # "result":I
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_3e
    move-exception v0

    .line 108
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_3f
    :try_start_3f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_4e

    .line 109
    const/4 v6, 0x0

    .line 111
    invoke-static {v2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 112
    invoke-static {v4}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3c

    .line 111
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_4e
    move-exception v10

    :goto_4f
    invoke-static {v2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 112
    invoke-static {v4}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v10

    .line 111
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catchall_56
    move-exception v10

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_4f

    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_59
    move-exception v10

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_4f

    .line 107
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catch_5d
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_3f

    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_60
    move-exception v0

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_3f
.end method

.method public static existsSdcard()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 64
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheDir(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p0, "dirName"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {}, Lorg/xutils/common/util/FileUtil;->existsSdcard()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 20
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 21
    .local v0, "cacheDir":Ljava/io/File;
    if-nez v0, :cond_4f

    .line 22
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 23
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cache/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .end local v0    # "cacheDir":Ljava/io/File;
    .local v1, "result":Ljava/io/File;
    :goto_42
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4e

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 33
    .end local v1    # "result":Ljava/io/File;
    :cond_4e
    :goto_4e
    return-object v1

    .line 25
    .restart local v0    # "cacheDir":Ljava/io/File;
    :cond_4f
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1    # "result":Ljava/io/File;
    goto :goto_42

    .line 28
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v1    # "result":Ljava/io/File;
    :cond_55
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1    # "result":Ljava/io/File;
    goto :goto_42

    .line 33
    :cond_63
    const/4 v1, 0x0

    goto :goto_4e
.end method

.method public static getDiskAvailableSize()J
    .registers 8

    .prologue
    .line 53
    invoke-static {}, Lorg/xutils/common/util/FileUtil;->existsSdcard()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_d

    const-wide/16 v6, 0x0

    .line 58
    .local v0, "availableBlocks":J
    .local v2, "blockSize":J
    .local v4, "path":Ljava/io/File;
    .local v5, "stat":Landroid/os/StatFs;
    :goto_c
    return-wide v6

    .line 54
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v4    # "path":Ljava/io/File;
    .end local v5    # "stat":Landroid/os/StatFs;
    :cond_d
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 55
    .restart local v4    # "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 56
    .restart local v5    # "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 57
    .restart local v2    # "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 58
    .restart local v0    # "availableBlocks":J
    mul-long v6, v0, v2

    goto :goto_c
.end method

.method public static getFileOrDirSize(Ljava/io/File;)J
    .registers 9
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 68
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_9

    const-wide/16 v2, 0x0

    .line 79
    :cond_8
    :goto_8
    return-wide v2

    .line 69
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_8

    .line 71
    :cond_14
    const-wide/16 v2, 0x0

    .line 72
    .local v2, "length":J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 73
    .local v1, "list":[Ljava/io/File;
    if-eqz v1, :cond_8

    .line 74
    array-length v5, v1

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v5, :cond_8

    aget-object v0, v1, v4

    .line 75
    .local v0, "item":Ljava/io/File;
    invoke-static {v0}, Lorg/xutils/common/util/FileUtil;->getFileOrDirSize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 74
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e
.end method

.method public static isDiskAvailable()Z
    .registers 4

    .prologue
    .line 43
    invoke-static {}, Lorg/xutils/common/util/FileUtil;->getDiskAvailableSize()J

    move-result-wide v0

    .line 44
    .local v0, "size":J
    const-wide/32 v2, 0xa00000

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    const/4 v2, 0x1

    :goto_c
    return v2

    :cond_d
    const/4 v2, 0x0

    goto :goto_c
.end method
