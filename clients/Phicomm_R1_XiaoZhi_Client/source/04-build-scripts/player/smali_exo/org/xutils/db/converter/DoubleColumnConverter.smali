.class public Lorg/xutils/db/converter/DoubleColumnConverter;
.super Ljava/lang/Object;
.source "DoubleColumnConverter.java"

# interfaces
.implements Lorg/xutils/db/converter/ColumnConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/xutils/db/converter/ColumnConverter",
        "<",
        "Ljava/lang/Double;",
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
.method public fieldValue2DbValue(Ljava/lang/Double;)Ljava/lang/Object;
    .registers 2
    .param p1, "fieldValue"    # Ljava/lang/Double;

    .prologue
    .line 20
    return-object p1
.end method

.method public bridge synthetic fieldValue2DbValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 12
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lorg/xutils/db/converter/DoubleColumnConverter;->fieldValue2DbValue(Ljava/lang/Double;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getColumnDbType()Lorg/xutils/db/sqlite/ColumnDbType;
    .registers 2

    .prologue
    .line 25
    sget-object v0, Lorg/xutils/db/sqlite/ColumnDbType;->REAL:Lorg/xutils/db/sqlite/ColumnDbType;

    return-object v0
.end method

.method public getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Double;
    .registers 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "index"    # I

    .prologue
    .line 15
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_7
.end method

.method public bridge synthetic getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/xutils/db/converter/DoubleColumnConverter;->getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
