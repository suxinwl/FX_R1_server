.class public Lcom/alibaba/fastjson/serializer/MiscCodec;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field private static FILE_RELATIVE_PATH_SUPPORT:Z

.field public static final instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

.field private static method_paths_get:Ljava/lang/reflect/Method;

.field private static method_paths_get_error:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 58
    new-instance v0, Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MiscCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    const/4 v0, 0x0

    .line 60
    sput-boolean v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get_error:Z

    const-string v0, "fastjson.deserializer.fileRelativePathSupport"

    .line 63
    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->FILE_RELATIVE_PATH_SUPPORT:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static toString(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 4

    .line 171
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    .line 173
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 175
    new-instance p0, Ljava/io/StringWriter;

    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    .line 176
    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v2, p0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 177
    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    move-exception p0

    .line 179
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "xml node to string error"

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const-string p3, "Path deserialize erorr"

    .line 200
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 202
    const-class v1, Ljava/net/InetSocketAddress;

    const/16 v2, 0xd

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/16 v5, 0x11

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-ne p2, v1, :cond_79

    .line 203
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p2

    const/16 p3, 0x8

    if-ne p2, p3, :cond_1d

    .line 204
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-object v6

    :cond_1d
    const/16 p2, 0xc

    .line 208
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 213
    :goto_22
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object p2

    .line 214
    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const-string p3, "address"

    .line 216
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3e

    .line 217
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 218
    const-class p2, Ljava/net/InetAddress;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/net/InetAddress;

    move-object v6, p2

    goto :goto_66

    :cond_3e
    const-string p3, "port"

    .line 219
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_60

    .line 220
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 221
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p2

    if-ne p2, v4, :cond_58

    .line 224
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result p2

    .line 225
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move v7, p2

    goto :goto_66

    .line 222
    :cond_58
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "port is not int"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 227
    :cond_60
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 228
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    .line 231
    :goto_66
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p2

    if-ne p2, v3, :cond_70

    .line 232
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_22

    .line 239
    :cond_70
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 241
    new-instance p1, Ljava/net/InetSocketAddress;

    invoke-direct {p1, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object p1

    .line 246
    :cond_79
    iget v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    if-ne v1, v4, :cond_b1

    .line 247
    iput v7, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 248
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 250
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v3, 0x4

    const-string v8, "syntax error"

    if-ne v1, v3, :cond_ab

    .line 251
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    const-string v3, "val"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 254
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 259
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 261
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    .line 263
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto :goto_b5

    .line 252
    :cond_a5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 256
    :cond_ab
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 265
    :cond_b1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    :goto_b5
    if-nez v1, :cond_b9

    move-object v1, v6

    goto :goto_bf

    .line 272
    :cond_b9
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_21d

    .line 273
    check-cast v1, Ljava/lang/String;

    :goto_bf
    if-eqz v1, :cond_21c

    .line 299
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c9

    goto/16 :goto_21c

    .line 303
    :cond_c9
    const-class v2, Ljava/util/UUID;

    if-ne p2, v2, :cond_d2

    .line 304
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    return-object p1

    .line 307
    :cond_d2
    const-class v2, Ljava/net/URI;

    if-ne p2, v2, :cond_db

    .line 308
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1

    .line 311
    :cond_db
    const-class v2, Ljava/net/URL;

    if-ne p2, v2, :cond_ee

    .line 313
    :try_start_df
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_e4
    .catch Ljava/net/MalformedURLException; {:try_start_df .. :try_end_e4} :catch_e5

    return-object p1

    :catch_e5
    move-exception p1

    .line 315
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    const-string p3, "create url error"

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 319
    :cond_ee
    const-class v2, Ljava/util/regex/Pattern;

    if-ne p2, v2, :cond_f7

    .line 320
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    return-object p1

    .line 323
    :cond_f7
    const-class v2, Ljava/util/Locale;

    if-ne p2, v2, :cond_100

    .line 324
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    return-object p1

    .line 327
    :cond_100
    const-class v2, Ljava/text/SimpleDateFormat;

    if-ne p2, v2, :cond_115

    .line 328
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getLocale()Ljava/util/Locale;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 329
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object p1

    .line 333
    :cond_115
    const-class v0, Ljava/net/InetAddress;

    if-eq p2, v0, :cond_20e

    const-class v0, Ljava/net/Inet4Address;

    if-eq p2, v0, :cond_20e

    const-class v0, Ljava/net/Inet6Address;

    if-ne p2, v0, :cond_123

    goto/16 :goto_20e

    .line 341
    :cond_123
    const-class v0, Ljava/io/File;

    if-ne p2, v0, :cond_142

    const-string p1, ".."

    .line 342
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_13c

    sget-boolean p1, Lcom/alibaba/fastjson/serializer/MiscCodec;->FILE_RELATIVE_PATH_SUPPORT:Z

    if-eqz p1, :cond_134

    goto :goto_13c

    .line 343
    :cond_134
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "file relative path not support."

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 346
    :cond_13c
    :goto_13c
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 349
    :cond_142
    const-class v0, Ljava/util/TimeZone;

    if-ne p2, v0, :cond_14b

    .line 350
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    return-object p1

    .line 353
    :cond_14b
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_155

    .line 354
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 355
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 358
    :cond_155
    const-class v0, Ljava/lang/Class;

    if-ne p2, v0, :cond_166

    .line 359
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {v1, p1, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 362
    :cond_166
    const-class p1, Ljava/nio/charset/Charset;

    if-ne p2, p1, :cond_16f

    .line 363
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1

    .line 366
    :cond_16f
    const-class p1, Ljava/util/Currency;

    if-ne p2, p1, :cond_178

    .line 367
    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p1

    return-object p1

    .line 370
    :cond_178
    const-class p1, Lcom/alibaba/fastjson/JSONPath;

    if-ne p2, p1, :cond_182

    .line 371
    new-instance p1, Lcom/alibaba/fastjson/JSONPath;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 376
    :cond_182
    instance-of p1, p2, Ljava/lang/Class;

    const-string v0, "MiscCodec not support "

    if-eqz p1, :cond_1f5

    .line 377
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.nio.file.Path"

    .line 379
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e0

    const/4 p2, 0x1

    .line 381
    :try_start_197
    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1b7

    sget-boolean v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get_error:Z

    if-nez v2, :cond_1b7

    const-string v2, "java.nio.file.Paths"

    .line 382
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    new-array v5, v4, [Ljava/lang/Class;

    .line 383
    const-class v8, Ljava/lang/String;

    aput-object v8, v5, v7

    const-class v8, [Ljava/lang/String;

    aput-object v8, v5, p2

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;

    .line 385
    :cond_1b7
    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1ca

    .line 386
    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v7

    new-array v1, v7, [Ljava/lang/String;

    aput-object v1, v3, p2

    invoke-virtual {v2, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 389
    :cond_1ca
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v1, p3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1d0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_197 .. :try_end_1d0} :catch_1de
    .catch Ljava/lang/IllegalAccessException; {:try_start_197 .. :try_end_1d0} :catch_1d7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_197 .. :try_end_1d0} :catch_1d0

    :catch_1d0
    move-exception p1

    .line 395
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1d7
    move-exception p1

    .line 393
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 391
    :catch_1de
    sput-boolean p2, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get_error:Z

    .line 399
    :cond_1e0
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 402
    :cond_1f5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 335
    :cond_20e
    :goto_20e
    :try_start_20e
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1
    :try_end_212
    .catch Ljava/net/UnknownHostException; {:try_start_20e .. :try_end_212} :catch_213

    return-object p1

    :catch_213
    move-exception p1

    .line 337
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    const-string p3, "deserialize inet adress error"

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_21c
    :goto_21c
    return-object v6

    .line 275
    :cond_21d
    instance-of p1, v1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_257

    .line 276
    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    .line 278
    const-class p1, Ljava/util/Currency;

    if-ne p2, p1, :cond_241

    const-string p1, "currency"

    .line 279
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_234

    .line 281
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p1

    return-object p1

    :cond_234
    const-string p1, "currencyCode"

    .line 284
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_241

    .line 286
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p1

    return-object p1

    .line 290
    :cond_241
    const-class p1, Ljava/util/Map$Entry;

    if-ne p2, p1, :cond_252

    .line 291
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 294
    :cond_252
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 296
    :cond_257
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "expect string"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_260

    :goto_25f
    throw p1

    :goto_260
    goto :goto_25f
.end method

.method public getFastMatchToken()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object p3, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez p2, :cond_8

    .line 71
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 75
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p5

    .line 78
    const-class v0, Ljava/text/SimpleDateFormat;

    const/16 v1, 0x2c

    const/16 v2, 0x7d

    const/16 v3, 0x7b

    if-ne p5, v0, :cond_47

    .line 79
    move-object p5, p2

    check-cast p5, Ljava/text/SimpleDateFormat;

    invoke-virtual {p5}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p5

    .line 81
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_127

    .line 82
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p4, :cond_127

    .line 83
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 84
    sget-object p4, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    const-string p1, "val"

    .line 86
    invoke-virtual {p3, v1, p1, p5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 93
    :cond_47
    const-class p4, Ljava/lang/Class;

    if-ne p5, p4, :cond_53

    .line 94
    check-cast p2, Ljava/lang/Class;

    .line 95
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_127

    .line 96
    :cond_53
    const-class p4, Ljava/net/InetSocketAddress;

    if-ne p5, p4, :cond_7d

    .line 97
    check-cast p2, Ljava/net/InetSocketAddress;

    .line 99
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p4

    .line 101
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    if-eqz p4, :cond_6d

    const-string p5, "address"

    .line 103
    invoke-virtual {p3, p5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 105
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_6d
    const-string p1, "port"

    .line 107
    invoke-virtual {p3, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 109
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 111
    :cond_7d
    instance-of p4, p2, Ljava/io/File;

    if-eqz p4, :cond_89

    .line 112
    check-cast p2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_127

    .line 113
    :cond_89
    instance-of p4, p2, Ljava/net/InetAddress;

    if-eqz p4, :cond_95

    .line 114
    check-cast p2, Ljava/net/InetAddress;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_127

    .line 115
    :cond_95
    instance-of p4, p2, Ljava/util/TimeZone;

    if-eqz p4, :cond_a1

    .line 116
    check-cast p2, Ljava/util/TimeZone;

    .line 117
    invoke-virtual {p2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_127

    .line 118
    :cond_a1
    instance-of p4, p2, Ljava/util/Currency;

    if-eqz p4, :cond_ad

    .line 119
    check-cast p2, Ljava/util/Currency;

    .line 120
    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_127

    .line 121
    :cond_ad
    instance-of p4, p2, Lcom/alibaba/fastjson/JSONStreamAware;

    if-eqz p4, :cond_b7

    .line 122
    check-cast p2, Lcom/alibaba/fastjson/JSONStreamAware;

    .line 123
    invoke-interface {p2, p3}, Lcom/alibaba/fastjson/JSONStreamAware;->writeJSONString(Ljava/lang/Appendable;)V

    return-void

    .line 125
    :cond_b7
    instance-of p4, p2, Ljava/util/Iterator;

    if-eqz p4, :cond_c1

    .line 126
    check-cast p2, Ljava/util/Iterator;

    .line 127
    invoke-virtual {p0, p1, p3, p2}, Lcom/alibaba/fastjson/serializer/MiscCodec;->writeIterator(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/util/Iterator;)V

    return-void

    .line 129
    :cond_c1
    instance-of p4, p2, Ljava/lang/Iterable;

    if-eqz p4, :cond_cf

    .line 130
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 131
    invoke-virtual {p0, p1, p3, p2}, Lcom/alibaba/fastjson/serializer/MiscCodec;->writeIterator(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/util/Iterator;)V

    return-void

    .line 133
    :cond_cf
    instance-of p4, p2, Ljava/util/Map$Entry;

    if-eqz p4, :cond_109

    .line 134
    check-cast p2, Ljava/util/Map$Entry;

    .line 135
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    .line 136
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 138
    instance-of p5, p4, Ljava/lang/String;

    if-eqz p5, :cond_f7

    .line 139
    check-cast p4, Ljava/lang/String;

    .line 141
    instance-of p5, p2, Ljava/lang/String;

    if-eqz p5, :cond_ed

    .line 142
    check-cast p2, Ljava/lang/String;

    .line 143
    invoke-virtual {p3, v3, p4, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuoteCheck(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_105

    .line 145
    :cond_ed
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 146
    invoke-virtual {p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto :goto_105

    .line 150
    :cond_f7
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 151
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    const/16 p4, 0x3a

    .line 152
    invoke-virtual {p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 153
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 155
    :goto_105
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 157
    :cond_109
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p4, "net.sf.json.JSONNull"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11d

    .line 158
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 160
    :cond_11d
    instance-of p1, p2, Lorg/w3c/dom/Node;

    if-eqz p1, :cond_12b

    .line 161
    check-cast p2, Lorg/w3c/dom/Node;

    invoke-static {p2}, Lcom/alibaba/fastjson/serializer/MiscCodec;->toString(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p5

    .line 166
    :cond_127
    :goto_127
    invoke-virtual {p3, p5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    return-void

    .line 163
    :cond_12b
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "not support class : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected writeIterator(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/util/Iterator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/serializer/JSONSerializer;",
            "Lcom/alibaba/fastjson/serializer/SerializeWriter;",
            "Ljava/util/Iterator<",
            "*>;)V"
        }
    .end annotation

    const/16 v0, 0x5b

    .line 185
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v0, 0x0

    .line 186
    :goto_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    if-eqz v0, :cond_13

    const/16 v1, 0x2c

    .line 188
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 190
    :cond_13
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 191
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1d
    const/16 p1, 0x5d

    .line 194
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void
.end method
