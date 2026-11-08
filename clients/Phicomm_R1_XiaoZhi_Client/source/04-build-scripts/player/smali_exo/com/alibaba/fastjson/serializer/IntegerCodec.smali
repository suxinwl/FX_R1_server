.class public Lcom/alibaba/fastjson/serializer/IntegerCodec;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/IntegerCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
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

    .line 66
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 68
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x10

    const/16 v3, 0x8

    if-ne v1, v3, :cond_11

    .line 71
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 p1, 0x0

    return-object p1

    :cond_11
    const/4 v3, 0x2

    if-ne v1, v3, :cond_22

    .line 79
    :try_start_14
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result p1

    .line 80
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_4f

    :catch_20
    move-exception p1

    goto :goto_5e

    :cond_22
    const/4 v3, 0x3

    if-ne v1, v3, :cond_35

    .line 83
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    .line 84
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->intValue(Ljava/math/BigDecimal;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 85
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_4f

    :cond_35
    const/16 v0, 0xc

    if-ne v1, v0, :cond_47

    .line 88
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 89
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;)Ljava/lang/Object;

    .line 90
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_4f

    .line 92
    :cond_47
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p1

    .line 93
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_4f} :catch_20

    .line 105
    :goto_4f
    const-class p3, Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne p2, p3, :cond_5d

    .line 106
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    return-object p2

    :cond_5d
    return-object p1

    :goto_5e
    const-string p2, "parseInt error"

    if-eqz p3, :cond_76

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", field : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 101
    :cond_76
    new-instance p3, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p3, p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public getFastMatchToken()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 41
    move-object p3, p2

    check-cast p3, Ljava/lang/Number;

    if-nez p3, :cond_d

    .line 44
    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void

    .line 48
    :cond_d
    instance-of p2, p2, Ljava/lang/Long;

    if-eqz p2, :cond_19

    .line 49
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide p4

    invoke-virtual {p1, p4, p5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto :goto_20

    .line 51
    :cond_19
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 54
    :goto_20
    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 55
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 56
    const-class p3, Ljava/lang/Byte;

    if-ne p2, p3, :cond_36

    const/16 p2, 0x42

    .line 57
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3f

    .line 58
    :cond_36
    const-class p3, Ljava/lang/Short;

    if-ne p2, p3, :cond_3f

    const/16 p2, 0x53

    .line 59
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_3f
    :goto_3f
    return-void
.end method
