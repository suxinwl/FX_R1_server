.class final Lcom/phicomm/speaker/player/logger/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 47
    if-ne p0, p1, :cond_5

    .line 61
    :cond_4
    :goto_4
    return v2

    .line 48
    :cond_5
    if-eqz p0, :cond_32

    if-eqz p1, :cond_32

    .line 49
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 50
    .local v1, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v1, v4, :cond_32

    .line 51
    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_20

    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_20

    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4

    .line 54
    :cond_20
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    if-ge v0, v1, :cond_4

    .line 55
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2f

    move v2, v3

    goto :goto_4

    .line 54
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_32
    move v2, v3

    .line 61
    goto :goto_4
.end method

.method static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    if-nez p0, :cond_5

    .line 72
    const-string v3, ""

    .line 89
    :goto_4
    return-object v3

    .line 77
    :cond_5
    move-object v2, p0

    .line 78
    .local v2, "t":Ljava/lang/Throwable;
    :goto_6
    if-eqz v2, :cond_14

    .line 79
    instance-of v3, v2, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_f

    .line 80
    const-string v3, ""

    goto :goto_4

    .line 82
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_6

    .line 85
    :cond_14
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 86
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 87
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 88
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 89
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4
.end method

.method static isEmpty(Ljava/lang/CharSequence;)Z
    .registers 2
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 31
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static logLevel(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .prologue
    .line 93
    packed-switch p0, :pswitch_data_18

    .line 107
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 95
    :pswitch_6
    const-string v0, "VERBOSE"

    goto :goto_5

    .line 97
    :pswitch_9
    const-string v0, "DEBUG"

    goto :goto_5

    .line 99
    :pswitch_c
    const-string v0, "INFO"

    goto :goto_5

    .line 101
    :pswitch_f
    const-string v0, "WARN"

    goto :goto_5

    .line 103
    :pswitch_12
    const-string v0, "ERROR"

    goto :goto_5

    .line 105
    :pswitch_15
    const-string v0, "ASSERT"

    goto :goto_5

    .line 93
    :pswitch_data_18
    .packed-switch 0x2
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
    .end packed-switch
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 112
    if-nez p0, :cond_5

    .line 113
    const-string v0, "null"

    .line 145
    :goto_4
    return-object v0

    .line 115
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_14

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 118
    :cond_14
    instance-of v0, p0, [Z

    if-eqz v0, :cond_21

    .line 119
    check-cast p0, [Z

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [Z

    invoke-static {p0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 121
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_21
    instance-of v0, p0, [B

    if-eqz v0, :cond_2e

    .line 122
    check-cast p0, [B

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 124
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_2e
    instance-of v0, p0, [C

    if-eqz v0, :cond_3b

    .line 125
    check-cast p0, [C

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [C

    invoke-static {p0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 127
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_3b
    instance-of v0, p0, [S

    if-eqz v0, :cond_48

    .line 128
    check-cast p0, [S

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [S

    invoke-static {p0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 130
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_48
    instance-of v0, p0, [I

    if-eqz v0, :cond_55

    .line 131
    check-cast p0, [I

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 133
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_55
    instance-of v0, p0, [J

    if-eqz v0, :cond_62

    .line 134
    check-cast p0, [J

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [J

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 136
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_62
    instance-of v0, p0, [F

    if-eqz v0, :cond_6f

    .line 137
    check-cast p0, [F

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 139
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_6f
    instance-of v0, p0, [D

    if-eqz v0, :cond_7c

    .line 140
    check-cast p0, [D

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [D

    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 142
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_7c
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_8a

    .line 143
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 145
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_8a
    const-string v0, "Couldn\'t find a correct type for the object"

    goto/16 :goto_4
.end method
