.class public final Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/drm/MediaDrmCallback;


# static fields
.field private static final MAX_MANUAL_REDIRECTS:I = 0x5


# instance fields
.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final defaultLicenseUrl:Ljava/lang/String;

.field private final forceDefaultLicenseUrl:Z

.field private final keyRequestProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .registers 4

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .registers 5

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_e

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 79
    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 80
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->defaultLicenseUrl:Ljava/lang/String;

    .line 81
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->forceDefaultLicenseUrl:Z

    .line 82
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    return-void
.end method

.method private static executePost(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/lang/String;[BLjava/util/Map;)[B
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;
        }
    .end annotation

    .line 168
    new-instance v0, Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 170
    new-instance p0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;-><init>()V

    .line 172
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p0

    .line 173
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setHttpRequestHeaders(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p0

    const/4 p1, 0x2

    .line 174
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setHttpMethod(I)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p0

    .line 175
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setHttpBody([B)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 176
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setFlags(I)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p0

    .line 177
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v2

    const/4 p0, 0x0

    move-object p1, v2

    .line 181
    :goto_2a
    :try_start_2a
    new-instance p2, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;

    invoke-direct {p2, v0, p1}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_57

    .line 183
    :try_start_2f
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_33
    .catch Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException; {:try_start_2f .. :try_end_33} :catch_39
    .catchall {:try_start_2f .. :try_end_33} :catchall_37

    .line 192
    :try_start_33
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_57

    return-object p0

    :catchall_37
    move-exception p0

    goto :goto_53

    :catch_39
    move-exception p3

    .line 185
    :try_start_3a
    invoke-static {p3, p0}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->getRedirectUrl(Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_52

    add-int/lit8 p0, p0, 0x1

    .line 190
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/DataSpec;->buildUpon()Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p1
    :try_end_4e
    .catchall {:try_start_3a .. :try_end_4e} :catchall_37

    .line 192
    :try_start_4e
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_57

    goto :goto_2a

    .line 187
    :cond_52
    :try_start_52
    throw p3
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_37

    .line 192
    :goto_53
    :try_start_53
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_57} :catch_57

    :catch_57
    move-exception p0

    move-object v7, p0

    .line 196
    new-instance p0, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;

    .line 198
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/net/Uri;

    .line 199
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v4

    .line 200
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getBytesRead()J

    move-result-wide v5

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Throwable;)V

    goto :goto_74

    :goto_73
    throw p0

    :goto_74
    goto :goto_73
.end method

.method private static getRedirectUrl(Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;I)Ljava/lang/String;
    .registers 5

    .line 210
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/4 v1, 0x0

    const/16 v2, 0x133

    if-eq v0, v2, :cond_d

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v2, 0x134

    if-ne v0, v2, :cond_12

    :cond_d
    const/4 v0, 0x5

    if-ge p1, v0, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    const/4 v0, 0x0

    if-nez p1, :cond_17

    return-object v0

    .line 216
    :cond_17
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->headerFields:Ljava/util/Map;

    if-eqz p0, :cond_32

    const-string p1, "Location"

    .line 218
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_32

    .line 219
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_32

    .line 220
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_32
    return-object v0
.end method


# virtual methods
.method public clearAllKeyRequestProperties()V
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    monitor-enter v0

    .line 114
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 115
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public clearKeyRequestProperty(Ljava/lang/String;)V
    .registers 4

    .line 105
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    monitor-enter v0

    .line 107
    :try_start_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public executeKeyRequest(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;
        }
    .end annotation

    .line 132
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->getLicenseServerUrl()Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->forceDefaultLicenseUrl:Z

    if-nez v1, :cond_e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 134
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->defaultLicenseUrl:Ljava/lang/String;

    .line 136
    :cond_10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 144
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 146
    sget-object v2, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 147
    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const-string v2, "text/xml"

    goto :goto_33

    :cond_26
    sget-object v2, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    .line 149
    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const-string v2, "application/json"

    goto :goto_33

    :cond_31
    const-string v2, "application/octet-stream"

    :goto_33
    const-string v3, "Content-Type"

    .line 150
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v2, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    const-string p1, "SOAPAction"

    const-string v2, "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense"

    .line 152
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_47
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    monitor-enter p1

    .line 157
    :try_start_4a
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 158
    monitor-exit p1
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_5b

    .line 159
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->getData()[B

    move-result-object p2

    invoke-static {p1, v0, p2, v1}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->executePost(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object p1

    return-object p1

    :catchall_5b
    move-exception p2

    .line 158
    :try_start_5c
    monitor-exit p1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p2

    .line 137
    :cond_5e
    new-instance p1, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;

    new-instance p2, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;-><init>()V

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 138
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v1

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 140
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    const-wide/16 v4, 0x0

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string p2, "No license URL"

    invoke-direct {v6, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Throwable;)V

    throw p1
.end method

.method public executeProvisionRequest(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;
        }
    .end annotation

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&signedRequest="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;->getData()[B

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 123
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 127
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    .line 123
    invoke-static {p2, p1, v1, v0}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->executePost(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object p1

    return-object p1
.end method

.method public setKeyRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 92
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    monitor-enter v0

    .line 95
    :try_start_9
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw p1
.end method
