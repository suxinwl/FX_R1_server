.class public Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessableDeserializer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field public final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessableDeserializer;->type:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
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

    .line 22
    :try_start_0
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessableDeserializer;->type:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_d

    .line 27
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 24
    :catch_d
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "craete instance error"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFastMatchToken()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method
