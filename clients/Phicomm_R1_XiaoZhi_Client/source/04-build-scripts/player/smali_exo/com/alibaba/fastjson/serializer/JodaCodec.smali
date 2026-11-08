.class public Lcom/alibaba/fastjson/serializer/JodaCodec;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/serializer/ContextObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field private static final ISO_FIXED_FORMAT:Lorg/joda/time/format/DateTimeFormatter;

.field private static final defaultFormatter:Lorg/joda/time/format/DateTimeFormatter;

.field private static final defaultFormatter_23:Lorg/joda/time/format/DateTimeFormatter;

.field private static final defaultPatttern:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static final formatter_d10_cn:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_d10_de:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_d10_eur:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_d10_in:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_d10_kr:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_d10_tw:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_d10_us:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_d8:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_dt19_cn:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_dt19_cn_1:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_dt19_de:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_dt19_eur:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_dt19_in:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_dt19_kr:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_dt19_tw:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_dt19_us:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_iso8601:Lorg/joda/time/format/DateTimeFormatter;

.field private static final formatter_iso8601_pattern:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss"

.field private static final formatter_iso8601_pattern_23:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

.field private static final formatter_iso8601_pattern_29:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSSSSS"

.field public static final instance:Lcom/alibaba/fastjson/serializer/JodaCodec;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lcom/alibaba/fastjson/serializer/JodaCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/JodaCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->instance:Lcom/alibaba/fastjson/serializer/JodaCodec;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 21
    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->defaultFormatter:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 22
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->defaultFormatter_23:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    .line 23
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_tw:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "yyyy\u5e74M\u6708d\u65e5 HH:mm:ss"

    .line 24
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_cn:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "yyyy\u5e74M\u6708d\u65e5 H\u65f6m\u5206s\u79d2"

    .line 25
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_cn_1:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "yyyy\ub144M\uc6d4d\uc77c HH:mm:ss"

    .line 26
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_kr:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "MM/dd/yyyy HH:mm:ss"

    .line 27
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_us:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "dd/MM/yyyy HH:mm:ss"

    .line 28
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_eur:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "dd.MM.yyyy HH:mm:ss"

    .line 29
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_de:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "dd-MM-yyyy HH:mm:ss"

    .line 30
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_in:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "yyyyMMdd"

    .line 32
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d8:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "yyyy/MM/dd"

    .line 33
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_tw:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "yyyy\u5e74M\u6708d\u65e5"

    .line 34
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_cn:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "yyyy\ub144M\uc6d4d\uc77c"

    .line 35
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_kr:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "MM/dd/yyyy"

    .line 36
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_us:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "dd/MM/yyyy"

    .line 37
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_eur:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "dd.MM.yyyy"

    .line 38
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_de:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "dd-MM-yyyy"

    .line 39
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_in:Lorg/joda/time/format/DateTimeFormatter;

    .line 42
    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatter;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->ISO_FIXED_FORMAT:Lorg/joda/time/format/DateTimeFormatter;

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 47
    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_iso8601:Lorg/joda/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lorg/joda/time/ReadablePartial;Ljava/lang/String;)V
    .registers 5

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 475
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 476
    sget-object p3, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_iso8601:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_f

    .line 478
    :cond_b
    invoke-static {p3}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p3

    .line 481
    :goto_f
    invoke-virtual {p3, p2}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object p2

    .line 482
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
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

    .line 51
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/serializer/JodaCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 9
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

    .line 55
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 56
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p3

    const/16 p5, 0x8

    const/4 v0, 0x0

    if-ne p3, p5, :cond_f

    .line 57
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-object v0

    .line 61
    :cond_f
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p3

    const/4 v1, 0x4

    if-ne p3, v1, :cond_fe

    .line 62
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object p3

    .line 63
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    if-eqz p4, :cond_2f

    const-string p1, "yyyy-MM-dd HH:mm:ss"

    .line 67
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 68
    sget-object p1, Lcom/alibaba/fastjson/serializer/JodaCodec;->defaultFormatter:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_30

    .line 70
    :cond_2a
    invoke-static {p4}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p1

    goto :goto_30

    :cond_2f
    move-object p1, v0

    :goto_30
    const-string v1, ""

    .line 74
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    return-object v0

    .line 78
    :cond_39
    const-class v1, Lorg/joda/time/LocalDateTime;

    if-ne p2, v1, :cond_5c

    .line 80
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0xa

    if-eq p2, v0, :cond_51

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p2, p5, :cond_4c

    goto :goto_51

    .line 84
    :cond_4c
    invoke-virtual {p0, p3, p1}, Lcom/alibaba/fastjson/serializer/JodaCodec;->parseDateTime(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    goto :goto_5b

    .line 81
    :cond_51
    :goto_51
    invoke-virtual {p0, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/JodaCodec;->parseLocalDate(Ljava/lang/String;Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDate;

    move-result-object p1

    .line 82
    sget-object p2, Lorg/joda/time/LocalTime;->MIDNIGHT:Lorg/joda/time/LocalTime;

    invoke-virtual {p1, p2}, Lorg/joda/time/LocalDate;->toLocalDateTime(Lorg/joda/time/LocalTime;)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    :goto_5b
    return-object p1

    .line 87
    :cond_5c
    const-class v1, Lorg/joda/time/LocalDate;

    const/16 v2, 0x17

    if-ne p2, v1, :cond_76

    .line 89
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p2, v2, :cond_71

    .line 90
    invoke-static {p3}, Lorg/joda/time/LocalDateTime;->parse(Ljava/lang/String;)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lorg/joda/time/LocalDateTime;->toLocalDate()Lorg/joda/time/LocalDate;

    move-result-object p1

    goto :goto_75

    .line 93
    :cond_71
    invoke-virtual {p0, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/JodaCodec;->parseLocalDate(Ljava/lang/String;Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDate;

    move-result-object p1

    :goto_75
    return-object p1

    .line 97
    :cond_76
    const-class p4, Lorg/joda/time/LocalTime;

    if-ne p2, p4, :cond_8e

    .line 99
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v2, :cond_89

    .line 100
    invoke-static {p3}, Lorg/joda/time/LocalDateTime;->parse(Ljava/lang/String;)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lorg/joda/time/LocalDateTime;->toLocalTime()Lorg/joda/time/LocalTime;

    move-result-object p1

    goto :goto_8d

    .line 103
    :cond_89
    invoke-static {p3}, Lorg/joda/time/LocalTime;->parse(Ljava/lang/String;)Lorg/joda/time/LocalTime;

    move-result-object p1

    :goto_8d
    return-object p1

    .line 106
    :cond_8e
    const-class p4, Lorg/joda/time/DateTime;

    if-ne p2, p4, :cond_9d

    .line 107
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->defaultFormatter:Lorg/joda/time/format/DateTimeFormatter;

    if-ne p1, p2, :cond_98

    .line 108
    sget-object p1, Lcom/alibaba/fastjson/serializer/JodaCodec;->ISO_FIXED_FORMAT:Lorg/joda/time/format/DateTimeFormatter;

    .line 111
    :cond_98
    invoke-virtual {p0, p3, p1}, Lcom/alibaba/fastjson/serializer/JodaCodec;->parseZonedDateTime(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/DateTime;

    move-result-object p1

    return-object p1

    .line 114
    :cond_9d
    const-class p1, Lorg/joda/time/DateTimeZone;

    if-ne p2, p1, :cond_a6

    .line 115
    invoke-static {p3}, Lorg/joda/time/DateTimeZone;->forID(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object p1

    return-object p1

    .line 118
    :cond_a6
    const-class p1, Lorg/joda/time/Period;

    if-ne p2, p1, :cond_af

    .line 119
    invoke-static {p3}, Lorg/joda/time/Period;->parse(Ljava/lang/String;)Lorg/joda/time/Period;

    move-result-object p1

    return-object p1

    .line 122
    :cond_af
    const-class p1, Lorg/joda/time/Duration;

    if-ne p2, p1, :cond_b8

    .line 123
    invoke-static {p3}, Lorg/joda/time/Duration;->parse(Ljava/lang/String;)Lorg/joda/time/Duration;

    move-result-object p1

    return-object p1

    .line 126
    :cond_b8
    const-class p1, Lorg/joda/time/Instant;

    if-ne p2, p1, :cond_f4

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 128
    :goto_be
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    if-ge p2, p4, :cond_d4

    .line 129
    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result p4

    const/16 v0, 0x30

    if-lt p4, v0, :cond_d5

    const/16 v0, 0x39

    if-le p4, v0, :cond_d1

    goto :goto_d5

    :cond_d1
    add-int/lit8 p2, p2, 0x1

    goto :goto_be

    :cond_d4
    const/4 p1, 0x1

    :cond_d5
    :goto_d5
    if-eqz p1, :cond_ef

    .line 135
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, p5, :cond_ef

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x13

    if-ge p1, p2, :cond_ef

    .line 136
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 137
    new-instance p3, Lorg/joda/time/Instant;

    invoke-direct {p3, p1, p2}, Lorg/joda/time/Instant;-><init>(J)V

    return-object p3

    .line 140
    :cond_ef
    invoke-static {p3}, Lorg/joda/time/Instant;->parse(Ljava/lang/String;)Lorg/joda/time/Instant;

    move-result-object p1

    return-object p1

    .line 143
    :cond_f4
    const-class p1, Lorg/joda/time/format/DateTimeFormatter;

    if-ne p2, p1, :cond_fd

    .line 144
    invoke-static {p3}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p1

    return-object p1

    :cond_fd
    return-object v0

    .line 146
    :cond_fe
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p3

    const/4 p4, 0x2

    if-ne p3, p4, :cond_152

    .line 147
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide p3

    .line 148
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 150
    sget-object p1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    if-nez p1, :cond_114

    .line 152
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    .line 155
    :cond_114
    const-class p5, Lorg/joda/time/DateTime;

    if-ne p2, p5, :cond_122

    .line 156
    new-instance p2, Lorg/joda/time/DateTime;

    invoke-static {p1}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object p1

    invoke-direct {p2, p3, p4, p1}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    return-object p2

    .line 159
    :cond_122
    new-instance p5, Lorg/joda/time/LocalDateTime;

    invoke-static {p1}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object p1

    invoke-direct {p5, p3, p4, p1}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    .line 160
    const-class p1, Lorg/joda/time/LocalDateTime;

    if-ne p2, p1, :cond_130

    return-object p5

    .line 164
    :cond_130
    const-class p1, Lorg/joda/time/LocalDate;

    if-ne p2, p1, :cond_139

    .line 165
    invoke-virtual {p5}, Lorg/joda/time/LocalDateTime;->toLocalDate()Lorg/joda/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 168
    :cond_139
    const-class p1, Lorg/joda/time/LocalTime;

    if-ne p2, p1, :cond_142

    .line 169
    invoke-virtual {p5}, Lorg/joda/time/LocalDateTime;->toLocalTime()Lorg/joda/time/LocalTime;

    move-result-object p1

    return-object p1

    .line 172
    :cond_142
    const-class p1, Lorg/joda/time/Instant;

    if-ne p2, p1, :cond_14c

    .line 173
    new-instance p1, Lorg/joda/time/Instant;

    invoke-direct {p1, p3, p4}, Lorg/joda/time/Instant;-><init>(J)V

    return-object p1

    .line 178
    :cond_14c
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 180
    :cond_152
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto :goto_159

    :goto_158
    throw p1

    :goto_159
    goto :goto_158
.end method

.method public getFastMatchToken()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method protected parseDateTime(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDateTime;
    .registers 19

    move-object/from16 v0, p1

    if-nez p2, :cond_14c

    .line 187
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    const/16 v3, 0x10

    const/16 v4, 0xd

    const/4 v5, 0x7

    const/16 v6, 0x2e

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/16 v9, 0x13

    const/4 v10, 0x1

    const/16 v11, 0x3a

    const/16 v12, 0xa

    const/16 v13, 0x30

    const/16 v14, 0x2d

    if-ne v1, v9, :cond_bb

    .line 188
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 189
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 190
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 191
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 192
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v4, v11, :cond_ea

    if-ne v3, v11, :cond_ea

    if-ne v1, v14, :cond_4a

    if-ne v5, v14, :cond_4a

    const/16 v1, 0x54

    if-ne v15, v1, :cond_44

    .line 196
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_iso8601:Lorg/joda/time/format/DateTimeFormatter;

    goto/16 :goto_ec

    :cond_44
    if-ne v15, v2, :cond_ea

    .line 198
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->defaultFormatter:Lorg/joda/time/format/DateTimeFormatter;

    goto/16 :goto_ec

    :cond_4a
    const/16 v2, 0x2f

    if-ne v1, v2, :cond_54

    if-ne v5, v2, :cond_54

    .line 201
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_tw:Lorg/joda/time/format/DateTimeFormatter;

    goto/16 :goto_ec

    .line 203
    :cond_54
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 204
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x2

    .line 205
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v11, 0x3

    .line 206
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/4 v15, 0x5

    .line 207
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v5, v2, :cond_ad

    if-ne v15, v2, :cond_ad

    sub-int/2addr v3, v13

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v4, v13

    add-int/2addr v3, v4

    sub-int/2addr v11, v13

    mul-int/lit8 v11, v11, 0xa

    sub-int/2addr v1, v13

    add-int/2addr v11, v1

    const/16 v1, 0xc

    if-le v3, v1, :cond_81

    .line 212
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_eur:Lorg/joda/time/format/DateTimeFormatter;

    goto/16 :goto_ec

    :cond_81
    if-le v11, v1, :cond_87

    .line 214
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_us:Lorg/joda/time/format/DateTimeFormatter;

    goto/16 :goto_ec

    .line 216
    :cond_87
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    .line 218
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 219
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_us:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_ec

    :cond_9a
    const-string v2, "BR"

    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_aa

    const-string v2, "AU"

    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 222
    :cond_aa
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_eur:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_ec

    :cond_ad
    if-ne v5, v6, :cond_b4

    if-ne v15, v6, :cond_b4

    .line 226
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_de:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_ec

    :cond_b4
    if-ne v5, v14, :cond_ea

    if-ne v15, v14, :cond_ea

    .line 228
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_in:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_ec

    .line 232
    :cond_bb
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v15, 0x17

    if-ne v1, v15, :cond_ea

    .line 233
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 234
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 235
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 236
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 237
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 238
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v4, v11, :cond_ea

    if-ne v3, v11, :cond_ea

    if-ne v1, v14, :cond_ea

    if-ne v5, v14, :cond_ea

    if-ne v12, v2, :cond_ea

    if-ne v15, v6, :cond_ea

    .line 247
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->defaultFormatter_23:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_ec

    :cond_ea
    move-object/from16 v1, p2

    .line 251
    :goto_ec
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x11

    if-lt v2, v3, :cond_116

    .line 252
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5e74

    if-ne v2, v3, :cond_10f

    .line 254
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x79d2

    if-ne v1, v2, :cond_10c

    .line 255
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_cn_1:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_116

    .line 257
    :cond_10c
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_cn:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_116

    :cond_10f
    const v3, 0xb144

    if-ne v2, v3, :cond_116

    .line 260
    sget-object v1, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_kr:Lorg/joda/time/format/DateTimeFormatter;

    :cond_116
    :goto_116
    const/4 v2, 0x0

    .line 265
    :goto_117
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_12b

    .line 266
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v13, :cond_12c

    const/16 v4, 0x39

    if-le v3, v4, :cond_128

    goto :goto_12c

    :cond_128
    add-int/lit8 v2, v2, 0x1

    goto :goto_117

    :cond_12b
    const/4 v7, 0x1

    :cond_12c
    :goto_12c
    if-eqz v7, :cond_14e

    .line 272
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_14e

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v9, :cond_14e

    .line 273
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 274
    new-instance v2, Lorg/joda/time/LocalDateTime;

    sget-object v3, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-static {v3}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    return-object v2

    :cond_14c
    move-object/from16 v1, p2

    :cond_14e
    if-nez v1, :cond_155

    .line 279
    invoke-static/range {p1 .. p1}, Lorg/joda/time/LocalDateTime;->parse(Ljava/lang/String;)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    goto :goto_159

    .line 280
    :cond_155
    invoke-static {v0, v1}, Lorg/joda/time/LocalDateTime;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    :goto_159
    return-object v0
.end method

.method protected parseLocalDate(Ljava/lang/String;Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDate;
    .registers 16

    if-nez p3, :cond_e9

    .line 285
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_c

    .line 286
    sget-object p3, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d8:Lorg/joda/time/format/DateTimeFormatter;

    .line 289
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    const/16 v5, 0x30

    if-ne p2, v4, :cond_93

    .line 290
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/4 v6, 0x7

    .line 291
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-ne p2, v7, :cond_2a

    if-ne v6, v7, :cond_2a

    .line 293
    sget-object p3, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_tw:Lorg/joda/time/format/DateTimeFormatter;

    .line 296
    :cond_2a
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 297
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x2

    .line 298
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x3

    .line 299
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/4 v11, 0x5

    .line 300
    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v9, v7, :cond_82

    if-ne v11, v7, :cond_82

    sub-int/2addr v6, v5

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v8, v5

    add-int/2addr v6, v8

    sub-int/2addr v10, v5

    mul-int/lit8 v10, v10, 0xa

    sub-int/2addr p2, v5

    add-int/2addr v10, p2

    const/16 p2, 0xc

    if-le v6, p2, :cond_57

    .line 305
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_eur:Lorg/joda/time/format/DateTimeFormatter;

    :goto_55
    move-object p3, p2

    goto :goto_93

    :cond_57
    if-le v10, p2, :cond_5c

    .line 307
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_us:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_55

    .line 309
    :cond_5c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p2

    const-string v4, "US"

    .line 311
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 312
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_us:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_55

    :cond_6f
    const-string v4, "BR"

    .line 313
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7f

    const-string v4, "AU"

    .line 314
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_93

    .line 315
    :cond_7f
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_eur:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_55

    :cond_82
    const/16 p2, 0x2e

    if-ne v9, p2, :cond_8b

    if-ne v11, p2, :cond_8b

    .line 319
    sget-object p3, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_de:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_93

    :cond_8b
    const/16 p2, 0x2d

    if-ne v9, p2, :cond_93

    if-ne v11, p2, :cond_93

    .line 321
    sget-object p3, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_in:Lorg/joda/time/format/DateTimeFormatter;

    .line 325
    :cond_93
    :goto_93
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v4, 0x9

    if-lt p2, v4, :cond_af

    .line 326
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v1, 0x5e74

    if-ne p2, v1, :cond_a7

    .line 328
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_cn:Lorg/joda/time/format/DateTimeFormatter;

    :goto_a5
    move-object p3, p2

    goto :goto_af

    :cond_a7
    const v1, 0xb144

    if-ne p2, v1, :cond_af

    .line 330
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_d10_kr:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_a5

    :cond_af
    :goto_af
    const/4 p2, 0x0

    .line 335
    :goto_b0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_c4

    .line 336
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v5, :cond_c5

    const/16 v4, 0x39

    if-le v1, v4, :cond_c1

    goto :goto_c5

    :cond_c1
    add-int/lit8 p2, p2, 0x1

    goto :goto_b0

    :cond_c4
    const/4 v2, 0x1

    :cond_c5
    :goto_c5
    if-eqz v2, :cond_e9

    .line 342
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-le p2, v0, :cond_e9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x13

    if-ge p2, v0, :cond_e9

    .line 343
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 344
    new-instance p3, Lorg/joda/time/LocalDateTime;

    sget-object v0, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-direct {p3, p1, p2, v0}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    .line 345
    invoke-virtual {p3}, Lorg/joda/time/LocalDateTime;->toLocalDate()Lorg/joda/time/LocalDate;

    move-result-object p1

    return-object p1

    :cond_e9
    if-nez p3, :cond_f0

    .line 350
    invoke-static {p1}, Lorg/joda/time/LocalDate;->parse(Ljava/lang/String;)Lorg/joda/time/LocalDate;

    move-result-object p1

    goto :goto_f4

    .line 351
    :cond_f0
    invoke-static {p1, p3}, Lorg/joda/time/LocalDate;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDate;

    move-result-object p1

    :goto_f4
    return-object p1
.end method

.method protected parseZonedDateTime(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/DateTime;
    .registers 14

    if-nez p2, :cond_e2

    .line 356
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x13

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v0, v1, :cond_b8

    .line 357
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x7

    .line 358
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0xa

    .line 359
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    .line 360
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x10

    .line 361
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3a

    if-ne v6, v8, :cond_b8

    if-ne v7, v8, :cond_b8

    const/16 v6, 0x2d

    if-ne v0, v6, :cond_43

    if-ne v1, v6, :cond_43

    const/16 v0, 0x54

    if-ne v5, v0, :cond_3b

    .line 365
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_iso8601:Lorg/joda/time/format/DateTimeFormatter;

    goto/16 :goto_b8

    :cond_3b
    const/16 v0, 0x20

    if-ne v5, v0, :cond_b8

    .line 367
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->defaultFormatter:Lorg/joda/time/format/DateTimeFormatter;

    goto/16 :goto_b8

    :cond_43
    const/16 v5, 0x2f

    if-ne v0, v5, :cond_4d

    if-ne v1, v5, :cond_4d

    .line 370
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_tw:Lorg/joda/time/format/DateTimeFormatter;

    goto/16 :goto_b8

    :cond_4d
    const/4 v1, 0x0

    .line 372
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 373
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x2

    .line 374
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x3

    .line 375
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x5

    .line 376
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v8, v5, :cond_a9

    if-ne v10, v5, :cond_a9

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v7, v7, -0x30

    add-int/2addr v1, v7

    add-int/lit8 v9, v9, -0x30

    mul-int/lit8 v9, v9, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v9, v0

    const/16 v0, 0xc

    if-le v1, v0, :cond_7e

    .line 381
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_eur:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_b8

    :cond_7e
    if-le v9, v0, :cond_83

    .line 383
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_us:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_b8

    .line 385
    :cond_83
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    .line 387
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 388
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_us:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_b8

    :cond_96
    const-string v1, "BR"

    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a6

    const-string v1, "AU"

    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 391
    :cond_a6
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_eur:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_b8

    :cond_a9
    const/16 v0, 0x2e

    if-ne v8, v0, :cond_b2

    if-ne v10, v0, :cond_b2

    .line 395
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_de:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_b8

    :cond_b2
    if-ne v8, v6, :cond_b8

    if-ne v10, v6, :cond_b8

    .line 397
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_in:Lorg/joda/time/format/DateTimeFormatter;

    .line 403
    :cond_b8
    :goto_b8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_e2

    .line 404
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5e74

    if-ne v0, v1, :cond_db

    .line 406
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x79d2

    if-ne p2, v0, :cond_d8

    .line 407
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_cn_1:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_e2

    .line 409
    :cond_d8
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_cn:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_e2

    :cond_db
    const v1, 0xb144

    if-ne v0, v1, :cond_e2

    .line 412
    sget-object p2, Lcom/alibaba/fastjson/serializer/JodaCodec;->formatter_dt19_kr:Lorg/joda/time/format/DateTimeFormatter;

    :cond_e2
    :goto_e2
    if-nez p2, :cond_e9

    .line 418
    invoke-static {p1}, Lorg/joda/time/DateTime;->parse(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object p1

    goto :goto_ed

    .line 419
    :cond_e9
    invoke-static {p1, p2}, Lorg/joda/time/DateTime;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/DateTime;

    move-result-object p1

    :goto_ed
    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/BeanContext;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 469
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/BeanContext;->getFormat()Ljava/lang/String;

    move-result-object p3

    .line 470
    check-cast p2, Lorg/joda/time/ReadablePartial;

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/JodaCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lorg/joda/time/ReadablePartial;Ljava/lang/String;)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    iget-object p3, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez p2, :cond_8

    .line 430
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_68

    :cond_8
    if-nez p4, :cond_e

    .line 433
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    .line 436
    :cond_e
    const-class v0, Lorg/joda/time/LocalDateTime;

    if-ne p4, v0, :cond_61

    .line 437
    sget-object p4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result p4

    .line 438
    check-cast p2, Lorg/joda/time/LocalDateTime;

    .line 439
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormatPattern()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_45

    and-int/2addr p4, p5

    if-nez p4, :cond_43

    .line 442
    sget-object p4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p4

    if-eqz p4, :cond_2c

    goto :goto_43

    .line 444
    :cond_2c
    sget-object p4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 445
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    goto :goto_45

    .line 447
    :cond_37
    invoke-virtual {p2}, Lorg/joda/time/LocalDateTime;->getMillisOfSecond()I

    move-result p1

    if-nez p1, :cond_40

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    goto :goto_45

    :cond_40
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSSSSS"

    goto :goto_45

    :cond_43
    :goto_43
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    :cond_45
    :goto_45
    if-eqz v0, :cond_4b

    .line 457
    invoke-direct {p0, p3, p2, v0}, Lcom/alibaba/fastjson/serializer/JodaCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lorg/joda/time/ReadablePartial;Ljava/lang/String;)V

    goto :goto_68

    .line 459
    :cond_4b
    sget-object p1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-static {p1}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/joda/time/LocalDateTime;->toDateTime(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/DateTime;->toInstant()Lorg/joda/time/Instant;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/Instant;->getMillis()J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto :goto_68

    .line 462
    :cond_61
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    :goto_68
    return-void
.end method
