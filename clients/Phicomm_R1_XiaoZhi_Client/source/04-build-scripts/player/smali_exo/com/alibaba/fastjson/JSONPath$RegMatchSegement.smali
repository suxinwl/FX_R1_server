.class Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;
.super Lcom/alibaba/fastjson/JSONPath$PropertyFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RegMatchSegement"
.end annotation


# instance fields
.field private final op:Lcom/alibaba/fastjson/JSONPath$Operator;

.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/util/regex/Pattern;Lcom/alibaba/fastjson/JSONPath$Operator;)V
    .registers 5

    .line 3327
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;-><init>(Ljava/lang/String;Z)V

    .line 3328
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;->pattern:Ljava/util/regex/Pattern;

    .line 3329
    iput-object p4, p0, Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .line 3333
    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;->get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return p1

    .line 3338
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3340
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 3341
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method
