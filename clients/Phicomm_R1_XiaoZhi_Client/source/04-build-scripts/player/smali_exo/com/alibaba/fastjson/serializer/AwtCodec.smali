.class public Lcom/alibaba/fastjson/serializer/AwtCodec;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/AwtCodec;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Lcom/alibaba/fastjson/serializer/AwtCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/AwtCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/AwtCodec;->instance:Lcom/alibaba/fastjson/serializer/AwtCodec;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseRef(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 335
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    const/4 v1, 0x4

    .line 336
    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 337
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 338
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 339
    new-instance p2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v2

    invoke-direct {p2, v2, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 340
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    const/4 p2, 0x1

    .line 341
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    const/16 p2, 0xd

    .line 342
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 343
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static support(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 23
    const-class v0, Ljava/awt/Point;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/awt/Rectangle;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/awt/Font;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/awt/Color;

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
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

    .line 97
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 99
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x10

    const/16 v3, 0x8

    if-ne v1, v3, :cond_11

    .line 100
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 p1, 0x0

    return-object p1

    .line 104
    :cond_11
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v3, 0xc

    if-eq v1, v3, :cond_28

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, v2, :cond_20

    goto :goto_28

    .line 105
    :cond_20
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "syntax error"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_28
    :goto_28
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 110
    const-class v0, Ljava/awt/Point;

    if-ne p2, v0, :cond_34

    .line 111
    invoke-virtual {p0, p1, p3}, Lcom/alibaba/fastjson/serializer/AwtCodec;->parsePoint(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)Ljava/awt/Point;

    move-result-object p2

    goto :goto_4e

    .line 112
    :cond_34
    const-class v0, Ljava/awt/Rectangle;

    if-ne p2, v0, :cond_3d

    .line 113
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->parseRectangle(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Rectangle;

    move-result-object p2

    goto :goto_4e

    .line 114
    :cond_3d
    const-class v0, Ljava/awt/Color;

    if-ne p2, v0, :cond_46

    .line 115
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->parseColor(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Color;

    move-result-object p2

    goto :goto_4e

    .line 116
    :cond_46
    const-class v0, Ljava/awt/Font;

    if-ne p2, v0, :cond_59

    .line 117
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->parseFont(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Font;

    move-result-object p2

    .line 122
    :goto_4e
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    .line 123
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 124
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object p2

    .line 119
    :cond_59
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not support awt class : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFastMatchToken()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method

.method protected parseColor(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Color;
    .registers 11

    .line 183
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 187
    :cond_6
    :goto_6
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_17

    .line 188
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 225
    new-instance p1, Ljava/awt/Color;

    invoke-direct {p1, v0, v1, v2, v3}, Ljava/awt/Color;-><init>(IIII)V

    return-object p1

    .line 193
    :cond_17
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const-string v5, "syntax error"

    const/4 v6, 0x4

    if-ne v4, v6, :cond_85

    .line 194
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    .line 195
    invoke-interface {p1, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 201
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    if-ne v8, v7, :cond_7f

    .line 202
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v5

    .line 203
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const-string v7, "r"

    .line 208
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3f

    move v0, v5

    goto :goto_5c

    :cond_3f
    const-string v7, "g"

    .line 210
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_49

    move v1, v5

    goto :goto_5c

    :cond_49
    const-string v7, "b"

    .line 212
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_53

    move v2, v5

    goto :goto_5c

    :cond_53
    const-string v3, "alpha"

    .line 214
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    move v3, v5

    .line 220
    :goto_5c
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_6

    .line 221
    invoke-interface {p1, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_6

    .line 217
    :cond_68
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syntax error, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 205
    :cond_7f
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 197
    :cond_85
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_8c

    :goto_8b
    throw p1

    :goto_8c
    goto :goto_8b
.end method

.method protected parseFont(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Font;
    .registers 10

    .line 130
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    const/4 v1, 0x0

    .line 135
    :cond_6
    :goto_6
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_17

    .line 136
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 179
    new-instance p1, Ljava/awt/Font;

    invoke-direct {p1, v2, v0, v1}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    return-object p1

    .line 141
    :cond_17
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/4 v4, 0x4

    const-string v5, "syntax error"

    if-ne v3, v4, :cond_9e

    .line 142
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    .line 143
    invoke-interface {p1, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    const-string v7, "name"

    .line 149
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 150
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    if-ne v2, v4, :cond_3e

    .line 151
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_75

    .line 154
    :cond_3e
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_44
    const-string v7, "style"

    .line 156
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 157
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-ne v0, v6, :cond_5a

    .line 158
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v0

    .line 159
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_75

    .line 161
    :cond_5a
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_60
    const-string v1, "size"

    .line 163
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 164
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, v6, :cond_81

    .line 165
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v1

    .line 166
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 174
    :goto_75
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v5, 0x10

    if-ne v3, v5, :cond_6

    .line 175
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_6

    .line 168
    :cond_81
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :cond_87
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syntax error, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_9e
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_a5

    :goto_a4
    throw p1

    :goto_a5
    goto :goto_a4
.end method

.method protected parsePoint(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)Ljava/awt/Point;
    .registers 10

    .line 279
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 283
    :cond_4
    :goto_4
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_15

    .line 284
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 331
    new-instance p1, Ljava/awt/Point;

    invoke-direct {p1, v1, v2}, Ljava/awt/Point;-><init>(II)V

    return-object p1

    .line 289
    :cond_15
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_ab

    .line 290
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    .line 292
    sget-object v5, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    const-string v3, "java.awt.Point"

    .line 293
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->acceptType(Ljava/lang/String;)V

    goto :goto_4

    :cond_2e
    const-string v5, "$ref"

    .line 297
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 298
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/AwtCodec;->parseRef(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/Point;

    return-object p1

    :cond_3d
    const/4 v5, 0x2

    .line 301
    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 306
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    if-ne v6, v5, :cond_4f

    .line 309
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v5

    .line 310
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_5a

    :cond_4f
    const/4 v5, 0x3

    if-ne v6, v5, :cond_90

    .line 312
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->floatValue()F

    move-result v5

    float-to-int v5, v5

    .line 313
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_5a
    const-string v6, "x"

    .line 318
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_64

    move v1, v5

    goto :goto_6d

    :cond_64
    const-string v2, "y"

    .line 320
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_79

    move v2, v5

    .line 326
    :goto_6d
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v5, 0x10

    if-ne v3, v5, :cond_4

    .line 327
    invoke-interface {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_4

    .line 323
    :cond_79
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "syntax error, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 315
    :cond_90
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syntax error : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 303
    :cond_ab
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "syntax error"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_b4

    :goto_b3
    throw p1

    :goto_b4
    goto :goto_b3
.end method

.method protected parseRectangle(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Rectangle;
    .registers 11

    .line 229
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 233
    :cond_6
    :goto_6
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_17

    .line 234
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 275
    new-instance p1, Ljava/awt/Rectangle;

    invoke-direct {p1, v0, v1, v2, v3}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object p1

    .line 239
    :cond_17
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const-string v5, "syntax error"

    const/4 v6, 0x4

    if-ne v4, v6, :cond_91

    .line 240
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    .line 241
    invoke-interface {p1, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 247
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    if-ne v8, v7, :cond_36

    .line 249
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v5

    .line 250
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_41

    :cond_36
    const/4 v7, 0x3

    if-ne v8, v7, :cond_8b

    .line 252
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->floatValue()F

    move-result v5

    float-to-int v5, v5

    .line 253
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_41
    const-string v7, "x"

    .line 258
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4b

    move v0, v5

    goto :goto_68

    :cond_4b
    const-string v7, "y"

    .line 260
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_55

    move v1, v5

    goto :goto_68

    :cond_55
    const-string v7, "width"

    .line 262
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5f

    move v2, v5

    goto :goto_68

    :cond_5f
    const-string v3, "height"

    .line 264
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_74

    move v3, v5

    .line 270
    :goto_68
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_6

    .line 271
    invoke-interface {p1, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_6

    .line 267
    :cond_74
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syntax error, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 255
    :cond_8b
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 243
    :cond_91
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_98

    :goto_97
    throw p1

    :goto_98
    goto :goto_97
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez p2, :cond_8

    .line 35
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    :cond_8
    const/16 p3, 0x7b

    .line 41
    instance-of p4, p2, Ljava/awt/Point;

    const-string p5, "y"

    const-string v0, "x"

    const/16 v1, 0x2c

    if-eqz p4, :cond_28

    .line 42
    check-cast p2, Ljava/awt/Point;

    .line 44
    const-class p4, Ljava/awt/Point;

    invoke-virtual {p0, p1, p4, p3}, Lcom/alibaba/fastjson/serializer/AwtCodec;->writeClassName(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Class;C)C

    move-result p3

    .line 46
    iget p4, p2, Ljava/awt/Point;->x:I

    invoke-virtual {p1, p3, v0, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 47
    iget p2, p2, Ljava/awt/Point;->y:I

    invoke-virtual {p1, v1, p5, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    goto/16 :goto_ab

    .line 48
    :cond_28
    instance-of p4, p2, Ljava/awt/Font;

    if-eqz p4, :cond_50

    .line 49
    check-cast p2, Ljava/awt/Font;

    .line 51
    const-class p4, Ljava/awt/Font;

    invoke-virtual {p0, p1, p4, p3}, Lcom/alibaba/fastjson/serializer/AwtCodec;->writeClassName(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Class;C)C

    move-result p3

    .line 53
    invoke-virtual {p2}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object p4

    const-string p5, "name"

    invoke-virtual {p1, p3, p5, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Ljava/awt/Font;->getStyle()I

    move-result p3

    const-string p4, "style"

    invoke-virtual {p1, v1, p4, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 55
    invoke-virtual {p2}, Ljava/awt/Font;->getSize()I

    move-result p2

    const-string p3, "size"

    invoke-virtual {p1, v1, p3, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    goto :goto_ab

    .line 56
    :cond_50
    instance-of p4, p2, Ljava/awt/Rectangle;

    if-eqz p4, :cond_75

    .line 57
    check-cast p2, Ljava/awt/Rectangle;

    .line 59
    const-class p4, Ljava/awt/Rectangle;

    invoke-virtual {p0, p1, p4, p3}, Lcom/alibaba/fastjson/serializer/AwtCodec;->writeClassName(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Class;C)C

    move-result p3

    .line 61
    iget p4, p2, Ljava/awt/Rectangle;->x:I

    invoke-virtual {p1, p3, v0, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 62
    iget p3, p2, Ljava/awt/Rectangle;->y:I

    invoke-virtual {p1, v1, p5, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 63
    iget p3, p2, Ljava/awt/Rectangle;->width:I

    const-string p4, "width"

    invoke-virtual {p1, v1, p4, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 64
    iget p2, p2, Ljava/awt/Rectangle;->height:I

    const-string p3, "height"

    invoke-virtual {p1, v1, p3, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    goto :goto_ab

    .line 65
    :cond_75
    instance-of p4, p2, Ljava/awt/Color;

    if-eqz p4, :cond_b1

    .line 66
    check-cast p2, Ljava/awt/Color;

    .line 68
    const-class p4, Ljava/awt/Color;

    invoke-virtual {p0, p1, p4, p3}, Lcom/alibaba/fastjson/serializer/AwtCodec;->writeClassName(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Class;C)C

    move-result p3

    .line 70
    invoke-virtual {p2}, Ljava/awt/Color;->getRed()I

    move-result p4

    const-string p5, "r"

    invoke-virtual {p1, p3, p5, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 71
    invoke-virtual {p2}, Ljava/awt/Color;->getGreen()I

    move-result p3

    const-string p4, "g"

    invoke-virtual {p1, v1, p4, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 72
    invoke-virtual {p2}, Ljava/awt/Color;->getBlue()I

    move-result p3

    const-string p4, "b"

    invoke-virtual {p1, v1, p4, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 73
    invoke-virtual {p2}, Ljava/awt/Color;->getAlpha()I

    move-result p3

    if-lez p3, :cond_ab

    .line 74
    invoke-virtual {p2}, Ljava/awt/Color;->getAlpha()I

    move-result p2

    const-string p3, "alpha"

    invoke-virtual {p1, v1, p3, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    :cond_ab
    :goto_ab
    const/16 p2, 0x7d

    .line 80
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 77
    :cond_b1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not support awt class : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected writeClassName(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Class;C)C
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/serializer/SerializeWriter;",
            "Ljava/lang/Class<",
            "*>;C)C"
        }
    .end annotation

    .line 85
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 p3, 0x7b

    .line 86
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 87
    sget-object p3, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    const/16 p3, 0x2c

    :cond_1b
    return p3
.end method
