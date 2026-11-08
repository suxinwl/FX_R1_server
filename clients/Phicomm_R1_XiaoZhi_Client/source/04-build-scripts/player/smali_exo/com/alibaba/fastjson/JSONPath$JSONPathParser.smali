.class Lcom/alibaba/fastjson/JSONPath$JSONPathParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JSONPathParser"
.end annotation


# static fields
.field private static final strArrayPatternx:Ljava/util/regex/Pattern;

.field private static final strArrayRegex:Ljava/lang/String; = "\'\\s*,\\s*\'"


# instance fields
.field private ch:C

.field private hasRefSegment:Z

.field private level:I

.field private final path:Ljava/lang/String;

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\'\\s*,\\s*\'"

    .line 829
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->strArrayPatternx:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 833
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/fastjson/JSONPath$JSONPathParser;)Z
    .registers 1

    .line 821
    iget-boolean p0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->hasRefSegment:Z

    return p0
.end method

.method static isDigitFirst(C)Z
    .registers 2

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_13

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_13

    const/16 v0, 0x30

    if-lt p0, v0, :cond_11

    const/16 v0, 0x39

    if-gt p0, v0, :cond_11

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
.method accept(C)V
    .registers 5

    .line 1871
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x20

    if-ne v0, v1, :cond_9

    .line 1872
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1875
    :cond_9
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v0, p1, :cond_17

    .line 1879
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result p1

    if-nez p1, :cond_16

    .line 1880
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    :cond_16
    return-void

    .line 1876
    :cond_17
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, ", but \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method buildArraySegement(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$Segment;
    .registers 11

    .line 1922
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 1923
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .line 1924
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2c

    .line 1926
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1928
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, -0x1

    if-le v6, v7, :cond_48

    const/16 v6, 0x27

    if-ne v2, v6, :cond_48

    if-ne v4, v6, :cond_48

    .line 1930
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eq v5, v8, :cond_42

    .line 1932
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->strArrayPatternx:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-nez p1, :cond_36

    goto :goto_42

    :cond_36
    const-string p1, "\'\\s*,\\s*\'"

    .line 1936
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1937
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;-><init>([Ljava/lang/String;)V

    return-object v0

    .line 1933
    :cond_42
    :goto_42
    new-instance p1, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    invoke-direct {p1, v0, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    return-object p1

    :cond_48
    const/16 v0, 0x3a

    .line 1940
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v5, v8, :cond_8a

    if-ne v0, v8, :cond_8a

    .line 1943
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1945
    :try_start_58
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1946
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;-><init>(I)V
    :try_end_61
    .catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_61} :catch_62

    return-object v2

    .line 1948
    :catch_62
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    return-object v0

    .line 1951
    :cond_68
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x22

    if-ne v0, v2, :cond_84

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_84

    .line 1952
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1954
    :cond_84
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :cond_8a
    if-eq v5, v8, :cond_a9

    const-string v0, ","

    .line 1959
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1960
    array-length v0, p1

    new-array v0, v0, [I

    .line 1961
    :goto_95
    array-length v2, p1

    if-ge v1, v2, :cond_a3

    .line 1962
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_95

    .line 1964
    :cond_a3
    new-instance p1, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;-><init>([I)V

    return-object p1

    :cond_a9
    if-eq v0, v8, :cond_122

    const-string v0, ":"

    .line 1968
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1969
    array-length v0, p1

    new-array v2, v0, [I

    const/4 v4, 0x0

    .line 1970
    :goto_b5
    array-length v5, p1

    if-ge v4, v5, :cond_d4

    .line 1971
    aget-object v5, p1, v4

    .line 1972
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_cb

    if-nez v4, :cond_c5

    .line 1974
    aput v1, v2, v4

    goto :goto_d1

    .line 1976
    :cond_c5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1979
    :cond_cb
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v2, v4

    :goto_d1
    add-int/lit8 v4, v4, 0x1

    goto :goto_b5

    .line 1983
    :cond_d4
    aget p1, v2, v1

    if-le v0, v3, :cond_da

    .line 1986
    aget v8, v2, v3

    :cond_da
    const/4 v1, 0x3

    if-ne v0, v1, :cond_df

    .line 1992
    aget v3, v2, v7

    :cond_df
    if-ltz v8, :cond_103

    if-lt v8, p1, :cond_e4

    goto :goto_103

    .line 1998
    :cond_e4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end must greater than or equals start. start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",  end "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_103
    :goto_103
    if-lez v3, :cond_10b

    .line 2005
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;

    invoke-direct {v0, p1, v8, v3}, Lcom/alibaba/fastjson/JSONPath$RangeSegment;-><init>(III)V

    return-object v0

    .line 2003
    :cond_10b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "step must greater than zero : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2008
    :cond_122
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto :goto_129

    :goto_128
    throw p1

    :goto_129
    goto :goto_128
.end method

.method public explain()[Lcom/alibaba/fastjson/JSONPath$Segment;
    .registers 6

    .line 1885
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_53

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 1892
    :goto_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readSegement()Lcom/alibaba/fastjson/JSONPath$Segment;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_21

    .line 1912
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    array-length v3, v0

    if-ne v1, v3, :cond_1b

    return-object v0

    .line 1916
    :cond_1b
    new-array v3, v1, [Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 1917
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    .line 1897
    :cond_21
    instance-of v3, v1, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v3, :cond_3b

    .line 1898
    move-object v3, v1

    check-cast v3, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 1899
    # getter for: Lcom/alibaba/fastjson/JSONPath$PropertySegment;->deep:Z
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->access$100(Lcom/alibaba/fastjson/JSONPath$PropertySegment;)Z

    move-result v4

    if-nez v4, :cond_3b

    # getter for: Lcom/alibaba/fastjson/JSONPath$PropertySegment;->propertyName:Ljava/lang/String;
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->access$400(Lcom/alibaba/fastjson/JSONPath$PropertySegment;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_e

    .line 1904
    :cond_3b
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    array-length v4, v0

    if-ne v3, v4, :cond_4a

    mul-int/lit8 v4, v3, 0x3

    .line 1905
    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 1906
    invoke-static {v0, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v4

    .line 1909
    :cond_4a
    iget v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    aput-object v1, v0, v2

    goto :goto_e

    .line 1886
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_5a

    :goto_59
    throw v0

    :goto_5a
    goto :goto_59
.end method

.method filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;
    .registers 7

    .line 1662
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x26

    if-ne v0, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 1663
    :goto_b
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v4, v3, :cond_15

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->getNextChar()C

    move-result v4

    if-eq v4, v3, :cond_21

    :cond_15
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v4, 0x7c

    if-ne v3, v4, :cond_53

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->getNextChar()C

    move-result v3

    if-ne v3, v4, :cond_53

    .line 1664
    :cond_21
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1665
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1668
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v4, 0x28

    if-ne v3, v4, :cond_31

    .line 1670
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    .line 1673
    :goto_32
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3c

    .line 1674
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_32

    .line 1677
    :cond_3c
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccessFilter(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 1679
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$FilterGroup;

    invoke-direct {v3, p1, v2, v0}, Lcom/alibaba/fastjson/JSONPath$FilterGroup;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;Lcom/alibaba/fastjson/JSONPath$Filter;Z)V

    if-eqz v1, :cond_52

    .line 1681
    iget-char p1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v0, 0x29

    if-ne p1, v0, :cond_52

    .line 1682
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    :cond_52
    move-object p1, v3

    :cond_53
    return-object p1
.end method

.method getNextChar()C
    .registers 3

    .line 841
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method isEOF()Z
    .registers 3

    .line 845
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method next()V
    .registers 4

    .line 837
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    return-void
.end method

.method parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segment;
    .registers 3

    .line 964
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccessFilter(Z)Ljava/lang/Object;

    move-result-object p1

    .line 965
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONPath$Segment;

    if-eqz v0, :cond_b

    .line 966
    check-cast p1, Lcom/alibaba/fastjson/JSONPath$Segment;

    return-object p1

    .line 968
    :cond_b
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    check-cast p1, Lcom/alibaba/fastjson/JSONPath$Filter;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v0
.end method

.method parseArrayAccessFilter(Z)Ljava/lang/Object;
    .registers 28

    move-object/from16 v0, p0

    if-eqz p1, :cond_9

    const/16 v1, 0x5b

    .line 973
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 979
    :cond_9
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x3f

    const/16 v3, 0x28

    const/4 v5, 0x1

    if-ne v1, v2, :cond_25

    .line 980
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 981
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    const/4 v1, 0x1

    .line 983
    :goto_19
    iget-char v2, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v2, v3, :cond_23

    .line 984
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_23
    const/4 v2, 0x1

    goto :goto_27

    :cond_25
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 990
    :goto_27
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    const/16 v6, 0x22

    const/16 v7, 0x27

    const/16 v8, 0x40

    const/16 v9, 0x2f

    const/16 v10, 0x2e

    const/4 v11, -0x1

    const/4 v12, 0x2

    const/16 v13, 0x5c

    const/16 v14, 0x5d

    if-nez v2, :cond_12d

    .line 992
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 993
    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifier(C)Z

    move-result v3

    if-nez v3, :cond_12d

    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 994
    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v3

    if-nez v3, :cond_12d

    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v3, v13, :cond_12d

    if-ne v3, v8, :cond_54

    goto/16 :goto_12d

    .line 1586
    :cond_54
    iget v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    sub-int/2addr v1, v5

    .line 1588
    :goto_57
    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v4, v14, :cond_79

    if-eq v4, v9, :cond_79

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v4

    if-nez v4, :cond_79

    .line 1589
    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v4, v10, :cond_6e

    if-nez v2, :cond_6e

    if-nez v2, :cond_6e

    if-eq v3, v7, :cond_6e

    goto :goto_79

    .line 1597
    :cond_6e
    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v4, v13, :cond_75

    .line 1598
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1600
    :cond_75
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_57

    :cond_79
    :goto_79
    if-eqz p1, :cond_7f

    .line 1605
    iget v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    :goto_7d
    sub-int/2addr v4, v5

    goto :goto_8c

    .line 1607
    :cond_7f
    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v4, v9, :cond_89

    if-ne v4, v10, :cond_86

    goto :goto_89

    .line 1610
    :cond_86
    iget v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    goto :goto_8c

    .line 1608
    :cond_89
    :goto_89
    iget v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    goto :goto_7d

    .line 1614
    :goto_8c
    iget-object v9, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v9, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1616
    invoke-virtual {v1, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eqz v4, :cond_d2

    .line 1617
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v9, 0x0

    .line 1618
    :goto_a2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_ce

    .line 1619
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v13, :cond_c7

    .line 1620
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v14, v16, -0x1

    if-ge v9, v14, :cond_c7

    add-int/lit8 v14, v9, 0x1

    .line 1621
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v8, :cond_c2

    if-eq v10, v13, :cond_c2

    if-ne v10, v6, :cond_c7

    .line 1623
    :cond_c2
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v9, v14

    goto :goto_ca

    .line 1629
    :cond_c7
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_ca
    add-int/2addr v9, v5

    const/16 v14, 0x5d

    goto :goto_a2

    .line 1631
    :cond_ce
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_d2
    const-string v4, "\\."

    .line 1634
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v11, :cond_11b

    if-ne v3, v7, :cond_f7

    .line 1636
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v12, :cond_f7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_f7

    .line 1637
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_10d

    :cond_f7
    const-string v3, "\\\\\\."

    .line 1639
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\-"

    .line 1640
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v11, :cond_10d

    const-string v3, "\\\\-"

    const-string v4, "-"

    .line 1641
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_10d
    :goto_10d
    if-eqz v2, :cond_114

    const/16 v2, 0x29

    .line 1646
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1649
    :cond_114
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    return-object v2

    .line 1652
    :cond_11b
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->buildArraySegement(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$Segment;

    move-result-object v1

    if-eqz p1, :cond_12c

    .line 1654
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v2

    if-nez v2, :cond_12c

    const/16 v2, 0x5d

    .line 1655
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_12c
    return-object v1

    .line 998
    :cond_12d
    :goto_12d
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v3, v8, :cond_137

    .line 999
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1000
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1003
    :cond_137
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v3

    .line 1005
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    const/16 v4, 0x7c

    const/16 v8, 0x26

    const/16 v14, 0x20

    if-eqz v2, :cond_16d

    .line 1007
    iget-char v15, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v12, 0x29

    if-ne v15, v12, :cond_16d

    .line 1008
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1010
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;Z)V

    .line 1011
    :goto_155
    iget-char v2, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v2, v14, :cond_15d

    .line 1012
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_155

    :cond_15d
    if-eq v2, v8, :cond_161

    if-ne v2, v4, :cond_165

    .line 1016
    :cond_161
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v1

    :cond_165
    if-eqz p1, :cond_16c

    const/16 v12, 0x5d

    .line 1020
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_16c
    return-object v1

    :cond_16d
    const/16 v12, 0x5d

    if-eqz p1, :cond_1b9

    .line 1025
    iget-char v15, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v15, v12, :cond_1b9

    .line 1026
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v1

    if-eqz v1, :cond_18e

    const-string v1, "last"

    .line 1027
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    .line 1028
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;

    new-array v2, v5, [I

    const/4 v5, 0x0

    aput v11, v2, v5

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;-><init>([I)V

    return-object v1

    :cond_18e
    const/4 v5, 0x0

    .line 1032
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1033
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v1, v3, v5}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;Z)V

    .line 1034
    :goto_197
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v3, v14, :cond_19f

    .line 1035
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_197

    :cond_19f
    if-eq v3, v8, :cond_1a3

    if-ne v3, v4, :cond_1a7

    .line 1039
    :cond_1a3
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v1

    :cond_1a7
    const/16 v3, 0x29

    .line 1042
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    if-eqz v2, :cond_1b1

    .line 1044
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_1b1
    if-eqz p1, :cond_1b8

    const/16 v2, 0x5d

    .line 1048
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_1b8
    return-object v1

    .line 1054
    :cond_1b9
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1055
    iget-char v12, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v15, 0x28

    if-ne v12, v15, :cond_1cf

    .line 1056
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    const/16 v12, 0x29

    .line 1057
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1058
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    const/4 v12, 0x1

    goto :goto_1d0

    :cond_1cf
    const/4 v12, 0x0

    .line 1062
    :goto_1d0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readOp()Lcom/alibaba/fastjson/JSONPath$Operator;

    move-result-object v15

    .line 1064
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1066
    sget-object v11, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v15, v11, :cond_6b0

    sget-object v11, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v11, :cond_1e1

    goto/16 :goto_6b0

    .line 1095
    :cond_1e1
    sget-object v11, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v15, v11, :cond_4c9

    sget-object v11, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v11, :cond_1eb

    goto/16 :goto_4c9

    .line 1305
    :cond_1eb
    iget-char v11, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v16, 0x0

    if-eq v11, v7, :cond_3c0

    if-ne v11, v6, :cond_1f5

    goto/16 :goto_3c0

    .line 1391
    :cond_1f5
    invoke-static {v11}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v6

    if-eqz v6, :cond_259

    .line 1392
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readLongValue()J

    move-result-wide v6

    .line 1394
    iget-char v9, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const-wide/16 v16, 0x0

    if-ne v9, v10, :cond_20c

    .line 1395
    invoke-virtual {v0, v6, v7}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readDoubleValue(J)D

    move-result-wide v9

    move-wide/from16 v21, v9

    goto :goto_20e

    :cond_20c
    move-wide/from16 v21, v16

    :goto_20e
    cmpl-double v9, v21, v16

    if-nez v9, :cond_222

    .line 1402
    new-instance v9, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;

    move-object/from16 v18, v9

    move-object/from16 v19, v3

    move/from16 v20, v12

    move-wide/from16 v21, v6

    move-object/from16 v23, v15

    invoke-direct/range {v18 .. v23}, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;-><init>(Ljava/lang/String;ZJLcom/alibaba/fastjson/JSONPath$Operator;)V

    goto :goto_22f

    .line 1404
    :cond_222
    new-instance v9, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;

    move-object/from16 v18, v9

    move-object/from16 v19, v3

    move/from16 v20, v12

    move-object/from16 v23, v15

    invoke-direct/range {v18 .. v23}, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;-><init>(Ljava/lang/String;ZDLcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 1407
    :goto_22f
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v3, v14, :cond_237

    .line 1408
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_22f

    :cond_237
    if-le v1, v5, :cond_240

    const/16 v1, 0x29

    if-ne v3, v1, :cond_240

    .line 1412
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1416
    :cond_240
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v1, v8, :cond_246

    if-ne v1, v4, :cond_24a

    .line 1417
    :cond_246
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v9

    :cond_24a
    if-eqz v2, :cond_251

    const/16 v1, 0x29

    .line 1422
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_251
    if-eqz p1, :cond_258

    const/16 v1, 0x5d

    .line 1426
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_258
    return-object v9

    .line 1430
    :cond_259
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x24

    if-ne v1, v6, :cond_281

    .line 1431
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readSegement()Lcom/alibaba/fastjson/JSONPath$Segment;

    move-result-object v1

    .line 1432
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;

    invoke-direct {v4, v3, v12, v1, v15}, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;-><init>(Ljava/lang/String;ZLcom/alibaba/fastjson/JSONPath$Segment;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 1433
    iput-boolean v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->hasRefSegment:Z

    .line 1434
    :goto_26a
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v1, v14, :cond_272

    .line 1435
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_26a

    :cond_272
    if-eqz v2, :cond_279

    const/16 v1, 0x29

    .line 1439
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_279
    if-eqz p1, :cond_280

    const/16 v1, 0x5d

    .line 1443
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_280
    return-object v4

    :cond_281
    if-ne v1, v9, :cond_2c9

    .line 1449
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1451
    :goto_288
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1452
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v1, v9, :cond_2ba

    .line 1453
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1454
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v4, 0x69

    if-ne v1, v4, :cond_29d

    .line 1455
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    const/4 v4, 0x2

    goto :goto_29e

    :cond_29d
    const/4 v4, 0x0

    .line 1469
    :goto_29e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1470
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;

    invoke-direct {v4, v3, v12, v1, v15}, Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;-><init>(Ljava/lang/String;ZLjava/util/regex/Pattern;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    if-eqz v2, :cond_2b2

    const/16 v1, 0x29

    .line 1473
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_2b2
    if-eqz p1, :cond_2b9

    const/16 v1, 0x5d

    .line 1477
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_2b9
    return-object v4

    :cond_2ba
    if-ne v1, v13, :cond_2c5

    .line 1462
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1463
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_288

    .line 1465
    :cond_2c5
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_288

    :cond_2c9
    const/16 v6, 0x6e

    if-ne v1, v6, :cond_316

    .line 1484
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "null"

    .line 1485
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3ba

    .line 1487
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v1, :cond_2e3

    .line 1488
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$NullSegement;

    invoke-direct {v1, v3, v12}, Lcom/alibaba/fastjson/JSONPath$NullSegement;-><init>(Ljava/lang/String;Z)V

    goto :goto_2ef

    .line 1489
    :cond_2e3
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v1, :cond_2ed

    .line 1490
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v1, v3, v12}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;Z)V

    goto :goto_2ef

    :cond_2ed
    move-object/from16 v1, v16

    :goto_2ef
    if-eqz v1, :cond_301

    .line 1494
    :goto_2f1
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v3, v14, :cond_2f9

    .line 1495
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_2f1

    :cond_2f9
    if-eq v3, v8, :cond_2fd

    if-ne v3, v4, :cond_301

    .line 1499
    :cond_2fd
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v1

    :cond_301
    if-eqz v2, :cond_308

    const/16 v2, 0x29

    .line 1504
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_308
    const/16 v2, 0x5d

    .line 1506
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    if-eqz v1, :cond_310

    return-object v1

    .line 1512
    :cond_310
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_316
    const/16 v6, 0x74

    if-ne v1, v6, :cond_368

    .line 1515
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v1

    const-string v6, "true"

    .line 1517
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3ba

    .line 1520
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v1, :cond_332

    .line 1521
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v3, v12, v6, v5}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;ZLjava/lang/Object;Z)V

    goto :goto_341

    .line 1522
    :cond_332
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v1, :cond_33f

    .line 1523
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-direct {v1, v3, v12, v5, v6}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;ZLjava/lang/Object;Z)V

    goto :goto_341

    :cond_33f
    move-object/from16 v1, v16

    :goto_341
    if-eqz v1, :cond_353

    .line 1527
    :goto_343
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v3, v14, :cond_34b

    .line 1528
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_343

    :cond_34b
    if-eq v3, v8, :cond_34f

    if-ne v3, v4, :cond_353

    .line 1532
    :cond_34f
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v1

    :cond_353
    if-eqz v2, :cond_35a

    const/16 v2, 0x29

    .line 1537
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_35a
    const/16 v2, 0x5d

    .line 1539
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    if-eqz v1, :cond_362

    return-object v1

    .line 1545
    :cond_362
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_368
    const/16 v6, 0x66

    if-ne v1, v6, :cond_3ba

    .line 1548
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v1

    const-string v6, "false"

    .line 1550
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3ba

    .line 1553
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v1, :cond_384

    .line 1554
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v3, v12, v6, v5}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;ZLjava/lang/Object;Z)V

    goto :goto_393

    .line 1555
    :cond_384
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v1, :cond_391

    .line 1556
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-direct {v1, v3, v12, v5, v6}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;ZLjava/lang/Object;Z)V

    goto :goto_393

    :cond_391
    move-object/from16 v1, v16

    :goto_393
    if-eqz v1, :cond_3a5

    .line 1560
    :goto_395
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v3, v14, :cond_39d

    .line 1561
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_395

    :cond_39d
    if-eq v3, v8, :cond_3a1

    if-ne v3, v4, :cond_3a5

    .line 1565
    :cond_3a1
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v1

    :cond_3a5
    if-eqz v2, :cond_3ac

    const/16 v2, 0x29

    .line 1570
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_3ac
    const/16 v2, 0x5d

    .line 1572
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    if-eqz v1, :cond_3b4

    return-object v1

    .line 1578
    :cond_3b4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 1582
    :cond_3ba
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 1306
    :cond_3c0
    :goto_3c0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1309
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v6, :cond_3d0

    .line 1310
    new-instance v5, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v12, v1, v6}, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;-><init>(Ljava/lang/String;ZLjava/lang/String;Z)V

    goto/16 :goto_4aa

    .line 1311
    :cond_3d0
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v6, :cond_3dc

    .line 1312
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;

    invoke-direct {v6, v3, v12, v1, v5}, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;-><init>(Ljava/lang/String;ZLjava/lang/String;Z)V

    :goto_3d9
    move-object v5, v6

    goto/16 :goto_4aa

    .line 1313
    :cond_3dc
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v15, v6, :cond_3ec

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v6, :cond_3e5

    goto :goto_3ec

    .line 1369
    :cond_3e5
    new-instance v5, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    invoke-direct {v5, v3, v12, v1, v15}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    goto/16 :goto_4aa

    :cond_3ec
    :goto_3ec
    const-string v6, "%%"

    .line 1314
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const-string v9, "%"

    const/4 v10, -0x1

    if-eq v7, v10, :cond_3fc

    .line 1315
    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3ec

    .line 1318
    :cond_3fc
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v6, :cond_403

    const/16 v24, 0x1

    goto :goto_405

    :cond_403
    const/16 v24, 0x0

    :goto_405
    const/16 v6, 0x25

    .line 1320
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v10, :cond_41c

    .line 1322
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v5, :cond_414

    .line 1323
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_416

    .line 1325
    :cond_414
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1327
    :goto_416
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    invoke-direct {v6, v3, v12, v1, v5}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    goto :goto_3d9

    .line 1329
    :cond_41c
    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-nez v7, :cond_45b

    .line 1335
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_43d

    .line 1336
    array-length v1, v9

    sub-int/2addr v1, v5

    new-array v6, v1, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 1337
    invoke-static {v9, v5, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v23, v6

    :goto_437
    move-object/from16 v21, v16

    move-object/from16 v22, v21

    goto/16 :goto_49e

    :cond_43d
    const/4 v7, 0x0

    .line 1339
    array-length v1, v9

    sub-int/2addr v1, v5

    aget-object v1, v9, v1

    .line 1340
    array-length v6, v9

    const/4 v10, 0x2

    if-le v6, v10, :cond_454

    .line 1341
    array-length v6, v9

    sub-int/2addr v6, v10

    new-array v10, v6, [Ljava/lang/String;

    .line 1342
    invoke-static {v9, v5, v10, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v22, v1

    move-object/from16 v23, v10

    move-object/from16 v21, v16

    goto :goto_49e

    :cond_454
    move-object/from16 v22, v1

    move-object/from16 v21, v16

    move-object/from16 v23, v21

    goto :goto_49e

    :cond_45b
    const/4 v7, 0x0

    .line 1345
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v5

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_470

    .line 1346
    array-length v1, v9

    if-ne v1, v5, :cond_46d

    .line 1347
    aget-object v1, v9, v7

    goto :goto_475

    :cond_46d
    move-object/from16 v23, v9

    goto :goto_437

    .line 1352
    :cond_470
    array-length v1, v9

    if-ne v1, v5, :cond_47c

    .line 1353
    aget-object v1, v9, v7

    :goto_475
    move-object/from16 v21, v1

    move-object/from16 v22, v16

    move-object/from16 v23, v22

    goto :goto_49e

    .line 1354
    :cond_47c
    array-length v1, v9

    const/4 v6, 0x2

    if-ne v1, v6, :cond_48b

    .line 1355
    aget-object v1, v9, v7

    .line 1356
    aget-object v5, v9, v5

    move-object/from16 v21, v1

    move-object/from16 v22, v5

    move-object/from16 v23, v16

    goto :goto_49e

    .line 1358
    :cond_48b
    aget-object v1, v9, v7

    .line 1359
    array-length v10, v9

    sub-int/2addr v10, v5

    aget-object v10, v9, v10

    .line 1360
    array-length v11, v9

    sub-int/2addr v11, v6

    new-array v6, v11, [Ljava/lang/String;

    .line 1361
    invoke-static {v9, v5, v6, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v21, v1

    move-object/from16 v23, v6

    move-object/from16 v22, v10

    .line 1365
    :goto_49e
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$MatchSegement;

    move-object/from16 v18, v1

    move-object/from16 v19, v3

    move/from16 v20, v12

    invoke-direct/range {v18 .. v24}, Lcom/alibaba/fastjson/JSONPath$MatchSegement;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    move-object v5, v1

    .line 1372
    :goto_4aa
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v1, v14, :cond_4b2

    .line 1373
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_4aa

    :cond_4b2
    if-eq v1, v8, :cond_4b6

    if-ne v1, v4, :cond_4ba

    .line 1377
    :cond_4b6
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v5

    :cond_4ba
    if-eqz v2, :cond_4c1

    const/16 v1, 0x29

    .line 1381
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_4c1
    if-eqz p1, :cond_4c8

    const/16 v1, 0x5d

    .line 1385
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_4c8
    return-object v5

    .line 1096
    :cond_4c9
    :goto_4c9
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v1, :cond_4cf

    const/4 v1, 0x1

    goto :goto_4d0

    :cond_4cf
    const/4 v1, 0x0

    :goto_4d0
    const/16 v6, 0x28

    .line 1097
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1099
    new-instance v6, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1101
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v7

    .line 1102
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1105
    :goto_4e1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1106
    iget-char v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v9, 0x2c

    if-eq v7, v9, :cond_69f

    .line 1119
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    :cond_4f1
    :goto_4f1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_521

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_501

    if-eqz v9, :cond_4f1

    const/4 v9, 0x0

    goto :goto_4f1

    .line 1127
    :cond_501
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    if-eqz v9, :cond_519

    .line 1128
    const-class v15, Ljava/lang/Byte;

    if-eq v13, v15, :cond_519

    const-class v15, Ljava/lang/Short;

    if-eq v13, v15, :cond_519

    const-class v15, Ljava/lang/Integer;

    if-eq v13, v15, :cond_519

    const-class v15, Ljava/lang/Long;

    if-eq v13, v15, :cond_519

    const/4 v9, 0x0

    const/4 v11, 0x0

    :cond_519
    if-eqz v10, :cond_4f1

    .line 1134
    const-class v15, Ljava/lang/String;

    if-eq v13, v15, :cond_4f1

    const/4 v10, 0x0

    goto :goto_4f1

    .line 1139
    :cond_521
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v5, :cond_55d

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_55d

    if-eqz v1, :cond_536

    .line 1142
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v1, v3, v12}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;Z)V

    goto :goto_53b

    .line 1144
    :cond_536
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$NullSegement;

    invoke-direct {v1, v3, v12}, Lcom/alibaba/fastjson/JSONPath$NullSegement;-><init>(Ljava/lang/String;Z)V

    .line 1147
    :goto_53b
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v3, v14, :cond_543

    .line 1148
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_53b

    :cond_543
    if-eq v3, v8, :cond_547

    if-ne v3, v4, :cond_54b

    .line 1152
    :cond_547
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v1

    :cond_54b
    const/16 v3, 0x29

    .line 1155
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    if-eqz v2, :cond_555

    .line 1157
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_555
    if-eqz p1, :cond_55c

    const/16 v2, 0x5d

    .line 1161
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_55c
    return-object v1

    :cond_55d
    if-eqz v9, :cond_5e5

    .line 1168
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v5, :cond_5a6

    const/4 v5, 0x0

    .line 1169
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v21

    if-eqz v1, :cond_575

    .line 1170
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_577

    :cond_575
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    :goto_577
    move-object/from16 v23, v1

    .line 1171
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;

    move-object/from16 v18, v1

    move-object/from16 v19, v3

    move/from16 v20, v12

    invoke-direct/range {v18 .. v23}, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;-><init>(Ljava/lang/String;ZJLcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 1172
    :goto_584
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v3, v14, :cond_58c

    .line 1173
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_584

    :cond_58c
    if-eq v3, v8, :cond_590

    if-ne v3, v4, :cond_594

    .line 1177
    :cond_590
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v1

    :cond_594
    const/16 v3, 0x29

    .line 1180
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    if-eqz v2, :cond_59e

    .line 1182
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_59e
    if-eqz p1, :cond_5a5

    const/16 v2, 0x5d

    .line 1186
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_5a5
    return-object v1

    .line 1192
    :cond_5a6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    new-array v7, v5, [J

    const/4 v9, 0x0

    :goto_5ad
    if-ge v9, v5, :cond_5be

    .line 1194
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-static {v10}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v10

    aput-wide v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5ad

    .line 1197
    :cond_5be
    new-instance v5, Lcom/alibaba/fastjson/JSONPath$IntInSegement;

    invoke-direct {v5, v3, v12, v7, v1}, Lcom/alibaba/fastjson/JSONPath$IntInSegement;-><init>(Ljava/lang/String;Z[JZ)V

    .line 1199
    :goto_5c3
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v1, v14, :cond_5cb

    .line 1200
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_5c3

    :cond_5cb
    if-eq v1, v8, :cond_5cf

    if-ne v1, v4, :cond_5d3

    .line 1204
    :cond_5cf
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v5

    :cond_5d3
    const/16 v1, 0x29

    .line 1207
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    if-eqz v2, :cond_5dd

    .line 1209
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_5dd
    if-eqz p1, :cond_5e4

    const/16 v1, 0x5d

    .line 1213
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_5e4
    return-object v5

    :cond_5e5
    if-eqz v10, :cond_652

    .line 1220
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v5, :cond_622

    const/4 v7, 0x0

    .line 1221
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v1, :cond_5f9

    .line 1223
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_5fb

    :cond_5f9
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1224
    :goto_5fb
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    invoke-direct {v6, v3, v12, v5, v1}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 1226
    :goto_600
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v1, v14, :cond_608

    .line 1227
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_600

    :cond_608
    if-eq v1, v8, :cond_60c

    if-ne v1, v4, :cond_610

    .line 1231
    :cond_60c
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v6

    :cond_610
    const/16 v1, 0x29

    .line 1234
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    if-eqz v2, :cond_61a

    .line 1236
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_61a
    if-eqz p1, :cond_621

    const/16 v1, 0x5d

    .line 1240
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_621
    return-object v6

    .line 1246
    :cond_622
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 1247
    invoke-interface {v6, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1249
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$StringInSegement;

    invoke-direct {v6, v3, v12, v5, v1}, Lcom/alibaba/fastjson/JSONPath$StringInSegement;-><init>(Ljava/lang/String;Z[Ljava/lang/String;Z)V

    .line 1251
    :goto_630
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v1, v14, :cond_638

    .line 1252
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_630

    :cond_638
    if-eq v1, v8, :cond_63c

    if-ne v1, v4, :cond_640

    .line 1256
    :cond_63c
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v6

    :cond_640
    const/16 v1, 0x29

    .line 1259
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    if-eqz v2, :cond_64a

    .line 1261
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_64a
    if-eqz p1, :cond_651

    const/16 v1, 0x5d

    .line 1265
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_651
    return-object v6

    :cond_652
    const/4 v7, 0x0

    if-eqz v11, :cond_699

    .line 1272
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    new-array v9, v5, [Ljava/lang/Long;

    :goto_65b
    if-ge v7, v5, :cond_672

    .line 1274
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    if-eqz v10, :cond_66f

    .line 1276
    invoke-static {v10}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v7

    :cond_66f
    add-int/lit8 v7, v7, 0x1

    goto :goto_65b

    .line 1280
    :cond_672
    new-instance v5, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;

    invoke-direct {v5, v3, v12, v9, v1}, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;-><init>(Ljava/lang/String;Z[Ljava/lang/Long;Z)V

    .line 1282
    :goto_677
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v1, v14, :cond_67f

    .line 1283
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_677

    :cond_67f
    if-eq v1, v8, :cond_683

    if-ne v1, v4, :cond_687

    .line 1287
    :cond_683
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v5

    :cond_687
    const/16 v9, 0x29

    .line 1290
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    if-eqz v2, :cond_691

    .line 1292
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_691
    if-eqz p1, :cond_698

    const/16 v10, 0x5d

    .line 1296
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_698
    return-object v5

    .line 1302
    :cond_699
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_69f
    const/4 v7, 0x0

    const/16 v9, 0x29

    const/16 v10, 0x5d

    .line 1109
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1111
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v11

    .line 1112
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4e1

    :cond_6b0
    :goto_6b0
    const/4 v7, 0x0

    .line 1067
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v1, :cond_6b8

    const/16 v25, 0x1

    goto :goto_6ba

    :cond_6b8
    const/16 v25, 0x0

    .line 1069
    :goto_6ba
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v1

    .line 1071
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "and"

    .line 1073
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_70e

    .line 1077
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_706

    if-eqz v2, :cond_706

    .line 1083
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_6fe

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_6fe

    .line 1084
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;

    check-cast v1, Ljava/lang/Number;

    .line 1086
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v21

    check-cast v2, Ljava/lang/Number;

    .line 1087
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v23

    move-object/from16 v18, v4

    move-object/from16 v19, v3

    move/from16 v20, v12

    invoke-direct/range {v18 .. v25}, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;-><init>(Ljava/lang/String;ZJJZ)V

    return-object v4

    .line 1092
    :cond_6fe
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v2, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1080
    :cond_706
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v2, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1074
    :cond_70e
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v2, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    goto :goto_717

    :goto_716
    throw v1

    :goto_717
    goto :goto_716
.end method

.method protected readDoubleValue(J)D
    .registers 6

    .line 1705
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    .line 1707
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1708
    :goto_7
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x30

    if-lt v1, v2, :cond_15

    const/16 v2, 0x39

    if-gt v1, v2, :cond_15

    .line 1709
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_7

    .line 1712
    :cond_15
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v1, v1, -0x1

    .line 1713
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1714
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double p1, p1

    .line 1715
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, p1

    return-wide v0
.end method

.method protected readLongValue()J
    .registers 4

    .line 1689
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    .line 1690
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_e

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_11

    .line 1691
    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1694
    :cond_11
    :goto_11
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x30

    if-lt v1, v2, :cond_1f

    const/16 v2, 0x39

    if-gt v1, v2, :cond_1f

    .line 1695
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_11

    .line 1698
    :cond_1f
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v1, v1, -0x1

    .line 1699
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1700
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method readName()Ljava/lang/String;
    .registers 4

    .line 1821
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1823
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_29

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_29

    .line 1824
    :cond_10
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illeal jsonpath syntax. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1827
    :cond_29
    :goto_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1828
    :goto_2e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v2

    if-nez v2, :cond_5f

    .line 1829
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v2, v1, :cond_4f

    .line 1830
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1831
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1832
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1833
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1835
    :cond_4b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_2e

    .line 1839
    :cond_4f
    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_56

    goto :goto_5f

    .line 1843
    :cond_56
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1844
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_2e

    .line 1847
    :cond_5f
    :goto_5f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v1

    if-eqz v1, :cond_72

    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 1848
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1851
    :cond_72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readOp()Lcom/alibaba/fastjson/JSONPath$Operator;
    .registers 7

    .line 1749
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_20

    .line 1750
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1751
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x7e

    if-ne v0, v2, :cond_15

    .line 1752
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1753
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->REG_MATCH:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_56

    :cond_15
    if-ne v0, v1, :cond_1d

    .line 1755
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1756
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_56

    .line 1758
    :cond_1d
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_56

    :cond_20
    const/16 v2, 0x21

    if-ne v0, v2, :cond_2d

    .line 1761
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1762
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1763
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_56

    :cond_2d
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_41

    .line 1765
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1766
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v0, v1, :cond_3e

    .line 1767
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1768
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_56

    .line 1770
    :cond_3e
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LT:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_56

    :cond_41
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_55

    .line 1773
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1774
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v0, v1, :cond_52

    .line 1775
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1776
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->GE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_56

    .line 1778
    :cond_52
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->GT:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_56

    :cond_55
    const/4 v0, 0x0

    :goto_56
    if-nez v0, :cond_d2

    .line 1783
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "not"

    .line 1785
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "between"

    const-string v3, "in"

    const-string v4, "rlike"

    const-string v5, "like"

    if-eqz v1, :cond_9d

    .line 1786
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1788
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 1790
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 1791
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_d2

    .line 1792
    :cond_7c
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 1793
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_d2

    .line 1794
    :cond_85
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 1795
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_d2

    .line 1796
    :cond_8e
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 1797
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_d2

    .line 1799
    :cond_97
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_9d
    const-string v1, "nin"

    .line 1801
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 1802
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_d2

    .line 1804
    :cond_a8
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 1805
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_d2

    .line 1806
    :cond_b1
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 1807
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_d2

    .line 1808
    :cond_ba
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 1809
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_d2

    .line 1810
    :cond_c3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 1811
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_d2

    .line 1813
    :cond_cc
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_d2
    :goto_d2
    return-object v0
.end method

.method readSegement()Lcom/alibaba/fastjson/JSONPath$Segment;
    .registers 10

    .line 849
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_40

    .line 850
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 851
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    add-int/lit8 v0, v0, -0x30

    .line 852
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;-><init>(I)V

    return-object v1

    .line 853
    :cond_20
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x61

    if-lt v0, v3, :cond_2a

    const/16 v3, 0x7a

    if-le v0, v3, :cond_34

    :cond_2a
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x41

    if-lt v0, v3, :cond_40

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_40

    .line 854
    :cond_34
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    return-object v0

    .line 857
    :cond_40
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v0

    if-nez v0, :cond_1b8

    .line 858
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 860
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x24

    const/16 v4, 0x3f

    if-ne v0, v3, :cond_67

    .line 861
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 862
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 863
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v0, v4, :cond_40

    .line 864
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    .line 865
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccessFilter(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONPath$Filter;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v0

    :cond_67
    const/16 v3, 0x5b

    const-string v5, "not support jsonpath : "

    const/16 v6, 0x2e

    if-eq v0, v6, :cond_ae

    const/16 v7, 0x2f

    if-ne v0, v7, :cond_74

    goto :goto_ae

    :cond_74
    if-ne v0, v3, :cond_7b

    .line 932
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segment;

    move-result-object v0

    return-object v0

    .line 935
    :cond_7b
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    if-nez v1, :cond_89

    .line 936
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 938
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    invoke-direct {v1, v0, v2}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    return-object v1

    :cond_89
    if-ne v0, v4, :cond_97

    .line 942
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    .line 943
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccessFilter(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONPath$Filter;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v0

    .line 946
    :cond_97
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_ae
    :goto_ae
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 873
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    const/16 v4, 0x2a

    if-ne v0, v6, :cond_fc

    .line 874
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v0, v6, :cond_fc

    .line 875
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 877
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v7, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v8, v7, 0x3

    if-le v0, v8, :cond_fd

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v0, v3, :cond_fd

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 879
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_fd

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/2addr v3, v1

    .line 880
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x5d

    if-ne v0, v3, :cond_fd

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v3, v3, 0x2

    .line 881
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_fd

    .line 882
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 883
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 884
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 885
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_fd

    :cond_fc
    const/4 v1, 0x0

    .line 888
    :cond_fd
    :goto_fd
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v0, v4, :cond_112

    .line 889
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v0

    if-nez v0, :cond_10a

    .line 890
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    :cond_10a
    if-eqz v1, :cond_10f

    .line 893
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->instance_deep:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    goto :goto_111

    :cond_10f
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    :goto_111
    return-object v0

    .line 896
    :cond_112
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 897
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segment;

    move-result-object v0

    return-object v0

    .line 900
    :cond_11d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 901
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x28

    if-ne v2, v3, :cond_1b2

    .line 902
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 903
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x29

    if-ne v1, v2, :cond_19b

    .line 904
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v1

    if-nez v1, :cond_139

    .line 905
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    :cond_139
    const-string v1, "size"

    .line 908
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_198

    const-string v1, "length"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14a

    goto :goto_198

    :cond_14a
    const-string v1, "max"

    .line 910
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_155

    .line 911
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$MaxSegment;->instance:Lcom/alibaba/fastjson/JSONPath$MaxSegment;

    return-object v0

    :cond_155
    const-string v1, "min"

    .line 912
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_160

    .line 913
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$MinSegment;->instance:Lcom/alibaba/fastjson/JSONPath$MinSegment;

    return-object v0

    :cond_160
    const-string v1, "keySet"

    .line 914
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16b

    .line 915
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$KeySetSegment;->instance:Lcom/alibaba/fastjson/JSONPath$KeySetSegment;

    return-object v0

    :cond_16b
    const-string v1, "type"

    .line 916
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_176

    .line 917
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$TypeSegment;->instance:Lcom/alibaba/fastjson/JSONPath$TypeSegment;

    return-object v0

    :cond_176
    const-string v1, "floor"

    .line 918
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_181

    .line 919
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$FloorSegment;->instance:Lcom/alibaba/fastjson/JSONPath$FloorSegment;

    return-object v0

    .line 922
    :cond_181
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 909
    :cond_198
    :goto_198
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$SizeSegment;->instance:Lcom/alibaba/fastjson/JSONPath$SizeSegment;

    return-object v0

    .line 925
    :cond_19b
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 928
    :cond_1b2
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    invoke-direct {v2, v0, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    return-object v2

    :cond_1b8
    const/4 v0, 0x0

    return-object v0
.end method

.method readString()Ljava/lang/String;
    .registers 5

    .line 1855
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 1856
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1858
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v1, v1, -0x1

    .line 1859
    :goto_9
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v2, v0, :cond_17

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v2

    if-nez v2, :cond_17

    .line 1860
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_9

    .line 1863
    :cond_17
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v3

    if-eqz v3, :cond_22

    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    goto :goto_26

    :cond_22
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v3, v3, -0x1

    :goto_26
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1865
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    return-object v1
.end method

.method protected readValue()Ljava/lang/Object;
    .registers 3

    .line 1720
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1722
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1723
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readLongValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1726
    :cond_14
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3f

    const/16 v1, 0x27

    if-ne v0, v1, :cond_1f

    goto :goto_3f

    :cond_1f
    const/16 v1, 0x6e

    if-ne v0, v1, :cond_39

    .line 1731
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    .line 1733
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    return-object v0

    .line 1736
    :cond_31
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1740
    :cond_39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1727
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final skipWhitespace()V
    .registers 3

    .line 954
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x20

    if-gt v0, v1, :cond_20

    if-eq v0, v1, :cond_1c

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1c

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1c

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x8

    if-ne v0, v1, :cond_20

    .line 955
    :cond_1c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    :cond_20
    return-void
.end method
