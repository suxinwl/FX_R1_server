.class public Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20
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

    move-object/from16 v0, p1

    .line 18
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 19
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v2, v4, :cond_11

    .line 20
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-object v3

    .line 24
    :cond_11
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v5, 0xc

    const/16 v6, 0x10

    if-eq v2, v5, :cond_41

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    if-ne v2, v6, :cond_22

    goto :goto_41

    .line 25
    :cond_22
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    :goto_41
    const/4 v2, 0x0

    move-object v5, v3

    move-object v7, v5

    move-object v8, v7

    const/4 v9, 0x0

    .line 38
    :cond_46
    :goto_46
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v10

    invoke-interface {v1, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xd

    if-nez v10, :cond_6c

    .line 41
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v12

    if-ne v12, v11, :cond_5d

    .line 42
    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_1cb

    .line 45
    :cond_5d
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v12

    if-ne v12, v6, :cond_6c

    .line 46
    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v1, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v12

    if-eqz v12, :cond_6c

    goto :goto_46

    :cond_6c
    const/4 v12, 0x4

    .line 52
    invoke-interface {v1, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    const-string v13, "className"

    .line 53
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "syntax error"

    if-eqz v13, :cond_95

    .line 54
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v4, :cond_83

    move-object v5, v3

    goto/16 :goto_1c2

    .line 56
    :cond_83
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v12, :cond_8f

    .line 57
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1c2

    .line 59
    :cond_8f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_95
    const-string v13, "methodName"

    .line 61
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b8

    .line 62
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v4, :cond_a6

    move-object v7, v3

    goto/16 :goto_1c2

    .line 64
    :cond_a6
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v12, :cond_b2

    .line 65
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1c2

    .line 67
    :cond_b2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b8
    const-string v13, "fileName"

    .line 69
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_db

    .line 70
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    if-ne v8, v4, :cond_c9

    move-object v8, v3

    goto/16 :goto_1c2

    .line 72
    :cond_c9
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    if-ne v8, v12, :cond_d5

    .line 73
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1c2

    .line 75
    :cond_d5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_db
    const-string v13, "lineNumber"

    .line 77
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_ff

    .line 78
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    if-ne v9, v4, :cond_ec

    const/4 v9, 0x0

    goto/16 :goto_1c2

    .line 80
    :cond_ec
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_f9

    .line 81
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v9

    goto/16 :goto_1c2

    .line 83
    :cond_f9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ff
    const-string v13, "nativeMethod"

    .line 85
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_130

    .line 86
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    if-ne v10, v4, :cond_112

    .line 87
    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_1c2

    .line 88
    :cond_112
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/4 v12, 0x6

    if-ne v10, v12, :cond_11e

    .line 89
    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_1c2

    .line 90
    :cond_11e
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/4 v12, 0x7

    if-ne v10, v12, :cond_12a

    .line 91
    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_1c2

    .line 93
    :cond_12a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_130
    sget-object v13, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    const-string v15, "syntax error : "

    if-ne v10, v13, :cond_16c

    .line 96
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    if-ne v10, v12, :cond_15f

    .line 97
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v10

    const-string v12, "java.lang.StackTraceElement"

    .line 98
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14a

    goto/16 :goto_1c2

    .line 99
    :cond_14a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_15f
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    if-ne v10, v4, :cond_166

    goto :goto_1c2

    .line 103
    :cond_166
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16c
    const-string v13, "moduleName"

    .line 106
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18b

    .line 107
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    if-ne v10, v4, :cond_17b

    goto :goto_1c2

    .line 109
    :cond_17b
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    if-ne v10, v12, :cond_185

    .line 110
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    goto :goto_1c2

    .line 112
    :cond_185
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18b
    const-string v13, "moduleVersion"

    .line 114
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1aa

    .line 115
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    if-ne v10, v4, :cond_19a

    goto :goto_1c2

    .line 117
    :cond_19a
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    if-ne v10, v12, :cond_1a4

    .line 118
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    goto :goto_1c2

    .line 120
    :cond_1a4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1aa
    const-string v13, "classLoaderName"

    .line 122
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d7

    .line 123
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    if-ne v10, v4, :cond_1b9

    goto :goto_1c2

    .line 125
    :cond_1b9
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    if-ne v10, v12, :cond_1d1

    .line 126
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    .line 134
    :goto_1c2
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    if-ne v10, v11, :cond_46

    .line 135
    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 139
    :goto_1cb
    new-instance v0, Ljava/lang/StackTraceElement;

    invoke-direct {v0, v5, v7, v8, v9}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    .line 128
    :cond_1d1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1d7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_1ed

    :goto_1ec
    throw v0

    :goto_1ed
    goto :goto_1ec
.end method

.method public getFastMatchToken()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method
