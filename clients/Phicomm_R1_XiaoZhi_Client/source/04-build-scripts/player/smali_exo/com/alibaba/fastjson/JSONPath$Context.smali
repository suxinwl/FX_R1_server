.class Lcom/alibaba/fastjson/JSONPath$Context;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Context"
.end annotation


# instance fields
.field final eval:Z

.field object:Ljava/lang/Object;

.field final parent:Lcom/alibaba/fastjson/JSONPath$Context;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/JSONPath$Context;Z)V
    .registers 3

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$Context;->parent:Lcom/alibaba/fastjson/JSONPath$Context;

    .line 196
    iput-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$Context;->eval:Z

    return-void
.end method
