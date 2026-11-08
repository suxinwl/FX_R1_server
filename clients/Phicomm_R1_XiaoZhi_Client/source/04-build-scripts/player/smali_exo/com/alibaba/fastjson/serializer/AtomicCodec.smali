.class public Lcom/alibaba/fastjson/serializer/AtomicCodec;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/AtomicCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

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
    .registers 7
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

    .line 95
    iget-object p3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p3

    const/16 v0, 0x8

    if-ne p3, v0, :cond_13

    .line 96
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 p2, 0x10

    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 p1, 0x0

    return-object p1

    .line 100
    :cond_13
    new-instance p3, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {p3}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 101
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;)V

    .line 103
    const-class p1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    const/4 v0, 0x0

    if-ne p2, p1, :cond_3e

    .line 104
    new-instance p1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    .line 105
    :goto_29
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p2

    if-ge v0, p2, :cond_3d

    .line 106
    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/JSONArray;->getInteger(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_3d
    return-object p1

    .line 112
    :cond_3e
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    .line 113
    :goto_47
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p2

    if-ge v0, p2, :cond_5b

    .line 114
    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/JSONArray;->getLong(I)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    :cond_5b
    return-object p1
.end method

.method public getFastMatchToken()I
    .registers 2

    const/16 v0, 0xe

    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 41
    instance-of p3, p2, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p3, :cond_10

    .line 42
    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    return-void

    .line 47
    :cond_10
    instance-of p3, p2, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz p3, :cond_1e

    .line 48
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 49
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    return-void

    .line 53
    :cond_1e
    instance-of p3, p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p3, :cond_33

    .line 54
    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_2d

    const-string p2, "true"

    goto :goto_2f

    :cond_2d
    const-string p2, "false"

    :goto_2f
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    return-void

    :cond_33
    if-nez p2, :cond_3b

    .line 60
    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void

    .line 64
    :cond_3b
    instance-of p3, p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    const/16 p4, 0x2c

    const/16 p5, 0x5d

    const/4 v0, 0x0

    const/16 v1, 0x5b

    if-eqz p3, :cond_64

    .line 65
    check-cast p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 66
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result p3

    .line 67
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_4f
    if-ge v0, p3, :cond_60

    .line 69
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v1

    if-eqz v0, :cond_5a

    .line 71
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 73
    :cond_5a
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 75
    :cond_60
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 80
    :cond_64
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 81
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result p3

    .line 82
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_6d
    if-ge v0, p3, :cond_7e

    .line 84
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v1

    if-eqz v0, :cond_78

    .line 86
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 88
    :cond_78
    invoke-virtual {p1, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    .line 90
    :cond_7e
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void
.end method
