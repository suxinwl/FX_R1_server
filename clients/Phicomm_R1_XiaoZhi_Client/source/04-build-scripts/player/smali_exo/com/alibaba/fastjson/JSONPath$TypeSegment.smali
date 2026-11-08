.class Lcom/alibaba/fastjson/JSONPath$TypeSegment;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TypeSegment"
.end annotation


# static fields
.field public static final instance:Lcom/alibaba/fastjson/JSONPath$TypeSegment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2032
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$TypeSegment;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONPath$TypeSegment;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$TypeSegment;->instance:Lcom/alibaba/fastjson/JSONPath$TypeSegment;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 2031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2031
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/JSONPath$TypeSegment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    if-nez p3, :cond_5

    const-string p1, "null"

    return-object p1

    .line 2039
    :cond_5
    instance-of p1, p3, Ljava/util/Collection;

    if-eqz p1, :cond_c

    const-string p1, "array"

    return-object p1

    .line 2043
    :cond_c
    instance-of p1, p3, Ljava/lang/Number;

    if-eqz p1, :cond_13

    const-string p1, "number"

    return-object p1

    .line 2047
    :cond_13
    instance-of p1, p3, Ljava/lang/Boolean;

    if-eqz p1, :cond_1a

    const-string p1, "boolean"

    return-object p1

    .line 2051
    :cond_1a
    instance-of p1, p3, Ljava/lang/String;

    if-nez p1, :cond_2a

    instance-of p1, p3, Ljava/util/UUID;

    if-nez p1, :cond_2a

    instance-of p1, p3, Ljava/lang/Enum;

    if-eqz p1, :cond_27

    goto :goto_2a

    :cond_27
    const-string p1, "object"

    return-object p1

    :cond_2a
    :goto_2a
    const-string p1, "string"

    return-object p1
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .registers 4

    .line 2061
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
