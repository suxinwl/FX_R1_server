.class public Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;

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
    .registers 8
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
    iget-object p2, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 21
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p3

    const/16 v0, 0x10

    if-ne p3, v0, :cond_4a

    const/4 p1, 0x4

    .line 22
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 24
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p3

    const-string v1, "syntax error"

    if-ne p3, p1, :cond_44

    const/4 p1, 0x2

    .line 28
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 30
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p3

    if-ne p3, p1, :cond_3e

    .line 34
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v2

    const/16 p1, 0xd

    .line 35
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 36
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p3

    if-ne p3, p1, :cond_38

    .line 39
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 41
    new-instance p1, Ljava/sql/Time;

    invoke-direct {p1, v2, v3}, Ljava/sql/Time;-><init>(J)V

    return-object p1

    .line 37
    :cond_38
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_3e
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_44
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_4a
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_52

    return-object p2

    .line 50
    :cond_52
    instance-of p3, p1, Ljava/sql/Time;

    if-eqz p3, :cond_57

    return-object p1

    .line 52
    :cond_57
    instance-of p3, p1, Ljava/math/BigDecimal;

    if-eqz p3, :cond_67

    .line 53
    new-instance p2, Ljava/sql/Time;

    check-cast p1, Ljava/math/BigDecimal;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->longValue(Ljava/math/BigDecimal;)J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/sql/Time;-><init>(J)V

    return-object p2

    .line 54
    :cond_67
    instance-of p3, p1, Ljava/lang/Number;

    if-eqz p3, :cond_77

    .line 55
    new-instance p2, Ljava/sql/Time;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/sql/Time;-><init>(J)V

    return-object p2

    .line 56
    :cond_77
    instance-of p3, p1, Ljava/lang/String;

    if-eqz p3, :cond_c8

    .line 57
    check-cast p1, Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_84

    return-object p2

    .line 63
    :cond_84
    new-instance p2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result p3

    if-eqz p3, :cond_98

    .line 65
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_bf

    :cond_98
    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 68
    :goto_9a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_b0

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_b1

    const/16 v2, 0x39

    if-le v1, v2, :cond_ad

    goto :goto_b1

    :cond_ad
    add-int/lit8 v0, v0, 0x1

    goto :goto_9a

    :cond_b0
    const/4 p3, 0x1

    :cond_b1
    :goto_b1
    if-nez p3, :cond_bb

    .line 76
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 77
    invoke-static {p1}, Ljava/sql/Time;->valueOf(Ljava/lang/String;)Ljava/sql/Time;

    move-result-object p1

    return-object p1

    .line 80
    :cond_bb
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 82
    :goto_bf
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 83
    new-instance p1, Ljava/sql/Time;

    invoke-direct {p1, v0, v1}, Ljava/sql/Time;-><init>(J)V

    return-object p1

    .line 86
    :cond_c8
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "parse error"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_d1

    :goto_d0
    throw p1

    :goto_d1
    goto :goto_d0
.end method

.method public getFastMatchToken()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
