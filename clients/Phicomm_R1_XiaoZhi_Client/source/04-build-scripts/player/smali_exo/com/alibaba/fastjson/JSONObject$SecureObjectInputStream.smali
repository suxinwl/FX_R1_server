.class Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;
.super Ljava/io/ObjectInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SecureObjectInputStream"
.end annotation


# static fields
.field static fields:[Ljava/lang/reflect/Field;

.field static volatile fields_error:Z


# direct methods
.method public constructor <init>(Ljava/io/ObjectInputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 557
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    .line 559
    :goto_4
    :try_start_4
    sget-object v1, Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;->fields:[Ljava/lang/reflect/Field;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 560
    sget-object v1, Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;->fields:[Ljava/lang/reflect/Field;

    aget-object v1, v1, v0

    .line 561
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 562
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_14} :catch_17

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :catch_17
    const/4 p1, 0x1

    .line 565
    sput-boolean p1, Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;->fields_error:Z

    :cond_1a
    return-void
.end method

.method static ensureFields()V
    .registers 8

    .line 535
    sget-object v0, Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;->fields:[Ljava/lang/reflect/Field;

    if-nez v0, :cond_3e

    sget-boolean v0, Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;->fields_error:Z

    if-nez v0, :cond_3e

    const/4 v0, 0x1

    .line 537
    :try_start_9
    const-class v1, Ljava/io/ObjectInputStream;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "bin"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "passHandle"

    aput-object v4, v3, v0

    const/4 v4, 0x2

    const-string v6, "handles"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-string v6, "curContext"

    aput-object v6, v3, v4

    new-array v4, v2, [Ljava/lang/reflect/Field;

    :goto_27
    if-ge v5, v2, :cond_39

    .line 541
    const-class v6, Ljava/io/ObjectInputStream;

    aget-object v7, v3, v5

    .line 542
    invoke-static {v6, v7, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 546
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 547
    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 549
    :cond_39
    sput-object v4, Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;->fields:[Ljava/lang/reflect/Field;
    :try_end_3b
    .catchall {:try_start_9 .. :try_end_3b} :catchall_3c

    goto :goto_3e

    .line 551
    :catchall_3c
    sput-boolean v0, Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;->fields_error:Z

    :cond_3e
    :goto_3e
    return-void
.end method


# virtual methods
.method protected readStreamHeader()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    return-void
.end method

.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 571
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_4f

    const/16 v1, 0x5b

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v1, v3, :cond_1a

    add-int/2addr v1, v4

    .line 575
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 577
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_3f

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_3f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_3f

    .line 578
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 581
    :cond_3f
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClassFromMapping(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_4f

    .line 582
    sget-object v1, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    const/4 v2, 0x0

    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->SupportAutoType:Lcom/alibaba/fastjson/parser/Feature;

    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    .line 585
    :cond_4f
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method protected resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 590
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_15

    aget-object v2, p1, v1

    .line 592
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClassFromMapping(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_12

    .line 593
    sget-object v3, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 596
    :cond_15
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
