.class public Lcom/alibaba/fastjson/serializer/AdderSerializer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/AdderSerializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Lcom/alibaba/fastjson/serializer/AdderSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/AdderSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/AdderSerializer;->instance:Lcom/alibaba/fastjson/serializer/AdderSerializer;

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
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 16
    instance-of p3, p2, Ljava/util/concurrent/atomic/LongAdder;

    const/16 p4, 0x7d

    const-string p5, "value"

    const/16 v0, 0x7b

    if-eqz p3, :cond_19

    .line 17
    check-cast p2, Ljava/util/concurrent/atomic/LongAdder;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/LongAdder;->longValue()J

    move-result-wide p2

    invoke-virtual {p1, v0, p5, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;J)V

    .line 18
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_29

    .line 19
    :cond_19
    instance-of p3, p2, Ljava/util/concurrent/atomic/DoubleAdder;

    if-eqz p3, :cond_29

    .line 20
    check-cast p2, Ljava/util/concurrent/atomic/DoubleAdder;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/DoubleAdder;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p1, v0, p5, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;D)V

    .line 21
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_29
    :goto_29
    return-void
.end method
