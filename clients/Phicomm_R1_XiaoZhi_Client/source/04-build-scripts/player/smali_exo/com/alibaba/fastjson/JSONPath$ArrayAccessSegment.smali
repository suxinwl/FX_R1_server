.class Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArrayAccessSegment"
.end annotation


# instance fields
.field private final index:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 2641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2642
    iput p1, p0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->index:I

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;)I
    .registers 1

    .line 2637
    iget p0, p0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->index:I

    return p0
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2646
    iget p2, p0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->index:I

    invoke-virtual {p1, p3, p2}, Lcom/alibaba/fastjson/JSONPath;->getArrayItem(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .registers 5

    .line 2658
    iget-object p1, p2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    check-cast p1, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 2659
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->index:I

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->seekArrayToItem(I)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-boolean p1, p3, Lcom/alibaba/fastjson/JSONPath$Context;->eval:Z

    if-eqz p1, :cond_16

    .line 2662
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    :cond_16
    return-void
.end method

.method public remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z
    .registers 4

    .line 2654
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->index:I

    invoke-virtual {p1, p1, p2, v0}, Lcom/alibaba/fastjson/JSONPath;->removeArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .line 2650
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->index:I

    invoke-virtual {p1, p1, p2, v0, p3}, Lcom/alibaba/fastjson/JSONPath;->setArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method
