.class abstract Lorg/xutils/http/BaseParams;
.super Ljava/lang/Object;
.source "BaseParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/http/BaseParams$Header;,
        Lorg/xutils/http/BaseParams$ArrayItem;
    }
.end annotation


# instance fields
.field private asJsonContent:Z

.field private bodyContent:Ljava/lang/String;

.field private final bodyParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private charset:Ljava/lang/String;

.field private final fileParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/xutils/http/BaseParams$Header;",
            ">;"
        }
    .end annotation
.end field

.field private method:Lorg/xutils/http/HttpMethod;

.field private multipart:Z

.field private final queryStringParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private requestBody:Lorg/xutils/http/body/RequestBody;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    .line 39
    iput-boolean v1, p0, Lorg/xutils/http/BaseParams;->multipart:Z

    .line 40
    iput-boolean v1, p0, Lorg/xutils/http/BaseParams;->asJsonContent:Z

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xutils/http/BaseParams;->headers:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xutils/http/BaseParams;->fileParams:Ljava/util/List;

    return-void
.end method

.method private declared-synchronized checkBodyParams()V
    .registers 6

    .prologue
    .line 449
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_80

    move-result v3

    if-eqz v3, :cond_b

    .line 478
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 451
    :cond_b
    :try_start_b
    iget-object v3, p0, Lorg/xutils/http/BaseParams;->method:Lorg/xutils/http/HttpMethod;

    invoke-static {v3}, Lorg/xutils/http/HttpMethod;->permitsRequestBody(Lorg/xutils/http/HttpMethod;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    .line 452
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lorg/xutils/http/BaseParams;->requestBody:Lorg/xutils/http/body/RequestBody;

    if-eqz v3, :cond_2b

    .line 454
    :cond_1f
    iget-object v3, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    iget-object v4, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 455
    iget-object v3, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 458
    :cond_2b
    iget-object v3, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4b

    iget-boolean v3, p0, Lorg/xutils/http/BaseParams;->multipart:Z

    if-nez v3, :cond_3f

    iget-object v3, p0, Lorg/xutils/http/BaseParams;->fileParams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4b

    .line 459
    :cond_3f
    iget-object v3, p0, Lorg/xutils/http/BaseParams;->fileParams:Ljava/util/List;

    iget-object v4, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 460
    iget-object v3, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 463
    :cond_4b
    iget-boolean v3, p0, Lorg/xutils/http/BaseParams;->asJsonContent:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_54
    .catchall {:try_start_b .. :try_end_54} :catchall_80

    move-result v3

    if-nez v3, :cond_9

    .line 465
    const/4 v1, 0x0

    .line 466
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_58
    iget-object v3, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_83

    .line 467
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 471
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_68
    iget-object v3, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-direct {p0, v1, v3}, Lorg/xutils/http/BaseParams;->params2Json(Lorg/json/JSONObject;Ljava/util/List;)V

    .line 472
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    .line 473
    iget-object v3, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_78
    .catch Lorg/json/JSONException; {:try_start_58 .. :try_end_78} :catch_79
    .catchall {:try_start_58 .. :try_end_78} :catchall_80

    goto :goto_9

    .line 474
    :catch_79
    move-exception v0

    .line 475
    .local v0, "ex":Lorg/json/JSONException;
    :try_start_7a
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_80
    .catchall {:try_start_7a .. :try_end_80} :catchall_80

    .line 449
    .end local v0    # "ex":Lorg/json/JSONException;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catchall_80
    move-exception v3

    monitor-exit p0

    throw v3

    .line 469
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_83
    :try_start_83
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_88
    .catch Lorg/json/JSONException; {:try_start_83 .. :try_end_88} :catch_79
    .catchall {:try_start_83 .. :try_end_88} :catchall_80

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_68
.end method

.method private params2Json(Lorg/json/JSONObject;Ljava/util/List;)V
    .registers 14
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 481
    .local p2, "paramList":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/common/util/KeyValue;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v0, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 482
    .local v0, "arraySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 483
    .local v6, "tempData":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/json/JSONArray;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_51

    .line 484
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/xutils/common/util/KeyValue;

    .line 485
    .local v5, "kv":Lorg/xutils/common/util/KeyValue;
    iget-object v4, v5, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    .line 486
    .local v4, "key":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 483
    :cond_27
    :goto_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 488
    :cond_2a
    const/4 v3, 0x0

    .line 489
    .local v3, "ja":Lorg/json/JSONArray;
    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 490
    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ja":Lorg/json/JSONArray;
    check-cast v3, Lorg/json/JSONArray;

    .line 496
    .restart local v3    # "ja":Lorg/json/JSONArray;
    :goto_37
    iget-object v8, v5, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    invoke-static {v8}, Lorg/xutils/http/RequestParamsHelper;->parseJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 498
    instance-of v8, v5, Lorg/xutils/http/BaseParams$ArrayItem;

    if-eqz v8, :cond_27

    .line 499
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 492
    :cond_48
    new-instance v3, Lorg/json/JSONArray;

    .end local v3    # "ja":Lorg/json/JSONArray;
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 493
    .restart local v3    # "ja":Lorg/json/JSONArray;
    invoke-virtual {v6, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    .line 503
    .end local v3    # "ja":Lorg/json/JSONArray;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "kv":Lorg/xutils/common/util/KeyValue;
    :cond_51
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_59
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 504
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/json/JSONArray;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 505
    .restart local v4    # "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 506
    .restart local v3    # "ja":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v10, 0x1

    if-gt v9, v10, :cond_7e

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_82

    .line 507
    :cond_7e
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_59

    .line 509
    :cond_82
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 510
    .local v7, "value":Ljava/lang/Object;
    invoke-virtual {p1, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_59

    .line 513
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/json/JSONArray;>;"
    .end local v3    # "ja":Lorg/json/JSONArray;
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_8b
    return-void
.end method


# virtual methods
.method public addBodyParameter(Ljava/lang/String;Ljava/io/File;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/xutils/http/BaseParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "contentType"    # Ljava/lang/String;

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/xutils/http/BaseParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 230
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->fileParams:Ljava/util/List;

    new-instance v1, Lorg/xutils/common/util/KeyValue;

    invoke-direct {v1, p1, p2}, Lorg/xutils/common/util/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :goto_16
    return-void

    .line 232
    :cond_17
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->fileParams:Ljava/util/List;

    new-instance v1, Lorg/xutils/common/util/KeyValue;

    new-instance v2, Lorg/xutils/http/body/BodyItemWrapper;

    invoke-direct {v2, p2, p3, p4}, Lorg/xutils/http/body/BodyItemWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, p1, v2}, Lorg/xutils/common/util/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 196
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    new-instance v1, Lorg/xutils/common/util/KeyValue;

    invoke-direct {v1, p1, p2}, Lorg/xutils/common/util/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    :goto_10
    return-void

    .line 198
    :cond_11
    iput-object p2, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    goto :goto_10
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->headers:Ljava/util/List;

    new-instance v1, Lorg/xutils/http/BaseParams$Header;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lorg/xutils/http/BaseParams$Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 127
    if-nez p2, :cond_3

    .line 174
    .end local p2    # "value":Ljava/lang/Object;
    :cond_2
    :goto_2
    return-void

    .line 129
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    iget-object v4, p0, Lorg/xutils/http/BaseParams;->method:Lorg/xutils/http/HttpMethod;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lorg/xutils/http/BaseParams;->method:Lorg/xutils/http/HttpMethod;

    invoke-static {v4}, Lorg/xutils/http/HttpMethod;->permitsRequestBody(Lorg/xutils/http/HttpMethod;)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 130
    :cond_f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_98

    .line 131
    instance-of v4, p2, Ljava/io/File;

    if-nez v4, :cond_21

    instance-of v4, p2, Ljava/io/InputStream;

    if-nez v4, :cond_21

    instance-of v4, p2, [B

    if-eqz v4, :cond_2c

    .line 134
    :cond_21
    iget-object v4, p0, Lorg/xutils/http/BaseParams;->fileParams:Ljava/util/List;

    new-instance v5, Lorg/xutils/common/util/KeyValue;

    invoke-direct {v5, p1, p2}, Lorg/xutils/common/util/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 136
    :cond_2c
    instance-of v4, p2, Ljava/lang/Iterable;

    if-eqz v4, :cond_4b

    .line 137
    check-cast p2, Ljava/lang/Iterable;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 138
    .local v2, "item":Ljava/lang/Object;
    iget-object v5, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    new-instance v6, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-direct {v6, p1, v2}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 140
    .end local v2    # "item":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4b
    instance-of v4, p2, Lorg/json/JSONArray;

    if-eqz v4, :cond_6a

    move-object v0, p2

    .line 141
    check-cast v0, Lorg/json/JSONArray;

    .line 142
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 143
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_57
    if-ge v1, v3, :cond_2

    .line 144
    iget-object v4, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    new-instance v5, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 146
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v3    # "len":I
    :cond_6a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 147
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 148
    .restart local v3    # "len":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_79
    if-ge v1, v3, :cond_2

    .line 149
    iget-object v4, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    new-instance v5, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    .line 152
    .end local v1    # "i":I
    .end local v3    # "len":I
    :cond_8c
    iget-object v4, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    new-instance v5, Lorg/xutils/common/util/KeyValue;

    invoke-direct {v5, p1, p2}, Lorg/xutils/common/util/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 156
    :cond_98
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    goto/16 :goto_2

    .line 159
    :cond_a0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 160
    instance-of v4, p2, Ljava/lang/Iterable;

    if-eqz v4, :cond_c5

    .line 161
    check-cast p2, Ljava/lang/Iterable;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 162
    .restart local v2    # "item":Ljava/lang/Object;
    iget-object v5, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    new-instance v6, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-direct {v6, p1, v2}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b0

    .line 164
    .end local v2    # "item":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_c5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_e7

    .line 165
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 166
    .restart local v3    # "len":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_d4
    if-ge v1, v3, :cond_2

    .line 167
    iget-object v4, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    new-instance v5, Lorg/xutils/http/BaseParams$ArrayItem;

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Lorg/xutils/http/BaseParams$ArrayItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_d4

    .line 170
    .end local v1    # "i":I
    .end local v3    # "len":I
    :cond_e7
    iget-object v4, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    new-instance v5, Lorg/xutils/common/util/KeyValue;

    invoke-direct {v5, p1, p2}, Lorg/xutils/common/util/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 184
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    new-instance v1, Lorg/xutils/common/util/KeyValue;

    invoke-direct {v1, p1, p2}, Lorg/xutils/common/util/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_10
    return-void
.end method

.method public clearParams()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 317
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 318
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 319
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->fileParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 320
    iput-object v1, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    .line 321
    iput-object v1, p0, Lorg/xutils/http/BaseParams;->requestBody:Lorg/xutils/http/body/RequestBody;

    .line 322
    return-void
.end method

.method public getBodyContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 241
    invoke-direct {p0}, Lorg/xutils/http/BaseParams;->checkBodyParams()V

    .line 242
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyParams()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    invoke-direct {p0}, Lorg/xutils/http/BaseParams;->checkBodyParams()V

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getFileParams()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    invoke-direct {p0}, Lorg/xutils/http/BaseParams;->checkBodyParams()V

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->fileParams:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getHeaders()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/xutils/http/BaseParams$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->headers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getMethod()Lorg/xutils/http/HttpMethod;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/xutils/http/BaseParams;->method:Lorg/xutils/http/HttpMethod;

    return-object v0
.end method

.method public getParams(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/common/util/KeyValue;>;"
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 293
    .local v0, "kv":Lorg/xutils/common/util/KeyValue;
    if-nez p1, :cond_21

    iget-object v3, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    if-nez v3, :cond_21

    .line 294
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 295
    :cond_21
    if-eqz p1, :cond_b

    iget-object v3, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 296
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 299
    .end local v0    # "kv":Lorg/xutils/common/util/KeyValue;
    :cond_2f
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_35
    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 300
    .restart local v0    # "kv":Lorg/xutils/common/util/KeyValue;
    if-nez p1, :cond_4b

    iget-object v3, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    if-nez v3, :cond_4b

    .line 301
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 302
    :cond_4b
    if-eqz p1, :cond_35

    iget-object v3, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 303
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 306
    .end local v0    # "kv":Lorg/xutils/common/util/KeyValue;
    :cond_59
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->fileParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5f
    :goto_5f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 307
    .restart local v0    # "kv":Lorg/xutils/common/util/KeyValue;
    if-nez p1, :cond_75

    iget-object v3, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    if-nez v3, :cond_75

    .line 308
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 309
    :cond_75
    if-eqz p1, :cond_5f

    iget-object v3, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 310
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 313
    .end local v0    # "kv":Lorg/xutils/common/util/KeyValue;
    :cond_83
    return-object v1
.end method

.method public getQueryStringParams()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    invoke-direct {p0}, Lorg/xutils/http/BaseParams;->checkBodyParams()V

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRequestBody()Lorg/xutils/http/body/RequestBody;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 359
    invoke-direct {p0}, Lorg/xutils/http/BaseParams;->checkBodyParams()V

    .line 360
    iget-object v5, p0, Lorg/xutils/http/BaseParams;->requestBody:Lorg/xutils/http/body/RequestBody;

    if-eqz v5, :cond_b

    .line 361
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->requestBody:Lorg/xutils/http/body/RequestBody;

    .line 399
    :cond_a
    :goto_a
    return-object v2

    .line 363
    :cond_b
    const/4 v2, 0x0

    .line 364
    .local v2, "result":Lorg/xutils/http/body/RequestBody;
    iget-object v5, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 365
    new-instance v2, Lorg/xutils/http/body/StringBody;

    .end local v2    # "result":Lorg/xutils/http/body/RequestBody;
    iget-object v5, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    iget-object v6, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Lorg/xutils/http/body/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "result":Lorg/xutils/http/body/RequestBody;
    goto :goto_a

    .line 366
    :cond_1e
    iget-boolean v5, p0, Lorg/xutils/http/BaseParams;->multipart:Z

    if-nez v5, :cond_2a

    iget-object v5, p0, Lorg/xutils/http/BaseParams;->fileParams:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_c0

    .line 367
    :cond_2a
    iget-boolean v5, p0, Lorg/xutils/http/BaseParams;->multipart:Z

    if-nez v5, :cond_b3

    iget-object v5, p0, Lorg/xutils/http/BaseParams;->fileParams:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v6, :cond_b3

    .line 368
    iget-object v5, p0, Lorg/xutils/http/BaseParams;->fileParams:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/common/util/KeyValue;

    .line 369
    .local v1, "kv":Lorg/xutils/common/util/KeyValue;
    const/4 v0, 0x0

    .line 370
    .local v0, "contentType":Ljava/lang/String;
    iget-object v3, v1, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    .line 371
    .local v3, "value":Ljava/lang/Object;
    instance-of v5, v3, Lorg/xutils/http/body/BodyItemWrapper;

    if-eqz v5, :cond_5a

    move-object v4, v3

    .line 372
    check-cast v4, Lorg/xutils/http/body/BodyItemWrapper;

    .line 373
    .local v4, "wrapper":Lorg/xutils/http/body/BodyItemWrapper;
    invoke-virtual {v4}, Lorg/xutils/http/body/BodyItemWrapper;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 374
    invoke-virtual {v4}, Lorg/xutils/http/body/BodyItemWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 376
    .end local v4    # "wrapper":Lorg/xutils/http/body/BodyItemWrapper;
    :cond_5a
    instance-of v5, v3, Ljava/io/File;

    if-eqz v5, :cond_66

    .line 377
    new-instance v2, Lorg/xutils/http/body/FileBody;

    .end local v2    # "result":Lorg/xutils/http/body/RequestBody;
    check-cast v3, Ljava/io/File;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-direct {v2, v3, v0}, Lorg/xutils/http/body/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v2    # "result":Lorg/xutils/http/body/RequestBody;
    goto :goto_a

    .line 378
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_66
    instance-of v5, v3, Ljava/io/InputStream;

    if-eqz v5, :cond_72

    .line 379
    new-instance v2, Lorg/xutils/http/body/InputStreamBody;

    .end local v2    # "result":Lorg/xutils/http/body/RequestBody;
    check-cast v3, Ljava/io/InputStream;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-direct {v2, v3, v0}, Lorg/xutils/http/body/InputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .restart local v2    # "result":Lorg/xutils/http/body/RequestBody;
    goto :goto_a

    .line 380
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_72
    instance-of v5, v3, [B

    if-eqz v5, :cond_85

    .line 381
    new-instance v2, Lorg/xutils/http/body/InputStreamBody;

    .end local v2    # "result":Lorg/xutils/http/body/RequestBody;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    check-cast v3, [B

    .end local v3    # "value":Ljava/lang/Object;
    check-cast v3, [B

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v5, v0}, Lorg/xutils/http/body/InputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .restart local v2    # "result":Lorg/xutils/http/body/RequestBody;
    goto :goto_a

    .line 382
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_85
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_97

    .line 384
    new-instance v2, Lorg/xutils/http/body/StringBody;

    .end local v2    # "result":Lorg/xutils/http/body/RequestBody;
    check-cast v3, Ljava/lang/String;

    .end local v3    # "value":Ljava/lang/Object;
    iget-object v5, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Lorg/xutils/http/body/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .restart local v2    # "result":Lorg/xutils/http/body/RequestBody;
    invoke-interface {v2, v0}, Lorg/xutils/http/body/RequestBody;->setContentType(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 387
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_97
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Some params will be ignored for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/xutils/http/BaseParams;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 392
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v1    # "kv":Lorg/xutils/common/util/KeyValue;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_b3
    iput-boolean v6, p0, Lorg/xutils/http/BaseParams;->multipart:Z

    .line 393
    new-instance v2, Lorg/xutils/http/body/MultipartBody;

    .end local v2    # "result":Lorg/xutils/http/body/RequestBody;
    iget-object v5, p0, Lorg/xutils/http/BaseParams;->fileParams:Ljava/util/List;

    iget-object v6, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Lorg/xutils/http/body/MultipartBody;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .restart local v2    # "result":Lorg/xutils/http/body/RequestBody;
    goto/16 :goto_a

    .line 395
    :cond_c0
    iget-object v5, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 396
    new-instance v2, Lorg/xutils/http/body/UrlEncodedParamsBody;

    .end local v2    # "result":Lorg/xutils/http/body/RequestBody;
    iget-object v5, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    iget-object v6, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Lorg/xutils/http/body/UrlEncodedParamsBody;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .restart local v2    # "result":Lorg/xutils/http/body/RequestBody;
    goto/16 :goto_a
.end method

.method public getStringParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 274
    .local v0, "kv":Lorg/xutils/common/util/KeyValue;
    if-nez p1, :cond_1d

    iget-object v2, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    if-nez v2, :cond_1d

    .line 275
    invoke-virtual {v0}, Lorg/xutils/common/util/KeyValue;->getValueStr()Ljava/lang/String;

    move-result-object v1

    .line 287
    .end local v0    # "kv":Lorg/xutils/common/util/KeyValue;
    :goto_1c
    return-object v1

    .line 276
    .restart local v0    # "kv":Lorg/xutils/common/util/KeyValue;
    :cond_1d
    if-eqz p1, :cond_6

    iget-object v2, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 277
    invoke-virtual {v0}, Lorg/xutils/common/util/KeyValue;->getValueStr()Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    .line 280
    .end local v0    # "kv":Lorg/xutils/common/util/KeyValue;
    :cond_2c
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 281
    .restart local v0    # "kv":Lorg/xutils/common/util/KeyValue;
    if-nez p1, :cond_49

    iget-object v2, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    if-nez v2, :cond_49

    .line 282
    invoke-virtual {v0}, Lorg/xutils/common/util/KeyValue;->getValueStr()Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    .line 283
    :cond_49
    if-eqz p1, :cond_32

    iget-object v2, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 284
    invoke-virtual {v0}, Lorg/xutils/common/util/KeyValue;->getValueStr()Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    .line 287
    .end local v0    # "kv":Lorg/xutils/common/util/KeyValue;
    :cond_58
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public getStringParams()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    .line 266
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 267
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/common/util/KeyValue;>;"
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 268
    iget-object v1, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 269
    return-object v0
.end method

.method public isAsJsonContent()Z
    .registers 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/xutils/http/BaseParams;->asJsonContent:Z

    return v0
.end method

.method public isMultipart()Z
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/xutils/http/BaseParams;->multipart:Z

    return v0
.end method

.method public removeParameter(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 325
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 326
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 327
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/xutils/common/util/KeyValue;>;"
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 328
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/common/util/KeyValue;

    .line 329
    .local v1, "kv":Lorg/xutils/common/util/KeyValue;
    iget-object v2, v1, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 330
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    .line 334
    .end local v1    # "kv":Lorg/xutils/common/util/KeyValue;
    :cond_24
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 335
    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 336
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/common/util/KeyValue;

    .line 337
    .restart local v1    # "kv":Lorg/xutils/common/util/KeyValue;
    iget-object v2, v1, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 338
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2a

    .line 342
    .end local v1    # "kv":Lorg/xutils/common/util/KeyValue;
    :cond_42
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->fileParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 343
    :cond_48
    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 344
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/common/util/KeyValue;

    .line 345
    .restart local v1    # "kv":Lorg/xutils/common/util/KeyValue;
    iget-object v2, v1, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 346
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_48

    .line 350
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/xutils/common/util/KeyValue;>;"
    .end local v1    # "kv":Lorg/xutils/common/util/KeyValue;
    :cond_60
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    .line 352
    :cond_63
    return-void
.end method

.method public setAsJsonContent(Z)V
    .registers 2
    .param p1, "asJsonContent"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lorg/xutils/http/BaseParams;->asJsonContent:Z

    .line 90
    return-void
.end method

.method public setBodyContent(Ljava/lang/String;)V
    .registers 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .registers 3
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 50
    iput-object p1, p0, Lorg/xutils/http/BaseParams;->charset:Ljava/lang/String;

    .line 52
    :cond_8
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v0, Lorg/xutils/http/BaseParams$Header;

    const/4 v3, 0x1

    invoke-direct {v0, p1, p2, v3}, Lorg/xutils/http/BaseParams$Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 100
    .local v0, "header":Lorg/xutils/http/BaseParams$Header;
    iget-object v3, p0, Lorg/xutils/http/BaseParams;->headers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 101
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/xutils/http/BaseParams$Header;>;"
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 102
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xutils/common/util/KeyValue;

    .line 103
    .local v2, "kv":Lorg/xutils/common/util/KeyValue;
    iget-object v3, v2, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 104
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    .line 107
    .end local v2    # "kv":Lorg/xutils/common/util/KeyValue;
    :cond_24
    iget-object v3, p0, Lorg/xutils/http/BaseParams;->headers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public setMethod(Lorg/xutils/http/HttpMethod;)V
    .registers 2
    .param p1, "method"    # Lorg/xutils/http/HttpMethod;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/xutils/http/BaseParams;->method:Lorg/xutils/http/HttpMethod;

    .line 60
    return-void
.end method

.method public setMultipart(Z)V
    .registers 2
    .param p1, "multipart"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lorg/xutils/http/BaseParams;->multipart:Z

    .line 72
    return-void
.end method

.method public setRequestBody(Lorg/xutils/http/body/RequestBody;)V
    .registers 2
    .param p1, "requestBody"    # Lorg/xutils/http/body/RequestBody;

    .prologue
    .line 355
    iput-object p1, p0, Lorg/xutils/http/BaseParams;->requestBody:Lorg/xutils/http/body/RequestBody;

    .line 356
    return-void
.end method

.method public toJSONString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 403
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 404
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/common/util/KeyValue;>;"
    iget-object v4, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 405
    iget-object v4, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 407
    const/4 v1, 0x0

    .line 408
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_1d
    iget-object v4, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 409
    new-instance v2, Lorg/json/JSONObject;

    iget-object v4, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 413
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_2d
    invoke-direct {p0, v1, v3}, Lorg/xutils/http/BaseParams;->params2Json(Lorg/json/JSONObject;Ljava/util/List;)V

    .line 414
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 411
    :cond_35
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_3a} :catch_3c

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_2d

    .line 415
    :catch_3c
    move-exception v0

    .line 416
    .local v0, "ex":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 422
    invoke-direct {p0}, Lorg/xutils/http/BaseParams;->checkBodyParams()V

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_43

    .line 425
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->queryStringParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 426
    .local v0, "kv":Lorg/xutils/common/util/KeyValue;
    iget-object v3, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 428
    .end local v0    # "kv":Lorg/xutils/common/util/KeyValue;
    :cond_3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 431
    :cond_43
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->method:Lorg/xutils/http/HttpMethod;

    invoke-static {v2}, Lorg/xutils/http/HttpMethod;->permitsRequestBody(Lorg/xutils/http/HttpMethod;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 432
    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_67

    .line 434
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->bodyContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    :cond_5d
    :goto_5d
    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    :cond_62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 436
    :cond_67
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5d

    .line 437
    iget-object v2, p0, Lorg/xutils/http/BaseParams;->bodyParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_75
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_99

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 438
    .restart local v0    # "kv":Lorg/xutils/common/util/KeyValue;
    iget-object v3, v0, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_75

    .line 440
    .end local v0    # "kv":Lorg/xutils/common/util/KeyValue;
    :cond_99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_5d
.end method
