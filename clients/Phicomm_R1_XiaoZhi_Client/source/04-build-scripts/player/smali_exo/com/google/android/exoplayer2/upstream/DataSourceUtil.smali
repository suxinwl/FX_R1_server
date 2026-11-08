.class public final Lcom/google/android/exoplayer2/upstream/DataSourceUtil;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 84
    :try_start_2
    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/DataSource;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static readExactly(Lcom/google/android/exoplayer2/upstream/DataSource;I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_2f

    sub-int v2, p1, v1

    .line 66
    invoke-interface {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    add-int/2addr v1, v2

    goto :goto_3

    .line 68
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough data could be read: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    return-object v0
.end method

.method public static readToEnd(Lcom/google/android/exoplayer2/upstream/DataSource;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_6
    :goto_6
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1d

    .line 41
    array-length v1, v0

    if-ne v2, v1, :cond_13

    .line 42
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 44
    :cond_13
    array-length v1, v0

    sub-int/2addr v1, v2

    invoke-interface {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v1

    if-eq v1, v3, :cond_6

    add-int/2addr v2, v1

    goto :goto_6

    .line 49
    :cond_1d
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method
