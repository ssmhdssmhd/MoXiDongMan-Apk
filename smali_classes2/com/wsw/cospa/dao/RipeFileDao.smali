.class public Lcom/wsw/cospa/dao/RipeFileDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/dao/RipeFileDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/wsw/cospa/bean/RipeFile;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "RIPE_FILE"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Landroid/support/v4/hw;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static for(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "IF NOT EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"RIPE_FILE\" (\"IS_SELECTED\" INTEGER NOT NULL ,\"NAME\" TEXT,\"SIZE\" TEXT,\"DATE\" TEXT,\"SUFFIX\" TEXT,\"PATH\" TEXT PRIMARY KEY NOT NULL ,\"IS_DIRECTORY\" INTEGER,\"CHILD_COUNT\" INTEGER,\"INDEX_PAPE\" INTEGER NOT NULL ,\"MAX_PAGE\" INTEGER NOT NULL ,\"PARENT_NAME\" TEXT,\"PARENT_PATH\" TEXT,\"CURR_PAGE_PATH\" TEXT,\"ROOT_PATH\" TEXT);"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static new(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "IF EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"RIPE_FILE\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/dao/RipeFileDao;->do(Landroid/database/sqlite/SQLiteStatement;Lcom/wsw/cospa/bean/RipeFile;)V

    return-void
.end method

.method public bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/dao/RipeFileDao;->if(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/wsw/cospa/bean/RipeFile;)V

    return-void
.end method

.method public final break(Lcom/wsw/cospa/bean/RipeFile;J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public case(Lcom/wsw/cospa/bean/RipeFile;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final do(Landroid/database/sqlite/SQLiteStatement;Lcom/wsw/cospa/bean/RipeFile;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 2
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getIsSelected()Z

    move-result v0

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_0

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v5, 0x2

    .line 4
    invoke-virtual {p1, v5, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 5
    :cond_1
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getSize()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v5, 0x3

    .line 6
    invoke-virtual {p1, v5, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 7
    :cond_2
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v5, 0x4

    .line 8
    invoke-virtual {p1, v5, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 9
    :cond_3
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getSuffix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v5, 0x5

    .line 10
    invoke-virtual {p1, v5, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 11
    :cond_4
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v5, 0x6

    .line 12
    invoke-virtual {p1, v5, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 13
    :cond_5
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getIsDirectory()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v5, 0x7

    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    move-wide v1, v3

    :goto_1
    invoke-virtual {p1, v5, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 15
    :cond_7
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getChildCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_8
    const/16 v0, 0x9

    .line 17
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getIndexPape()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xa

    .line 18
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getMaxPage()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 19
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getParentName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v1, 0xb

    .line 20
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 21
    :cond_9
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getParentPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/16 v1, 0xc

    .line 22
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 23
    :cond_a
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getCurrPagePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const/16 v1, 0xd

    .line 24
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 25
    :cond_b
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getRootPath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_c

    const/16 v0, 0xe

    .line 26
    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_c
    return-void
.end method

.method public else(Landroid/database/Cursor;I)Lcom/wsw/cospa/bean/RipeFile;
    .locals 19

    move-object/from16 v0, p1

    .line 1
    new-instance v15, Lcom/wsw/cospa/bean/RipeFile;

    add-int/lit8 v1, p2, 0x0

    .line 2
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v4, p2, 0x1

    .line 3
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    move-object v4, v6

    goto :goto_1

    :cond_1
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    add-int/lit8 v5, p2, 0x2

    .line 4
    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v5, v6

    goto :goto_2

    :cond_2
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_2
    add-int/lit8 v7, p2, 0x3

    .line 5
    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v7, v6

    goto :goto_3

    :cond_3
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    add-int/lit8 v8, p2, 0x4

    .line 6
    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v8, v6

    goto :goto_4

    :cond_4
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_4
    add-int/lit8 v9, p2, 0x5

    .line 7
    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v9, v6

    goto :goto_5

    :cond_5
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_5
    add-int/lit8 v10, p2, 0x6

    .line 8
    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_6

    move-object v10, v6

    goto :goto_7

    :cond_6
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getShort(I)S

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v10, v2

    :goto_7
    add-int/lit8 v2, p2, 0x7

    .line 9
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v11, v6

    goto :goto_8

    :cond_8
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v11, v2

    :goto_8
    add-int/lit8 v2, p2, 0x8

    .line 10
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    add-int/lit8 v2, p2, 0x9

    .line 11
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    add-int/lit8 v2, p2, 0xa

    .line 12
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object v14, v6

    goto :goto_9

    :cond_9
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    :goto_9
    add-int/lit8 v2, p2, 0xb

    .line 13
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v16, v6

    goto :goto_a

    :cond_a
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    :goto_a
    add-int/lit8 v2, p2, 0xc

    .line 14
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v17, v6

    goto :goto_b

    :cond_b
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    :goto_b
    add-int/lit8 v2, p2, 0xd

    .line 15
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v18, v6

    goto :goto_c

    :cond_c
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    :goto_c
    move-object v0, v15

    move-object v2, v4

    move-object v3, v5

    move-object v4, v7

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    move-object v8, v11

    move v9, v12

    move v10, v13

    move-object v11, v14

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    invoke-direct/range {v0 .. v14}, Lcom/wsw/cospa/bean/RipeFile;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v15
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/dao/RipeFileDao;->try(Lcom/wsw/cospa/bean/RipeFile;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public goto(Landroid/database/Cursor;Lcom/wsw/cospa/bean/RipeFile;I)V
    .locals 5

    add-int/lit8 v0, p3, 0x0

    .line 1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/RipeFile;->setIsSelected(Z)V

    add-int/lit8 v0, p3, 0x1

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/RipeFile;->setName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v4

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/RipeFile;->setSize(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v4

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/RipeFile;->setDate(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x4

    .line 5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, v4

    goto :goto_4

    :cond_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/RipeFile;->setSuffix(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x5

    .line 6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, v4

    goto :goto_5

    :cond_5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/RipeFile;->setPath(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x6

    .line 7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, v4

    goto :goto_7

    :cond_6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_7
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/RipeFile;->setIsDirectory(Ljava/lang/Boolean;)V

    add-int/lit8 v0, p3, 0x7

    .line 8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v0, v4

    goto :goto_8

    :cond_8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_8
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/RipeFile;->setChildCount(Ljava/lang/Integer;)V

    add-int/lit8 v0, p3, 0x8

    .line 9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/RipeFile;->setIndexPape(I)V

    add-int/lit8 v0, p3, 0x9

    .line 10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/RipeFile;->setMaxPage(I)V

    add-int/lit8 v0, p3, 0xa

    .line 11
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v0, v4

    goto :goto_9

    :cond_9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/RipeFile;->setParentName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xb

    .line 12
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v0, v4

    goto :goto_a

    :cond_a
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/RipeFile;->setParentPath(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xc

    .line 13
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object v0, v4

    goto :goto_b

    :cond_b
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/RipeFile;->setCurrPagePath(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0xd

    .line 14
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_c

    :cond_c
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_c
    invoke-virtual {p2, v4}, Lcom/wsw/cospa/bean/RipeFile;->setRootPath(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/dao/RipeFileDao;->case(Lcom/wsw/cospa/bean/RipeFile;)Z

    move-result p1

    return p1
.end method

.method public final if(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/wsw/cospa/bean/RipeFile;)V
    .locals 7

    .line 1
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 2
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getIsSelected()Z

    move-result v0

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_0

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    const/4 v0, 0x1

    invoke-interface {p1, v0, v5, v6}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 3
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v5, 0x2

    .line 4
    invoke-interface {p1, v5, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 5
    :cond_1
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getSize()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v5, 0x3

    .line 6
    invoke-interface {p1, v5, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 7
    :cond_2
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v5, 0x4

    .line 8
    invoke-interface {p1, v5, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 9
    :cond_3
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getSuffix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v5, 0x5

    .line 10
    invoke-interface {p1, v5, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 11
    :cond_4
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v5, 0x6

    .line 12
    invoke-interface {p1, v5, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 13
    :cond_5
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getIsDirectory()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v5, 0x7

    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    move-wide v1, v3

    :goto_1
    invoke-interface {p1, v5, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 15
    :cond_7
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getChildCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    :cond_8
    const/16 v0, 0x9

    .line 17
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getIndexPape()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0xa

    .line 18
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getMaxPage()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 19
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getParentName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v1, 0xb

    .line 20
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 21
    :cond_9
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getParentPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/16 v1, 0xc

    .line 22
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 23
    :cond_a
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getCurrPagePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const/16 v1, 0xd

    .line 24
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 25
    :cond_b
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getRootPath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_c

    const/16 v0, 0xe

    .line 26
    invoke-interface {p1, v0, p2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_c
    return-void
.end method

.method public final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/dao/RipeFileDao;->else(Landroid/database/Cursor;I)Lcom/wsw/cospa/bean/RipeFile;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    check-cast p2, Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wsw/cospa/dao/RipeFileDao;->goto(Landroid/database/Cursor;Lcom/wsw/cospa/bean/RipeFile;I)V

    return-void
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/dao/RipeFileDao;->this(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public this(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1

    add-int/lit8 p2, p2, 0x5

    .line 1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public try(Lcom/wsw/cospa/bean/RipeFile;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wsw/cospa/dao/RipeFileDao;->break(Lcom/wsw/cospa/bean/RipeFile;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
