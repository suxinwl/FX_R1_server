.class public Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;
.super Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/serializer/ContextObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field private static final ISO_FIXED_FORMAT:Ljava/time/format/DateTimeFormatter;

.field private static final defaultFormatter:Ljava/time/format/DateTimeFormatter;

.field private static final defaultFormatter_23:Ljava/time/format/DateTimeFormatter;

.field private static final defaultPatttern:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static final formatter_d10_cn:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_de:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_in:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_kr:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_tw:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_us:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d8:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_iso8601:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_iso8601_pattern:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss"

.field private static final formatter_iso8601_pattern_23:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

.field private static final formatter_iso8601_pattern_29:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSSSSS"

.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 34
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 35
    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter_23:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    .line 36
    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyy\u5e74M\u6708d\u65e5 HH:mm:ss"

    .line 37
    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyy\u5e74M\u6708d\u65e5 H\u65f6m\u5206s\u79d2"

    .line 38
    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyy\ub144M\uc6d4d\uc77c HH:mm:ss"

    .line 39
    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

    const-string v1, "MM/dd/yyyy HH:mm:ss"

    .line 40
    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    const-string v1, "dd/MM/yyyy HH:mm:ss"

    .line 41
    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    const-string v1, "dd.MM.yyyy HH:mm:ss"

    .line 42
    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

    const-string v1, "dd-MM-yyyy HH:mm:ss"

    .line 43
    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyyMMdd"

    .line 45
    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d8:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyy/MM/dd"

    .line 46
    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_tw:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyy\u5e74M\u6708d\u65e5"

    .line 47
    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_cn:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyy\ub144M\uc6d4d\uc77c"

    .line 48
    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_kr:Ljava/time/format/DateTimeFormatter;

    const-string v1, "MM/dd/yyyy"

    .line 49
    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    const-string v1, "dd/MM/yyyy"

    .line 50
    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    const-string v1, "dd.MM.yyyy"

    .line 51
    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_de:Ljava/time/format/DateTimeFormatter;

    const-string v1, "dd-MM-yyyy"

    .line 52
    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_in:Ljava/time/format/DateTimeFormatter;

    .line 55
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->ISO_FIXED_FORMAT:Ljava/time/format/DateTimeFormatter;

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 60
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_iso8601:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;-><init>()V

    return-void
.end method

