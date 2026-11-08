.class public Lcom/alibaba/fastjson/serializer/ClobSeriliazer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/ClobSeriliazer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Lcom/alibaba/fastjson/serializer/ClobSeriliazer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ClobSeriliazer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ClobSeriliazer;->instance:Lcom/alibaba/fastjson/serializer/ClobSeriliazer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    .line 18
    :try_start_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeNull()V

    return-void

    .line 22
    :cond_6
    check-cast p2, Ljava/sql/Clob;

    .line 23
    invoke-interface {p2}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object p2

    .line 25
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_11
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_11} :catch_34

    const/16 p4, 0x800

    :try_start_13
    new-array p5, p4, [C

    :goto_15
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p2, p5, v0, p4}, Ljava/io/Reader;->read([CII)I

    move-result v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_2b
    .catch Ljava/sql/SQLException; {:try_start_13 .. :try_end_1a} :catch_34

    if-gez v1, :cond_27

    .line 40
    :try_start_1c
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 41
    invoke-virtual {p2}, Ljava/io/Reader;->close()V

    .line 42
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/sql/SQLException; {:try_start_1c .. :try_end_26} :catch_34

    return-void

    .line 34
    :cond_27
    :try_start_27
    invoke-virtual {p3, p5, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_2b
    .catch Ljava/sql/SQLException; {:try_start_27 .. :try_end_2a} :catch_34

    goto :goto_15

    :catch_2b
    move-exception p1

    .line 37
    :try_start_2c
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    const-string p3, "read string from reader error"

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_34
    .catch Ljava/sql/SQLException; {:try_start_2c .. :try_end_34} :catch_34

    :catch_34
    move-exception p1

    .line 44
    new-instance p2, Ljava/io/IOException;

    const-string p3, "write clob error"

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3e

    :goto_3d
    throw p2

    :goto_3e
    goto :goto_3d
.end method
