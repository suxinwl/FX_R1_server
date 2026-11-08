.class public final Lorg/xutils/db/table/ColumnUtils;
.super Ljava/lang/Object;
.source "ColumnUtils.java"


# static fields
.field private static final AUTO_INCREMENT_TYPES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final BOOLEAN_TYPES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final INTEGER_TYPES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lorg/xutils/db/table/ColumnUtils;->BOOLEAN_TYPES:Ljava/util/HashSet;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lorg/xutils/db/table/ColumnUtils;->INTEGER_TYPES:Ljava/util/HashSet;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lorg/xutils/db/table/ColumnUtils;->AUTO_INCREMENT_TYPES:Ljava/util/HashSet;

    .line 36
    sget-object v0, Lorg/xutils/db/table/ColumnUtils;->BOOLEAN_TYPES:Ljava/util/HashSet;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lorg/xutils/db/table/ColumnUtils;->BOOLEAN_TYPES:Ljava/util/HashSet;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lorg/xutils/db/table/ColumnUtils;->INTEGER_TYPES:Ljava/util/HashSet;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lorg/xutils/db/table/ColumnUtils;->INTEGER_TYPES:Ljava/util/HashSet;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lorg/xutils/db/table/ColumnUtils;->AUTO_INCREMENT_TYPES:Ljava/util/HashSet;

    sget-object v1, Lorg/xutils/db/table/ColumnUtils;->INTEGER_TYPES:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 43
    sget-object v0, Lorg/xutils/db/table/ColumnUtils;->AUTO_INCREMENT_TYPES:Ljava/util/HashSet;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lorg/xutils/db/table/ColumnUtils;->AUTO_INCREMENT_TYPES:Ljava/util/HashSet;

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static convert2DbValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 61
    move-object v1, p0

    .line 62
    .local v1, "result":Ljava/lang/Object;
    if-eqz p0, :cond_f

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 64
    .local v2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2}, Lorg/xutils/db/converter/ColumnConverterFactory;->getColumnConverter(Ljava/lang/Class;)Lorg/xutils/db/converter/ColumnConverter;

    move-result-object v0

    .line 65
    .local v0, "converter":Lorg/xutils/db/converter/ColumnConverter;
    invoke-interface {v0, p0}, Lorg/xutils/db/converter/ColumnConverter;->fieldValue2DbValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 67
    .end local v0    # "converter":Lorg/xutils/db/converter/ColumnConverter;
    .end local v2    # "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_f
    return-object v1
.end method

.method private static findBooleanGetMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, "methodName":Ljava/lang/String;
    const-string v2, "is"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 122
    move-object v1, p1

    .line 127
    :goto_c
    const/4 v2, 0x0

    :try_start_d
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_12} :catch_38

    move-result-object v2

    .line 131
    :goto_13
    return-object v2

    .line 124
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    .line 128
    :catch_38
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 131
    const/4 v2, 0x0

    goto :goto_13
.end method

.method private static findBooleanSetMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 10
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, "methodName":Ljava/lang/String;
    const-string v2, "is"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    :goto_30
    const/4 v2, 0x1

    :try_start_31
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_39
    .catch Ljava/lang/NoSuchMethodException; {:try_start_31 .. :try_end_39} :catch_5f

    move-result-object v2

    .line 146
    :goto_3a
    return-object v2

    .line 139
    :cond_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    .line 143
    :catch_5f
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 146
    const/4 v2, 0x0

    goto :goto_3a
.end method

.method static findGetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;
    .registers 10
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 72
    const-class v4, Ljava/lang/Object;

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v2, 0x0

    .line 91
    :cond_b
    :goto_b
    return-object v2

    .line 74
    :cond_c
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "fieldName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 76
    .local v2, "getMethod":Ljava/lang/reflect/Method;
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lorg/xutils/db/table/ColumnUtils;->isBoolean(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 77
    invoke-static {p0, v1}, Lorg/xutils/db/table/ColumnUtils;->findBooleanGetMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 79
    :cond_1f
    if-nez v2, :cond_4b

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "methodName":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_45
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_4a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_45 .. :try_end_4a} :catch_56

    move-result-object v2

    .line 88
    .end local v3    # "methodName":Ljava/lang/String;
    :cond_4b
    :goto_4b
    if-nez v2, :cond_b

    .line 89
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, p1}, Lorg/xutils/db/table/ColumnUtils;->findGetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v2

    goto :goto_b

    .line 83
    .restart local v3    # "methodName":Ljava/lang/String;
    :catch_56
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_4b
.end method

.method static findSetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;
    .registers 11
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 96
    const-class v5, Ljava/lang/Object;

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v4, 0x0

    .line 116
    :cond_b
    :goto_b
    return-object v4

    .line 98
    :cond_c
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "fieldName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 100
    .local v2, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 101
    .local v4, "setMethod":Ljava/lang/reflect/Method;
    invoke-static {v2}, Lorg/xutils/db/table/ColumnUtils;->isBoolean(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 102
    invoke-static {p0, v1, v2}, Lorg/xutils/db/table/ColumnUtils;->findBooleanSetMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 104
    :cond_1f
    if-nez v4, :cond_4e

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "methodName":Ljava/lang/String;
    const/4 v5, 0x1

    :try_start_45
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {p0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_4d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_45 .. :try_end_4d} :catch_59

    move-result-object v4

    .line 113
    .end local v3    # "methodName":Ljava/lang/String;
    :cond_4e
    :goto_4e
    if-nez v4, :cond_b

    .line 114
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, p1}, Lorg/xutils/db/table/ColumnUtils;->findSetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v4

    goto :goto_b

    .line 108
    .restart local v3    # "methodName":Ljava/lang/String;
    :catch_59
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_4e
.end method

.method public static isAutoIdType(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/xutils/db/table/ColumnUtils;->AUTO_INCREMENT_TYPES:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isBoolean(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/xutils/db/table/ColumnUtils;->BOOLEAN_TYPES:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isInteger(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/xutils/db/table/ColumnUtils;->INTEGER_TYPES:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
