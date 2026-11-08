.class public abstract Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
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

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    const-string p5, "\'T\'"

    const-string v0, "T"

    .line 22
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 25
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v4, :cond_29

    .line 26
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v4

    .line 27
    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const-string p5, "unixtime"

    .line 28
    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_23

    const-wide/16 p4, 0x3e8

    mul-long v4, v4, p4

    .line 31
    :cond_23
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto/16 :goto_1db

    .line 32
    :cond_29
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/4 v6, 0x4

    if-ne v2, v6, :cond_116

    .line 33
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    if-eqz p4, :cond_f0

    const-string v4, "yyyy-MM-dd HH:mm:ss.SSSSSSSSS"

    .line 36
    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    instance-of v4, p2, Ljava/lang/Class;

    if-eqz v4, :cond_56

    move-object v4, p2

    check-cast v4, Ljava/lang/Class;

    .line 38
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "java.sql.Timestamp"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 39
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1

    .line 44
    :cond_56
    :try_start_56
    new-instance v4, Ljava/text/SimpleDateFormat;

    iget-object v6, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, p4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_61
    .catch Ljava/lang/IllegalArgumentException; {:try_start_56 .. :try_end_61} :catch_62

    goto :goto_7c

    :catch_62
    move-exception v4

    .line 46
    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 47
    invoke-virtual {p4, v0, p5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 49
    :try_start_6d
    new-instance v7, Ljava/text/SimpleDateFormat;

    iget-object v8, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->getLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_78
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6d .. :try_end_78} :catch_7a

    move-object v4, v7

    goto :goto_7c

    .line 51
    :catch_7a
    throw v4

    :cond_7b
    move-object v4, v5

    .line 56
    :goto_7c
    sget-object v6, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    if-eqz v6, :cond_89

    .line 57
    iget-object v6, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 61
    :cond_89
    :try_start_89
    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6
    :try_end_8d
    .catch Ljava/text/ParseException; {:try_start_89 .. :try_end_8d} :catch_8e

    goto :goto_8f

    :catch_8e
    move-object v6, v5

    :goto_8f
    if-nez v6, :cond_c7

    .line 67
    sget-object v7, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    sget-object v8, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    if-ne v7, v8, :cond_c7

    .line 69
    :try_start_97
    new-instance v6, Ljava/text/SimpleDateFormat;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, p4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_9e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_97 .. :try_end_9e} :catch_a0

    move-object v4, v6

    goto :goto_b8

    :catch_a0
    move-exception v6

    .line 71
    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b8

    .line 72
    invoke-virtual {p4, v0, p5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 74
    :try_start_ab
    new-instance v4, Ljava/text/SimpleDateFormat;

    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {v4, p5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_b6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ab .. :try_end_b6} :catch_b7

    goto :goto_b8

    .line 76
    :catch_b7
    throw v6

    .line 80
    :cond_b8
    :goto_b8
    iget-object p5, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {p5}, Lcom/alibaba/fastjson/parser/JSONLexer;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p5

    invoke-virtual {v4, p5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 83
    :try_start_c1
    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6
    :try_end_c5
    .catch Ljava/text/ParseException; {:try_start_c1 .. :try_end_c5} :catch_c6

    goto :goto_c7

    :catch_c6
    move-object v6, v5

    :cond_c7
    :goto_c7
    if-nez v6, :cond_ef

    const-string p5, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    .line 91
    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_f0

    .line 92
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p4

    const/16 p5, 0x13

    if-ne p4, p5, :cond_f0

    .line 94
    :try_start_d9
    new-instance p4, Ljava/text/SimpleDateFormat;

    const-string p5, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v0, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-direct {p4, p5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 95
    sget-object p5, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p4, p5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 96
    invoke-virtual {p4, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4
    :try_end_eb
    .catch Ljava/text/ParseException; {:try_start_d9 .. :try_end_eb} :catch_ed

    move-object v5, p4

    goto :goto_f0

    :catch_ed
    nop

    goto :goto_f0

    :cond_ef
    move-object v5, v6

    :cond_f0
    :goto_f0
    if-nez v5, :cond_1db

    .line 112
    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 114
    sget-object p4, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v1, p4}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result p4

    if-eqz p4, :cond_113

    .line 115
    new-instance p4, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {p4, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result p5

    if-eqz p5, :cond_110

    .line 117
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 119
    :cond_110
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    :cond_113
    move-object v5, v2

    goto/16 :goto_1db

    .line 122
    :cond_116
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p4

    const/16 p5, 0x8

    if-ne p4, p5, :cond_123

    .line 123
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_1db

    .line 125
    :cond_123
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p4

    const/16 p5, 0xc

    const/16 v0, 0xd

    const/16 v2, 0x11

    const-string v7, "syntax error"

    if-ne p4, p5, :cond_19e

    .line 126
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 129
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p4

    if-ne p4, v6, :cond_198

    .line 130
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object p4

    .line 132
    sget-object p5, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_165

    .line 133
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 134
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 136
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object p4

    .line 137
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object p5

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result v2

    invoke-virtual {p5, p4, v5, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object p4

    if-eqz p4, :cond_15f

    move-object p2, p4

    .line 142
    :cond_15f
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 143
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 146
    :cond_165
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 152
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p4

    if-ne p4, v4, :cond_17d

    .line 153
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide p4

    .line 154
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 159
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 161
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto :goto_1db

    .line 156
    :cond_17d
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "syntax error : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_198
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 162
    :cond_19e
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getResolveStatus()I

    move-result p4

    if-ne p4, v4, :cond_1d7

    const/4 p4, 0x0

    .line 163
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 164
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 166
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p4

    if-ne p4, v6, :cond_1d1

    .line 167
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object p4

    const-string p5, "val"

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1cb

    .line 170
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 175
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 177
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v5

    .line 179
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto :goto_1db

    .line 168
    :cond_1cb
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_1d1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :cond_1d7
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v5

    .line 184
    :cond_1db
    :goto_1db
    invoke-virtual {p0, p1, p2, p3, v5}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;->cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
