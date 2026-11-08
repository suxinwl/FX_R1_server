.class public final Lorg/xutils/db/table/ColumnEntity;
.super Ljava/lang/Object;
.source "ColumnEntity.java"


# instance fields
.field protected final columnConverter:Lorg/xutils/db/converter/ColumnConverter;

.field protected final columnField:Ljava/lang/reflect/Field;

.field protected final getMethod:Ljava/lang/reflect/Method;

.field private final isAutoId:Z

.field private final isId:Z

.field protected final name:Ljava/lang/String;

.field private final property:Ljava/lang/String;

.field protected final setMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Lorg/xutils/db/annotation/Column;)V
    .registers 7
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "column"    # Lorg/xutils/db/annotation/Column;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Field;",
            "Lorg/xutils/db/annotation/Column;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p2, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 45
    iput-object p2, p0, Lorg/xutils/db/table/ColumnEntity;->columnField:Ljava/lang/reflect/Field;

    .line 46
    invoke-interface {p3}, Lorg/xutils/db/annotation/Column;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->name:Ljava/lang/String;

    .line 47
    invoke-interface {p3}, Lorg/xutils/db/annotation/Column;->property()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->property:Ljava/lang/String;

    .line 48
    invoke-interface {p3}, Lorg/xutils/db/annotation/Column;->isId()Z

    move-result v1

    iput-boolean v1, p0, Lorg/xutils/db/table/ColumnEntity;->isId:Z

    .line 50
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 51
    .local v0, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-boolean v1, p0, Lorg/xutils/db/table/ColumnEntity;->isId:Z

    if-eqz v1, :cond_67

    invoke-interface {p3}, Lorg/xutils/db/annotation/Column;->autoGen()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-static {v0}, Lorg/xutils/db/table/ColumnUtils;->isAutoIdType(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_67

    move v1, v2

    :goto_30
    iput-boolean v1, p0, Lorg/xutils/db/table/ColumnEntity;->isAutoId:Z

    .line 52
    invoke-static {v0}, Lorg/xutils/db/converter/ColumnConverterFactory;->getColumnConverter(Ljava/lang/Class;)Lorg/xutils/db/converter/ColumnConverter;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->columnConverter:Lorg/xutils/db/converter/ColumnConverter;

    .line 55
    invoke-static {p1, p2}, Lorg/xutils/db/table/ColumnUtils;->findGetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->getMethod:Ljava/lang/reflect/Method;

    .line 56
    iget-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->getMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->getMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 57
    iget-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->getMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 59
    :cond_4f
    invoke-static {p1, p2}, Lorg/xutils/db/table/ColumnUtils;->findSetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    .line 60
    iget-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_66

    iget-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_66

    .line 61
    iget-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 63
    :cond_66
    return-void

    .line 51
    :cond_67
    const/4 v1, 0x0

    goto :goto_30
.end method


# virtual methods
.method public getColumnConverter()Lorg/xutils/db/converter/ColumnConverter;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->columnConverter:Lorg/xutils/db/converter/ColumnConverter;

    return-object v0
.end method

.method public getColumnDbType()Lorg/xutils/db/sqlite/ColumnDbType;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->columnConverter:Lorg/xutils/db/converter/ColumnConverter;

    invoke-interface {v0}, Lorg/xutils/db/converter/ColumnConverter;->getColumnDbType()Lorg/xutils/db/sqlite/ColumnDbType;

    move-result-object v0

    return-object v0
.end method

.method public getColumnField()Ljava/lang/reflect/Field;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->columnField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lorg/xutils/db/table/ColumnEntity;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, "fieldValue":Ljava/lang/Object;
    iget-boolean v1, p0, Lorg/xutils/db/table/ColumnEntity;->isAutoId:Z

    if-eqz v1, :cond_21

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 88
    :cond_1f
    const/4 v1, 0x0

    .line 90
    :goto_20
    return-object v1

    :cond_21
    iget-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->columnConverter:Lorg/xutils/db/converter/ColumnConverter;

    invoke-interface {v1, v0}, Lorg/xutils/db/converter/ColumnConverter;->fieldValue2DbValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_20
.end method

.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, "fieldValue":Ljava/lang/Object;
    if-eqz p1, :cond_10

    .line 117
    iget-object v2, p0, Lorg/xutils/db/table/ColumnEntity;->getMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1a

    .line 119
    :try_start_7
    iget-object v2, p0, Lorg/xutils/db/table/ColumnEntity;->getMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_f} :catch_11

    move-result-object v1

    .line 131
    .end local v1    # "fieldValue":Ljava/lang/Object;
    :cond_10
    :goto_10
    return-object v1

    .line 120
    .restart local v1    # "fieldValue":Ljava/lang/Object;
    :catch_11
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 125
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1a
    :try_start_1a
    iget-object v2, p0, Lorg/xutils/db/table/ColumnEntity;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1f} :catch_21

    move-result-object v1

    goto :goto_10

    .line 126
    :catch_21
    move-exception v0

    .line 127
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->property:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoId()Z
    .registers 2

    .prologue
    .line 147
    iget-boolean v0, p0, Lorg/xutils/db/table/ColumnEntity;->isAutoId:Z

    return v0
.end method

.method public isId()Z
    .registers 2

    .prologue
    .line 143
    iget-boolean v0, p0, Lorg/xutils/db/table/ColumnEntity;->isId:Z

    return v0
.end method

.method public setAutoIdValue(Ljava/lang/Object;J)V
    .registers 10
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "value"    # J

    .prologue
    .line 94
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 95
    .local v1, "idValue":Ljava/lang/Long;
    iget-object v2, p0, Lorg/xutils/db/table/ColumnEntity;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/xutils/db/table/ColumnUtils;->isInteger(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 96
    long-to-int v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 99
    .end local v1    # "idValue":Ljava/lang/Long;
    :cond_15
    iget-object v2, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2e

    .line 101
    :try_start_19
    iget-object v2, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_24} :catch_25

    .line 112
    :goto_24
    return-void

    .line 102
    :catch_25
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_24

    .line 107
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2e
    :try_start_2e
    iget-object v2, p0, Lorg/xutils/db/table/ColumnEntity;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_33} :catch_34

    goto :goto_24

    .line 108
    :catch_34
    move-exception v0

    .line 109
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_24
.end method

.method public setValueFromCursor(Ljava/lang/Object;Landroid/database/Cursor;I)V
    .registers 9
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "index"    # I

    .prologue
    .line 66
    iget-object v2, p0, Lorg/xutils/db/table/ColumnEntity;->columnConverter:Lorg/xutils/db/converter/ColumnConverter;

    invoke-interface {v2, p2, p3}, Lorg/xutils/db/converter/ColumnConverter;->getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v1

    .line 67
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_9

    .line 82
    :goto_8
    return-void

    .line 69
    :cond_9
    iget-object v2, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_22

    .line 71
    :try_start_d
    iget-object v2, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_18} :catch_19

    goto :goto_8

    .line 72
    :catch_19
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 77
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_22
    :try_start_22
    iget-object v2, p0, Lorg/xutils/db/table/ColumnEntity;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_27} :catch_28

    goto :goto_8

    .line 78
    :catch_28
    move-exception v0

    .line 79
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->name:Ljava/lang/String;

    return-object v0
.end method
