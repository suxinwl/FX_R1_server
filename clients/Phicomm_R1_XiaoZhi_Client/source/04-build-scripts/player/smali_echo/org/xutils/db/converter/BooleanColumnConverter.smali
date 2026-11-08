.class public Lorg/xutils/db/converter/BooleanColumnConverter;
.super Ljava/lang/Object;
.source "BooleanColumnConverter.java"

# interfaces
.implements Lorg/xutils/db/converter/ColumnConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/xutils/db/converter/ColumnConverter",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fieldValue2DbValue(Ljava/lang/Boolean;)Ljava/lang/Object;
    .registers 3
    .param p1, "fieldValue"    # Ljava/lang/Boolean;

    .prologue
    .line 20
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 21
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_10
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public bridge synthetic fieldValue2DbValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 12
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/xutils/db/converter/BooleanColumnConverter;->fieldValue2DbValue(Ljava/lang/Boolean;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getColumnDbType()Lorg/xutils/db/sqlite/ColumnDbType;
    .registers 2

    .prologue
    .line 26
    sget-object v0, Lorg/xutils/db/sqlite/ColumnDbType;->INTEGER:Lorg/xutils/db/sqlite/ColumnDbType;

    return-object v0
.end method

.method public getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Boolean;
    .registers 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "index"    # I

    .prologue
    const/4 v0, 0x1

    .line 15
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_14

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_8

    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public bridge synthetic getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/xutils/db/converter/BooleanColumnConverter;->getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
