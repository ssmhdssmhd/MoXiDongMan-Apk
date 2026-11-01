.class public Lcom/wsw/cospa/dao/ComicContentImgBeanDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/dao/ComicContentImgBeanDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/wsw/cospa/bean/ComicContentImgBean;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "COMIC_CONTENT_IMG_BEAN"


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

    const-string p1, "\"COMIC_CONTENT_IMG_BEAN\" (\"IMGURL\" TEXT PRIMARY KEY NOT NULL ,\"INDEX_PAPE\" INTEGER NOT NULL ,\"MAX_PAGE\" INTEGER NOT NULL ,\"CHAPTER_INDEX\" INTEGER NOT NULL ,\"CHAPTER_CONTENT_URL\" TEXT,\"CHAPTER_TEXT\" TEXT,\"VARIABLE\" TEXT,\"CUSTOM_VARIABLE\" TEXT,\"TAG\" TEXT,\"IS_DOWNLOAD\" INTEGER NOT NULL ,\"LOCAL_PATH\" TEXT,\"STATE\" INTEGER NOT NULL );"

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

    const-string p1, "\"COMIC_CONTENT_IMG_BEAN\""

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
    check-cast p2, Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/dao/ComicContentImgBeanDao;->do(Landroid/database/sqlite/SQLiteStatement;Lcom/wsw/cospa/bean/ComicContentImgBean;)V

    return-void
.end method

.method public bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/dao/ComicContentImgBeanDao;->if(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/wsw/cospa/bean/ComicContentImgBean;)V

    return-void
.end method

.method public final break(Lcom/wsw/cospa/bean/ComicContentImgBean;J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getImgurl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public case(Lcom/wsw/cospa/bean/ComicContentImgBean;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getImgurl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final do(Landroid/database/sqlite/SQLiteStatement;Lcom/wsw/cospa/bean/ComicContentImgBean;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 2
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getImgurl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getIndexPape()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x3

    .line 5
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getMaxPage()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getChapterIndex()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 7
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getChapterContentUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 9
    :cond_1
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getChapterText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 11
    :cond_2
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getVariable()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x7

    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 13
    :cond_3
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getCustomVariable()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 15
    :cond_4
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v1, 0x9

    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_5
    const/16 v0, 0xa

    .line 17
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getIsDownload()Z

    move-result v1

    if-eqz v1, :cond_6

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_6
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 18
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v1, 0xb

    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_7
    const/16 v0, 0xc

    .line 20
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getState()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public else(Landroid/database/Cursor;I)Lcom/wsw/cospa/bean/ComicContentImgBean;
    .locals 15

    move-object/from16 v0, p1

    .line 1
    new-instance v13, Lcom/wsw/cospa/bean/ComicContentImgBean;

    add-int/lit8 v1, p2, 0x0

    .line 2
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    add-int/lit8 v2, p2, 0x1

    .line 3
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    add-int/lit8 v4, p2, 0x2

    .line 4
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    add-int/lit8 v5, p2, 0x3

    .line 5
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/lit8 v6, p2, 0x4

    .line 6
    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v6, v3

    goto :goto_1

    :cond_1
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    add-int/lit8 v7, p2, 0x5

    .line 7
    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v7, v3

    goto :goto_2

    :cond_2
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_2
    add-int/lit8 v8, p2, 0x6

    .line 8
    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v8, v3

    goto :goto_3

    :cond_3
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_3
    add-int/lit8 v9, p2, 0x7

    .line 9
    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v9, v3

    goto :goto_4

    :cond_4
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_4
    add-int/lit8 v10, p2, 0x8

    .line 10
    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object v10, v3

    goto :goto_5

    :cond_5
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_5
    add-int/lit8 v11, p2, 0x9

    .line 11
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getShort(I)S

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    goto :goto_6

    :cond_6
    const/4 v11, 0x0

    :goto_6
    add-int/lit8 v12, p2, 0xa

    .line 12
    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_7

    goto :goto_7

    :cond_7
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_7
    move-object v12, v3

    add-int/lit8 v3, p2, 0xb

    .line 13
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object v0, v13

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move v12, v14

    invoke-direct/range {v0 .. v12}, Lcom/wsw/cospa/bean/ComicContentImgBean;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    return-object v13
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/dao/ComicContentImgBeanDao;->try(Lcom/wsw/cospa/bean/ComicContentImgBean;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public goto(Landroid/database/Cursor;Lcom/wsw/cospa/bean/ComicContentImgBean;I)V
    .locals 3

    add-int/lit8 v0, p3, 0x0

    .line 1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setImgurl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setIndexPape(I)V

    add-int/lit8 v0, p3, 0x2

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setMaxPage(I)V

    add-int/lit8 v0, p3, 0x3

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setChapterIndex(I)V

    add-int/lit8 v0, p3, 0x4

    .line 5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setChapterContentUrl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x5

    .line 6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setChapterText(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x6

    .line 7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v2

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setVariable(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x7

    .line 8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v2

    goto :goto_4

    :cond_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setCustomVariable(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x8

    .line 9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v0, v2

    goto :goto_5

    :cond_5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setTag(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x9

    .line 10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setIsDownload(Z)V

    add-int/lit8 v0, p3, 0xa

    .line 11
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_7
    invoke-virtual {p2, v2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setLocalPath(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0xb

    .line 12
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setState(I)V

    return-void
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/dao/ComicContentImgBeanDao;->case(Lcom/wsw/cospa/bean/ComicContentImgBean;)Z

    move-result p1

    return p1
.end method

.method public final if(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/wsw/cospa/bean/ComicContentImgBean;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 2
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getImgurl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getIndexPape()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x3

    .line 5
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getMaxPage()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getChapterIndex()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 7
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getChapterContentUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    .line 8
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 9
    :cond_1
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getChapterText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    .line 10
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 11
    :cond_2
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getVariable()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x7

    .line 12
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 13
    :cond_3
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getCustomVariable()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    .line 14
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 15
    :cond_4
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v1, 0x9

    .line 16
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_5
    const/16 v0, 0xa

    .line 17
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getIsDownload()Z

    move-result v1

    if-eqz v1, :cond_6

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_6
    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 18
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v1, 0xb

    .line 19
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_7
    const/16 v0, 0xc

    .line 20
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getState()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/dao/ComicContentImgBeanDao;->else(Landroid/database/Cursor;I)Lcom/wsw/cospa/bean/ComicContentImgBean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    check-cast p2, Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wsw/cospa/dao/ComicContentImgBeanDao;->goto(Landroid/database/Cursor;Lcom/wsw/cospa/bean/ComicContentImgBean;I)V

    return-void
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/dao/ComicContentImgBeanDao;->this(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public this(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1

    add-int/lit8 p2, p2, 0x0

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

.method public try(Lcom/wsw/cospa/bean/ComicContentImgBean;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getImgurl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wsw/cospa/dao/ComicContentImgBeanDao;->break(Lcom/wsw/cospa/bean/ComicContentImgBean;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
