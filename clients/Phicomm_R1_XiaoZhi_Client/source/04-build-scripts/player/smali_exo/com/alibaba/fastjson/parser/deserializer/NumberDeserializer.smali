.class public Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
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

    .line 19
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 20
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x10

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a9

    .line 21
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_99

    const-class p1, Ljava/lang/Double;

    if-ne p2, p1, :cond_15

    goto/16 :goto_99

    .line 27
    :cond_15
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v3

    .line 28
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 30
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string p3, "short overflow : "

    if-eq p2, p1, :cond_71

    const-class p1, Ljava/lang/Short;

    if-ne p2, p1, :cond_27

    goto :goto_71

    .line 37
    :cond_27
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_49

    const-class p1, Ljava/lang/Byte;

    if-ne p2, p1, :cond_30

    goto :goto_49

    :cond_30
    const-wide/32 p1, -0x80000000

    cmp-long p3, v3, p1

    if-ltz p3, :cond_44

    const-wide/32 p1, 0x7fffffff

    cmp-long p3, v3, p1

    if-gtz p3, :cond_44

    long-to-int p1, v3

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 48
    :cond_44
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_49
    :goto_49
    const-wide/16 p1, 0x7f

    cmp-long v0, v3, p1

    if-gtz v0, :cond_5c

    const-wide/16 p1, -0x80

    cmp-long v0, v3, p1

    if-ltz v0, :cond_5c

    long-to-int p1, v3

    int-to-byte p1, p1

    .line 42
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 39
    :cond_5c
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_71
    :goto_71
    const-wide/16 p1, 0x7fff

    cmp-long v0, v3, p1

    if-gtz v0, :cond_84

    const-wide/16 p1, -0x8000

    cmp-long v0, v3, p1

    if-ltz v0, :cond_84

    long-to-int p1, v3

    int-to-short p1, p1

    .line 34
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 32
    :cond_84
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_99
    :goto_99
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 24
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 51
    :cond_a9
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_114

    .line 52
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_104

    const-class p1, Ljava/lang/Double;

    if-ne p2, p1, :cond_b9

    goto :goto_104

    .line 58
    :cond_b9
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_f4

    const-class p1, Ljava/lang/Short;

    if-ne p2, p1, :cond_c2

    goto :goto_f4

    .line 65
    :cond_c2
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_e4

    const-class p1, Ljava/lang/Byte;

    if-ne p2, p1, :cond_cb

    goto :goto_e4

    .line 72
    :cond_cb
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    .line 73
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 75
    sget-object p2, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result p2

    if-eqz p2, :cond_db

    return-object p1

    .line 78
    :cond_db
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 66
    :cond_e4
    :goto_e4
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    .line 67
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 68
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->byteValue(Ljava/math/BigDecimal;)B

    move-result p1

    .line 69
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 59
    :cond_f4
    :goto_f4
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    .line 60
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 61
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->shortValue(Ljava/math/BigDecimal;)S

    move-result p1

    .line 62
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 53
    :cond_104
    :goto_104
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 55
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 82
    :cond_114
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-ne v1, v2, :cond_142

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NaN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_142

    .line 83
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 85
    const-class p1, Ljava/lang/Double;

    if-ne p2, p1, :cond_137

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 86
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_141

    .line 87
    :cond_137
    const-class p1, Ljava/lang/Float;

    if-ne p2, p1, :cond_141

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 88
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :cond_141
    :goto_141
    return-object v3

    .line 93
    :cond_142
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_149

    return-object v3

    .line 99
    :cond_149
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_1a3

    const-class v0, Ljava/lang/Double;

    if-ne p2, v0, :cond_152

    goto :goto_1a3

    .line 107
    :cond_152
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_186

    const-class v0, Ljava/lang/Short;

    if-ne p2, v0, :cond_15b

    goto :goto_186

    .line 115
    :cond_15b
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_169

    const-class v0, Ljava/lang/Byte;

    if-ne p2, v0, :cond_164

    goto :goto_169

    .line 123
    :cond_164
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 117
    :cond_169
    :goto_169
    :try_start_169
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p1
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_16d} :catch_16e

    return-object p1

    :catch_16e
    move-exception p1

    .line 119
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseByte error, field : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 109
    :cond_186
    :goto_186
    :try_start_186
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p1
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_18a} :catch_18b

    return-object p1

    :catch_18b
    move-exception p1

    .line 111
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseShort error, field : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 101
    :cond_1a3
    :goto_1a3
    :try_start_1a3
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1a7} :catch_1a8

    return-object p1

    :catch_1a8
    move-exception p1

    .line 103
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseDouble error, field : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getFastMatchToken()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