.method public static castToLocalDateTime(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-nez p1, :cond_8

    const-string p1, "yyyy-MM-dd HH:mm:ss"

    .line 604
    :cond_8
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    .line 605
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method private write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V
    .registers 6

    const-string v0, "unixtime"

    .line 556
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 558
    instance-of v0, p2, Ljava/time/chrono/ChronoZonedDateTime;

    if-eqz v0, :cond_17

    .line 559
    check-cast p2, Ljava/time/chrono/ChronoZonedDateTime;

    invoke-interface {p2}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide p2

    long-to-int p3, p2

    .line 560
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    return-void

    .line 564
    :cond_17
    instance-of v0, p2, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_30

    .line 565
    check-cast p2, Ljava/time/LocalDateTime;

    sget-object p3, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p3}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide p2

    long-to-int p3, p2

    .line 566
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    return-void

    :cond_30
    const-string v0, "millis"

    .line 571
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    const/4 v0, 0x0

    .line 573
    instance-of v1, p2, Ljava/time/chrono/ChronoZonedDateTime;

    if-eqz v1, :cond_45

    .line 574
    move-object v0, p2

    check-cast v0, Ljava/time/chrono/ChronoZonedDateTime;

    invoke-interface {v0}, Ljava/time/chrono/ChronoZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    goto :goto_5a

    .line 575
    :cond_45
    instance-of v1, p2, Ljava/time/LocalDateTime;

    if-eqz v1, :cond_5a

    .line 576
    move-object v0, p2

    check-cast v0, Ljava/time/LocalDateTime;

    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    :cond_5a
    :goto_5a
    if-eqz v0, :cond_64

    .line 579
    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p2

    .line 580
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    return-void

    :cond_64
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    if-ne p3, v0, :cond_6b

    .line 586
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_iso8601:Ljava/time/format/DateTimeFormatter;

    goto :goto_6f

    .line 588
    :cond_6b
    invoke-static {p3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p3

    .line 591
    :goto_6f
    invoke-virtual {p3, p2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p2

    .line 592
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 14
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

    .line 64
    iget-object p3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 65
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p5

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p5, v1, :cond_f

    .line 66
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-object v0

    .line 70
    :cond_f
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p5

    const/4 v2, 0x4

    if-ne p5, v2, :cond_18d

    .line 71
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object p5

    .line 72
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    if-eqz p4, :cond_2f

    const-string p3, "yyyy-MM-dd HH:mm:ss"

    .line 76
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2a

    .line 77
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    goto :goto_30

    .line 79
    :cond_2a
    invoke-static {p4}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p3

    goto :goto_30

    :cond_2f
    move-object p3, v0

    :goto_30
    const-string v2, ""

    .line 83
    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    return-object v0

    .line 87
    :cond_39
    const-class v2, Ljava/time/LocalDateTime;

    if-ne p2, v2, :cond_5c

    .line 89
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_51

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v1, :cond_4c

    goto :goto_51

    .line 93
    :cond_4c
    invoke-virtual {p0, p5, p3}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p1

    goto :goto_5b

    .line 90
    :cond_51
    :goto_51
    invoke-virtual {p0, p5, p4, p3}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p1

    .line 91
    sget-object p2, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p1

    :goto_5b
    return-object p1

    .line 96
    :cond_5c
    const-class v2, Ljava/time/LocalDate;

    const/16 v3, 0x17

    if-ne p2, v2, :cond_82

    .line 98
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v3, :cond_7d

    .line 99
    invoke-static {p5}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result p2

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result p3

    .line 101
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result p1

    .line 100
    invoke-static {p2, p3, p1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p1

    goto :goto_81

    .line 103
    :cond_7d
    invoke-virtual {p0, p5, p4, p3}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p1

    :goto_81
    return-object p1

    .line 107
    :cond_82
    const-class p4, Ljava/time/LocalTime;

    const/16 v2, 0x39

    const/16 v4, 0x30

    const/16 v5, 0x13

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne p2, p4, :cond_eb

    .line 109
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v3, :cond_ad

    .line 110
    invoke-static {p5}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getHour()I

    move-result p2

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMinute()I

    move-result p3

    .line 112
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getSecond()I

    move-result p4

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getNano()I

    move-result p1

    .line 111
    invoke-static {p2, p3, p4, p1}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object p1

    goto :goto_ea

    :cond_ad
    const/4 p1, 0x0

    .line 115
    :goto_ae
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p2

    if-ge p1, p2, :cond_c1

    .line 116
    invoke-virtual {p5, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-lt p2, v4, :cond_c0

    if-le p2, v2, :cond_bd

    goto :goto_c0

    :cond_bd
    add-int/lit8 p1, p1, 0x1

    goto :goto_ae

    :cond_c0
    :goto_c0
    const/4 v6, 0x0

    :cond_c1
    if-eqz v6, :cond_e6

    .line 123
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v1, :cond_e6

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v5, :cond_e6

    .line 124
    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 127
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    sget-object p2, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    .line 128
    invoke-virtual {p2}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p2

    .line 126
    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    goto :goto_ea

    .line 131
    :cond_e6
    invoke-static {p5}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object p1

    :goto_ea
    return-object p1

    .line 135
    :cond_eb
    const-class p4, Ljava/time/ZonedDateTime;

    if-ne p2, p4, :cond_12b

    .line 136
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    if-ne p3, p2, :cond_f5

    .line 137
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->ISO_FIXED_FORMAT:Ljava/time/format/DateTimeFormatter;

    :cond_f5
    if-nez p3, :cond_126

    .line 141
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p2, v5, :cond_126

    .line 142
    new-instance p2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {p2, p5}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 143
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    .line 144
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(Ljava/util/TimeZone;)V

    .line 145
    invoke-virtual {p2, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result p4

    if-eqz p4, :cond_126

    .line 147
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    .line 148
    invoke-virtual {p2}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    .line 154
    :cond_126
    invoke-virtual {p0, p5, p3}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseZonedDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    .line 157
    :cond_12b
    const-class p1, Ljava/time/OffsetDateTime;

    if-ne p2, p1, :cond_134

    .line 158
    invoke-static {p5}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object p1

    return-object p1

    .line 161
    :cond_134
    const-class p1, Ljava/time/OffsetTime;

    if-ne p2, p1, :cond_13d

    .line 162
    invoke-static {p5}, Ljava/time/OffsetTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetTime;

    move-result-object p1

    return-object p1

    .line 165
    :cond_13d
    const-class p1, Ljava/time/ZoneId;

    if-ne p2, p1, :cond_146

    .line 166
    invoke-static {p5}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p1

    return-object p1

    .line 169
    :cond_146
    const-class p1, Ljava/time/Period;

    if-ne p2, p1, :cond_14f

    .line 170
    invoke-static {p5}, Ljava/time/Period;->parse(Ljava/lang/CharSequence;)Ljava/time/Period;

    move-result-object p1

    return-object p1

    .line 173
    :cond_14f
    const-class p1, Ljava/time/Duration;

    if-ne p2, p1, :cond_158

    .line 174
    invoke-static {p5}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object p1

    return-object p1

    .line 177
    :cond_158
    const-class p1, Ljava/time/Instant;

    if-ne p2, p1, :cond_18c

    const/4 p1, 0x0

    .line 179
    :goto_15d
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p2

    if-ge p1, p2, :cond_170

    .line 180
    invoke-virtual {p5, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-lt p2, v4, :cond_16f

    if-le p2, v2, :cond_16c

    goto :goto_16f

    :cond_16c
    add-int/lit8 p1, p1, 0x1

    goto :goto_15d

    :cond_16f
    :goto_16f
    const/4 v6, 0x0

    :cond_170
    if-eqz v6, :cond_187

    .line 186
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v1, :cond_187

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v5, :cond_187

    .line 187
    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 188
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    return-object p1

    .line 191
    :cond_187
    invoke-static {p5}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object p1

    return-object p1

    :cond_18c
    return-object v0

    .line 195
    :cond_18d
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p1

    const/4 p5, 0x2

    if-ne p1, p5, :cond_243

    .line 196
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v0

    .line 197
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const-string p1, "unixtime"

    .line 199
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a8

    const-wide/16 p3, 0x3e8

    mul-long v0, v0, p3

    goto :goto_1e0

    :cond_1a8
    const-string p1, "yyyyMMddHHmmss"

    .line 201
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e0

    const-wide p3, 0x2540be400L

    .line 202
    div-long p3, v0, p3

    long-to-int v2, p3

    const-wide/32 p3, 0x5f5e100

    .line 203
    div-long p3, v0, p3

    const-wide/16 v3, 0x64

    rem-long/2addr p3, v3

    long-to-int p1, p3

    const-wide/32 p3, 0xf4240

    .line 204
    div-long p3, v0, p3

    rem-long/2addr p3, v3

    long-to-int p4, p3

    const-wide/16 v5, 0x2710

    .line 205
    div-long v5, v0, v5

    rem-long/2addr v5, v3

    long-to-int v5, v5

    .line 206
    div-long v6, v0, v3

    rem-long/2addr v6, v3

    long-to-int v6, v6

    .line 207
    rem-long v3, v0, v3

    long-to-int v7, v3

    .line 209
    const-class p3, Ljava/time/LocalDateTime;

    if-ne p2, p3, :cond_1e0

    move v3, p1

    move v4, p4

    .line 210
    invoke-static/range {v2 .. v7}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1

    .line 214
    :cond_1e0
    :goto_1e0
    const-class p1, Ljava/time/LocalDateTime;

    if-ne p2, p1, :cond_1f3

    .line 215
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    sget-object p2, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p2}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1

    .line 218
    :cond_1f3
    const-class p1, Ljava/time/LocalDate;

    if-ne p2, p1, :cond_20a

    .line 219
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    sget-object p2, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p2}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 221
    :cond_20a
    const-class p1, Ljava/time/LocalTime;

    if-ne p2, p1, :cond_221

    .line 222
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    sget-object p2, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p2}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    return-object p1

    .line 225
    :cond_221
    const-class p1, Ljava/time/ZonedDateTime;

    if-ne p2, p1, :cond_234

    .line 226
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    sget-object p2, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p2}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    .line 229
    :cond_234
    const-class p1, Ljava/time/Instant;

    if-ne p2, p1, :cond_23d

    .line 230
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    return-object p1

    .line 233
    :cond_23d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 235
    :cond_243
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto :goto_24a

    :goto_249
    throw p1

    :goto_24a
    goto :goto_249
.end method

.method public getFastMatchToken()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method protected parseDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;
    .registers 19

    move-object/from16 v0, p1

    const/16 v1, 0x13

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x30

    if-nez p2, :cond_117

    .line 242
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    const/16 v7, 0x10

    const/16 v8, 0xd

    const/4 v9, 0x7

    const/16 v10, 0x2e

    const/4 v11, 0x4

    const/16 v12, 0x3a

    const/16 v13, 0xa

    const/16 v14, 0x2d

    if-ne v5, v1, :cond_bb

    .line 243
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 244
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 245
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 246
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 247
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v8, v12, :cond_ea

    if-ne v7, v12, :cond_ea

    if-ne v5, v14, :cond_4a

    if-ne v9, v14, :cond_4a

    const/16 v5, 0x54

    if-ne v15, v5, :cond_44

    .line 251
    sget-object v5, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_ec

    :cond_44
    if-ne v15, v6, :cond_ea

    .line 253
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_ec

    :cond_4a
    const/16 v6, 0x2f

    if-ne v5, v6, :cond_54

    if-ne v9, v6, :cond_54

    .line 256
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_ec

    .line 258
    :cond_54
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 259
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x2

    .line 260
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v12, 0x3

    .line 261
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/4 v15, 0x5

    .line 262
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v9, v6, :cond_ad

    if-ne v15, v6, :cond_ad

    sub-int/2addr v7, v4

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, v4

    add-int/2addr v7, v8

    sub-int/2addr v12, v4

    mul-int/lit8 v12, v12, 0xa

    sub-int/2addr v5, v4

    add-int/2addr v12, v5

    const/16 v5, 0xc

    if-le v7, v5, :cond_81

    .line 267
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_ec

    :cond_81
    if-le v12, v5, :cond_87

    .line 269
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_ec

    .line 271
    :cond_87
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string v6, "US"

    .line 273
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 274
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    goto :goto_ec

    :cond_9a
    const-string v6, "BR"

    .line 275
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_aa

    const-string v6, "AU"

    .line 276
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ea

    .line 277
    :cond_aa
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    goto :goto_ec

    :cond_ad
    if-ne v9, v10, :cond_b4

    if-ne v15, v10, :cond_b4

    .line 281
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

    goto :goto_ec

    :cond_b4
    if-ne v9, v14, :cond_ea

    if-ne v15, v14, :cond_ea

    .line 283
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

    goto :goto_ec

    .line 287
    :cond_bb
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v15, 0x17

    if-ne v5, v15, :cond_ea

    .line 288
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 289
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 290
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 291
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 292
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v8, v12, :cond_ea

    if-ne v7, v12, :cond_ea

    if-ne v5, v14, :cond_ea

    if-ne v9, v14, :cond_ea

    if-ne v13, v6, :cond_ea

    if-ne v15, v10, :cond_ea

    .line 302
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter_23:Ljava/time/format/DateTimeFormatter;

    goto :goto_ec

    :cond_ea
    move-object/from16 v5, p2

    .line 306
    :goto_ec
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x11

    if-lt v6, v7, :cond_119

    .line 307
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5e74

    if-ne v6, v7, :cond_10f

    .line 309
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x79d2

    if-ne v5, v6, :cond_10c

    .line 310
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

    goto :goto_119

    .line 312
    :cond_10c
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

    goto :goto_119

    :cond_10f
    const v7, 0xb144

    if-ne v6, v7, :cond_119

    .line 315
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

    goto :goto_119

    :cond_117
    move-object/from16 v5, p2

    :cond_119
    :goto_119
    if-nez v5, :cond_170

    .line 321
    new-instance v6, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v6, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v7

    if-eqz v7, :cond_137

    .line 323
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object v0

    .line 324
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_137
    const/4 v6, 0x0

    .line 328
    :goto_138
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_14d

    .line 329
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v4, :cond_14c

    const/16 v8, 0x39

    if-le v7, v8, :cond_149

    goto :goto_14c

    :cond_149
    add-int/lit8 v6, v6, 0x1

    goto :goto_138

    :cond_14c
    :goto_14c
    const/4 v2, 0x0

    :cond_14d
    if-eqz v2, :cond_170

    .line 335
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_170

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_170

    .line 336
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 337
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_170
    if-nez v5, :cond_177

    .line 342
    invoke-static/range {p1 .. p1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_17b

    .line 343
    :cond_177
    invoke-static {v0, v5}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_17b
    return-object v0
.end method

.method protected parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;
    .registers 16

    if-nez p3, :cond_ec

    .line 348
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_c

    .line 349
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d8:Ljava/time/format/DateTimeFormatter;

    .line 352
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    const/16 v5, 0x30

    if-ne p2, v4, :cond_93

    .line 353
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/4 v6, 0x7

    .line 354
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-ne p2, v7, :cond_2a

    if-ne v6, v7, :cond_2a

    .line 356
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_tw:Ljava/time/format/DateTimeFormatter;

    .line 359
    :cond_2a
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 360
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x2

    .line 361
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x3

    .line 362
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/4 v11, 0x5

    .line 363
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

    .line 368
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    :goto_55
    move-object p3, p2

    goto :goto_93

    :cond_57
    if-le v10, p2, :cond_5c

    .line 370
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    goto :goto_55

    .line 372
    :cond_5c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p2

    const-string v4, "US"

    .line 374
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 375
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    goto :goto_55

    :cond_6f
    const-string v4, "BR"

    .line 376
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7f

    const-string v4, "AU"

    .line 377
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_93

    .line 378
    :cond_7f
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    goto :goto_55

    :cond_82
    const/16 p2, 0x2e

    if-ne v9, p2, :cond_8b

    if-ne v11, p2, :cond_8b

    .line 382
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_de:Ljava/time/format/DateTimeFormatter;

    goto :goto_93

    :cond_8b
    const/16 p2, 0x2d

    if-ne v9, p2, :cond_93

    if-ne v11, p2, :cond_93

    .line 384
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_in:Ljava/time/format/DateTimeFormatter;

    .line 388
    :cond_93
    :goto_93
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v4, 0x9

    if-lt p2, v4, :cond_af

    .line 389
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v1, 0x5e74

    if-ne p2, v1, :cond_a7

    .line 391
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_cn:Ljava/time/format/DateTimeFormatter;

    :goto_a5
    move-object p3, p2

    goto :goto_af

    :cond_a7
    const v1, 0xb144

    if-ne p2, v1, :cond_af

    .line 393
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_kr:Ljava/time/format/DateTimeFormatter;

    goto :goto_a5

    :cond_af
    :goto_af
    const/4 p2, 0x0

    .line 398
    :goto_b0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_c4

    .line 399
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
    if-eqz v2, :cond_ec

    .line 405
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-le p2, v0, :cond_ec

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x13

    if-ge p2, v0, :cond_ec

    .line 406
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 409
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    sget-object p2, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    .line 410
    invoke-virtual {p2}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p2

    .line 408
    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 411
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    :cond_ec
    if-nez p3, :cond_f3

    .line 416
    invoke-static {p1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object p1

    goto :goto_f7

    .line 417
    :cond_f3
    invoke-static {p1, p3}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p1

    :goto_f7
    return-object p1
.end method

.method protected parseZonedDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;
    .registers 18

    move-object/from16 v0, p1

    if-nez p2, :cond_11e

    .line 422
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x13

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x30

    if-ne v1, v3, :cond_b9

    .line 423
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v7, 0x7

    .line 424
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    .line 425
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0xd

    .line 426
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x10

    .line 427
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x3a

    if-ne v10, v12, :cond_b9

    if-ne v11, v12, :cond_b9

    const/16 v10, 0x2d

    if-ne v1, v10, :cond_48

    if-ne v7, v10, :cond_48

    const/16 v1, 0x54

    if-ne v9, v1, :cond_40

    .line 431
    sget-object v1, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_bb

    :cond_40
    const/16 v1, 0x20

    if-ne v9, v1, :cond_b9

    .line 433
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_bb

    :cond_48
    const/16 v9, 0x2f

    if-ne v1, v9, :cond_52

    if-ne v7, v9, :cond_52

    .line 436
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_bb

    .line 438
    :cond_52
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 439
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/4 v12, 0x2

    .line 440
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/4 v13, 0x3

    .line 441
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/4 v14, 0x5

    .line 442
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v12, v9, :cond_a9

    if-ne v14, v9, :cond_a9

    sub-int/2addr v7, v6

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v11, v6

    add-int/2addr v7, v11

    sub-int/2addr v13, v6

    mul-int/lit8 v13, v13, 0xa

    sub-int/2addr v1, v6

    add-int/2addr v13, v1

    const/16 v1, 0xc

    if-le v7, v1, :cond_7e

    .line 447
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    goto :goto_bb

    :cond_7e
    if-le v13, v1, :cond_83

    .line 449
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    goto :goto_bb

    .line 451
    :cond_83
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v7, "US"

    .line 453
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_96

    .line 454
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    goto :goto_bb

    :cond_96
    const-string v7, "BR"

    .line 455
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a6

    const-string v7, "AU"

    .line 456
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 457
    :cond_a6
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    goto :goto_bb

    :cond_a9
    const/16 v1, 0x2e

    if-ne v12, v1, :cond_b2

    if-ne v14, v1, :cond_b2

    .line 461
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

    goto :goto_bb

    :cond_b2
    if-ne v12, v10, :cond_b9

    if-ne v14, v10, :cond_b9

    .line 463
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

    goto :goto_bb

    :cond_b9
    move-object/from16 v1, p2

    .line 469
    :goto_bb
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x11

    if-lt v7, v8, :cond_e5

    .line 470
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x5e74

    if-ne v2, v7, :cond_de

    .line 472
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x79d2

    if-ne v1, v2, :cond_db

    .line 473
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

    goto :goto_e5

    .line 475
    :cond_db
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

    goto :goto_e5

    :cond_de
    const v7, 0xb144

    if-ne v2, v7, :cond_e5

    .line 478
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

    :cond_e5
    :goto_e5
    const/4 v2, 0x0

    .line 483
    :goto_e6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_fa

    .line 484
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_fb

    const/16 v8, 0x39

    if-le v7, v8, :cond_f7

    goto :goto_fb

    :cond_f7
    add-int/lit8 v2, v2, 0x1

    goto :goto_e6

    :cond_fa
    const/4 v4, 0x1

    :cond_fb
    :goto_fb
    if-eqz v4, :cond_120

    .line 490
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x8

    if-le v2, v4, :cond_120

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_120

    .line 491
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 492
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_11e
    move-object/from16 v1, p2

    :cond_120
    if-nez v1, :cond_127

    .line 497
    invoke-static/range {p1 .. p1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_12b

    .line 498
    :cond_127
    invoke-static {v0, v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_12b
    return-object v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/BeanContext;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 550
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/BeanContext;->getFormat()Ljava/lang/String;

    move-result-object p3

    .line 551
    check-cast p2, Ljava/time/temporal/TemporalAccessor;

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    iget-object p3, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez p2, :cond_9

    .line 509
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto/16 :goto_71

    :cond_9
    if-nez p4, :cond_f

    .line 512
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    .line 515
    :cond_f
    const-class v0, Ljava/time/LocalDateTime;

    if-ne p4, v0, :cond_6a

    .line 516
    sget-object p4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result p4

    .line 517
    check-cast p2, Ljava/time/LocalDateTime;

    .line 518
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormatPattern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    if-nez v0, :cond_4e

    and-int/2addr p4, p5

    if-nez p4, :cond_4d

    .line 521
    sget-object p4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p4

    if-eqz p4, :cond_2f

    goto :goto_4d

    .line 523
    :cond_2f
    sget-object p4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 524
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    goto :goto_4e

    .line 526
    :cond_3a
    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getNano()I

    move-result p1

    if-nez p1, :cond_41

    goto :goto_4d

    :cond_41
    const p4, 0xf4240

    .line 529
    rem-int/2addr p1, p4

    if-nez p1, :cond_4a

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    goto :goto_4e

    :cond_4a
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSSSSS"

    goto :goto_4e

    :cond_4d
    :goto_4d
    move-object v0, v1

    :cond_4e
    :goto_4e
    if-eqz v0, :cond_54

    .line 538
    invoke-direct {p0, p3, p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    goto :goto_71

    .line 540
    :cond_54
    sget-object p1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto :goto_71

    .line 543
    :cond_6a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    :goto_71
    return-void
.end method
