.class Lcom/alibaba/fastjson/JSONPath$MatchSegement;
.super Lcom/alibaba/fastjson/JSONPath$PropertyFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MatchSegement"
.end annotation


# instance fields
.field private final containsValues:[Ljava/lang/String;

.field private final endsWithValue:Ljava/lang/String;

.field private final minLength:I

.field private final not:Z

.field private final startsWithValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 7

    .line 3190
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;-><init>(Ljava/lang/String;Z)V

    .line 3191
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->startsWithValue:Ljava/lang/String;

    .line 3192
    iput-object p4, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->endsWithValue:Ljava/lang/String;

    .line 3193
    iput-object p5, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->containsValues:[Ljava/lang/String;

    .line 3194
    iput-boolean p6, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    const/4 p1, 0x0

    if-eqz p3, :cond_14

    .line 3198
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    goto :goto_15

    :cond_14
    const/4 p2, 0x0

    :goto_15
    if-eqz p4, :cond_1c

    .line 3202
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    :cond_1c
    if-eqz p5, :cond_2b

    .line 3206
    array-length p3, p5

    :goto_1f
    if-ge p1, p3, :cond_2b

    aget-object p4, p5, p1

    .line 3207
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/2addr p2, p4

    add-int/lit8 p1, p1, 0x1

    goto :goto_1f

    .line 3211
    :cond_2b
    iput p2, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->minLength:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 8

    .line 3215
    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_8

    return p2

    .line 3221
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3223
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    iget p4, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->minLength:I

    if-ge p3, p4, :cond_17

    .line 3224
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    return p1

    .line 3228
    :cond_17
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->startsWithValue:Ljava/lang/String;

    if-eqz p3, :cond_2c

    .line 3229
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_24

    .line 3230
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    return p1

    .line 3232
    :cond_24
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->startsWithValue:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, p2

    goto :goto_2d

    :cond_2c
    const/4 p3, 0x0

    .line 3235
    :goto_2d
    iget-object p4, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->containsValues:[Ljava/lang/String;

    if-eqz p4, :cond_48

    .line 3236
    array-length v0, p4

    :goto_32
    if-ge p2, v0, :cond_48

    aget-object v1, p4, p2

    .line 3237
    invoke-virtual {p1, v1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p3

    const/4 v2, -0x1

    if-ne p3, v2, :cond_40

    .line 3239
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    return p1

    .line 3241
    :cond_40
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_32

    .line 3245
    :cond_48
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->endsWithValue:Ljava/lang/String;

    if-eqz p2, :cond_55

    .line 3246
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_55

    .line 3247
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    return p1

    .line 3251
    :cond_55
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
