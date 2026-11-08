.class public final Lorg/xutils/db/DbManagerImpl;
.super Lorg/xutils/db/table/DbBase;
.source "DbManagerImpl.java"


# static fields
.field private static final DAO_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/xutils/DbManager$DaoConfig;",
            "Lorg/xutils/db/DbManagerImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allowTransaction:Z

.field private daoConfig:Lorg/xutils/DbManager$DaoConfig;

.field private database:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/xutils/db/DbManagerImpl;->DAO_MAP:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lorg/xutils/DbManager$DaoConfig;)V
    .registers 5
    .param p1, "config"    # Lorg/xutils/DbManager$DaoConfig;

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/xutils/db/table/DbBase;-><init>()V

    .line 57
    if-nez p1, :cond_d

    .line 58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "daoConfig may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_d
    iput-object p1, p0, Lorg/xutils/db/DbManagerImpl;->daoConfig:Lorg/xutils/DbManager$DaoConfig;

    .line 61
    invoke-virtual {p1}, Lorg/xutils/DbManager$DaoConfig;->isAllowTransaction()Z

    move-result v1

    iput-boolean v1, p0, Lorg/xutils/db/DbManagerImpl;->allowTransaction:Z

    .line 62
    invoke-direct {p0, p1}, Lorg/xutils/db/DbManagerImpl;->openOrCreateDatabase(Lorg/xutils/DbManager$DaoConfig;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 63
    invoke-virtual {p1}, Lorg/xutils/DbManager$DaoConfig;->getDbOpenListener()Lorg/xutils/DbManager$DbOpenListener;

    move-result-object v0

    .line 64
    .local v0, "dbOpenListener":Lorg/xutils/DbManager$DbOpenListener;
    if-eqz v0, :cond_24

    .line 65
    invoke-interface {v0, p0}, Lorg/xutils/DbManager$DbOpenListener;->onDbOpened(Lorg/xutils/DbManager;)V

    .line 67
    :cond_24
    return-void
.end method

.method private beginTransaction()V
    .registers 3

    .prologue
    .line 478
    iget-boolean v0, p0, Lorg/xutils/db/DbManagerImpl;->allowTransaction:Z

    if-eqz v0, :cond_17

    .line 479
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_18

    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 480
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 485
    :cond_17
    :goto_17
    return-void

    .line 482
    :cond_18
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_17
.end method

.method private endTransaction()V
    .registers 2

    .prologue
    .line 494
    iget-boolean v0, p0, Lorg/xutils/db/DbManagerImpl;->allowTransaction:Z

    if-eqz v0, :cond_9

    .line 495
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 497
    :cond_9
    return-void
.end method

.method public static declared-synchronized getInstance(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;
    .registers 9
    .param p0, "daoConfig"    # Lorg/xutils/DbManager$DaoConfig;

    .prologue
    .line 71
    const-class v7, Lorg/xutils/db/DbManagerImpl;

    monitor-enter v7

    if-nez p0, :cond_a

    .line 72
    :try_start_5
    new-instance p0, Lorg/xutils/DbManager$DaoConfig;

    .end local p0    # "daoConfig":Lorg/xutils/DbManager$DaoConfig;
    invoke-direct {p0}, Lorg/xutils/DbManager$DaoConfig;-><init>()V

    .line 75
    .restart local p0    # "daoConfig":Lorg/xutils/DbManager$DaoConfig;
    :cond_a
    sget-object v6, Lorg/xutils/db/DbManagerImpl;->DAO_MAP:Ljava/util/HashMap;

    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/db/DbManagerImpl;

    .line 76
    .local v0, "dao":Lorg/xutils/db/DbManagerImpl;
    if-nez v0, :cond_3a

    .line 77
    new-instance v0, Lorg/xutils/db/DbManagerImpl;

    .end local v0    # "dao":Lorg/xutils/db/DbManagerImpl;
    invoke-direct {v0, p0}, Lorg/xutils/db/DbManagerImpl;-><init>(Lorg/xutils/DbManager$DaoConfig;)V

    .line 78
    .restart local v0    # "dao":Lorg/xutils/db/DbManagerImpl;
    sget-object v6, Lorg/xutils/db/DbManagerImpl;->DAO_MAP:Ljava/util/HashMap;

    invoke-virtual {v6, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :goto_1e
    iget-object v1, v0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 85
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    .line 86
    .local v4, "oldVersion":I
    invoke-virtual {p0}, Lorg/xutils/DbManager$DaoConfig;->getDbVersion()I

    move-result v3

    .line 87
    .local v3, "newVersion":I
    if-eq v4, v3, :cond_38

    .line 88
    if-eqz v4, :cond_35

    .line 89
    invoke-virtual {p0}, Lorg/xutils/DbManager$DaoConfig;->getDbUpgradeListener()Lorg/xutils/DbManager$DbUpgradeListener;

    move-result-object v5

    .line 90
    .local v5, "upgradeListener":Lorg/xutils/DbManager$DbUpgradeListener;
    if-eqz v5, :cond_40

    .line 91
    invoke-interface {v5, v0, v4, v3}, Lorg/xutils/DbManager$DbUpgradeListener;->onUpgrade(Lorg/xutils/DbManager;II)V

    .line 100
    .end local v5    # "upgradeListener":Lorg/xutils/DbManager$DbUpgradeListener;
    :cond_35
    :goto_35
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_3d

    .line 103
    :cond_38
    monitor-exit v7

    return-object v0

    .line 80
    .end local v1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "newVersion":I
    .end local v4    # "oldVersion":I
    :cond_3a
    :try_start_3a
    iput-object p0, v0, Lorg/xutils/db/DbManagerImpl;->daoConfig:Lorg/xutils/DbManager$DaoConfig;
    :try_end_3c
    .catchall {:try_start_3a .. :try_end_3c} :catchall_3d

    goto :goto_1e

    .line 71
    .end local v0    # "dao":Lorg/xutils/db/DbManagerImpl;
    :catchall_3d
    move-exception v6

    monitor-exit v7

    throw v6

    .line 94
    .restart local v0    # "dao":Lorg/xutils/db/DbManagerImpl;
    .restart local v1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "newVersion":I
    .restart local v4    # "oldVersion":I
    .restart local v5    # "upgradeListener":Lorg/xutils/DbManager$DbUpgradeListener;
    :cond_40
    :try_start_40
    invoke-virtual {v0}, Lorg/xutils/db/DbManagerImpl;->dropDb()V
    :try_end_43
    .catch Lorg/xutils/ex/DbException; {:try_start_40 .. :try_end_43} :catch_44
    .catchall {:try_start_40 .. :try_end_43} :catchall_3d

    goto :goto_35

    .line 95
    :catch_44
    move-exception v2

    .line 96
    .local v2, "e":Lorg/xutils/ex/DbException;
    :try_start_45
    invoke-virtual {v2}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_3d

    goto :goto_35
.end method

.method private getLastAutoIncrementId(Ljava/lang/String;)J
    .registers 8
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 451
    const-wide/16 v2, -0x1

    .line 452
    .local v2, "id":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT seq FROM sqlite_sequence WHERE name=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' LIMIT 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 453
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2f

    .line 455
    :try_start_21
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 456
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_2b} :catch_30
    .catchall {:try_start_21 .. :try_end_2b} :catchall_37

    move-result-wide v2

    .line 461
    :cond_2c
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 464
    :cond_2f
    return-wide v2

    .line 458
    :catch_30
    move-exception v1

    .line 459
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_31
    new-instance v4, Lorg/xutils/ex/DbException;

    invoke-direct {v4, v1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_37

    .line 461
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_37
    move-exception v4

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    throw v4
.end method

.method private openOrCreateDatabase(Lorg/xutils/DbManager$DaoConfig;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 9
    .param p1, "config"    # Lorg/xutils/DbManager$DaoConfig;

    .prologue
    const/4 v6, 0x0

    .line 406
    const/4 v2, 0x0

    .line 408
    .local v2, "result":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Lorg/xutils/DbManager$DaoConfig;->getDbDir()Ljava/io/File;

    move-result-object v0

    .line 409
    .local v0, "dbDir":Ljava/io/File;
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 410
    :cond_14
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lorg/xutils/DbManager$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 411
    .local v1, "dbFile":Ljava/io/File;
    invoke-static {v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 415
    .end local v1    # "dbFile":Ljava/io/File;
    :goto_21
    return-object v2

    .line 413
    :cond_22
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {p1}, Lorg/xutils/DbManager$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/Application;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    goto :goto_21
.end method

.method private saveBindingIdWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Z
    .registers 9
    .param p2, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .local p1, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    const/4 v1, 0x1

    .line 433
    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->getId()Lorg/xutils/db/table/ColumnEntity;

    move-result-object v0

    .line 434
    .local v0, "id":Lorg/xutils/db/table/ColumnEntity;
    invoke-virtual {v0}, Lorg/xutils/db/table/ColumnEntity;->isAutoId()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 435
    invoke-static {p1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 436
    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/xutils/db/DbManagerImpl;->getLastAutoIncrementId(Ljava/lang/String;)J

    move-result-wide v2

    .line 437
    .local v2, "idValue":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_22

    .line 438
    const/4 v1, 0x0

    .line 444
    .end local v2    # "idValue":J
    :goto_21
    return v1

    .line 440
    .restart local v2    # "idValue":J
    :cond_22
    invoke-virtual {v0, p2, v2, v3}, Lorg/xutils/db/table/ColumnEntity;->setAutoIdValue(Ljava/lang/Object;J)V

    goto :goto_21

    .line 443
    .end local v2    # "idValue":J
    :cond_26
    invoke-static {p1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    goto :goto_21
.end method

.method private saveOrUpdateWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)V
    .registers 5
    .param p2, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 420
    .local p1, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->getId()Lorg/xutils/db/table/ColumnEntity;

    move-result-object v0

    .line 421
    .local v0, "id":Lorg/xutils/db/table/ColumnEntity;
    invoke-virtual {v0}, Lorg/xutils/db/table/ColumnEntity;->isAutoId()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 422
    invoke-virtual {v0, p2}, Lorg/xutils/db/table/ColumnEntity;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 423
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;[Ljava/lang/String;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 430
    :goto_1a
    return-void

    .line 425
    :cond_1b
    invoke-direct {p0, p1, p2}, Lorg/xutils/db/DbManagerImpl;->saveBindingIdWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Z

    goto :goto_1a

    .line 428
    :cond_1f
    invoke-static {p1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildReplaceSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    goto :goto_1a
.end method

.method private setTransactionSuccessful()V
    .registers 2

    .prologue
    .line 488
    iget-boolean v0, p0, Lorg/xutils/db/DbManagerImpl;->allowTransaction:Z

    if-eqz v0, :cond_9

    .line 489
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 491
    :cond_9
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 469
    sget-object v0, Lorg/xutils/db/DbManagerImpl;->DAO_MAP:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/xutils/db/DbManagerImpl;->daoConfig:Lorg/xutils/DbManager$DaoConfig;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 470
    sget-object v0, Lorg/xutils/db/DbManagerImpl;->DAO_MAP:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/xutils/db/DbManagerImpl;->daoConfig:Lorg/xutils/DbManager$DaoConfig;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 473
    :cond_16
    return-void
.end method

.method public delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I
    .registers 6
    .param p2, "whereBuilder"    # Lorg/xutils/db/sqlite/WhereBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/xutils/db/sqlite/WhereBuilder;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v1

    .line 270
    .local v1, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {v1}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v0, 0x0

    .line 281
    :goto_b
    return v0

    .line 271
    :cond_c
    const/4 v0, 0x0

    .line 273
    .local v0, "result":I
    :try_start_d
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 275
    invoke-static {v1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lorg/xutils/db/table/TableEntity;Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/xutils/db/DbManagerImpl;->executeUpdateDelete(Lorg/xutils/db/sqlite/SqlInfo;)I

    move-result v0

    .line 277
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_1f

    .line 279
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_b

    :catchall_1f
    move-exception v2

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    throw v2
.end method

.method public delete(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/xutils/db/DbManagerImpl;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I

    .line 265
    return-void
.end method

.method public delete(Ljava/lang/Object;)V
    .registers 8
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 240
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 242
    instance-of v4, p1, Ljava/util/List;

    if-eqz v4, :cond_47

    .line 243
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 244
    .local v1, "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_42

    move-result v4

    if-eqz v4, :cond_15

    .line 258
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 260
    .end local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_14
    return-void

    .line 245
    .restart local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_15
    const/4 v4, 0x0

    :try_start_16
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v3

    .line 246
    .local v3, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {v3}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_42

    move-result v4

    if-nez v4, :cond_2c

    .line 258
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_14

    .line 247
    :cond_2c
    :try_start_2c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 248
    .local v2, "item":Ljava/lang/Object;
    invoke-static {v3, v2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V
    :try_end_41
    .catchall {:try_start_2c .. :try_end_41} :catchall_42

    goto :goto_30

    .line 258
    .end local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "item":Ljava/lang/Object;
    .end local v3    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    :catchall_42
    move-exception v4

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    throw v4

    .line 251
    :cond_47
    :try_start_47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v3

    .line 252
    .restart local v3    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {v3}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_42

    move-result v4

    if-nez v4, :cond_59

    .line 258
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_14

    .line 253
    :cond_59
    :try_start_59
    invoke-static {v3, p1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 256
    :cond_60
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_63
    .catchall {:try_start_59 .. :try_end_63} :catchall_42

    .line 258
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_14
.end method

.method public deleteById(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 5
    .param p2, "idValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 225
    .local v0, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z

    move-result v1

    if-nez v1, :cond_b

    .line 235
    :goto_a
    return-void

    .line 227
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 229
    invoke-static {v0, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfoById(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 231
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_1c

    .line 233
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_a

    :catchall_1c
    move-exception v1

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    throw v1
.end method

.method public execNonQuery(Ljava/lang/String;)V
    .registers 4
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 560
    :try_start_0
    iget-object v1, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 564
    return-void

    .line 561
    :catch_6
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-direct {v1, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V
    .registers 7
    .param p1, "sqlInfo"    # Lorg/xutils/db/sqlite/SqlInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 540
    const/4 v2, 0x0

    .line 542
    .local v2, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    iget-object v3, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v3}, Lorg/xutils/db/sqlite/SqlInfo;->buildStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 543
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_19
    .catchall {:try_start_1 .. :try_end_a} :catchall_20

    .line 547
    if-eqz v2, :cond_f

    .line 549
    :try_start_c
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_10

    .line 555
    :cond_f
    :goto_f
    return-void

    .line 550
    :catch_10
    move-exception v1

    .line 551
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    .line 544
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catch_19
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1a
    new-instance v3, Lorg/xutils/ex/DbException;

    invoke-direct {v3, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_20

    .line 547
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_20
    move-exception v3

    if-eqz v2, :cond_26

    .line 549
    :try_start_23
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_26} :catch_27

    .line 552
    :cond_26
    :goto_26
    throw v3

    .line 550
    :catch_27
    move-exception v1

    .line 551
    .restart local v1    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26
.end method

.method public execQuery(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 578
    :try_start_0
    iget-object v1, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v1

    return-object v1

    .line 579
    :catch_8
    move-exception v0

    .line 580
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-direct {v1, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public execQuery(Lorg/xutils/db/sqlite/SqlInfo;)Landroid/database/Cursor;
    .registers 6
    .param p1, "sqlInfo"    # Lorg/xutils/db/sqlite/SqlInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 569
    :try_start_0
    iget-object v1, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lorg/xutils/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/xutils/db/sqlite/SqlInfo;->getBindArgsAsStrArray()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v1

    return-object v1

    .line 570
    :catch_f
    move-exception v0

    .line 571
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-direct {v1, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public executeUpdateDelete(Ljava/lang/String;)I
    .registers 7
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 521
    const/4 v2, 0x0

    .line 523
    .local v2, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    iget-object v3, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 524
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_1a
    .catchall {:try_start_1 .. :try_end_a} :catchall_21

    move-result v3

    .line 528
    if-eqz v2, :cond_10

    .line 530
    :try_start_d
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_10} :catch_11

    .line 533
    :cond_10
    :goto_10
    return v3

    .line 531
    :catch_11
    move-exception v1

    .line 532
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 525
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catch_1a
    move-exception v0

    .line 526
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1b
    new-instance v3, Lorg/xutils/ex/DbException;

    invoke-direct {v3, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_21

    .line 528
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_21
    move-exception v3

    if-eqz v2, :cond_27

    .line 530
    :try_start_24
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_28

    .line 533
    :cond_27
    :goto_27
    throw v3

    .line 531
    :catch_28
    move-exception v1

    .line 532
    .restart local v1    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27
.end method

.method public executeUpdateDelete(Lorg/xutils/db/sqlite/SqlInfo;)I
    .registers 7
    .param p1, "sqlInfo"    # Lorg/xutils/db/sqlite/SqlInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 502
    const/4 v2, 0x0

    .line 504
    .local v2, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    iget-object v3, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v3}, Lorg/xutils/db/sqlite/SqlInfo;->buildStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 505
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_1a
    .catchall {:try_start_1 .. :try_end_a} :catchall_21

    move-result v3

    .line 509
    if-eqz v2, :cond_10

    .line 511
    :try_start_d
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_10} :catch_11

    .line 514
    :cond_10
    :goto_10
    return v3

    .line 512
    :catch_11
    move-exception v1

    .line 513
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 506
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catch_1a
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1b
    new-instance v3, Lorg/xutils/ex/DbException;

    invoke-direct {v3, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_21

    .line 509
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_21
    move-exception v3

    if-eqz v2, :cond_27

    .line 511
    :try_start_24
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_28

    .line 514
    :cond_27
    :goto_27
    throw v3

    .line 512
    :catch_28
    move-exception v1

    .line 513
    .restart local v1    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27
.end method

.method public findAll(Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 359
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findById(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p2, "idValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    .line 331
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v4

    .line 332
    .local v4, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<TT;>;"
    invoke-virtual {v4}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z

    move-result v6

    if-nez v6, :cond_c

    .line 349
    :cond_b
    :goto_b
    return-object v5

    .line 334
    :cond_c
    invoke-static {v4}, Lorg/xutils/db/Selector;->from(Lorg/xutils/db/table/TableEntity;)Lorg/xutils/db/Selector;

    move-result-object v6

    invoke-virtual {v4}, Lorg/xutils/db/table/TableEntity;->getId()Lorg/xutils/db/table/ColumnEntity;

    move-result-object v7

    invoke-virtual {v7}, Lorg/xutils/db/table/ColumnEntity;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v6, v7, v8, p2}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v2

    .line 336
    .local v2, "selector":Lorg/xutils/db/Selector;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xutils/db/Selector;->toString()Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, "sql":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/xutils/db/DbManagerImpl;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 338
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_b

    .line 340
    :try_start_2d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 341
    invoke-static {v4, v0}, Lorg/xutils/db/CursorUtils;->getEntity(Lorg/xutils/db/table/TableEntity;Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_36} :catch_3f
    .catchall {:try_start_2d .. :try_end_36} :catchall_46

    move-result-object v5

    .line 346
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_b

    :cond_3b
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_b

    .line 343
    :catch_3f
    move-exception v1

    .line 344
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_40
    new-instance v5, Lorg/xutils/ex/DbException;

    invoke-direct {v5, v1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_46

    .line 346
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_46
    move-exception v5

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    throw v5
.end method

.method public findDbModelAll(Lorg/xutils/db/sqlite/SqlInfo;)Ljava/util/List;
    .registers 6
    .param p1, "sqlInfo"    # Lorg/xutils/db/sqlite/SqlInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/sqlite/SqlInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/xutils/db/table/DbModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 386
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v1, "dbModelList":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/db/table/DbModel;>;"
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execQuery(Lorg/xutils/db/sqlite/SqlInfo;)Landroid/database/Cursor;

    move-result-object v0

    .line 389
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_28

    .line 391
    :goto_b
    :try_start_b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 392
    invoke-static {v0}, Lorg/xutils/db/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lorg/xutils/db/table/DbModel;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_18} :catch_19
    .catchall {:try_start_b .. :try_end_18} :catchall_20

    goto :goto_b

    .line 394
    :catch_19
    move-exception v2

    .line 395
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1a
    new-instance v3, Lorg/xutils/ex/DbException;

    invoke-direct {v3, v2}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_20

    .line 397
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_20
    move-exception v3

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    throw v3

    :cond_25
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 400
    :cond_28
    return-object v1
.end method

.method public findDbModelFirst(Lorg/xutils/db/sqlite/SqlInfo;)Lorg/xutils/db/table/DbModel;
    .registers 5
    .param p1, "sqlInfo"    # Lorg/xutils/db/sqlite/SqlInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execQuery(Lorg/xutils/db/sqlite/SqlInfo;)Landroid/database/Cursor;

    move-result-object v0

    .line 370
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_17

    .line 372
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 373
    invoke-static {v0}, Lorg/xutils/db/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lorg/xutils/db/table/DbModel;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_f} :catch_19
    .catchall {:try_start_6 .. :try_end_f} :catchall_20

    move-result-object v2

    .line 378
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 381
    :goto_13
    return-object v2

    .line 378
    :cond_14
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 381
    :cond_17
    const/4 v2, 0x0

    goto :goto_13

    .line 375
    :catch_19
    move-exception v1

    .line 376
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1a
    new-instance v2, Lorg/xutils/ex/DbException;

    invoke-direct {v2, v1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_20

    .line 378
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_20
    move-exception v2

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    throw v2
.end method

.method public findFirst(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 354
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDaoConfig()Lorg/xutils/DbManager$DaoConfig;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->daoConfig:Lorg/xutils/DbManager$DaoConfig;

    return-object v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public replace(Ljava/lang/Object;)V
    .registers 8
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 146
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 148
    instance-of v4, p1, Ljava/util/List;

    if-eqz v4, :cond_40

    .line 149
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 150
    .local v1, "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_3b

    move-result v4

    if-eqz v4, :cond_15

    .line 164
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 166
    .end local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_14
    return-void

    .line 151
    .restart local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_15
    const/4 v4, 0x0

    :try_start_16
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v3

    .line 152
    .local v3, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {p0, v3}, Lorg/xutils/db/DbManagerImpl;->createTableIfNotExist(Lorg/xutils/db/table/TableEntity;)V

    .line 153
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 154
    .local v2, "item":Ljava/lang/Object;
    invoke-static {v3, v2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildReplaceSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V
    :try_end_3a
    .catchall {:try_start_16 .. :try_end_3a} :catchall_3b

    goto :goto_29

    .line 164
    .end local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "item":Ljava/lang/Object;
    .end local v3    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    :catchall_3b
    move-exception v4

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    throw v4

    .line 157
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v3

    .line 158
    .restart local v3    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {p0, v3}, Lorg/xutils/db/DbManagerImpl;->createTableIfNotExist(Lorg/xutils/db/table/TableEntity;)V

    .line 159
    invoke-static {v3, p1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildReplaceSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 162
    :cond_52
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_55
    .catchall {:try_start_40 .. :try_end_55} :catchall_3b

    .line 164
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_14
.end method

.method public save(Ljava/lang/Object;)V
    .registers 8
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 171
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 173
    instance-of v4, p1, Ljava/util/List;

    if-eqz v4, :cond_40

    .line 174
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 175
    .local v1, "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_3b

    move-result v4

    if-eqz v4, :cond_15

    .line 189
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 191
    .end local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_14
    return-void

    .line 176
    .restart local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_15
    const/4 v4, 0x0

    :try_start_16
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v3

    .line 177
    .local v3, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {p0, v3}, Lorg/xutils/db/DbManagerImpl;->createTableIfNotExist(Lorg/xutils/db/table/TableEntity;)V

    .line 178
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 179
    .local v2, "item":Ljava/lang/Object;
    invoke-static {v3, v2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V
    :try_end_3a
    .catchall {:try_start_16 .. :try_end_3a} :catchall_3b

    goto :goto_29

    .line 189
    .end local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "item":Ljava/lang/Object;
    .end local v3    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    :catchall_3b
    move-exception v4

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    throw v4

    .line 182
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v3

    .line 183
    .restart local v3    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {p0, v3}, Lorg/xutils/db/DbManagerImpl;->createTableIfNotExist(Lorg/xutils/db/table/TableEntity;)V

    .line 184
    invoke-static {v3, p1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 187
    :cond_52
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_55
    .catchall {:try_start_40 .. :try_end_55} :catchall_3b

    .line 189
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_14
.end method

.method public saveBindingId(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 195
    const/4 v3, 0x0

    .line 197
    .local v3, "result":Z
    :try_start_2
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 199
    instance-of v6, p1, Ljava/util/List;

    if-eqz v6, :cond_48

    .line 200
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 201
    .local v1, "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_43

    move-result v6

    if-eqz v6, :cond_17

    .line 217
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 219
    .end local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_16
    return v5

    .line 202
    .restart local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_17
    const/4 v5, 0x0

    :try_start_18
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v4

    .line 203
    .local v4, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->createTableIfNotExist(Lorg/xutils/db/table/TableEntity;)V

    .line 204
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 205
    .local v2, "item":Ljava/lang/Object;
    invoke-direct {p0, v4, v2}, Lorg/xutils/db/DbManagerImpl;->saveBindingIdWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 206
    new-instance v5, Lorg/xutils/ex/DbException;

    const-string v6, "saveBindingId error, transaction will not commit!"

    invoke-direct {v5, v6}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_43
    .catchall {:try_start_18 .. :try_end_43} :catchall_43

    .line 217
    .end local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "item":Ljava/lang/Object;
    .end local v4    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    :catchall_43
    move-exception v5

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    throw v5

    .line 210
    :cond_48
    :try_start_48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v4

    .line 211
    .restart local v4    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->createTableIfNotExist(Lorg/xutils/db/table/TableEntity;)V

    .line 212
    invoke-direct {p0, v4, p1}, Lorg/xutils/db/DbManagerImpl;->saveBindingIdWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Z

    move-result v3

    .line 215
    :cond_57
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_5a
    .catchall {:try_start_48 .. :try_end_5a} :catchall_43

    .line 217
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    move v5, v3

    .line 219
    goto :goto_16
.end method

.method public saveOrUpdate(Ljava/lang/Object;)V
    .registers 8
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 121
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 123
    instance-of v4, p1, Ljava/util/List;

    if-eqz v4, :cond_3c

    .line 124
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 125
    .local v1, "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_37

    move-result v4

    if-eqz v4, :cond_15

    .line 139
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 141
    .end local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_14
    return-void

    .line 126
    .restart local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_15
    const/4 v4, 0x0

    :try_start_16
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v3

    .line 127
    .local v3, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {p0, v3}, Lorg/xutils/db/DbManagerImpl;->createTableIfNotExist(Lorg/xutils/db/table/TableEntity;)V

    .line 128
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 129
    .local v2, "item":Ljava/lang/Object;
    invoke-direct {p0, v3, v2}, Lorg/xutils/db/DbManagerImpl;->saveOrUpdateWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_16 .. :try_end_36} :catchall_37

    goto :goto_29

    .line 139
    .end local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "item":Ljava/lang/Object;
    .end local v3    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    :catchall_37
    move-exception v4

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    throw v4

    .line 132
    :cond_3c
    :try_start_3c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v3

    .line 133
    .restart local v3    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {p0, v3}, Lorg/xutils/db/DbManagerImpl;->createTableIfNotExist(Lorg/xutils/db/table/TableEntity;)V

    .line 134
    invoke-direct {p0, v3, p1}, Lorg/xutils/db/DbManagerImpl;->saveOrUpdateWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)V

    .line 137
    :cond_4a
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_4d
    .catchall {:try_start_3c .. :try_end_4d} :catchall_37

    .line 139
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_14
.end method

.method public selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/xutils/db/Selector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/db/Selector;->from(Lorg/xutils/db/table/TableEntity;)Lorg/xutils/db/Selector;

    move-result-object v0

    return-object v0
.end method

.method public varargs update(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;[Lorg/xutils/common/util/KeyValue;)I
    .registers 7
    .param p2, "whereBuilder"    # Lorg/xutils/db/sqlite/WhereBuilder;
    .param p3, "nameValuePairs"    # [Lorg/xutils/common/util/KeyValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/xutils/db/sqlite/WhereBuilder;",
            "[",
            "Lorg/xutils/common/util/KeyValue;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 311
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v1

    .line 312
    .local v1, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {v1}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v0, 0x0

    .line 325
    :goto_b
    return v0

    .line 314
    :cond_c
    const/4 v0, 0x0

    .line 316
    .local v0, "result":I
    :try_start_d
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 318
    invoke-static {v1, p2, p3}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lorg/xutils/db/table/TableEntity;Lorg/xutils/db/sqlite/WhereBuilder;[Lorg/xutils/common/util/KeyValue;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/xutils/db/DbManagerImpl;->executeUpdateDelete(Lorg/xutils/db/sqlite/SqlInfo;)I

    move-result v0

    .line 320
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_1f

    .line 322
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_b

    :catchall_1f
    move-exception v2

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    throw v2
.end method

.method public varargs update(Ljava/lang/Object;[Ljava/lang/String;)V
    .registers 9
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "updateColumnNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 287
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 289
    instance-of v4, p1, Ljava/util/List;

    if-eqz v4, :cond_47

    .line 290
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 291
    .local v1, "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_42

    move-result v4

    if-eqz v4, :cond_15

    .line 305
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 307
    .end local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_14
    return-void

    .line 292
    .restart local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_15
    const/4 v4, 0x0

    :try_start_16
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v3

    .line 293
    .local v3, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {v3}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_42

    move-result v4

    if-nez v4, :cond_2c

    .line 305
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_14

    .line 294
    :cond_2c
    :try_start_2c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 295
    .local v2, "item":Ljava/lang/Object;
    invoke-static {v3, v2, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;[Ljava/lang/String;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V
    :try_end_41
    .catchall {:try_start_2c .. :try_end_41} :catchall_42

    goto :goto_30

    .line 305
    .end local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "item":Ljava/lang/Object;
    .end local v3    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    :catchall_42
    move-exception v4

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    throw v4

    .line 298
    :cond_47
    :try_start_47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v3

    .line 299
    .restart local v3    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {v3}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_42

    move-result v4

    if-nez v4, :cond_59

    .line 305
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_14

    .line 300
    :cond_59
    :try_start_59
    invoke-static {v3, p1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;[Ljava/lang/String;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 303
    :cond_60
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_63
    .catchall {:try_start_59 .. :try_end_63} :catchall_42

    .line 305
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_14
.end method
