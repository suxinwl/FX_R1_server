.class public Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez p2, :cond_a

    .line 32
    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void

    .line 36
    :cond_a
    instance-of p3, p2, [I

    const/16 p4, 0x2c

    const/16 p5, 0x5d

    const/4 v0, 0x0

    const/16 v1, 0x5b

    if-eqz p3, :cond_30

    .line 37
    check-cast p2, [I

    check-cast p2, [I

    .line 38
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 39
    :goto_1c
    array-length p3, p2

    if-ge v0, p3, :cond_2c

    if-eqz v0, :cond_24

    .line 41
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 43
    :cond_24
    aget p3, p2, v0

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 45
    :cond_2c
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 49
    :cond_30
    instance-of p3, p2, [S

    if-eqz p3, :cond_4f

    .line 50
    check-cast p2, [S

    check-cast p2, [S

    .line 51
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 52
    :goto_3b
    array-length p3, p2

    if-ge v0, p3, :cond_4b

    if-eqz v0, :cond_43

    .line 54
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 56
    :cond_43
    aget-short p3, p2, v0

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 58
    :cond_4b
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 62
    :cond_4f
    instance-of p3, p2, [J

    if-eqz p3, :cond_6e

    .line 63
    check-cast p2, [J

    check-cast p2, [J

    .line 65
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 66
    :goto_5a
    array-length p3, p2

    if-ge v0, p3, :cond_6a

    if-eqz v0, :cond_62

    .line 68
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 70
    :cond_62
    aget-wide v1, p2, v0

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 72
    :cond_6a
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 76
    :cond_6e
    instance-of p3, p2, [Z

    if-eqz p3, :cond_8d

    .line 77
    check-cast p2, [Z

    check-cast p2, [Z

    .line 78
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 79
    :goto_79
    array-length p3, p2

    if-ge v0, p3, :cond_89

    if-eqz v0, :cond_81

    .line 81
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 83
    :cond_81
    aget-boolean p3, p2, v0

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    .line 85
    :cond_89
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 89
    :cond_8d
    instance-of p3, p2, [F

    if-eqz p3, :cond_ba

    .line 90
    check-cast p2, [F

    check-cast p2, [F

    .line 91
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 92
    :goto_98
    array-length p3, p2

    if-ge v0, p3, :cond_b6

    if-eqz v0, :cond_a0

    .line 94
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 97
    :cond_a0
    aget p3, p2, v0

    .line 98
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 99
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_b3

    .line 101
    :cond_ac
    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    :goto_b3
    add-int/lit8 v0, v0, 0x1

    goto :goto_98

    .line 104
    :cond_b6
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 108
    :cond_ba
    instance-of p3, p2, [D

    if-eqz p3, :cond_e7

    .line 109
    check-cast p2, [D

    check-cast p2, [D

    .line 110
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 111
    :goto_c5
    array-length p3, p2

    if-ge v0, p3, :cond_e3

    if-eqz v0, :cond_cd

    .line 113
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 116
    :cond_cd
    aget-wide v1, p2, v0

    .line 117
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p3

    if-eqz p3, :cond_d9

    .line 118
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_e0

    .line 120
    :cond_d9
    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    :goto_e0
    add-int/lit8 v0, v0, 0x1

    goto :goto_c5

    .line 123
    :cond_e3
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 127
    :cond_e7
    instance-of p3, p2, [B

    if-eqz p3, :cond_f3

    .line 128
    check-cast p2, [B

    check-cast p2, [B

    .line 129
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeByteArray([B)V

    return-void

    .line 133
    :cond_f3
    check-cast p2, [C

    check-cast p2, [C

    .line 134
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString([C)V

    return-void
.end method
