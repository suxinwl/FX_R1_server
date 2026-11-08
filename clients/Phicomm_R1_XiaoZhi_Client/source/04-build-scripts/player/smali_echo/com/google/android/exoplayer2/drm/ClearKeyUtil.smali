.class final Lcom/google/android/exoplayer2/drm/ClearKeyUtil;
.super Ljava/lang/Object;
.source "ClearKeyUtil.java"


# static fields
.field private static final REQUEST_KIDS_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "ClearKeyUtil"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-string v0, "\"kids\":\\[\"(.*?)\"]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/drm/ClearKeyUtil;->REQUEST_KIDS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustRequestData([B)[B
    .registers 9
    .param p0, "request"    # [B

    .prologue
    const/4 v7, 0x1

    .line 43
    sget v5, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v6, 0x1b

    if-lt v5, v6, :cond_8

    .line 60
    .end local p0    # "request":[B
    :goto_7
    return-object p0

    .line 50
    .restart local p0    # "request":[B
    :cond_8
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "requestString":Ljava/lang/String;
    sget-object v5, Lcom/google/android/exoplayer2/drm/ClearKeyUtil;->REQUEST_KIDS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 52
    .local v3, "requestKidsMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_31

    .line 53
    const-string v5, "ClearKeyUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to adjust request data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 56
    :cond_31
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->start(I)I

    move-result v2

    .line 57
    .local v2, "kidsStartIndex":I
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->end(I)I

    move-result v1

    .line 58
    .local v1, "kidsEndIndex":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "adjustedRequestBuilder":Ljava/lang/StringBuilder;
    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/drm/ClearKeyUtil;->base64ToBase64Url(Ljava/lang/StringBuilder;II)V

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_7
.end method

.method public static adjustResponseData([B)[B
    .registers 9
    .param p0, "response"    # [B

    .prologue
    .line 70
    sget v5, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v6, 0x1b

    if-lt v5, v6, :cond_7

    .line 86
    .local v0, "e":Lorg/json/JSONException;
    :goto_6
    return-object p0

    .line 76
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_7
    :try_start_7
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    .local v4, "responseJson":Lorg/json/JSONObject;
    const-string v5, "keys"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 78
    .local v3, "keysArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_42

    .line 79
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 80
    .local v2, "key":Lorg/json/JSONObject;
    const-string v5, "k"

    const-string v6, "k"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/drm/ClearKeyUtil;->base64UrlToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v5, "kid"

    const-string v6, "kid"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/drm/ClearKeyUtil;->base64UrlToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 83
    .end local v2    # "key":Lorg/json/JSONObject;
    :cond_42
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_49} :catch_4b

    move-result-object p0

    goto :goto_6

    .line 84
    .end local v1    # "i":I
    .end local v3    # "keysArray":Lorg/json/JSONArray;
    .end local v4    # "responseJson":Lorg/json/JSONObject;
    :catch_4b
    move-exception v0

    .line 85
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v5, "ClearKeyUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to adjust response data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method private static base64ToBase64Url(Ljava/lang/StringBuilder;II)V
    .registers 5
    .param p0, "base64"    # Ljava/lang/StringBuilder;
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 91
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_19

    .line 92
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_1a

    .line 91
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    :sswitch_d
    const/16 v1, 0x2d

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_a

    .line 97
    :sswitch_13
    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_a

    .line 103
    :cond_19
    return-void

    .line 92
    :sswitch_data_1a
    .sparse-switch
        0x2b -> :sswitch_d
        0x2f -> :sswitch_13
    .end sparse-switch
.end method

.method private static base64UrlToBase64(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "base64"    # Ljava/lang/String;

    .prologue
    .line 106
    const/16 v0, 0x2d

    const/16 v1, 0x2b

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
